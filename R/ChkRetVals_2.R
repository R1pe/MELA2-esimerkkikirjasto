#' @title ChkRetVals_2 F0
#' @param a parameter a
#' @param c parameter c
#' @alias b c
#' @return xy
#' \itemize {
#'    \item x
#'    \item y
#' }
#' @export
ChkRetVals_2_F0 <- function(a,b)
{
  return(c(1,2))
}

#' @title ChkRetVals_2 F1
#' @param a parameter a
#' @param c parameter c
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
#' @export
ChkRetVals_2_F1 <- function(a,c)
{
  return(c(3,4))
}

#' @title ChkRetVals_2 F2
#' @param a parameter a
#' @param c parameter c
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
#' @export
ChkRetVals_2_F2 <- function(a,b)
{
  return(c(6,7))
}

#' @title ChkRetVals_2 F3
#' @param a parameter a
#' @param c parameter c
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
#' @export
ChkRetVals_2_F3 <- function(a,b)
{
  return(c(20,21))
}
 
#' @title ChkRetVals_2 F4
#' @param a parameter a
#' @param c parameter c
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
#' @export
ChkRetVals_2_F4 <- function(a,b)
{
  return(c(20,21))
}