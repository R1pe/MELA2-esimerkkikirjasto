# @param diameter
# @param height
# @param relativeheight
# @alias dd diameter
# @alias hh height
# @alias hd relativeheight
# @check species {1,7}
# @check diameter (4,50)
# @check height (3,29)
# @check relativeheight (3,33)
# @return DBM
# @retvalcheck (0,250)
Kolaiho_manty <- function(dd,hh,hd, b1=3101.458, b2=0.307, b3=5.275)
{
  return (b1*(dd^b2)*(hh/hd)^b3) / 1000
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {3,4,5,6,8}
# @check diameter (4,50)
# @check height (3,29)
# @return DBM
# @retvalcheck (0,250)
Kolaiho_koivu <- function(dd,hh, b1=1130.121, b2=1.693, b3=-2.146)
{
  return (b1*(dd^b2)*hh^b3) / 1000
}

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
# @return NM
# @retvalcheck (0,90)
Nlaiho_manty <- function(dd,hh,ss, b1=33.203, b2=2.132, b3=-0.502)
{
  return (b1*(dd^b2)*(hh-(ss*hh))^b3) / 1000
}

# @param diameter
# @alias dd diameter
# @check species {3,4,5,6,8}
# @check diameter (4,50)
# @return NM
# @retvalcheck (0,90)
Nlaiho_koivu <- function(dd, b1=13.18, b2=1.978)
{
  return (b1*(dd^b2)) / 1000
}

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
# @return LBNM
# @retvalcheck (0,250)
Eonlaiho_manty <- function(dd,hh,ss, b1 <-3.992, b2=3.285, b3=-0.804)
{
  return (b1 * (dd^b2) * (hh-(ss*hh))^b3) / 1000
}

# @param diameter
# @param height
# @param relativeheight
# @alias dd diameter
# @alias hh height
# @alias hd relativeheight
# @check species {3,4,5,6,8}
# @check diameter (4,50)
# @check height (3,29)
# @return LBNM
# @retvalcheck (0,250)
Eonlaiho_koivu <- function(dd,hh,hd, b1=3.775, b2=2.966, b3=-0.745)
{
  return (b1 * dd^b2 * (hh/hd)^b3) / 1000
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
Klaiho_manty <- function(dd,hh, b1=5.658, b2=2.251, b3=0.249)
{
  return (b1 * dd^b2 * hh^b3) / 1000
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {3,4,5,6,8}
# @check diameter (4,50)
# @check height (3,29)
# @return BAM
# @retvalcheck (0,90)
Klaiho_koivu <- function(dd,hh, b1=5.156, b2=1.197, b3=1.456)
{
  return (b1 * dd^b2 * hh^b3) / 1000
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {1,7}
# @check diameter (1,45)
# @check height (1,30)
# @return BM
# @retvalcheck (0,1500)
Rlaiho_manty <- function(dd,hh, b1=14.422, b2=1.84, b3=1.185)
{
  return (b1 * dd^b2 * hh^b3) / 1000
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {3,4,5,6,8}
# @check diameter (1,45)
# @check height (1,30)
# @return BM
# @retvalcheck (0,1500)
Rlaiho_koivu <- function(dd,hh, b1=6.329, b2=1.82, b3=1.58)
{
  return (b1 * dd^b2 * hh^b3) / 1000
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {2}
# @check diameter (4,50)
# @check height (3,29)
# @return BABM
# @retvalcheck (0,1500)
Krlaiho <- function(dd,hh, b1=38.711, b2=1.789, b3=0.901)
{
  return (b1 * dd^b2 * hh^b3) / 1000
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {2}
# @check diameter (4,50)
# @check height (3,29)
# @return AGM
# @retvalcheck (0,1500)
Mplaiho_kuusi <- function(dd,hh, b1=92.558, b2=1.652, b3=0.855)
{
  return (b1 * dd^b2 * hh^b3) / 1000
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {1,7}
# @check diameter (4,50)
# @check height (3,29)
# @return AGM
# @retvalcheck (0,1500) 
Mplaiho_manty <- function(dd,hh, b1=53.677, b2=2.143, b3=0.510)
{
  return (b1 * dd^b2 * hh^b3) / 1000
}

# @param diameter
# @param height
# @alias dd diameter
# @alias hh height
# @check species {3,4,5,6,8}
# @check diameter (4,50)
# @check height (3,29)
# @return AGM
# @retvalcheck (0,1500) 
Mplaiho_koivu <- function(dd,hh, b1=37.437, b2=2.031, b3=0.799)
{
  return (b1 * dd^b2 * hh^b3) / 1000
}  