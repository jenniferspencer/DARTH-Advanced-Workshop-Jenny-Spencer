#Simple for Qs


rm(list=ls())

library(EpiModel)   #the primary package we will be using to make our models 

set.seed(0526)



#--------------------------------------------------- Aging Module --------------------------------------------------------#

aging                  <- function(dat, at) {
  
  ## Initialization of Age
  if (at == 2) {
    # Pull age from the fitted network model
    dat$attr$age        <- get.vertex.attribute(dat$nw, "age")
  }
  
  # Update age on attribute list and also on the network as a whole
  dat$attr$age          <- dat$attr$age + 1/52
  dat$nw                <- set.vertex.attribute(dat$nw, "age", dat$attr$age)
  
  ## Summary statistics : Mean Age ##
  dat$epi$meanAge[
    at]                 <- mean(dat$attr$age, na.rm = TRUE)
  
  return(dat)
}


#--------------------------------------------------- Death Module -----------------------------------------------------#

dfunc                   <- function(dat, at) {
  
  ## Initialization of Sex
  if (at == 2) {
    #  browser()
    # Pull age from the fitted network model
    dat$attr$sex        <- get.vertex.attribute(dat$nw, "sex")
    dat$attr$age        <- get.vertex.attribute(dat$nw, "age")
  }
  
  ## Attributes ##
  active                <- dat$attr$active  #record whether active ID
  age                   <- dat$attr$age     #record age
  sex                   <- dat$attr$sex     #record sex
  status                <- dat$attr$status  #record "status" measure
        
        
  ## Parameters ##      
  mort.rates            <- dat$param$mortality.rate

   
  ## Query alive ## 
  idsElig               <- which(active == 1) #identify eligible individuals 

  nElig                 <- length(idsElig)              #count 
        
  nDeaths              <- 0                             #create empty death variable 
 
  
  if (nElig > 0) {                       #for individuals 1 to nElig
    
    ## Calculate age-specific death rates for each eligible node ##
    ## Everyone older than 85 gets the final mortality
    ages_of_elig       <- pmin(ceiling(age[idsElig]), 89)
    drates_of_elig     <- mort.rates[ages_of_elig]
    
    
    ## Simulate mortality process
    vecDeaths           <- which(rbinom(nElig, 1, drates_of_elig) == 1)    #each person gets prob of death 
    
    idsDeaths           <- idsElig[vecDeaths]  #we identify those who are dead
    nDeaths             <- length(idsDeaths)   #we count the number who died
    
    
    ## Update nodal attributes on attr and networkDynamic object ##
    if (nDeaths > 0) {
      dat$attr$active[
        idsDeaths]      <- 0                  #set dead individuals to inactive 
      
      dat$nw            <- deactivate.vertices(
                                dat$nw, onset = at, 
                                     terminus = Inf,
                                            v = idsDeaths, 
                             deactivate.edges = TRUE)
    }
  }
  
  
  ## Summary statistics: Number of Deaths ##
  dat$epi$d.flow[
    at]                 <- nDeaths
  
  return(dat)
}


#---------------------------------------------------   Birth Module ----------------------------------------------------#

bfunc                   <- function(dat, at) {
  
  
  ## Parameters ##
  n                     <- network.size(dat$nw)  #network size
  b.rate                <- dat$param$birth.rate  #population birth rate per 10,000
  
  ## Process ##
  nBirthsExp            <- n * b.rate            #births during this time step
  nBirths               <- rpois(1, nBirthsExp)  #stochastic births 
  
  if (nBirths > 0) {
    
    dat$nw              <- add.vertices(dat$nw, nv = nBirths) #add number of new individuals
    newNodes            <- (n + 1):(n + nBirths)              #count number of new nodes  
    dat$nw              <- activate.vertices(dat$nw, onset = at, terminus = Inf, v = newNodes) #activate them
  }
  
  # Update attributes
  if (nBirths > 0) {

    dat$attr$active     <- c(dat$attr$active,   rep(1,   nBirths))  #everyone is active
    dat$attr$status     <- c(dat$attr$status,   rep("s", nBirths))  #everyone is susceptible
    dat$attr$infTime    <- c(dat$attr$infTime,  rep(NA,  nBirths))  #no one is infected
    dat$attr$entrTime   <- c(dat$attr$entrTime, rep(at,  nBirths))  #mark entry time
    dat$attr$exitTime   <- c(dat$attr$exitTime, rep(NA,  nBirths))  #no exit time
    dat$attr$sex        <- c(dat$attr$sex,      rep("F", (round(nBirths/2,0))), 
                             rep("M", (nBirths- round(nBirths/2,0)))) #no exit time
    dat$attr$age        <- c(dat$attr$age,      rep(0, nBirths))     
      
    
    #new_F_combo         <- sample(c("FF", "FB", "FM"), round((nBirths/2),0), replace=TRUE, prob=c(0.02, 0.06, 0.92))
    #new_M_combo         <- sample(c("MF", "MB", "MM"), (nBirths-round(nBirths/2,0)), replace=TRUE, prob=c(0.96, 0.02, 0.02))  
  
     #dat$attr$combo     <- c(dat$attr$combo, new_F_combo, new_M_combo) 
  
                                                            
  }
  
  ## Summary statistics ##
  dat$epi$b.flow[
    at]                 <- nBirths
  

  return(dat)
}



