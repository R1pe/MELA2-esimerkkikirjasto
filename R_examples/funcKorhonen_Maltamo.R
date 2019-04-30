# @param diameter
# @param height
# @param crownratio
# @alias dd diameter
# @alias hh height
# @alias ss crownratio
# @check species {1,7}
# @check diameter (4,50)
# @check height (3,29)
# @check crownratio (0.1,0.9)
# @return LBM
# @retvalcheck (0,90)
Eokorhodhcr <- function(dd,hh,ss, a1=-3.0599, b1=3.1287, b2=1.3936, b3=0.0005298, b4=0.1162)
{
    eom <- exp(a1 + b1*log(dd) - b2*log(hh) - b3*dd^2 + b4*(hh-(ss*hh)))
    return eom
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {1,7}
# @check sitetype {(1,2,3,4,6,7,8}
# @check diameter (4,50)
# @check height (3,29)
# @return BAM
# @retvalcheck (0,90)
Kkorhodhbo_stn5 <- function(dd,hh, a1=-4.409, b1=0.905, b2=0.3925)
{
    return exp(a1 + b1*log(dd^2) + b2*log(hh))
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {1,7}
# @check sitetype {5}
# @check diameter (4,50)
# @check height (3,29)
# @return BAM
# @retvalcheck (0,90)
Kkorhodhbo_st5 <- function(dd,hh, a1=-4.409, b1=0.905, b2=0.3925, b3=0.101)
{
    return exp(a1 + b1*log(dd^2) + b2*log(hh) * b3)
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {1,7}
# @check diameter (4,50)
# @check height (3,29)
# @return BAM
# @retvalcheck (0,90)
Kkorhodh <- function(dd,hh, a1=-4.344, b1=0.885, b2=0.435)
{
    return exp(a1 + b1*log(dd^2) + b2*log(hh))
}

# @param diameter
# @param height
# @param age
# @alias dd diameter
# @alias hh height
# @alias tt age
# @check species {1,7}
# @check diameter (4,50)
# @check height (3,29)
# @check age (10,180)
# @return BM
# @retvalcheck (0,1200)
Rkorhodht <- function(dd,hh,tt, a1=-4.326, b1=0.842, b2=1.212, b3=0.087)
{
    return exp(a1 + b1*log(dd^2) + b2*log(hh) + b3*log(tt))
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {1,7}
# @check diameter (4,50)
# @check height (3,29)
# @return BM
# @retvalcheck (0,1500)
Rkorhodh <- function(dd,hh, a1=-4.182, b1=0.879, b2=1.215)
{
    return exp(a1 + b1*log(dd^2) + b2*log(hh))
}


# @param diameter
# @param height
# @param crownratio
# @alias dd diameter
# @alias hh height
# @alias ss crownratio
# @check species {1,7}
# @check diameter (4,50)
# @check height (3,30)
# @check crownratio (0.1,0.9)
# @return AGM
# @retvalcheck (0,1500)
Mpkorhodhcr <- function(dd,hh,ss, a1=-2.649, b1=2.127, b2=0.117, b3=0.000202, b4=0.1496, b5=0.00163)
{
    agm <- exp(a1 + b1*log(dd) + b2*hh - b3*dd^2 - b4*log(hh*ss) - b5*hh^2)
    return agm
}
