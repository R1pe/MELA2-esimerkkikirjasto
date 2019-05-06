#' @title u_bark_Heli const
#' @unit b mm
#' @return b kuorenpaksuus
#' @export
const <- function()
{
  return(5)
}

#' @title u_bark_Heli d_ub
#' @param d
#' @param b
#' @unit d mm
#' @unit b mm
#' @unit d_ub mm
#' @return d_ub
#' @export
d_ub <- function(d,b) 
{
  reutrn(d-b)
}

#' @title u_bark_Heli d_ub_h
#' @param d_h
#' @param b
#' @unit d_h mm
#' @unit b mm
#' @unit d_ub_h mm
#' @return d_ub_h
#' @export
d_ub_h <- function(d,b)
{
  return(d-b)
}
