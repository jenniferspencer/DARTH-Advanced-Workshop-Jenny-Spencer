
# MSM -----------------------------------------------------------------

#' @title Initialization Module
#'
#' @description This function initializes the master \code{dat} object on which
#'              data are stored, simulates the initial state of the network, and
#'              simulates disease status and other attributes.
#'
#' @param x An \code{EpiModel} object of class \code{\link{netest}}.
#' @param param An \code{EpiModel} object of class \code{\link{param_msm}}.
#' @param init An \code{EpiModel} object of class \code{\link{init_msm}}.
#' @param control An \code{EpiModel} object of class \code{\link{control_msm}}.
#' @param s Simulation number, used for restarting dependent simulations.
#'
#' @return
#' This function returns the updated \code{dat} object with the initialized values
#' for demographics and disease-related variables.
#'
#' @export
#' @keywords module msm
#'
initialize_func <- function(x, param, init, control, s) {
 
  # Master data list
  dat                   <- list()
  dat$param             <- param
  dat$init              <- init
  dat$control           <- control
      
  dat$attr              <- list()
  dat$stats             <- list()
  dat$stats$nwstats     <- list()
  dat$temp              <- list()
  dat$epi               <- list()
  
  ## Network simulation ##
  nw                    <- list()
  for (i in 1:2) {
    nw[[i]]             <- simulate(x[[i]]$fit)
  }
  
  ## Build initial edgelists
  dat$el                <- list()
  dat$p                 <- list()
  for (i in 1:2) {
    dat$el[[i]]         <- as.edgelist(nw[[i]])
    attributes(
   dat$el[[i]])$vnames  <- NULL
    p                   <- tergmLite::stergm_prep(nw[[i]], 
                                                  x[[i]]$formation, 
                                                  x[[i]]$coef.diss$dissolution,
                                                  x[[i]]$coef.form, 
                                                  x[[i]]$coef.diss$coef.adj, 
                                                  x[[i]]$constraints)
  p$model.form$formula  <- NULL
   p$model.diss$formula <- NULL
    dat$p[[i]] <- p
  }
 
  
  # Network parameters
  dat$nwparam           <- list()
  for (i in 1:2) {
    dat$nwparam[i]      <- list(x[[i]][-which(names(x[[i]]) == "fit")])
  }
  

  
  ## Nodal attributes ##
  
  # Degree terms
  dat$attr$deg.MSW      <- get.vertex.attribute(x[[1]]$fit$network, "deg.MSW")
  dat$attr$deg.MSM      <- get.vertex.attribute(x[[2]]$fit$network, "deg.MSM")
  
  num                   <-  length( dat$attr$sex_active )
  
  # Attr
  dat$attr$age          <- get.vertex.attribute(nw[[1]], "age")
  dat$attr$sex          <- get.vertex.attribute(nw[[1]], "sex")
  dat$attr$sex_actv     <- get.vertex.attribute(nw[[1]], "sex_actv")
  dat$attr$age_actv     <- get.vertex.attribute(nw[[1]], "age_actv")
  dat$attr$behave       <- get.vertex.attribute(nw[[1]], "behave")
  dat$attr$active       <- rep(1, num)

 
  # Arrival and departure
  dat$attr$arrival.time    <- rep(1, num)
  dat$attr$departure.time  <- rep(NA, num)

  #Need to add initil. of infection
  
  ## Infection Status and Time Modules
  dat                  <- init_status.hpv(dat)
  
  ## Get initial prevalence
  dat                  <- get_prev.net(dat, at = 1)
  
  # Network statistics
  dat$stats$nwstats     <- list()
  
  
  # Prevalence Tracking
  dat$temp$deg.dists    <- list()
  dat$temp$discl.list   <- matrix(NA, nrow = 0, ncol = 3)

  dat                   <- prevalence_msm(dat, at = 1)
  
  class(dat)            <- "dat"
  
  
  return(dat)
}