#---------------------------------------------------  Network Characteristics   ----------------------------------------------------#

#Create a nework of 50/50 men and women 
n                       <- 10000

#Create populations for each size of our groups
n.msmo                  <- n* 0.5 *0.02
n.msmw                  <- n* 0.5 *0.02
n.mswo                  <- n* 0.5 *0.96
n.wswo                  <- n* 0.5 *0.02
n.wsmw                  <- n* 0.5 *0.06
n.wsmo                  <- n* 0.5 *0.92



#Network with n people, partnerships are not directed 
net1                    <- network.initialize(n, directed=FALSE)



# # # # # # # # # # # # # # # # # # # # # # # # SEX # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#Add sex
set.vertex.attribute(net1, "sex",   c(rep("F", n/2), rep("M", n/2)))



# # # # # # # # # # # # # # # # # # # # # # # # SEXUAL BEHAVIOR # # # # # # # # # # # # # # # # # # # # # # # #

#And sexual preference - first letter indicates sex (Female/Male) and second indicates potential partners (F/M/Both) 
set.vertex.attribute(net1, "combo", c(rep("FM", n.wsmo), rep("FF", n.wswo ), rep("FB", n.wsmw),  #first for women
                                      rep("MF", n.mswo), rep("MM", n.msmo) , rep("MB", n.msmw)))   # then for men



# # # # # # # # # # # # # # # # # # # # # # # #    Age  # # # # # # # # # # # # # # # # # # # # # # # #

#calc age dist 
l.age              <- c( "<1", "1-4", "5-9", "10-14", "15-20", "20-24", "25-29", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59",   
                         "60-64", "65-69", "70-74", "75-79",  "80-85", "85+")

#make upper and lower limit variables- the actual age will be draw from a distribution within these so these will line up exactly. 
ll.age             <- c( 0,   1,   5,   10,  15,  20,  25,  30,  35,  40,  45 , 50,   55,   60,   65,   70,   75,  80,  85)
ul.age             <- c( 1,   5,   10,  15,  20,  25,  30,  35,  40,  45,  50,  55,   60,   65,   70,   75,   79,  85,  90)

i.age_dist         <-c(.04, .05, .05, .06, .06, .06, .06, .07, .07, .07, .06, .06, .06, .06, .06, .04, .04, .02 ,.01) 


#add age category
set.vertex.attribute(net1, "age_group", c(rep(l.age, (n.wsmo*i.age_dist)), 
                                          rep(l.age, (n.wswo*i.age_dist)),
                                          rep(l.age, (n.wsmw*i.age_dist)),
                                          rep(l.age, (n.mswo*i.age_dist)),
                                          rep(l.age, (n.msmo*i.age_dist)),
                                          rep(l.age, (n.msmw*i.age_dist))))
#Three step process to add ages by year- 
#First define upper and lower bounds
age_ll             <-  c(rep(ll.age, (n.wsmo*i.age_dist)), 
                         rep(ll.age, (n.wswo*i.age_dist)),
                         rep(ll.age, (n.wsmw*i.age_dist)),
                         rep(ll.age, (n.mswo*i.age_dist)),
                         rep(ll.age, (n.msmo*i.age_dist)),
                         rep(ll.age, (n.msmw*i.age_dist)))

