#' @title funcHakkila Kjhakkid_kuusi
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check diameter (1,45)
#' @check species {2}
#' @retval STRM
#' @retvalcheck (0,500)
#' @export
Kjhakkid_kuusi <- function(dd, a1=-7.0, b1=0.051, b2=1.33)
{
    return(a1 + b1*(b2*dd)^2)
}

#' @title funcHakkila Kjhakkid_muut
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {1,3,4,5,6,7,8}
#' @check diameter (1,45)
#' @retval STRM
#' @retvalcheck (0,500)
#' @export
Kjhakkid_muut <- function(dd, a1=-2.0, b1=0.039, b2=1.33)
{
    return(a1 + b1*(b2*dd)^2)
}

#' @title funcHakkila Kohakkid_kuusi
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {2}
#' @check diameter (1,45)
#' @retval DBM
#' @retvalcheck (0,10)
#' @export
Kohakkid_kuusi <- function(dd, a1=-0.62, b1=0.0134, b2=3.9e-8)
{
    return(a1 + b1*(dd*10) + (b2)*(dd*10)^3)
}

#' @title funcHakkila Kohakkid_manty
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {1,7}
#' @check diameter (1,45)
#' @retval DBM
#' @retvalcheck (0,10)
#' @export
Kohakkid_manty <- function(dd, a1=-0.84, b1=0.0194)
{
    return(a1 + b1*(dd*10))
}

#' @title funcHakkila Kohakkid_koivu
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {3,4,5,6,8}
#' @check diameter (1,45)
#' @retval DBM
#' @retvalcheck (0,10)
#' @export
Kohakkid_koivu <- function(dd, a1=-0.07, b1=0.0040)
{
    return(a1 + b1*(dd*10))
}

#' @title funcHakkila Nhakkidcr_kuusi
#' @param diameter mean diameter of the tree
#' @param crownratio crownratio of the tree
#' @alias dd diameter
#' @alias ss crownratio
#' @check species {2}
#' @check diameter (4,45)
#' @check crownratio (0.1,0.9)
#' @retval NM
#' @retvalcheck (0,90)
#' @export
Nhakkidcr_kuusi <- function(dd,ss, a1=0.37, b1=1.592e-8, b2=4.73e-6)
{
    return(a1 + b1*((dd*10)^3)*ss*100 + b2*(dd*10)*(ss*100)^2)
}

#' @title funcHakkila Nhakkidcr_manty
#' @param diameter mean diameter of the tree
#' @param crownratio crownratio of the tree
#' @alias dd diameter
#' @alias ss crownratio
#' @check species {1,7}
#' @check diameter (4,45)
#' @check crownratio (0.1,0.9)
#' @retval NM
#' @retvalcheck (0,90)
#' @export
Nhakkidcr_manty <- function(dd,ss, a1=-9.01, b1=1.8485, b2=0.0155)
{
    return( exp(a1 + b1*log(dd*10) + b2*ss*100 ) )
}

#' @title funcHakkila Nhakkid_kuusi
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {2}
#' @check diameter (1,45)
#' @retval NM
#' @retvalcheck (0,90)
#' @export
Nhakkid_kuusi <- function(dd, a1=-9.03, b1=2.2204)
{
    return( exp(a1 + b1*log(dd*10)) )
}

#' @title funcHakkila Nhakkid_manty
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {1,7}
#' @check diameter (1,45)
#' @retval NM
#' @retvalcheck (0,90)
#' @export
Nhakkid_manty <- function(dd, a1=-7.47, b1=1.6975)
{
    return( exp(a1 + b1*log(dd*10)) )
}

#' @title funcHakkila Eonhakkidhcr
#' @param diameter mean diameter of the tree
#' @param crownratio crownratio of the tree
#' @param height height of the tree
#' @alias dd diameter
#' @alias ss crownratio
#' @alias hh height
#' @check species {(3,6),8}
#' @check diameter (4,50)
#' @check crownratio (0.1,0.9)
#' @check height (3,29)
#' @retval LBNM
#' @retvalcheck (0,1000)
#' @export
Eonhakkidhcr <- function(dd, hh, ss,
                         a1=-12.4606, b1=2.73067, b2=1788.90, b3=0.01664)
{
    eonm <- exp(a1 + b1*log(dd*10) + b2/(hh*10)^2 + b3*ss*100)
    return(eonm)
}

