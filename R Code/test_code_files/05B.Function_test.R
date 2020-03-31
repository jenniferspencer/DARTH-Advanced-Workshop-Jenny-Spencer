epi.func            <- function(dat, at) {
  
  browser()
  nsteps           <- dat$control$nsteps
  rNA              <- rep(NA, nsteps)
  
  active           <- dat$attr$active 
  status           <- dat$attr$status
  position         <- dat$attr$position
  #combo           <- dat$attr$combo
  
  if (at==2) {
    
    
    dat$epi$num.MM    <- 
      dat$epi$i.MM      <-   
      dat$epi$prv.MM    <- NA
    
  }
  
  
  dat$epi$num.MM[at]  <- sum(active == 1               , na.rm = TRUE)
  dat$epi$i.MM[at]  <- sum(active == 1 & status=="i" , na.rm = TRUE)
  dat$epi$n.v[at]   <- sum(active ==1 & position=="Versatile")
  dat$epi$n.r[at]   <- sum(active ==1 & position=="Receptive")
  dat$epi$n.i[at]   <- sum(active ==1 & position=="Insertive")
  
  
  dat$epi$i.num.v[at] <- sum(dat$attr$status == "i" & dat$attr$position == "Versatile")
  dat$epi$i.num.r[at] <- sum(dat$attr$status == "i" & dat$attr$position == "Receptive")
  dat$epi$i.num.i[at] <- sum(dat$attr$status == "i" & dat$attr$position == "Insertive")  
  
  dat$epi$prv.MM[at]  <- ( dat$epi$i.MM [at] / dat$epi$num.MM[at])
  dat$epi$prv.v[at]   <- ( dat$epi$i.num.v [at] / dat$epi$n.v[at])
  dat$epi$prv.r[at]   <- ( dat$epi$i.num.r [at] / dat$epi$n.r[at])
  dat$epi$prv.i[at]   <- ( dat$epi$i.num.i [at] / dat$epi$n.i[at])
  
  
  
  return(dat)
}
