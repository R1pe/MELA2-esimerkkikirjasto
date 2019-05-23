#' @title Vols s_vol
#' @author Reetta Lempinen
#' @param species
#' @param diameter
#' @param heigth
#' @alias s species
#' @alias d diameter
#' @alias h heigth
#' @return v volume
s_vol <- function(s,d,h, b1=0.00007853475, b2=0.5, b3=0.01)
{
    return(b1*d^2 * h*b2 + b3*s)
}

#' @title Vols s_fvs
#' @author Reetta Lempinen
#' @param volume
#' @alias v volume
#' @return vs 
s_fvs <- function(v, b1=0.45)
{
    return(b1*v)
}

#' @title Vols s_fks
#' @author Reetta Lempinen
#' @param volume
#' @alias v volume
#' @return ks
s_fks <- function(v, b1=0.05)
{
    return b1*v
}

#' @title Vols s_fvp
#' @author Reetta Lempinen
#' @param volume
#' @alias v volume
#' @return vp
s_fvp <- function(v, b1=0.36)
{
    return(b1*v)
}

#' @title Vols s_fkp
#' @author Reetta Lempinen
#' @param volume
#' @alias v volume
#' @return kp
s_fkp <- function(v, b1=0.04)
{
    return(b1*v)
}

#' @title Vols s_fvt
#' @author Reetta Lempinen
#' @param volume
#' @alias v volume
#' @return vt
s_fvt <- function(v, b1=0.09)
{
    return(b1*v)
}

#' @title Vols s_fkt
#' @author Reetta Lempinen
#' @param volume
#' @alias v volume
#' @return kt
s_fkt <- function(v, b1=0.01)
{
    return(b1*v)
}

#' @title Vols s_fvw
#' @author Reetta Lempinen
#' @param volume
#' @alias v volume
#' @return vw
s_fvw <- function(v, b1=0.09)
{
    return(b1*v)
}

#' @title Vols s_fkw
#' @author Reetta Lempinen
#' @param volume
#' @alias v volume
#' @return kw
s_fkw <- function(v, b1=0.01)
{
    return(b1*v)
}

#' @title Vols s_fkk
#' @author Reetta Lempinen
#' @param volume
#' @alias v volume
#' @return k
s_fkk <- function(v, b1=0.1)
{
    return(b1*v)
}