#' @title funcHakkila Eonhakkid
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {(3,6),8}
#' @check diameter (1,45)
#' @retval NM
#' @retvalcheck (0,250)
#' @export
Eonhakkid <- function(dd, a1=-10.7699, b1=2.6016)
{
    return(exp(a1 + b1*log(dd*10)))
}

#' @title funcHakkila Eohakkidhcr_kuusi
#' @param diameter mean diameter of the tree
#' @param crownratio crownratio of the tree
#' @param height height of the tree
#' @alias dd diameter
#' @alias ss crownratio
#' @alias hh height
#' @check species {2}
#' @check diameter (4,50)
#' @check crownratio (0.1,0.9)
#' @check height (3,29)
#' @retval LBNM
#' @retvalcheck (0,90)
#' @export
Eohakkidhcr_kuusi <- function(dd, hh, ss,
                              a1=-9.821, b1=2.3031, b2=0.017075, b3=992.36)
{
    eom <- exp(a1 + b1*log(dd*10) + b2*ss*100 + b3/(hh*10)^2)
    return(eom)
}

#' @title funcHakkila Eohakkidhcr_manty
#' @param diameter mean diameter of the tree
#' @param crownratio crownratio of the tree
#' @param height height of the tree
#' @alias dd diameter
#' @alias ss crownratio
#' @alias hh height
#' @check species {1,7}
#' @check diameter (4,50)
#' @check crownratio (0.1,0.9)
#' @check height (3,29)
#' @retval LBNM
#' @retvalcheck (0,90)
#' @export
Eohakkidhcr_manty <- function(dd, hh, ss,
                              a1=-11.059, b1=2.56050, b2=0.0058932, b3=8.14e-5,
                              b4=1.13e-6)
{
    eom <- exp(a1 + b1*log(dd*10) - b2*((hh*10) - (ss*100*hh*10)/100) + 
                b3*((dd*10)+180)*ss*100 + b4*(dd*10)*(ss*100)^2)
    return(eom)
}

#' @title funcHakkila Eohakkidh_kuusi
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @alias dd diameter
#' @alias hh height
#' @check species {2}
#' @check diameter (1,45)
#' @check height (1,30)
#' @retval LBNM
#' @retvalcheck (0,300)
#' @export
Eohakkidh_kuusi <- function(dd,hh, a1=0.4112, b1=0.00026724, b2=1.41e-6, b3=0.00043562)
{
    eom <- a1 + b1*(dd*10)^2 + b2*((dd*10)^3) + b3*(((dd*10)^3)/(hh*10))
    return(eom)
}

#' @title funcHakkila Eohakkidh_manty
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @alias dd diameter
#' @alias hh height
#' @check species {1,7}
#' @check diameter (1,45)
#' @check height (1,30)
#' @retval LBNM
#' @retvalcheck (0,300)
#' @export
Eohakkidh_manty <- function(dd,hh, a1=-5.2678, b2=3.4914, b3=1.9498, b4=47.454)
{
    eom <- exp(a1 + b2*log(dd*10) - b3*log(hh*10) - b4*((dd*10)/(hh*10)^2))
    return(eom)
}

#' @title funcHakkila Eohakkid_kuusi
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {2}
#' @check diameter (1,45)
#' @retval LBM
#' @retvalcheck (0,250)
#' @export
Eohakkid_kuusi <- function(dd, a1=-3.71, b1=0.10229, b2=3.3e-6)
{
    return(a1 + b1*dd*10 + b2*((dd*10)^3))
}

#' @title funcHakkila Eohakkid_manty
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {1,7}
#' @check diameter (1,45)
#' @retval LBM
#' @retvalcheck (0,250)
#' @export
Eohakkid_manty <- function(dd, a1=-9.3954, b1=2.3268)
{
    return( exp(a1 + b1*log(dd*10)) )
}

#' @title funcHakkila Keonhakkidhcr
#' @param diameter mean diameter of the tree
#' @param crownratio crownratio of the tree
#' @alias dd diameter
#' @alias ss crownratio
#' @check species {(3,6),8}
#' @check diameter (1,45)
#' @check crownratio (0.1,0.9)
#' @retval DLNM
#' @retvalcheck (0,300)
#' @export
Keonhakkidhcr <- function(dd, ss, a1=-9.0521, b1=2.0532, b2=5.498e-5)
{
    return( exp(a1 + b1*log(dd*10) + b2*((dd*10)+180)*ss*100) )
}

#' @title funcHakkila Keonhakkid
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {(3,6),8}
#' @check diameter (1,45)
#' @retval DLNM
#' @retvalcheck (0,300)
#' @export
Keonhakkid <- function(dd, a1=-10.2692, b1=2.5124)
{
    return( exp(a1 + b1*log(dd*10)) )
}

