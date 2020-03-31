


#--------------------------------------------------- Aging Module --------------------------------------------------------#

age.func              <- function(dat, at) {


 ## Initialization of Age
   if (at == 2) {
      # Pull age from the fitted network model
      dat$attr$age    <- get.vertex.attribute(dat$nw, "age")
  dat$attr$age.actv   <- get.vertex.attribute(dat$nw, "age.actv")
  dat$attr$sex.actv   <- get.vertex.attribute(dat$nw, "sex.actv")
  
   }
  
  ## Attributes ##
  active              <- dat$attr$active  #record whether active ID
  age                 <- dat$attr$age     #record age
  sex.actv            <- dat$attr$sex.actv     #record sex
  age.actv            <- dat$attr$age.actv  #record "status" measure
  
  
  
    # Update age on attribute list and also on the network as a whole
    dat$attr$age      <- dat$attr$age + 1/12
    dat$nw            <- set.vertex.attribute(dat$nw, "age", dat$attr$age)
    
    # For those who are now at their age of sexual onset, turn sexual activity to on
    idsactive         <- which(active == 1 & sex.actv==0 & (age >= age.actv))
    
   dat$attr$sex.actv[
     idsactive]       <- 1
      dat$nw          <- set.vertex.attribute(dat$nw, "sex.actv", dat$attr$sex.actv)
   
    
    ## Summary statistics : Mean Age ##
   dat$epi$meanAge[
     at]              <- mean(dat$attr$age, na.rm = TRUE)
    
    return(dat)
  }
  
  
