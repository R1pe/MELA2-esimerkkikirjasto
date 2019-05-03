#' @param a
#' @param c
#' @alias b c
#' @return xy
#' \itemize {
#'    \item x
#'    \item y
#' }
F0 <- function(a,b)
{
  return(c(1,2))
}

#' @param a
#' @param c
#' @check a (0,)
#' @return xy
#' \itemize {
#'    \item x
#'    \item y
#' }
#' @retvalcheck xy
#' \itemize {
#'    \item x
#'    \item y (20,)
#' }
F1 <- function(a,c)
{
  return(c(3,4))
}

#' @param a
#' @param c
#' @alias b c
#' @check a (2,5)
#' @check c (0,)
#' @return xy
#' \itemize {
#'    \item x
#'    \item y
#' }
#' @retvalcheck xy
#' \itemize {
#'    \item x
#'    \item y (20,)
#' }
F2 <- function(a,b)
{
  return(c(6,7))
}

#' @param a
#' @param c
#' @alias b c
#' @check a (1,5)
#' @check c (0,)
#' @return xy
#' \itemize {
#'    \item x
#'    \item y
#' }
#' @retvalcheck xy
#' \itemize {
#'    \item x
#'    \item y (20,)
#' }
F2 <- function(a,b)
{
  return(c(20,21))                      #TODO: Miten palautat kaksi muuttujaa?
}
 
#' @param a
#' @param c
#' @alias b c
#' @check a {1}
#' @check c (-1,1)
#' @return xy
#' \itemize {
#'    \item x
#'    \item y
#' }
#' @retvalcheck xy
#' \itemize {
#'    \item x
#'    \item y (20,)
#' }
F2 <- function(a,b)
{
  return(c(20,21))                      #TODO: Miten palautat kaksi muuttujaa?
}