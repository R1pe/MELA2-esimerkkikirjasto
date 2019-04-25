Jmark2 <- function(kjm,kam)
{
  return(kjm-kam)
}

Jmarkd_kuusi1 <- function(dd, b1=7.6283, b2=2.5706)
{

  return( exp(b1 * (dd/(dd+12)) - b2) )
}

Jmarkd_kuusi2 <- function(dd, a1=6.3851, a2=2.5706, b1=13.3703, b2=7.6283)
{
  jm <- exp(b1 * (dd/(dd+8)) - a1) + exp(b2 * (dd/(dd+12)) - a2)
  return(jm)
}

Jmarkd_manty1 <- function(dd, a1=3.8375, b1=8.8795)
{
  return( exp(b1 * (dd/(dd+10)) - a1) )
}

Jmarkd_manty2 <- function(dd, a1=6.3413, a2=3.8375, b1=13.2902, b2=8.8795)
{
  jm  <- exp(b1 * (dd/(dd+9)) - a1) + exp(b2 * (dd/(dd+10)) - a2)
  return(jm)
}

Jmarkd_koivu1 <- function(dd, a1=3.8375, b1=8.8795)
{
  return( exp(b1 * (dd/(dd+10)) - a1) )
}

Jmarkd_koivu2 <- function(dd, a1=6.3413, a2=3.8375, b1=13.2902, b2=8.8795)
{
  jm <- exp(b1 * (dd/(dd+9)) - a1) + exp(b2 * (dd/(dd+10)) - a2)
  return(jm)
}

Kamark2 <- function(kjm,jm)
{
  return(kjm-jm)
}

Kamarkd_kuusi <- function(dd, a1=3.3645, b1=10.6686)
{
  return( exp(b1 * (dd/(dd+17)) - a1) )
}

Kamarkd_muut <- function(dd, a1=3.9657, b1=11.0481)
{
  return( exp(b1 * (dd/(dd+15)) - a1) )
}

Kjmarkd_kuusi <- function(dd, a1=2.4447, b1=10.5381)
{
  return( exp(b1 * (dd/(dd+14)) - a1) )
}

Kjmarkd_muut <- function(dd, a1=3.3913, b1=11.1106)
{
  return( exp(b1 * (dd/(dd+12)) - a1) )
}

Komarkdhcr <- function(dd,hh,ss,
                       a1=5.3924, b1=5.6333, b2=2.7826, b3=-1.7460)
{
  return( exp(b1 * (dd/(dd+18)) + b2*log(hh) b3*log(ss*hh) - a1) )
}

Komarkdh_kuusi <- function(dd,hh, a1=4.6351, b1=3.6518, b2=0.0493, b3=1.0129)
{
  return( exp(b1 * (dd/(dd+18)) + b2*hh + b3*log(hh) - a1) )
}

Komarkdh_manty <- function(dd,hh, a1=5.8926, b1=7.127, b2=0.0465, b3=1.106)
{
  return( exp(b1 * (dd/(dd+10)) - b2*hh + b3*log(hh) - a1) )
}

Komarkdh_koivu <- function(dd,hh, a1=6.6237, b1=11.2872, b2=0.3081, b3=2.6821)
{
  return( exp(b1 * (dd/(dd+30)) - b2*hh + b3*log(hh) - a1) )
}

Komarkd_kuusi <- function(dd, a1=4.3308, b1=9.9550)
{
  return( exp(b1 * (dd/(dd+18)) - a1) )
}

Komarkd_manty <- function(dd, a1=5.3338, b1=9.5938)
{
  return( exp(b1 * (dd/(dd+10)) - a1) ) 
}

Komarkd_koivu <- function(dd, a1=5.9507, b1=7.9266)
{
  return( exp(b1 * (dd/(dd+5)) - a1) )
}

Nmarkdhcr <- function(dd,hh,ss,
                      a1=1.5732, b1=8.4127, b2=1.5628, b3=1.4032)
{
  nm <- exp(b1 * (dd/(dd+12)) - b2*log(hh) + b3*log(ss*hh) - a1)
  return(nm)
}

Nmarkdh_kuusi <- function(dd,hh, a1=1.8551, b1=9.7809, b2=0.4873)
{
  return( exp(b1 * (dd/(dd+12)) - b2*log(hh) - a1) )
}

Nmarkdh_muut <- function(dd,hh, a1=3.4781, b1=12.1095, b2=0.0413, b3=1.565)
{
  return( exp(b1 * (dd/(dd+7)) + b2*hh - b3*log(hh) - a1) )
}

Nmarkd_kuusi <- function(dd, a1=1.9602, b1=7.8171)
{
  return( exp(b1 * (dd/(dd+12)) - a1) )
}

Nmarkd_manty <- function(dd, a1=3.7983, b1=7.7681)
{
  return( exp(b1 * (dd/(dd+7)) - a1) )
}

Eonmark2 <- function(eom,nm)
{
  return(eom-nm)
}