#' @title funcHakkila Keohakkidhcr_kuusi
#' @param diameter mean diameter of the tree
#' @param crownratio crownratio of the tree
#' @param height height of the tree
#' @alias dd diameter
#' @alias ss crownratio
#' @alias hh height
#' @check species {2}
#' @check diameter (1,45)
#' @check crownratio (0.1,0.9)
#' @check height (1,30)
#' @retval DLBM
#' @retvalcheck (0,300)
#' @export
Keohakkidhcr_kuusi <- function(dd, hh, ss, a1=-9.3308, b1=2.2742, b2=872.51, b3=0.013594)
{
    keom <- exp(a1 + b1*log(dd*10) + b2/((hh*10)^2) + b3*ss*100)
    return(keom)
}

#' @title funcHakkila Keohakkidhcr_manty
#' @param diameter mean diameter of the tree
#' @param crownratio crownratio of the tree
#' @param height height of the tree
#' @alias dd diameter
#' @alias ss crownratio
#' @alias hh height
#' @check species {1,7}
#' @check diameter (1,45)
#' @check crownratio (0.1,0.9)
#' @check height (1,30)
#' @retval DLBM
#' @retvalcheck (0,300)
#' @export
Keohakkidhcr_manty <- function(dd, hh, ss, a1=-10.230, b1=2.5478, b2=0.0050869, b3=0.0057087)
{
    keom <- exp(a1 + b1*log(dd*10) - b2*((hh*10) - ((hh*10*ss*100)/100)) + b3*ss*100)
    return(keom)
}

#' @title funcHakkila Keohakkidh_kuusi
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @alias dd diameter
#' @alias hh height
#' @check species {2}
#' @check diameter (1,45)
#' @check height (1,30)
#' @retval DLBM
#' @retvalcheck (0,300)
#' @export
Keohakkidh_kuusi <- function(dd,hh, a1=0.4866, b1=0.00035026, b2=1.35e-6, b3=0.00042424)
{
    keom <- a1 + b1*(dd*10)^2 + b2*(dd*10)^3 + b3*(dd*10)^3/(hh*10)
    return(keom)
}

#' @title funcHakkila Keohakkidh_manty
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @alias dd diameter
#' @alias hh height
#' @check species {1,7}
#' @check diameter (1,45)
#' @check height (1,30)
#' @retval DLBM
#' @retvalcheck (0,300)
#' @export
Keohakkidh_manty <- function(dd,hh, a1=-9.7486, b1=0.0016023, b2=2.5600, b3=0.0063173)
 {
    return( exp(a1 + b1*dd + b2*log(dd*10) - b3*hh*10) )
 }

#' @title funcHakkila Keohakkid_kuusi
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {2}
#' @check diameter (1,45)
#' @retval DLBM
#' @retvalcheck (0,300)
#' @export
Keohakkid_kuusi <- function(dd, a1=-4.34, b1=0.11571, b2=3.34e-6)
{
    return(a1 + b1*dd*10 + b2*(dd*10)^3)
}

#' @title funcHakkila Keohakkid_manty
#' @param diameter mean diameter of the tree
#' @alias dd diameter
#' @check species {1,7}
#' @check diameter (1,45)
#' @retval DLBM
#' @retvalcheck (0,300)
#' @export
Keohakkid_manty <- function(dd, a1=-8.8027, b1=2.2475)
{
    return( exp(a1 + b1*log(dd*10)) )
}

#' @title funcHakkila Rhakki2_koivu
#' @param diameter mean diameter of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {(3,6)}
#' @check diameter (5,40)
#' @check age (10,250)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki2_koivu <- function(dd, tt, vv, kk,
                          a1=335.64, b1=34.156, b2=138.5, b3=1.01)
{
  return( (vv-kk) * ((a1 + b1*log(tt) + b2/dd) * b3) )
}

#' @title funcHakkila Rhakki2_manty1
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias hh height
#' @alias tt age 
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {1,7,8}
#' @check temperaturesum (500,750)
#' @check diameter (5,40)
#' @check height (0,30)
#' @check age (10,250)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki2_manty1 <- function(dd, hh, tt, vv, kk,
                           a1=341.77, b1=92.930, b2=193.00, b3=1.832, b4=1.01, b5=0.93)
{
    rm <- (vv-kk) * ( (a1 + b1*(hh/dd) - b2*(hh/tt)^2 + b3*(tt/hh)) * b4 * b5)
    return(rm)
}

