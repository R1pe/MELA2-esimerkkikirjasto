#' @param diameter_h diameter under bark at height h
#' @param age_h number of annual rings (age) at height h
#' @param ageb_h number of annual rings at breast height (1.3 m)
#' @param diameter_bh diameter under bark at breast height
#' @param ts temperature sum
#' @param Heli_a
#' @alias dh dubh
#' @alias ch ageh
#' @alias cbh age
#' @alias dbh d_ub
#' @chekc species {1}
#' @alias heli Heli_a
#' @check dubh (0,) 
#' @check d_ub (0,)
#' @unit d_ub_h mm
#' @unit ageh a
#' @unit age a
#' @unit ts C
#' @unit density kgm-3
#' @return density
Density <-  function(dh,ch,cbh,dbh,ts,heli=1.08, a1=364.4, b1=17.578, b2=0.607, b3=0.4172, b4=0.0578) 
{
  dens = heli * (a1 - b1*0.5*dh/ch - b2*log(cbh)^3 +
                 b3*log(cbh)^3 * exp(1)^((dh/dbh)^7) + b4*ts)
  return(dens)
}  

#' @param diameter_h diameter under bark at height h
#' @param age_h number of annual rings (age) at height h
#' @param age_bh number of annual rings at breast height (1.3 m)
#' @param diameter_bh diameter under bark at breast height
#' @param ts temperature sum
#' @param Heli_a
#' @alias dh diameter_h
#' @alias ch age_h
#' @alias cbh age_bh
#' @alias dbh diameter_bh
#' @chekc species {1}
#' @alias heli Heli_a
#' @check diameter_h (0,) 
#' @check diameter_bh (0,)
#' @unit d_ub_h mm
#' @unit age_h a
#' @unit age_bh a
#' @unit ts C
#' @unit density kgm-3
#' @unit latewood %
#' @return latewood
#' @retvalcheck (0,100)
Latewood <-  function(dh,ch,cbh,dbh,ts, a1=91.7, b1=31.7, b2=224.9, b3=2.09, b4=0.00517) 
{
  lw <- a1 - b1*log(0.5*dh/ch) - b2*1/(0.5*dh/ch+2) + 
       b3*exp(1)^((dh/dbh)^7) + b4*ts
  return(lw)
} 

#' @param latewood
#' @param Heli_b
#' @unit latewood %
#' @unit Heli_b %
#' @unit species {1}
#' @check latewood (0,100)
#' @return earlywood
#' @retvalcheck (0,100)
Earlywood <- function(lw,heli=0.85) 
{
  return( heli*(100-lw) )
}

#' @param diameter_h diameter under bark at height h
#' @param age_h number of annual rings (age) at height h
#' @param tempsum temperature sum
#' @param relative_h relative height
#' @param Heli_c
#' @alias dh diameter_h
#' @alias ch age_h
#' @alias ts tempsum
#' @alias rh relative_h
#' @alias heli Heli_c
#' @check species {1}
#' @check diameter_h (0,)
#' @check relative_h (0,1)
#' @unit diameter_h mm
#' @unit age_h a
#' @unit tempsum C
#' @unit fibre_l mm
#' @return fibre_l
#' @retvalcheck (0,)
Fibre <- function(dh,ch,ts,rh,heli=1.25, a1=-1.21, b1=0.69, b2=0.33, b3=0.65, b4=0.13, b5=0.00043)
{
  fl = heli * (a1 + b1*math.log(ch) + b2*math.log(0.5*dh/ch) +
               b3*(1-math.exp(1)^(-1*rh/b4)) + b5*ts)
  return(fl)
}