Eonmarkd <- function(dd, a1=3.3633, b1=10.2806)
{
  return( exp(b1 * (dd/(dd+10)) - a1) )
}

Eomarkdh_kuusi <- function(dd,hh, a1=1.2063, b1=10.9708, b2=0.0124, b3=0.4923)
{
  return( exp(b1 * (dd/(dd+13)) - b2*hh - b3*log(hh) - a1) )
}

Eomarkdh_manty <- function(dd,hh, a1=2.5413, b1=13.3955, b2=1.1955)
{
  return( exp(b1 * (dd/(dd+10)) - b2*log(hh) - a1) )
}

Krmarkdh_kuusi <- function(d,h, a1=2.1702, b1=7.469, b2=0.0289, b3=0.6828)
{
  return( exp(b1 * (d/(d+14)) + b2*h + b3*log(h) - a1)  ) 
}

Krmarkdh_manty <- function(d,h, a1=2.6768, b1=7.5939, b2=0.0151, b3=0.8799)
{
  return( exp(b1 * (d/(d+13)) + b2*h + b3*log(h) - a1) )
}

Krmarkdh_koivu <- function(d,h, a1=3.5686, b1=8.2827, b2=0.0393, b3=0.5772)
{
  return( exp(b1 * (d/(d+7)) + b2*h + b3*log(h) - a1) )
}
  
Krmarkd_kuusi <- function(d, a1=2.0571, b1=11.3341)
{
  return( exp(b1 * (d/(d+14)) - a1) )
}

Krmarkd_manty <- function(d, a1=2.3388, b1=11.3264)
{
  return( exp(b1 * (d/(d+13)) - a1) )
}

Krmarkd_koivu <- function(d, a1=3.0932, b1=11.0735)
{
  return( exp(b1 * (d/(d+8)) - a1))
}

Krmarkdht <- function(d,h,ad,
                      a1=3.5194, b1=8.0420, b2=0.0531, b3=0.3897, b4=0.1018)
{
  return( exp(b1 * (d/(d+7)) + b2*h + b3*log(h) + 
          b4*log(ad) - a1) )
}

Rmarkd_kuusi <- function(d, a1=2.2471, b1=11.4873)
{
  return( exp(b1 * (d/(d+14)) - a1) )
}

Rmarkd_manty <- function(d, a1=2.2184, b1=11.4219)
{
  return( exp(b1 * (d/(d+14)) - a1) )
}

Rmarkd_koivu <- function(d, a1=2.3327, b1=10.8109)
{
  return( exp(b1 * (d/(d+11)) - a1) )
}

Rmarkdh_kuusi <- function(dd,hh, a1=2.3032, b1=7.2309, b2=0.0355, b3=0.703)
{
  return( exp(b1 * (dd/(dd+14)) + b2*hh + b3*log(hh) - a1) )
}

Rmarkdh_manty <- function(dd,hh, a1=2.6864, b1=7.6066, b2=0.02, b3=0.8658)
{
  return( exp(b1 * (dd/(dd+14)) + b2*hh + b3*log(hh) - a1) )
}

Rmarkdh_koivu <- function(dd,hh, a1=3.3045, b1=8.1184, b2=0.9783)
{
  return( exp(b1 * (dd/(dd+11)) + b2*log(hh) - a1) )
}

Rmark2 <- function(krm,km)
{
  return(krm-km)
}

Kmarkd_kuusi <- function(dd, a1=3.3912, b1=9.8364)
{
  return( exp(b1 * (dd/(dd+15)) - a1) )
}

Kmarkd_manty <- function(dd, a1=2.9748, b1=8.8489)
{
  return( exp(b1 * (dd/(dd+16)) - a1) )
}

Kmarkd_koivu <- function(dd, a1=3.2518, b1=10.3876)
{
  return( exp(b1 * (dd/(dd+14)) - a1) )
}

Kmarkdh_kuusi <- function(dd,hh, a1=3.402, b1=8.3089, b2=0.0147, b3=0.2295)
{
  return( exp(b1 * (dd/(dd+15)) + b2*hh + b3*log(hh) - a1) )
}

Kmarkdh_manty <- function(dd,hh, a1=0.4487, b1=7.2482, b2=3.2765)
{
  return( exp(b1 * (dd/(dd+16)) + a1*log(hh) - b2) )
}

 Kmarkdh_koivu <- function(dd,hh, a1=8.3019, b1=0.7433, b2=4.0778)
 {
  return( exp(a1 * (dd/(dd+14)) + b1*log(hh) - b2) )
 }

Kmark2 <- function(krm,rm)
{
  return(krm-rm)
}

Eomarkd_kuusi <- function(dd, a1=1.2804, b1=8.5242)
{
  return( exp(b1 * (dd/(dd+13)) - a1) )
}

Eomarkd_manty <- function(dd, a1=2.8604, b1=9.1015)
{
  return( exp(b1 * (dd/(dd+10)) - a1) )
}