#--------------------------------------------------- Death Module -----------------------------------------------------#
  
  d.func              <- function(dat, at) {
   
    ## Initialization of variables 
    if (at == 2) {
     
      # Pull age from the fitted network model
  dat$attr$sex        <- get.vertex.attribute(dat$nw, "sex")
  dat$attr$age        <- get.vertex.attribute(dat$nw, "age")
  dat$attr$age.actv   <- get.vertex.attribute(dat$nw, "age.actv")
    }
  
    
    ## Attributes ##
    active            <- dat$attr$active  #record whether active ID
    age               <- dat$attr$age     #record age
    sex               <- dat$attr$sex     #record sex
    status_a          <- dat$attr$status_a  #record anal infection
    status_g          <- dat$attr$status_g  #record genital infection
    
    
    ## Parameters ##
    mort.ratesF       <- dat$param$mortality.rates$Female
    mort.ratesM       <- dat$param$mortality.rates$Male
    
  
    ## Query alive ##
     idsEligF         <- which(active == 1 & sex=="F") #identify eligible individuals 
     idsEligM         <- which(active == 1 & sex=="M") #identify eligible individuals 
  
     nEligF           <- length(idsEligF)              #count 
     nEligM           <- length(idsEligM)              #count 
  
     nDeathsF         <- 0                             #create empty death variable 
     nDeathsM         <- 0                             #create empty death variable 
    
    if (nEligF  > 0) {                       #for individuals 1 to nElig
      
      ## Calculate age-specific death rates for each eligible node ##
      ## Everyone older than 85 gets the final mortality
    ages_of_eligF     <- pmin(ceiling(age[idsEligF]), 89)
   
     #Create a vector of everyone's mortality rate based on their age
    drates_of_eligF   <- mort.ratesF[ages_of_eligF] 
      

      ## Simulate mortality process
      vecDeaths       <- which(rbinom(nEligF, 1, drates_of_eligF) == 1)    #each person gets prob of death 
      
      
      idsDeathsF      <- idsEligF[vecDeaths]  #we identify those who are dead
      nDeathsF        <- length(idsDeathsF)   #we count the number who died
    
      
      ## Update nodal attributes on attr and networkDynamic object ##
    if (nDeathsF > 0) {
      dat$attr$active[
        idsDeathsF]   <- 0                  #set dead individuals to inactive 
      
     dat$nw           <- deactivate.vertices(
                        dat$nw, onset = at, 
                             terminus = Inf,
                                    v = idsDeathsF, 
                     deactivate.edges = TRUE)
      }
    }
    
  if (nEligM > 0) {                       #for individuals 1 to nElig
    
    ## Calculate age-specific death rates for each eligible node ##
    ## Everyone older than 85 gets the final mortality
  ages_of_eligM       <- pmin(ceiling(age[idsEligM]), 89)
  drates_of_eligM     <- mort.ratesM[ages_of_eligM]
    
    
    ## Simulate mortality process
    vecDeaths         <- which(rbinom(nEligM, 1, drates_of_eligM) == 1)    #each person gets prob of death 
    
    idsDeathsM        <- idsEligM[vecDeaths]  #we identify those who are dead
    nDeathsM          <- length(idsDeathsM)   #we count the number who died
    
    
    ## Update nodal attributes on attr and networkDynamic object ##
    if (nDeathsM > 0) {
      dat$attr$active[
        idsDeathsM]  <- 0                  #set dead individuals to inactive 
     
      dat$nw         <- deactivate.vertices(
                         dat$nw, onset = at, 
                              terminus = Inf,
                                     v = idsDeathsM, 
                      deactivate.edges = TRUE)
    }
   }
  
  
    ## Summary statistics: Number of Deaths ##
    dat$epi$d.flow[
      at]            <- nDeathsF  + nDeathsM
    
    return(dat)
  }
  
  
  #---------------------------------------------------  Updated Birth Module ----------------------------------------------------#
  
  b.func              <- function(dat, at) {
    
    if (at==10){
  #  browser()
    }  
      ## Parameters ##
      n              <- network.size(dat$nw)
      b.rate         <- dat$param$birth.rate
      
      
      
      
      
      
     active            <- dat$attr$active
     position          <- dat$attr$position
     
     inf.prob.r        <- dat$param$inf.prob.r
     act.rate          <- dat$param$act.rate
     inf.prob.i        <- dat$param$inf.prob.i 
     
     if (at==2) { 
       
       status          <- dat$attr$status  
       status_a        <- rep("s",length(active))
       status_g        <- rep("s",length(active))
       
       
       dat$attr$infTime_a  <- c(rep(NA, length(active)))  #set infection time to 0
       dat$attr$infTime_g  <- c(rep(NA, length(active)))  #set infection time to 0
       
       status_g[status=="i" & 
                  (position=="Insertive" |
                     position=="Versatile")
                ]   <- "i"
       
       status_a[status=="i" & 
                  (position=="Receptive" |
                     position=="Versatile")
                ]   <- "i"
       
       
       #Add to the network in time 2
       dat$attr$status_a   <- status_a
       dat$attr$status_g   <- status_g
       
       #set infection time for those who start infected.
       dat$attr$infTime_g[
         status=="i" & 
           (position=="Insertive" |
              position=="Versatile")
         ]       <- at
       
       dat$attr$infTime_a[
         status=="i" & 
           (position=="Receptive" |
              position=="Versatile")
         ]       <- at
       
       
       
     }
      
      
      if (at == 2) {
      
        # Pull age from the fitted network model
        dat$attr$sex           <- get.vertex.attribute(dat$nw, "sex")
        dat$attr$age           <- get.vertex.attribute(dat$nw, "age")
        dat$attr$age.actv      <- get.vertex.attribute(dat$nw, "age.actv")
        
        
      }
      
      
      ## Process - how many births do we expect, how many do we actually have? ##
      nBirthsExp     <- n * b.rate
      nBirths        <- rpois(1, nBirthsExp)
      

     #If a non-zero number of births, add the vertices to our network
      if (nBirths > 0) {
        dat$nw       <- add.vertices(dat$nw, nv = nBirths)
        newNodes     <- (n + 1):(n + nBirths)
        dat$nw       <- activate.vertices(dat$nw, onset = at, terminus = Inf, v = newNodes)
    
      
     # Then assign attributes
       
       dat$attr$active         <- c(dat$attr$active,      rep(1,   nBirths))  #everyone is active
       dat$attr$status_a       <- c(dat$attr$status_a,    rep("s", nBirths))  #everyone is susceptible
       dat$attr$status_g       <- c(dat$attr$status_g,    rep("s", nBirths))  #everyone is susceptible
       dat$attr$infTime_a      <- c(dat$attr$infTime_a,   rep(NA,  nBirths))  #no one is infected
       dat$attr$infTime_g      <- c(dat$attr$infTime_g,   rep(NA,  nBirths))  #no one is infected
       
       dat$attr$status         <- c(dat$attr$status,      rep("s", nBirths))  #everyone is susceptible
       dat$attr$infTime        <- c(dat$attr$infTime,     rep(NA,  nBirths))  #no one is infected
      
       dat$attr$entrTime       <- c(dat$attr$entrTime,    rep(at,  nBirths))  #mark entry time
       dat$attr$exitTime       <- c(dat$attr$exitTime,    rep(NA,  nBirths))  #no exit time
       dat$attr$sex            <- c(dat$attr$sex,         rep("M", nBirths))  #all male
       dat$nw                  <- set.vertex.attribute(dat$nw, "sex", c(rep("M", nBirths)), newNodes)
       
        
       # Updated age must go on both attr list and network b/c it's in the ERGM
       dat$attr$age  <- c(dat$attr$age,      rep(0, nBirths))     
       dat$nw        <- set.vertex.attribute(dat$nw, "age", 0, newNodes)
       
       #sex isn't in the ERGM but add to network for squareness? 
       dat$nw        <- set.vertex.attribute(dat$nw, "sex", c(rep("M", nBirths)), newNodes)
       
       
       # Same for position- create an add to attributes & network
       position      <- c(sample(c("Receptive",           #Sample position probabalistically 
                                          "Insertive", 
                                          "Versatile"), nBirths, 
                                        replace= TRUE, 
                                        prob=c(pct.pos_r, pct.pos_i, pct.pos_v)))
      
  dat$attr$position  <- c(dat$attr$position, position)     
  dat$nw             <- set.vertex.attribute(dat$nw, "position", c(position), newNodes)
  
   
 #Add sexual activity to attributes & network data   
 dat$attr$sex.actv   <- c(dat$attr$sex.actv,    rep(0,   nBirths))  #not sexually active 
 dat$nw              <- set.vertex.attribute(dat$nw, "sex.actv", c(rep(0, nBirths)), newNodes)
  
 #Determine when each person has 
  age.actv.new       <-rpert(nBirths, min=9, mode=15, max=40, shape=10)
  dat$attr$age.actv  <- c(dat$attr$age.actv,   age.actv.new)  #for now, pretend everyone becomes sexually active at age 10
  dat$nw             <- set.vertex.attribute(dat$nw, "age.actv", c(age.actv.new), newNodes)
   
 }
      
 
      ## Summary statistics ##
      dat$epi$b.flow[at]     <- nBirths
      
      return(dat)
    }
      

  #---------------------------------------------------  Epidemiology by Status ----------------------------------------------------#
  
  
  epi.func           <- function(dat, at) {
   
    if (at==300) { 
 # browser()
    }
    
    
    nsteps           <- dat$control$nsteps
    rNA              <- rep(NA, nsteps)
   
    active           <- dat$attr$active 
    status_a         <- dat$attr$status_a
    status_g         <- dat$attr$status_g
    position         <- dat$attr$position
  
  #Set empty vectors    
    if (at==2) {
      
 
   dat$epi$num.MM     <- 
   dat$epi$i.MM       <-   
   dat$epi$prv.MM     <- NA
   
  }
    
    
#Record numbers of men- overall and by position
    
 dat$epi$num.MM[at]   <- sum(active == 1                 , na.rm = TRUE)
   dat$epi$n.v[at]    <- sum(active ==1  & position=="Versatile")
   dat$epi$n.r[at]    <- sum(active ==1  & position=="Receptive")
   dat$epi$n.i[at]    <- sum(active ==1  & position=="Insertive")

   
 #Record numbers of infected men- overall 
    dat$epi$i_a.MM[at] <- sum(active == 1 & status_a=="i" , na.rm = TRUE)
    dat$epi$i_g.MM[at] <- sum(active == 1 & status_g=="i" , na.rm = TRUE)
    
#Infected men by position (Anal HPV)    
 dat$epi$i.num_a.v[at] <- sum(dat$attr$status_a == "i" & dat$attr$position == "Versatile" & active==1)
 dat$epi$i.num_a.r[at] <- sum(dat$attr$status_a == "i" & dat$attr$position == "Receptive" & active==1)
 dat$epi$i.num_a.i[at] <- sum(dat$attr$status_a == "i" & dat$attr$position == "Insertive" & active==1)  
  
#Infected men by position (Genital HPV)
 dat$epi$i.num_g.v[at] <- sum(dat$attr$status_g == "i" & dat$attr$position == "Versatile" & active==1)
 dat$epi$i.num_g.r[at] <- sum(dat$attr$status_g == "i" & dat$attr$position == "Receptive" & active==1)
 dat$epi$i.num_g.i[at] <- sum(dat$attr$status_g == "i" & dat$attr$position == "Insertive" & active==1) 
 
 #Prevalence anal
 dat$epi$prv_a.MM[at]  <- ( dat$epi$i_a.MM [at] / dat$epi$num.MM[at])
 dat$epi$prv_a.v [at]  <- ( dat$epi$i.num_a.v [at] / dat$epi$n.v[at])
 dat$epi$prv_a.r [at]  <- ( dat$epi$i.num_a.r [at] / dat$epi$n.r[at])
 dat$epi$prv_a.i [at]  <- ( dat$epi$i.num_a.i [at] / dat$epi$n.i[at])
 
#Prevalence genital 
 dat$epi$prv_g.MM[at]  <- ( dat$epi$i_g.MM [at] / dat$epi$num.MM[at])
 dat$epi$prv_g.v [at]  <- ( dat$epi$i.num_g.v [at] / dat$epi$n.v[at])
 dat$epi$prv_g.r [at]  <- ( dat$epi$i.num_g.r [at] / dat$epi$n.r[at])
 dat$epi$prv_g.i [at]  <- ( dat$epi$i.num_g.i [at] / dat$epi$n.i[at])
 
   return(dat)
  }
      
  
  #---------------------------------------------------  Infection Module by Status ----------------------------------------------------#
  
  
  
     
  f.inf_msm           <- function(dat, at) {
       
  if (at>=40) {
#   browser()
    }

      
    # #    # #    # #     Variables     # #    # #    # # 
  
    active            <- dat$attr$active
    position          <- dat$attr$position
    
    inf.prob.r        <- dat$param$inf.prob.r
    act.rate          <- dat$param$act.rate
    inf.prob.i        <- dat$param$inf.prob.i 
     
#    if (at==2) { 
# 
#      status          <- dat$attr$status  
#      status_a        <- rep("s",length(active))
#      status_g        <- rep("s",length(active))
#     
#      
#  dat$attr$infTime_a  <- c(rep(NA, length(active)))  #set infection time to 0
#  dat$attr$infTime_g  <- c(rep(NA, length(active)))  #set infection time to 0
#  
#   status_g[status=="i" & 
#   (position=="Insertive" |
#   position=="Versatile")
#                  ]   <- "i"
#   
#   status_a[status=="i" & 
#              (position=="Receptive" |
#               position=="Versatile")
#            ]   <- "i"
#     
#   
#   #Add to the network in time 2
#  dat$attr$status_a   <- status_a
#  dat$attr$status_g   <- status_g
#  
#  #set infection time for those who start infected.
#  dat$attr$infTime_g[
#    status=="i" & 
#  (position=="Insertive" |
#  position=="Versatile")
#               ]       <- at
#  
#  dat$attr$infTime_a[
#    status=="i" & 
#      (position=="Receptive" |
#         position=="Versatile")
#    ]       <- at
#  
#  
#      
#    }
    
    #For all times, pull status from the network
    status_a          <- dat$attr$status_a
    status_g          <- dat$attr$status_g
    
    
    # Create vectors of infected and susceptible IDs
    idsInf_a         <- which(active == 1 & status_a == "i")
    idsInf_g         <- which(active == 1 & status_g == "i")
    nActive          <- sum(active == 1)
    nElig            <- max(c(length(idsInf_a), length(idsInf_g)))

    # Initialize vectors
    nInf_A           <- 
    nInf_G           <- 0
      
    ## Process ##
    
    # If some infected AND some susceptible, then proceed
    if (nElig > 0 && nElig < nActive) {
      
      # Get discordant edgelist
        # del         <- discord_edgelist(dat, at)
        full_el       <- as.data.frame(dat$nw)
         el           <- full_el[which(full_el$terminus.censored==TRUE),]
   
       
        el$h_stat_a   <- status_a[el$head] 
        el$t_stat_a   <- status_a[el$tail] 
        
        el$h_stat_g   <- status_g[el$head] 
        el$t_stat_g   <- status_g[el$tail]  
          
        
        el$h_pos      <- position[el$head]   
        el$t_pos      <- position[el$tail]   
        
          at_risk     <-which(el$h_stat_a != el$t_stat_g  | el$h_stat_g != el$t_stat_a) 
          del         <-el[at_risk,] 
       
          if (!((dim(del)[1])==0)) {
           
  #If H partner has an Anal HPV infection and T partner is suceptible to genital HPV: 
      del$pG_H2T      <- ifelse(del$h_stat_a=="i" & del$t_stat_g =="s", 
                                #if true  
                                   ifelse(del$t_pos=="Receptive", 0,                #Receptive ineligible
                                   ifelse(del$t_pos=="Insertive", inf.prob.i,       #Insertive risk 5%
                                   ifelse(del$h_pos=="Insertive", 0,                #Other partner I, therefore V=R
                                   ifelse(del$h_pos=="Receptive", inf.prob.i,        #Other partner R, therefore V=I
                                          (inf.prob.i/2)))))                        #Both V, therefore risk is 1/2. 
                                #If false
                                ,0)              
      
      
      
   #Otherwise, if T partner has an Anal HPV infection and T partner is susceptible to genital HPV     
      del$pG_T2H      <- ifelse(del$h_stat_g=="s" & del$t_stat_a =="i",  
                                  #if true   
                                    ifelse(del$h_pos=="Receptive", 0,                #Receptive ineligible
                                    ifelse(del$h_pos=="Insertive", inf.prob.i,       #Insertive risk 5%
                                    ifelse(del$t_pos=="Insertive", 0,                #Other partner I, therefore V=R
                                    ifelse(del$t_pos=="Receptive", inf.prob.i,        #Other partner R, therefore V=I
                                           (inf.prob.i/2)))))                        #Both V, therefore risk is 1/2. 
                                 #If false
                                 ,0)                      
      
      
     del$G_inf_id     <- ifelse(del$pG_H2T>0, del$tail, ifelse(del$pG_T2H>0, del$head, 0))
    del$transProbG    <- del$pG_H2T + del$pG_T2H
      
      
      #If H partner has genital infection and T partner is susceptible to an Anal infection
      del$pA_H2T      <-ifelse(del$h_stat_g=="i" & del$t_stat_a =="s", 
                                #if true 
                                 ifelse(del$t_pos=="Receptive", inf.prob.r,    #Receptive risk 33% 
                                 ifelse(del$t_pos=="Insertive", 0,             #Insertive ineligible
                                 ifelse(del$h_pos=="Receptive", 0,             #Other partner R, therefore V=I
                                 ifelse(del$h_pos=="Insertive", inf.prob.r,    #Other partner I, therefore V=R     
                                            (inf.prob.r)/2))))                 #Both V, therefore risk is 1/2. 
                                #If false    
                                    ,0)                      
      
      #Otherwise, if T partner has an genital HPV infection and T partner is susceptible to anal HPV     
      del$pA_T2H      <-ifelse(del$t_stat_g=="i" & del$h_stat_a =="s",  
                                      #If true   
                                         ifelse(del$h_pos=="Receptive", inf.prob.r,    #Receptive risk 225%
                                         ifelse(del$h_pos=="Insertive", 0,             #Insertive ineligible
                                         ifelse(del$t_pos=="Receptive", 0,             #Other partner R, therefore V=I
                                         ifelse(del$t_pos=="Insertive", inf.prob.r,    #Other partner I, therefore V=R     
                                                 (inf.prob.r)/2))))                    #Both V, therefore risk is 1/2. 
                                 #If false    
                                 ,0)           
      
      
      del$A_inf_id    <- ifelse(del$pA_H2T>0, del$tail, ifelse(del$pA_T2H>0, del$head, 0))
      del$transProbA  <- del$pA_H2T + del$pA_T2H
      
      
      # Calculate infection-stage act/contact rates
      del$actRate     <- act.rate
      
      # Calculate final transmission probability per timestep
      del$finalProbA  <- 1 - (1 - del$transProbA) ^ del$actRate
      del$finalProbG  <- 1 - (1 - del$transProbG) ^ del$actRate
  
      # Randomize transmissions and subset df
      transmitA       <- rbinom(nrow(del), 1, del$finalProbA)
      transmitG       <- rbinom(nrow(del), 1, del$finalProbG)
  
      del_A           <- del[which(transmitA == 1), ]
      del_G           <- del[which(transmitG == 1), ]
      
      # Set new infections vector
      idsNewInf_A     <- unique(del_A$A_inf_id)
      idsNewInf_G     <- unique(del_G$G_inf_id)

        #infectors_strain <- dat$attr$strain[infectors]
        
      
       nInf_A         <- length(idsNewInf_A)
       nInf_G         <- length(idsNewInf_G)
       
        
       # Update nw attributes- anal 
       if (nInf_A > 0) {
     dat$attr$status_a[
      idsNewInf_A]    <- "i"
    
     dat$attr$infTime_a[
       idsNewInf_A]   <- at
       }
        
       # Update nw attributes- genital 
      if (nInf_G > 0) {
    dat$attr$status_g[
      idsNewInf_G]    <- "i"
    
    dat$attr$infTime_g[
      idsNewInf_G]    <- at
      }
      
     }
    }
    
  
   
    ## Output ##
    
    ## Save incidence vectors
   dat$epi$si.flow_a[at
              ]      <-nInf_A
   
   dat$epi$si.flow_g[at
              ]      <-nInf_G

    ## Save prevalence vectors
    dat$epi$i.num.a[at
              ]      <- sum(dat$attr$status_a == "i")
    
    dat$epi$i.num.g[at
              ]      <- sum(dat$attr$status_g == "i")
    

       return(dat)
      }
     
  
  
  
  #---------------------------------------------------  Infection Module by Status ----------------------------------------------------#
  
  
  f.recovery   <- function(dat, at) {
    
    ## Only run with SIR/SIS
    if (!(dat$control$type %in% c("SIR", "SIS"))) {
      return(dat)
    }

    
  # browser()
    
    # Variables ---------------------------------------------------------------
    active           <- dat$attr$active
    status_a         <- dat$attr$status_a
    status_g         <- dat$attr$status_g
    infTime_a        <- dat$attr$infTime_a
    infTime_g        <- dat$attr$infTime_g
   #tea.status       <- dat$control$tea.status
    
    modes            <- dat$param$modes
    mode             <- idmode(dat$nw)
    
    type             <- dat$control$type
    recovState       <- ifelse(type == "SIR", "r", "s")
    
    rec.rand         <- dat$control$rec.rand
    rec.rate.a       <- dat$param$rec.rate.a
    rec.rate.g       <- dat$param$rec.rate.g
    
    nRecov_a         <- 0
    idsElig_a        <- which(active == 1 & status_a == "i")
    nElig_a          <- length(idsElig_a)
    
    
    nRecov_g         <- 0
    idsElig_g        <- which(active == 1 & status_g == "i")
    nElig_g          <- length(idsElig_g)
    
    
    # Time-Varying Recovery Rate ----------------------------------------------
    infDur_a         <- at - infTime_a[active == 1 & status_a == "i"]
    infDur_a[
    infDur_a == 0]   <- 1
    lrec.rate_a      <- length(rec.rate.a)

    infDur_g         <- at - infTime_g[active == 1 & status_g == "i"]
    infDur_g[
    infDur_g == 0]   <- 1
    lrec.rate_g      <- length(rec.rate.g)
    
        
#For Anal HPV    
    
    if (lrec.rate_a == 1) {
      mElig          <- mode[idsElig_a]
      rates          <- c(rec.rate.a)
      ratesElig      <- rates[mElig]
      
    } else {
      mElig          <- mode[idsElig_a]
          
        rates        <- ifelse(infDur_a <= lrec.rate_a, rec.rate.a[infDur_a], rec.rate.a[lrec.rate_a])
              
            }
      ratesElig_a    <- rates
    
#For Genital HPV
      
      if (lrec.rate_g == 1) {
        mElig        <- mode[idsElig_g]
        rates        <- c(rec.rate.g)
        ratesElig    <- rates[mElig]
        
      } else {
        mElig        <- mode[idsElig_g]
        
        rates        <- ifelse(infDur_g <= lrec.rate_g, rec.rate.g[infDur_g], rec.rate.g[lrec.rate_g])
        
      }
      ratesElig_g    <- rates
      
      
       
    
    # Process Anal  -----------------------------------------------------------------
    if (nElig_a > 0) {
        
        vecRecov     <- which(rbinom(nElig_a, 1, ratesElig_a) == 1)
        if (length(vecRecov) > 0) {
        idsRecov_a   <- idsElig_a[vecRecov]
        nRecov_a     <- sum(mode[idsRecov_a] == 1)
        # nRecovM2   <- sum(mode[idsRecov_a] == 2)
        status_a[
         idsRecov_a] <- recovState
          
          }
      
    }
      
      
      # Process Genital  -----------------------------------------------------------------
      if (nElig_g > 0) {
        
        vecRecov     <- which(rbinom(nElig_g, 1, ratesElig_g) == 1)
        if (length(vecRecov) > 0) {
        idsRecov_g   <- idsElig_g[vecRecov]
          nRecov_g   <- sum(mode[idsRecov_g] == 1)
          
      status_g[
        idsRecov_g]  <- recovState
          
        }
        
      }
    
    
   dat$attr$status_a <- status_a
   dat$attr$status_g <- status_g
   
   
    if ("status_a" %in% dat$temp$fterms) {
      dat$nw         <- set.vertex.attribute(dat$nw, "status_a", dat$attr$status_a)
    }
    
   if ("status_g" %in% dat$temp$fterms) {
     dat$nw         <- set.vertex.attribute(dat$nw, "status_g", dat$attr$status_g)
   }
  
   
   dat$epi$new <- c(0, 12)
   
    # Output ------------------------------------------------------------------
  #  outName          <- ifelse(type == "SIR", "ir.flow_a", "is.flow_a")
  # If considering recovered state, this will have to change back   
    if (at == 2) {
 dat$epi$ir.flow_a   <- c(0, nRecov_a)
 dat$epi$ir.flow_g   <- c(0, nRecov_g)
 
 
    } else {
 dat$epi$ir.flow_a[
   at]               <- nRecov_a
 
 dat$epi$ir.flow_g[
   at]                <- nRecov_g
 
    }
    
    return(dat)
  }
  
  
  
  
  
  