##' @title Removes any sexual partnerships prohibited by sexual role mixing
##'
##' @description Due to occassional issues in ERGM fitting, it is possible to
##'              have initial simulations in which there are pairings between
##'              exclusively insertive/insertive or receptive/receptive.
##'
##' @param nw An object of class \code{network}.
##'
##' @export
##' @keywords initiation utility msm
##'
#remove_bad_roles_msm <- function(nw) {
#  
#  el <- as.edgelist(nw)
#  
#  rc <- get.vertex.attribute(nw, "role.class")
#  rc.el <- matrix(rc[el], ncol = 2)
#  
#  rc.el.bad <- which((rc.el[, 1] == "R" & rc.el[, 2] == "R") |
#                       (rc.el[, 1] == "I" & rc.el[, 2] == "I"))
#  
#  if (length(rc.el.bad) > 0) {
#    el.bad <- el[rc.el.bad, , drop = FALSE]
#    
#    eid <- rep(NA, nrow(el.bad))
#    for (i in 1:nrow(el.bad)) {
#      eid[i] <- get.edgeIDs(nw, v = el.bad[i, 1], alter = el.bad[i, 2])
#    }
#    nw <- delete.edges(nw, eid)
#  }
#  
#  return(nw)
#}
#
#
#' @title Initialize the HPV status of persons in the network
#'
#' @description Sets the initial individual-level disease status of persons
#'              in the network, as well as disease-related attributes for
#'              infected persons.
#'
#' @param dat Data object created in initialization module.
#'
#' @export
#' @keywords initiation utility msm
#'
init_status.hpv <- function(dat) {

  
  # Variables ---------------------------------------------------------------
  tea.status            <- dat$control$tea.status
  i.num                 <- dat$init$i.num
  i.num.m2              <- dat$init$i.num.m2
  r.num                 <- dat$init$r.num
  r.num.m2              <- dat$init$r.num.m2
  
  status.vector         <- dat$init$status.vector
  num                   <- length(dat$attr$sex_actv)
  statOnNw              <- "status" %in% dat$temp$fterms
  
#  modes <- dat$param$modes
#  if (modes == 1) {
    mode                <- rep(1, num)
 # } else {
#    mode <- idmode(dat$nw)
#  }
  
  type <- dat$control$type
  
  
  # Status ------------------------------------------------------------------
  
  ## Status passed on input network
  if (statOnNw == TRUE) {
    status              <- get.vertex.attribute(dat$nw, "status")
  } else {
    if (!is.null(status.vector)) {
      status            <- status.vector
    } else {
      status            <- rep("s", num)
      status[sample(which(mode == 1), size = i.num)] <- "i"
   #   if (modes == 2) {
   #      status[sample(which(mode == 2), size = i.num.m2)] <- "i"
  #    }
      if (type == "SIR") {
        status[sample(which(mode == 1 & status == "s"), size = r.num)] <- "r"
   #     if (modes == 2) {
   #        status[sample(which(mode == 2 & status == "s"), size = r.num.m2)] <- "r"
  #      }
      }
    }
}

  dat$attr$status       <- status
  
  
  ## Save out other attr
  dat$attr$active       <- rep(1, length(status))
  dat$attr$entrTime     <- rep(1, length(status))
  dat$attr$exitTime     <- rep(NA, length(status))
#  if (tea.status == TRUE) {
#    dat$nw <- activate.vertex.attribute(dat$nw,
#                                        prefix = "testatus",
#                                        value = status,
#                                        onset = 1,
#                                        terminus = Inf)
#  }
  
  
  # Infection Time ----------------------------------------------------------
  ## Set up inf.time vector
  idsInf               <- which(status == "i")
  infTime              <- rep(NA, length(status))
  
  if (!is.null(dat$init$infTime.vector)) {
    infTime             <- dat$init$infTime.vector
  } else {
    # If vital dynamics, infTime is a geometric draw over the duration of infection
    if (dat$param$vital == TRUE && dat$param$di.rate > 0) {
      if (dat$control$type == "SI") {
        infTime[idsInf] <- -rgeom(n = length(idsInf), prob = dat$param$di.rate) + 2
      } else {
        infTime[idsInf] <- -rgeom(n = length(idsInf),
                                  prob = dat$param$di.rate +
                                    (1 - dat$param$di.rate)*mean(dat$param$rec.rate)) + 2
      }
    } else {
      if (dat$control$type == "SI" || mean(dat$param$rec.rate) == 0) {
        # if no recovery, infTime a uniform draw over the number of sim time steps
        infTime[idsInf] <- ssample(1:(-dat$control$nsteps + 2),
                                   length(idsInf), replace = TRUE)
      } else {
        infTime[idsInf] <- -rgeom(n = length(idsInf), prob = mean(dat$param$rec.rate)) + 2
      }
    }
  }
  
  dat$attr$infTime     <- infTime
  
  return(dat)
}