#' @title funcHakkila Rhakki2_manty2
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {1,7,8}
#' @check temperaturesum (750,870)
#' @check diameter (5,40)
#' @check height (0,30)
#' @check age (10,250)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki2_manty2 <- function(dd, hh, tt, vv, kk,
                           a1=341.77, b1=92.930, b2=193.00, b3=1.832, b4=1.01, b5=0.97)
{
    rm <- (vv-kk) * ( (a1 + b1*(hh/dd) - b2*(hh/tt)^2 + b3*(tt/hh)) * b4 * b5)
    return(rm)
}

#' @title funcHakkila Rhakki2_manty3
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {1,7,8}
#' @check temperaturesum (870,<1350)
#' @check diameter (5,40)
#' @check height (0,30)
#' @check age (10,250)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki2_manty3 <- function(dd, hh, tt, vv, kk,
                            a1=341.77, b1=92.930, b2=193.00, b3=1.832, b4=1.01)
{
    rm <- (vv-kk) * ( (a1 + b1*(hh/dd) - b2*(hh/tt)^2 + b3*(tt/hh)) * b4 )  
    return(rm)
}

#' @title funcHakkila Rhakki2_kuusi1
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {2}
#' @check (750,<1000)
#' @check diameter (5,40)
#' @check height (0,30)
#' @check age (10,250)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki2_kuusi1 <- function(dd, hh, tt, vv, kk,
                            a1=303.37, b1=67.95, b2=0.2795, b3=0.619, b4=19.13, b5=1.01, b6=1.05)
{
    rm <- (vv-kk) * ( (a1 - b1*log(dd/tt) - b2*tt + b3*hh + b4*(dd/tt)^3) * b5 * b6 )
    return(rm)
}

#' @title funcHakkila Rhakki2_kuusi2
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {2}
#' @check temperaturesum (750,1000)
#' @check diameter (5,40)
#' @check height (0,30)
#' @check age (10,250)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki2_kuusi2 <- function(dd, hh, tt, vv, kk,
                            a1=303.37, b1=67.95, b2=0.2795, b3=0.619, b4=19.13, b5=1.01)
{
    rm <- (vv-kk) * ( (a1 - b1*log(dd/tt) - b2*tt + b3*hh + b4*(dd/tt)^3) * b5 )
    return(rm)
}

#' @title funcHakkila Rhakki1_koivu
#' @param diameter mean diameter of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {3,4,5,6}
#' @check diameter (1,10)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki1_koivu <- function(dd, tt, vv, kk,
                            a1=379.99, b1=22.84, b2=2.771, b3=1.01)
{
    return( (vv-kk) * (a1 + b1*log(tt) + b2*(tt/dd) * b3) )
}

#' @title funcHakkila Rhakki1_manty1
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {1,7,8}
#' @check temperaturesum (500,750)
#' @check diameter (1,10)
#' @check height (2.5,7.4)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki1_manty1 <- function(dd, hh, tt, vv, kk,
                            a1=381.63, b1=27.43, b2=62.44, b3=26.88, b4=0.526, b5=1.01, b6=0.93)
{
    rm <- ( (vv-kk)
            * (a1 - b1*(dd/tt)^2 + b2*log(hh/dd)
            - b3*log(hh/tt) + b4*hh)
            * b5 * b6 )
    return(rm)
}

#' @title funcHakkila Rhakki1_manty2
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {1,7,8}
#' @check temperaturesum (750,870)
#' @check diameter (1,10)
#' @check height (2.5,7.4)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki1_manty2 <- function(dd, hh, tt, vv, kk,
                            a1=381.63, b1=27.43, b2=62.44, b3=26.88, b4=0.526, b5=1.01, b6=0.97)
{
    rm <- (vv-kk) * (( a1 - b1*(dd/tt)^2 + b2*log(hh/dd) - b3*log(hh/tt) + b4*hh)
                    * b5 * b6 )
    return(rm)
}

#' @title funcHakkila Rhakki1_manty3
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {1,7,8}
#' @check temperaturesum (870,1350)
#' @check diameter (1,10)
#' @check height (2.5,7.4)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki1_manty3 <- function(dd, hh, tt, vv, kk,
                            a1=381.63, b1=27.43, b2=62.44, b3=26.88, b4=0.526, b5=1.01)
{
    rm <- (vv-kk) * ( (a1 - b1*(dd/tt)^2 + b2*log(hh/dd) - b3*log(hh/tt) + b4*hh) * b5 )
    return(rm)
}

