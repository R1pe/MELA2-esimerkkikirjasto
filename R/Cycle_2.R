#' @title Cycle_2 Func1
#' @param x parameter x
#' @param y parameter y
#' @alias a x
#' @alias b y
#' @return xy
#' \itemize {
#'    \item x
#'    \item y
#' }
#' @export
Cycle_1_Func1 <- function(a,b)
{
    a = a+b # eg.   10 = 4+6
    b = a-b #       4 = 10-6
    a = a-b #       6 = 10-4
    return(c(a,b))
}
  