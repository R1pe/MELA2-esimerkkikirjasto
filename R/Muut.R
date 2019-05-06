#' @title Muut s__cr
#' @return cr
#' @export
s__cr <- function()
{
  return(0.5)
}

#' @title Muut z_dec
#' @param a parameter a
#' @param zz parameter zz
#' @return xy
#' \itemize {
#'    \item cc1
#'    \item cc2
#' }
#' @export
z_dec <- function(a,zz)
{
  at = c(0,1,2,5,10,20,50,100,200,500)
  p = c(1,0.98,0.90,0.60,0.30,0.15,0.05,0.02,0.01,0)
  i = 0
  bFound = FALSE
  repeat {
    i = i+1
    bFound = (a < at[i])      
    if(bFound) {
      break
    }
  }
    cc1 = p[i]*zz
    cc2 = -1*p[i]*zz
    return(c(cc1, cc2))
}

#' @title Muut s_len
#' @param s parameter s
#' @param d parameter d
#' @param h parameter h
#' @export
s_len <-  function(s,d)
{
  return(1.3 + 0.7*d + 0.1*s)
}

