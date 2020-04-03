simnet_msm <- function(dat, at) {
  
  browser()
  
  ## Edges correction
  dat <- edges_correct_msm(dat, at)
  
  ## Main network
  nwparam.m <- EpiModel::get_nwparam(dat, network = 1)
  
  if (dat$param$method == 1) {
    dat$attr$deg.pers <- get_degree(dat$el[[2]])
  } else {
    dat$attr$deg.pers <- paste0(dat$attr$race, get_degree(dat$el[[2]]))
  }
  dat <- tergmLite::updateModelTermInputs(dat, network = 1)
  
  dat$el[[1]] <- tergmLite::simulate_network(p = dat$p[[1]],
                                             el = dat$el[[1]],
                                             coef.form = nwparam.m$coef.form,
                                             coef.diss = nwparam.m$coef.diss$coef.adj,
                                             save.changes = TRUE)
  
  dat$temp$new.edges <- NULL
  if (at == 2) {
    new.edges.m <- matrix(dat$el[[1]], ncol = 2)
  } else {
    new.edges.m <- attributes(dat$el[[1]])$changes
    new.edges.m <- new.edges.m[new.edges.m[, "to"] == 1, 1:2, drop = FALSE]
  }
  dat$temp$new.edges <- matrix(dat$attr$uid[new.edges.m], ncol = 2)
  
  
  ## Casual network
  nwparam.p <- EpiModel::get_nwparam(dat, network = 2)
  
  if (dat$param$method == 1) {
    dat$attr$deg.main <- get_degree(dat$el[[1]])
  } else {
    dat$attr$deg.main <- paste0(dat$attr$race, get_degree(dat$el[[1]]))
  }
  dat <- tergmLite::updateModelTermInputs(dat, network = 2)
  
  dat$el[[2]] <- tergmLite::simulate_network(p = dat$p[[2]],
                                             el = dat$el[[2]],
                                             coef.form = nwparam.p$coef.form,
                                             coef.diss = nwparam.p$coef.diss$coef.adj,
                                             save.changes = TRUE)
  
  if (at == 2) {
    new.edges.p <- matrix(dat$el[[2]], ncol = 2)
  } else {
    new.edges.p <- attributes(dat$el[[2]])$changes
    new.edges.p <- new.edges.p[new.edges.p[, "to"] == 1, 1:2, drop = FALSE]
  }
  dat$temp$new.edges <- rbind(dat$temp$new.edges,
                              matrix(dat$attr$uid[new.edges.p], ncol = 2))
  
  
  ## One-off network
  nwparam.i <- EpiModel::get_nwparam(dat, network = 3)
  
  if (dat$param$method == 1) {
    dat$attr$deg.pers <- get_degree(dat$el[[2]])
  } else {
    dat$attr$deg.pers <- paste0(dat$attr$race, get_degree(dat$el[[2]]))
  }
  dat <- tergmLite::updateModelTermInputs(dat, network = 3)
  
  dat$el[[3]] <- tergmLite::simulate_ergm(p = dat$p[[3]],
                                          el = dat$el[[3]],
                                          coef = nwparam.i$coef.form)
  
  if (dat$control$save.nwstats == TRUE) {
    dat <- calc_resim_nwstats(dat, at)
  }
  
  return(dat)
}