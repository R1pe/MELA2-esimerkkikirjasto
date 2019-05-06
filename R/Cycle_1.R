# parametrin kautta aiheituva rekursio

#' @title Cycle_1 F0
#' @param a parameter a
#' @param c parameter c
#' @return x
#' @export
Cycle_1_F0 <- function(a,c)
{
  return(a+b)
}

#' @title Cycle_1 F1
#' @param b parameter b
#' @return c
#' @export
Cycle_1_F1 <- function(b)
{
  return(b*b*b + 2)
}

#' @title Cycle_1 F2
#' @param x parameter x
#' @return c
#' @export
Cycle_1_F2 <- function(x)
{
  return(x*x*x)
}