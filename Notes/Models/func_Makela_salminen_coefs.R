# NÄISSÄ ONGELMANA SE ETTÄ MALLIN PARAMETREJA
#    EI VOIDA KALIBROIDA.

tyvitukki_coefs <- function(a)
{
    if(a < 60) {
        coefs <- c(0.64, 0.081)
    } ifelse(a > 60 && a < 81) {
        coefs <- c(-0.1, 0.093)
    } ifelse(a > 81 && a < 100) {
        coefs <- c(0.42, 0.044)
    } else {
        stop("Parameter Age is not in desired range")
    }
    return(coefs)
}

#' @param d diameter at chest height
#' @param a age of the three in years
#' @check a (0,100)
#' @return the diameter of the larges branch in the butt log
tyvitukki <- function(d, a)
{
    coefs <- tyvitukki_coefs(a)
    y <- coefs[1] + coefs[2]*d
    return(y);
}


#### TAI ####

#' @param d diameter at chest height
#' @param a age of the three in years
#' @check a (0,100)
#' @return the diameter of the larges branch in the butt log
tyvitukki <- function(d, a)
{
    if(a < 60) {
        coefs <- c(0.64, 0.081)
    } ifelse(a > 60 && a < 81) {
        coefs <- c(-0.1, 0.093)
    } ifelse(a > 81 && a < 100) {
        coefs <- c(0.42, 0.044)
    } else {
        stop("Parameter Age is not in desired range")
    }
    y <- coefs[1] + coefs[2]*d
    return(y);
}

#### TAI ####

#' @param d diameter at chest height
#' @param a age of the three in years
#' @check a (0,100)
#' @return the diameter of the larges branch in the butt log
tyvitukki <- function(d, a, a1=0.64, b1=0.081)
{
    if(a > 60 && a < 81) {
        coefs <- c(-0.1, 0.093)
    } ifelse(a > 81 && a < 100) {
        coefs <- c(0.42, 0.044)
    } else {
        coefs <- c(a1, b1)
    }
    y <- coefs[1] + coefs[2]*d
    return(y);
}