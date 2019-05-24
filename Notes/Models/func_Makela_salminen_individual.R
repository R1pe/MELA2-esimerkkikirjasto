# NÄIDEN ONGELMA ON SE ETTÄ MITEN FHK TARKASTAA ETTÄ IKÄ ON SOPIVA?
#   VAIKUTTAA OLENNAISESTI FHK SUUNNITTELUUN JA ARKKITEHTUURIIN

#' @level tree
#' @keywords tyvitukki
#'
#' @param d diameter at chest height
#' @unit d cm
#' @check age (0,59)
#' @return Tyvitukin suurimman oksan läpimitta
tyvitukki1 <- function(d, a1=0.64, b1=0.081)
{
    y <- a1 + b1*d
    return(y)
}

#' @level tree
#' @keywords tyvitukki
#'
#' @param d diameter at chest height
#' @unit d cm
#' @check age (61,80)
#' @return Tyvitukin suurimman oksan läpimitta
tyvitukki2 <- function(d, a1=-0.1, b1=0.093)
{
    y <- a1 + b1*d
    return(y)
}

#' @level tree
#' @keywords tyvitukki
#'
#' @param d diameter at chest height
#' @unit d cm
#' @check age (81,100)
#' @return Tyvitukin suurimman oksan läpimitta
tyvitukki3 <- function(d, a1=-0.42, b1=0.044)
{
    y <- a1 + b1*d
    return(y)
}