#' @title funcHakkila Rhakki1_kuusi1
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {2}
#' @check temperaturesum (750,1000)
#' @check diameter (1,10)
#' @check height (2.5,7.4)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki1_kuusi1 <- function(dd, hh, tt, vv, kk,
                            a1=307.21, b1=67.35, b2=0.270, b3=0.001679,
                            b4=167.7, b5=9.837, b6=17.79, b7=1.01, b8=1.05)
{
    rm <- (vv-kk) * ( (a1 - b1*log(dd/tt) - b2*tt + 
                      b3*hh^3 + b4/tt - b5*(vv-kk)^2 + b6*(dd/tt)^3) *
                      b7 * b8 )
    return(rm)
}

#' @title funcHakkila Rhakki1_kuusi2
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @param knotbarkcorrection knot-bark correction term
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @alias kk knotbarkcorrection
#' @check species {2}
#' @check temperaturesum (750,1000)
#' @check diameter (1,10)
#' @check height (2.5,7.4)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @check knotbarkcorrection (0,0.1)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Rhakki1_kuusi2 <- function(dd, hh, tt, vv, kk,
                            a1=307.21, b1=67.35, b2=0.270,
                            b3=0.001679, b4=167.7, b5=9.837, b6=17.79, b7=1.01)
{
    rm <- (vv-kk) * ( (a1 - b1*log(dd/tt) - b2*tt + 
                      b3*hh^3 + b4/tt - b5*(vv-kk)^2 + b6*(dd/tt)^3)
                      * b7 )
    return(rm)
}

#' @title funcHakkila Krhakki2_koivu
#' @param diameter mean diameter of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias tt age
#' @alias vv volume
#' @check species {3,4,5,6}
#' @check diameter (5,50)
#' @check age (2,200)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki2_koivu <- function(dd, tt, vv,
                            a1=335.64, b1=34.156, b2=138.5, b3=1.01, b4=1.005)
{
   return( vv * (((a1 + b1*log(tt) + b2/dd) * b3) * b4) )
}

#' @title funcHakkila Krhakki2_manty1
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @check species {1,7,8}
#' @check temperaturesum (500,750)
#' @check diameter (5,50)
#' @check height (0,25)
#' @check age (2,200)
#' @check volume (0,0.5)
#' @retval BM
#' @retvalcheck (0,1500)
#' @export
Krhakki2_manty1 <- function(dd, hh, tt, vv,
                            a1=341.77, b1=92.930, b2=193.00,
                            b3=1.832, b4=1.01, b5=0.98, b6= 0.93)
{
    krm <- vv * ((a1 + b1*(hh/dd) - b2*(hh/tt)^2 + b3*(tt/hh)) * b4 * b5 * b6)
    return(krm)
}

#' @title funcHakkila Krhakki2_manty2
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @check species {1,7,8}
#' @check temperaturesum (750,870)
#' @check diameter (5,50)
#' @check height (0,25)
#' @check age (2,200)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki2_manty2 <- function(dd, hh, tt, vv,
                            a1=341.77, b1=92.930, b2=193.00, b3=1.832, b4=1.01,
                            b5=0.98, b6=0.97)
{
    krm <- vv * ((( a1 + b1*(hh/dd) - b2*(hh/tt)^2 + b3*(tt/hh) ) * b4 ) * b5 * b6 )
    return(krm)
}

#' @title funcHakkila Krhakki2_manty3
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @check species {1,7,8}
#' @check temperaturesum (870,1350)
#' @check diameter (5,50)
#' @check height (0,25)
#' @check age (2,200)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki2_manty3 <- function(dd, hh, tt, vv,
                            a1=341.77, b1=92.930, b2=193.00, b3=1.832, b4=1.01,
                            b5=0.98)
{
    krm <- vv * (( a1 + b1*(hh/dd) - b2*(hh/tt)^2 + b3*(tt/hh) ) * b4 * b5 )
    return(krm)
}

#' @title funcHakkila Krhakki2_kuusi1
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @check species {2}
#' @check temperaturesum (750,1000)
#' @check diameter (5,50)
#' @check height (0,25)
#' @check age (2,200)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki2_kuusi1 <- function(dd, hh, tt, vv,
                            a1=303.37, b1=67.95, b2=0.2795,
                            b3=0.619, b4=19.13, b5=1.01, b6=1.05)
{
    krm <- vv * (( a1 - b1*log(dd/tt) - b2*tt + b3*hh + b4*(dd/tt)^3) * b5 * b6 )
    return(krm)
}