###' @title Sets the CCR5 genetic status of persons
###'
###' @description Initializes the CCR5-delta-32 genetic allele of the men in the
###'              population, based on parameters defining the probability
###'              distribution.
###'
###' @param dat Data object created in initialization module.
###'
###' @export
###' @keywords initiation utility msm
###'
##init_ccr5_msm <- function(dat) {
##  
##  num.B <- dat$init$num.B
##  num.W <- dat$init$num.W
##  num <- num.B + num.W
##  race <- dat$attr$race
##  status <- dat$attr$status
##  
#  nInfB <- sum(race == "B" & status == 1)
#  nInfW <- sum(race == "W" & status == 1)
#  
#  ##  CCR5 genotype
#  ccr5.heteroz.rr <- dat$param$ccr5.heteroz.rr
#  ccr5 <- rep("WW", num)
#  
#  # homozygotes for deletion
#  num.ccr5.DD.B <- dat$param$ccr5.B.prob[1] * num.B
#  # heterozygotes
#  num.ccr5.DW.B <- dat$param$ccr5.B.prob[2] * num.B
#  # homozygotes for deletion
#  num.ccr5.WW.B <- num.B - num.ccr5.DD.B - num.ccr5.DW.B
#  # DD's can't be infected
#  num.uninf.ccr5.DD.B <- round(num.ccr5.DD.B)
#  # Unique solution to get relative risk right in init pop
#  num.inf.ccr5.DW.B <- round(num.ccr5.DW.B * nInfB * ccr5.heteroz.rr /
#                               (num.ccr5.WW.B + num.ccr5.DW.B * ccr5.heteroz.rr))
#  num.uninf.ccr5.DW.B <- round(num.ccr5.DW.B - num.inf.ccr5.DW.B)
#  inf.B <- which(status == 1 & race == "B")
#  inf.ccr5.DW.B <- sample(inf.B, num.inf.ccr5.DW.B, replace = FALSE)
#  ccr5[inf.ccr5.DW.B] <- "DW"
#  uninf.B <- which(status == 0 & race == "B")
#  uninf.ccr5.DWDD.B <- sample(uninf.B, num.uninf.ccr5.DW.B + num.uninf.ccr5.DD.B)
#  uninf.ccr5.DW.B <- sample(uninf.ccr5.DWDD.B, num.uninf.ccr5.DW.B)
#  uninf.ccr5.DD.B <- setdiff(uninf.ccr5.DWDD.B, uninf.ccr5.DW.B)
#  ccr5[uninf.ccr5.DW.B] <- "DW"
#  ccr5[uninf.ccr5.DD.B] <- "DD"
#  
#  num.ccr5.DD.W <- dat$param$ccr5.W.prob[1] * num.W
#  num.ccr5.DW.W <- dat$param$ccr5.W.prob[2] * num.W
#  num.ccr5.WW.W <- num.W - num.ccr5.DD.W - num.ccr5.DW.W
#  num.uninf.ccr5.DD.W <- round(num.ccr5.DD.W)
#  num.inf.ccr5.DW.W <- round(num.ccr5.DW.W * nInfW * ccr5.heteroz.rr /
#                               (num.ccr5.WW.W + num.ccr5.DW.W * ccr5.heteroz.rr))
#  num.uninf.ccr5.DW.W <- round(num.ccr5.DW.W - num.inf.ccr5.DW.W)
#  inf.W <- which(status == 1 & race == "W")
#  inf.ccr5.DW.W <- sample(inf.W, num.inf.ccr5.DW.W)
#  ccr5[inf.ccr5.DW.W] <- "DW"
#  uninf.W <- which(status == 0 & race == "W")
#  uninf.ccr5.DWDD.W <- sample(uninf.W, num.uninf.ccr5.DW.W + num.uninf.ccr5.DD.W)
#  uninf.ccr5.DW.W <- sample(uninf.ccr5.DWDD.W, num.uninf.ccr5.DW.W)
#  uninf.ccr5.DD.W <- setdiff(uninf.ccr5.DWDD.W, uninf.ccr5.DW.W)
#  ccr5[uninf.ccr5.DW.W] <- "DW"
#  ccr5[uninf.ccr5.DD.W] <- "DD"
#  
#  dat$attr$ccr5 <- ccr5
#  
#  return(dat)
#}
#
#
##' @title Re-Initialization Module
##'
##' @description This function reinitializes an epidemic model to restart at a
##'              specified time step given an input \code{netsim} object.
##'
##' @param x An \code{EpiModel} object of class \code{\link{netsim}}.
##' @inheritParams initialize_msm
##'
##' @details
##' Currently, the necessary components that must be on \code{x} for a simulation
##' to be restarted must be: param, control, nwparam, epi, attr, temp, el, p.
##' TODO: describe this more.
##'
##' @return
##' This function resets the data elements on the \code{dat} master data object
##' in the needed ways for the time loop to function.
##'
##' @export
##' @keywords module msm
##'
#reinit_msm <- function(x, param, init, control, s) {
#  
#  need.for.reinit <- c("param", "control", "nwparam", "epi", "attr", "temp", "el", "p")
#  if (!all(need.for.reinit %in% names(x))) {
#    stop("x must contain the following elements for restarting: ",
#         "param, control, nwparam, epi, attr, temp, el, p",
#         call. = FALSE)
#  }
#  
#  if (length(x$el) == 1) {
#    s <- 1
#  }
#  
#  dat <- list()
#  
#  dat$param <- param
#  dat$param$modes <- 1
#  dat$control <- control
#  dat$nwparam <- x$nwparam
#  
#  dat$epi <- sapply(x$epi, function(var) var[s])
#  names(dat$epi) <- names(x$epi)
#  
#  dat$el <- x$el[[s]]
#  dat$p <- x$p[[s]]
#  
#  dat$attr <- x$attr[[s]]
#  
#  if (!is.null(x$stats)) {
#    dat$stats <- list()
#    if (!is.null(x$stats$nwstats)) {
#      dat$stats$nwstats <- x$stats$nwstats[[s]]
#    }
#  }
#  
#  dat$temp <- x$temp[[s]]
#  
#  class(dat) <- "dat"
#  return(dat)
#}
#
#
#
## HET -----------------------------------------------------------------
#
#
##' @export
##' @rdname initialize_msm
#initialize_het <- function(x, param, init, control, s) {
#  
#  dat <- list()
#  dat$temp <- list()
#  nw <- simulate(x$fit, control = control.simulate.ergm(MCMC.burnin = 1e6))
#  
#  dat$el <- list()
#  dat$el[[1]] <- as.edgelist(nw)
#  attributes(dat$el)$vnames <- NULL
#  p <- tergmLite::stergm_prep(nw, x$formation, x$coef.diss$dissolution, x$coef.form,
#                              x$coef.diss$coef.adj, x$constraints)
#  p$model.form$formula <- NULL
#  p$model.diss$formula <- NULL
#  dat$p <- list()
#  dat$p[[1]] <- p
#  
#  ## Network Model Parameters
#  dat$nwparam <- list(x[-which(names(x) == "fit")])
#  
#  ## Simulation Parameters
#  dat$param <- param
#  dat$param$modes <- 1
#  
#  dat$init <- init
#  dat$control <- control
#  
#  ## Nodal Attributes
#  dat$attr <- list()
#  
#  dat$attr$male <- get.vertex.attribute(nw, "male")
#  
#  n <- network.size(nw)
#  dat$attr$active <- rep(1, n)
#  dat$attr$entTime <- rep(1, n)
#  
#  dat <- initStatus_het(dat)
#  
#  age <- rep(NA, n)
#  age[dat$attr$male == 0] <- sample(init$ages.feml, sum(dat$attr$male == 0), TRUE)
#  age[dat$attr$male == 1] <- sample(init$ages.male, sum(dat$attr$male == 1), TRUE)
#  dat$attr$age <- age
#  
#  dat <- initInfTime_het(dat)
#  dat <- initDx_het(dat)
#  dat <- initTx_het(dat)
#  
#  # Circumcision
#  male <- dat$attr$male
#  nMales <- sum(male == 1)
#  age <- dat$attr$age
#  
#  circStat <- circTime <- rep(NA, n)
#  
#  circStat[male == 1] <- rbinom(nMales, 1, dat$param$circ.prob.birth)
#  
#  isCirc <- which(circStat == 1)
#  circTime[isCirc] <- round(-age[isCirc] * (365 / dat$param$time.unit))
#  
#  dat$attr$circStat <- circStat
#  dat$attr$circTime <- circTime
#  
#  
#  ## Stats List
#  dat$stats <- list()
#  
#  ## Final steps
#  dat$epi <- list()
#  dat <- prevalence_het(dat, at = 1)
#  
#}
#
#
##' @title Reinitialization Module
##'
##' @description This function reinitializes the master \code{dat} object on which
##'              data are stored, simulates the initial state of the network, and
##'              simulates disease status and other attributes.
##'
##' @param x An \code{EpiModel} object of class \code{\link{netest}}.
##' @param param An \code{EpiModel} object of class \code{\link{param_het}}.
##' @param init An \code{EpiModel} object of class \code{\link{init_het}}.
##' @param control An \code{EpiModel} object of class \code{\link{control_het}}.
##' @param s Simulation number, used for restarting dependent simulations.
##'
##' @return
##' This function returns the updated \code{dat} object with the initialized values
##' for demographics and disease-related variables.
##'
##' @keywords module het
##'
##' @export
##'
#reinit_het <- function(x, param, init, control, s) {
#  
#  need.for.reinit <- c("param", "control", "nwparam", "epi",
#                       "attr", "temp", "el", "p")
#  if (!all(need.for.reinit %in% names(x))) {
#    stop("x must contain the following elements for restarting: ",
#         "param, control, nwparam, epi, attr, temp, el, p",
#         call. = FALSE)
#  }
#  
#  if (length(x$el) == 1) {
#    s <- 1
#  }
#  
#  dat <- list()
#  
#  dat$param <- param
#  dat$param$modes <- 1
#  dat$control <- control
#  dat$nwparam <- x$nwparam
#  
#  dat$epi <- sapply(x$epi, function(var) var[s])
#  names(dat$epi) <- names(x$epi)
#  
#  dat$el <- x$el[[s]]
#  dat$p <- x$p[[s]]
#  
#  dat$attr <- x$attr[[s]]
#  
#  if (!is.null(x$stats)) {
#    dat$stats <- list()
#    if (!is.null(x$stats$nwstats)) {
#      dat$stats$nwstats <- x$stats$nwstats[[s]]
#    }
#  }
#  
#  dat$temp <- x$temp[[s]]
#  
#  class(dat) <- "dat"
#  
#  return(dat)
#}
#
#
#initStatus_het <- function(dat) {
#  
#  ## Variables
#  i.prev.male <- dat$init$i.prev.male
#  i.prev.feml <- dat$init$i.prev.feml
#  
#  male <- dat$attr$male
#  idsMale <- which(male == 1)
#  idsFeml <- which(male == 0)
#  nMale <- length(idsMale)
#  nFeml <- length(idsFeml)
#  n <- nMale + nFeml
#  
#  ## Process
#  status <- rep(0, n)
#  status[sample(idsMale, round(i.prev.male * nMale))] <- 1
#  status[sample(idsFeml, round(i.prev.feml * nFeml))] <- 1
#  
#  dat$attr$status <- status
#  
#  return(dat)
#}
#
#
#initInfTime_het <- function(dat) {
#  
#  status <- dat$attr$status
#  n <- length(status)
#  
#  infecteds <- which(status == 1)
#  infTime <- rep(NA, n)
#  
#  inf.time.dist <- dat$init$inf.time.dist
#  
#  if (inf.time.dist == "allacute") {
#    max.inf.time <- dat$param$vl.acute.topeak + dat$param$vl.acute.toset
#    infTime[infecteds] <- sample(0:(-max.inf.time), length(infecteds), TRUE)
#  } else {
#    max.inf.time <- dat$init$max.inf.time / dat$param$time.unit
#    if (inf.time.dist == "geometric") {
#      total.d.rate <- 1/max.inf.time
#      infTime[infecteds] <- -rgeom(length(infecteds), total.d.rate)
#    }
#    if (inf.time.dist == "uniform") {
#      infTime[infecteds] <- sample(0:(-max.inf.time), length(infecteds), TRUE)
#    }
#  }
#  
#  ## Enforce that time infected < age
#  infTime[infecteds] <- pmax(infTime[infecteds],
#                             1 - dat$attr$age[infecteds] * (365 / dat$param$time.unit))
#  
#  dat$attr$infTime <- infTime
#  
#  timeInf <- 1 - infTime
#  dat$attr$ageInf <- pmax(0, dat$attr$age - round(timeInf) * (dat$param$time.unit / 365))
#  
#  stopifnot(all(dat$attr$ageInf[infecteds] <= dat$attr$age[infecteds]),
#            all(dat$attr$ageInf[infecteds] >= 0))
#  
#  return(dat)
#}
#
#
#initDx_het <- function(dat) {
#  
#  n <- sum(dat$attr$active == 1)
#  status <- dat$attr$status
#  
#  dxStat <- rep(NA, n)
#  dxStat[status == 1] <- 0
#  
#  dxTime <- rep(NA, n)
#  
#  dat$attr$dxStat <- dxStat
#  dat$attr$dxTime <- dxTime
#  
#  return(dat)
#}
#
#
#initTx_het <- function(dat) {
#  
#  ## Variables
#  status <- dat$attr$status
#  n <- sum(dat$attr$active == 1)
#  nInf <- sum(status == 1)
#  
#  tx.init.cd4.mean <- dat$param$tx.init.cd4.mean
#  tx.init.cd4.sd <- dat$param$tx.init.cd4.sd
#  tx.elig.cd4 <- dat$param$tx.elig.cd4
#  
#  
#  ## Process
#  dat$attr$txStat <- rep(NA, n)
#  dat$attr$txStartTime <- rep(NA, n)
#  dat$attr$txStops <- rep(NA, n)
#  dat$attr$txTimeOn <- rep(NA, n)
#  dat$attr$txTimeOff <- rep(NA, n)
#  
#  txCD4min <- rep(NA, n)
#  txCD4min[status == 1] <- pmin(rnbinom(nInf,
#                                        size = nbsdtosize(tx.init.cd4.mean,
#                                                          tx.init.cd4.sd),
#                                        mu = tx.init.cd4.mean), tx.elig.cd4)
#  dat$attr$txCD4min <- txCD4min
#  dat$attr$txCD4start <- rep(NA, n)
#  dat$attr$txType <- rep(NA, n)
#  
#  return(dat)
#}
#
