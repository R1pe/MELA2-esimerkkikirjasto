#' @title misc_Heli RelativeHeight
#' @param h_x paramter h_x
#' @param h parameter h
#' @alias h h_x
#' @check h (0,)
#' @return rel_h
#' @export 
RelativeHeight <- function(x,h)
{
  return(x/h)
}