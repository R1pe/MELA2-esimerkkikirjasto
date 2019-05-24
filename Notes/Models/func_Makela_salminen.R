# MALLIN PARAMETRIT VOIDAAN KALIBROIDA MUTTA
#   MALLIN KOMPONENTIT AIHEUTTAVAT IF-ELSE VIIDAKOITA
#   ETENKIN KUN KOMPONENTTEJA ON PALJON

#' @param d diameter at chest height
#' @param a age of the three in years
#' @check a (0,100)
#' @return the diameter of the larges branch in the butt log
tyvitukki <- function(d, a, coefs, customCoefs=FALSE)
{
    if(customCoefs == FALSE) {
        if(a < 60) {
            coefs <- c(0.64, 0.081)
        } ifelse(a > 60 && a < 81) {
            coefs <- c(-0.1, 0.093)
        } ifelse(a > 81 && a < 100) {
            coefs <- c(0.42, 0.044)
        } else {
            stop("Parameter Age is not in desired range")
        }
    }
        
    y <- coefs[1] + coefs[2]*d
    return(y);
}

### TAI ###

#' @param d diameter at chest height
#' @param a age of the three in years
#' @check a (0,100)
#' @return the diameter of the larges branch in the butt log
tyvitukki <- function(d, a, a1=NULL, b1=NULL)
{
    if(is.null(a1) || is.null(b1)) {
        if(a < 60) {
            a1 <- 0.64
            b1 <- 0.081
        } else if(a > 60 && a < 81) {
            a1 <- -0.1
            b1 <- 0.093
        } else if(a > 81 && a < 100) {
            a1 <- 0.42
            b1 <- 0.044
        } else {
            stop("Parameter Age is not in desired range")
        }
    }
        
    y <- a1 + b1*d
    return(y);
}

### TAI ###

#' @param d diameter at chest height
#' @param a age of the three in years
#' @check a (0,100)
#' @return the diameter of the larges branch in the butt log
tyvitukki <- function(d, a, coef=c(NA, NA))
{
    print( typeof(match.call()[[1]]) )
    print( formalArgs(tyvitukki) )
    if(is.na(coef[1]) || is.na(coef[2])) {
        if(a < 60) {
            coef <- c(0.64, 0.081)
        } else if(a > 60 && a < 81) {
            coef <- c(-0.1, 0.093)
        } else if(a > 81 && a < 100) {
            coef <- c(0.42, 0.044)
        } else {
            stop("Parameter Age is not in desired range")
        }
    }
        
    y <- coef[1] + coef[2]*d
    return(y);
}