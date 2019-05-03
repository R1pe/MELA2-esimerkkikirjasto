#' @param diameter_h  diameter under bark at height h
#' @param age_h number of annual rings (age) at height h
#' @param tempsum temperature sum
#' @param Heli_d
#' @alias dh diameter_h
#' @alias ch age_h
#' @alias ts tempsum
#' @alias heli Heli_d
#' @check species {2}
#' @check diamter_h (0,)
#' @unit diameter_h mm
#' @unit age_h a
#' @unit tempsum C
#' @unit density kgm-3
#' @return density
Density <- function(dh, ch, ts, heli=1.11, a1=304.3 b1=10.4437, b2=444.13, b3=0.2957)
{
  dens = heli * (a1 + b1*math.log(ch)^0.5 - b2*dh^1.5/ch/ts + b3*ts/(0.5*dh/ch+2.3))
  return dens
}

#' @param diameter_h  diameter under bark at height h
#' @param age_h number of annual rings (age) at height h
#' @param tempsum temperature sum
#' @alias dh diameter_h
#' @alias ch age_h
#' @alias ts tempsum
#' @check species {2}
#' @check diamter_h (0,)
#' @unit diameter_h mm
#' @unit age_h a
#' @unit tempsum C
#' @unit latewood %
#' @return latewood
#' @retvalcheck (0,100)
Latewood <- function(dh,ch,ts, a1=6.1, b1=9.183, b2=28.885, b3=0.005911)
{
    lw = a1 - b1*math.log(dh) + b2*math.log(ch)^0.5+b3*ts
    return lw
}

#' @param latewood
#' @param Heli_e
#' @alias lw latewood
#' @alias heli Heli_e
#' @check species {2}
#' @check latewood (0,)
#' @unit latewood %
#' @unit earlywood %
#' @return earlywood
#' @retvalcheck (0,100)
Earlywood <- function(lw,heli=0.95)
{
  return( heli*(100-lw) )
}

#' @param diameter_h diameter under bark at height h
#' @param age_h number of annual rings (age) at height h
#' @param tempsum temperature sum
#' @param relative_h
#' @param heli Heli_f
#' @alias dh diameter_h
#' @alias ch age_h
#' @alias ts tempsum
#' @alias rh relative_h
#' @check species {2}
#' @check diameter_h (0,)
#' @check relative_h (0,1)
#' @unit diameter_h mm
#' @unit age_h a
#' @unit tempsum C
#' @unit fibre_l mm
#' @return fibre_l
#' @retvalcheck (0,)
Fibre <- function(dh, ch, ts, rh, heli=1.05, a1=3.06, b1=2.20, b2=29.35, b3=1.55, b4=-0.5, b5=0.74, b6=0.70, b7=0.14, b8=0.00056)
{
    fl = heli * (a1 - b1*exp(1)^(-1*ch/b2) - b3*math.exp(1)^(b4*dh/ch/b5) -
                       b6*math.exp(1)^(-1*rh/b7) + b8*ts)
    return fl
}