age_ul             <-  c(rep(ul.age, (n.wsmo*i.age_dist)), 
                         rep(ul.age, (n.wswo*i.age_dist)),
                         rep(ul.age, (n.wsmw*i.age_dist)),
                         rep(ul.age, (n.mswo*i.age_dist)),
                         rep(ul.age, (n.msmo*i.age_dist)),
                         rep(ul.age, (n.msmw*i.age_dist)))



#Then draw n uniform distributions                                     
age_yrs            <- NA

#And rescale each to within the assigned bounds
for(i in 1:n) {
  age_yrs[i]       <- scales::rescale(runif(1, min=0, max=1), to = c(age_ll[i], age_ul[i]), from = c(0, 1))
}

#Finally, add specific age (years) to attribute
set.vertex.attribute(net1, "age", round(age_yrs, 1)) 


# # # # # # # # # # # # # # # # # # # # # # # #    Mortality  # # # # # # # # # # # # # # # # # # # # # # # #

# Mortality - for now use inputs from EpiModel Gallery- change to sex specific inputs once working#

mortality_rate          <- c(588.45, 24.8, 11.7, 14.55, 47.85, 88.2, 105.65, 127.2,
                             154.3, 206.5, 309.3, 495.1, 736.85, 1051.15, 1483.45,
                             2294.15, 3642.95, 6139.4, 13938.3)

mr_pp_pw                <- mortality_rate / 1e5 / 52

age_spans               <-c(1,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5)
mr_vec                  <- rep(mr_pp_pw, times = age_spans)


#---------------------------------------------------  Model Fit   ----------------------------------------------------#
#Set Target Stats

#First total number of edges
edges                   <- (n*.82)/2

#Then stats based on this- first edges total, the concurrent, then all possible combinations that should be impossible 
#(ie, two men who only have sex with women can never have a partnership)
# Impossible combinations: FB.FM, FF.FM, FM.FM, FF.MB, FF.MF, MB.MF, MF.MF, FB.MM, FF.MM, FM.MM, MF.MM

targets                 <- c( edges,     #total edges
                             (n*.07), #concurrent nodes 
                              0,          #nodemix FB x FM
                              0,          #nodemix FF x FM
                              0,          #nodemix FM x FM
                              0,          #nodemix FF x MB
                              0,          #nodemix FF x MF 
                              0,          #nodemix MF x MF
                              0,          #nodemix FB x MM
                              0,          #nodemix FF x MM
                              0,          #nodemix FB x FM
                              0,          #nodemix FM x MM
                              0)	        #nodemix MF x MM

coef.diss               <- dissolution_coefs( dissolution = (~offset(edges)),
                                              d.rate = mean(mr_vec),
                                              duration  = c(90*4.33)) #Mean relationship duration of 7.5 years 
     
f.form                  <- ~edges + concurrent + nodemix("combo", levels2=c(4:6,8,12,14:18, 20))


#Now make the formation model which is conditional on the dissolution model 

fit1                    <- netest(net1, 
                                  formation    = f.form, 
                                  target.stats = targets, 
                                  coef.diss    = coef.diss) 
#  edapprox     = FALSE)

summary(fit1)

#Simulate our model given the formation and dissolution we've established. Run for 1000 steps but just 1 simulation of it
sim1                    <- netdx(fit1, nsteps = (2000), nsims = 5, keep.tnetwork = TRUE, ncores = 4, keep.tedgelist = TRUE)

#show what happened as a table
sim1

#Formation graph
plot(sim1, stats = c("edges", "concurrent"))

#---------------------------------------------------  Run Infection   ----------------------------------------------------#


#- 

# Parameterizing an SIS epidemic
param                   <- param.net( inf.prob = 0.4,
                               mortality.rates = mr_vec,        
                                    birth.rate = mean(mr_vec), 
                                      rec.rate = 0.003 )


# Initial conditions
init                    <- init.net(i.num = n*.2)

# Control settings
control                 <- control.net(type = "SIS", 
                                     nsims  = 1, 
                                     ncores = 1,
                                     nsteps = 20,
                               arrivals.FUN = bfunc,
                             departures.FUN = dfunc,
                                  aging.FUN = aging,
                             keep.tedgelist = TRUE, 
                              keep.tnetwork = TRUE,  
                                     depend = TRUE,
                                    verbose = FALSE)
         

# Run the network model simulation with netsim
sim_short               <- netsim(fit1, param, init, control)



tel_sim                 <- as.data.frame(sim_short$network$sim1) 

plot(x=tel_sim$onset, y=tel_sim$terminus)