#' @title funcHakkila Krhakki2_kuusi2
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @check species {2}
#' @check temperaturesum (750,1000)
#' @check diameter (5,50)
#' @check height (0,25)
#' @check age (2,200)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki2_kuusi2 <- function(dd, hh, tt, vv,
                            a1=303.37, b1=67.95, b2=0.2795, b3=0.619,
                            b4=19.13, b5=1.01)
{
    krm <- vv * (( a1 - b1*log(dd/tt) - b2*tt + b3*hh + b4*(dd/tt)^3) * b5 )
    return(krm)
}

#' @title funcHakkila Krhakki1_koivu
#' @param diameter mean diameter of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias tt age
#' @alias vv volume
#' @check species {3,4,5,6}
#' @check diameter (1,8)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki1_koivu <- function(dd, tt, vv,
                            a1=379.99, b1=22.84, b2=2.771, b3=1.01, b4=1.005)
{
    return( vv * ( a1 + b1*log(tt) + b2*(tt/dd) * b3 * b4) )
}

#' @title funcHakkila Krhakki1_manty3
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @check species {1,7,8}
#' @check temperaturesum (870,1350)
#' @check diameter (1,8)
#' @check height (2.5,7.4)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki1_manty3 <- function(dd, hh, tt, vv,
                            a1=381.63, b1=27.43, b2=62.44, b3=26.88, b4=0.526,
                            b5=1.01, b6=0.98)
{   
    krm <- vv * ((a1 - b1*(dd/tt)^2 + b2*log(hh/dd) - b3*log(hh/tt) + b4*hh) * b5 * b6 )
    return(krm)
}

#' @title funcHakkila Krhakki1_manty2
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @check species {1,7,8}
#' @check temperaturesum (750,870)
#' @check diameter (1,8)
#' @check height (2.5,7.4)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki1_manty2 <- function(dd, hh, tt, vv,
                            a1=381.63, b1=27.43, b2=62.44, b3=26.88, b4=0.526, b5=1.01,
                            b6=0.98, b7=0.97)
{
    krm <- vv * ((a1 - b1*(dd/tt)^2 + b2*log(hh/dd) - b3*log(hh/tt) + b4*hh) * b5 * b6 * b7)
    return(krm)
}

#' @title funcHakkila Krhakki1_manty1
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @check species {1,7,8}
#' @check temperaturesum (500,750)
#' @check diameter (1,8)
#' @check height (2.5,7.4)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki1_manty1 <- function(dd, hh, tt, vv,
                            a1=381.63, b1=27.43, b2=62.44, b3=26.88, b4=0.526, b5=1.01,
                            b6=0.98, b7=0.93)
{
    krm <- vv * ((a1 - b1*(dd/tt)^2 + b2*log(hh/dd) - b3*log(hh/tt) + b4*hh) * b5 * b6 * b7)
    return(krm)
}

#' @title funcHakkila Krhakki1_kuusi2
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @check species {2}
#' @check temperaturesum (750,1000)
#' @check diameter (1,8)
#' @check height (2.5,7.4)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki1_kuusi2 <- function(dd, hh, tt, vv,
                            a1=307.21, b1=67.35, b2=0.270, b3=0.001679, b4=167.7, b5=9.837,
                            b6=17.79, b7=1.01)
{
    krm <- vv * ((a1 - b1*log(dd/tt) - b2*tt + b3*hh^3 + b4/tt - b5*vv^2 + b6*(dd/tt)^3) * b7)
    return(krm)
}

#' @title funcHakkila Krhakki1_kuusi1
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#' @param age age of the tree
#' @param volume volume of the tree
#' @alias dd diameter
#' @alias hh height
#' @alias tt age
#' @alias vv volume
#' @check species {2}
#' @check temperaturesum (750,1000)
#' @check diameter (1,8)
#' @check height (2.5,7.4)
#' @check age (10,35)
#' @check volume (0,0.5)
#' @retval BABM
#' @retvalcheck (0,1500)
#' @export
Krhakki1_kuusi1 <- function(dd,hh,tt,vv,
                            a1=307.21, b1=67.35, b2=0.270, b3=0.001679,
                            b4=167.7, b5=9.837, b6=17.79, b7=1.01, b8=1.05)
{
    krm <- vv * ((a1 - b1*log(dd/tt) - b2*tt + b3*hh^3 + b4/tt - b5*vv^2 + b6*(dd/tt)^3) * b7 * b8)
    return(krm)
}