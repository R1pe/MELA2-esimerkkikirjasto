#' @title funcFiner KJfiner2
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check species {1,7}
#' @check diameter (0,20)
#'
#' @return STRM
#' @retvalcheck (0,1500)
#' @export
KJfiner2 <- function(dd, a1=-3.342, b1=2.4142)
{
    kjm <- exp(a + b1*log(dd))
    return(kjm)
}

#' @title funcFiner Kjfiner1_kuusi
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter 
#'
#' @check diameter (0,20)
#' @check species {2}
#'
#' @return STRM
#' @retvalcheck (0,1500)
#' @export
Kjfiner1_kuusi <- function(dd, a1=-4.9853, b1=3.0333)
{
    kjm <- exp(a + b1*log(dd))   
    return(kjm)
}

#' @title funcFiner Kjfiner1_manty
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter 
#'
#' @check diameter (0,20)
#' @check species {1,7,8}
#'
#' @return STRM
#' @retvalcheck (0,1500)
#' @export
Kjfiner1_manty <- function(dd, a=-4.5698, b1=2.7929)
{
  kjm <- exp(a + b1*log(dd))
  return(kjm)
}

#' @title funcFiner Kjfiner1_koivu
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter 
#'
#' @check diameter (0,20)
#' @check species (3,6)
#'
#' @return STRM
#' @retvalcheck (0,1500)
#' @export
Kjfiner1_koivu <- function(dd, a=-5.3806, b1=3.0861)
{
  kjm <- exp(a + b1*log(dd))
  return(kjm)
}

#' @title funcFiner Kofiner4
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter 
#'
#' @check diameter (0,30)
#' @check species {2}
#'
#' @return DBM
#' @retvalcheck (0,50)
#' @export
Kofiner4 <- function(dd, a=5.5372, b1=0.1328)
{
  kom <- exp(a + b1*dd) / 1000
  return(kom)
}

#' @title funcFiner Kofiner3
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter 
#'
#' @check species {1,7}
#' @check diameter (0,20)
#'
#' @return DBM
#' @retvalcheck (0,50)
#' @export
Kofiner3 <- function(dd, a=1.8943, b1=2.2181)
{
  kom <- exp(a + b1*log(dd)) / 1000
  return(kom)
}

#' @title funcFiner Kofiner2_manty
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter 
#'
#' @check diameter (0,20)
#' @check species {1,7,8}
#'
#' @return DBM
#' @retvalcheck (0,50)
#' @export
Kofiner2_manty <- function(dd, a=2.7189)
{
  kom <- exp(a * log(dd)) / 1000
  return(kom)
}

#' @title funcFiner Kofiner2_koivu
#' @param crownratio crownratio of the tree
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#' @alias ss crownratio
#'
#' @check diameter (0,20)
#' @check species (3,6)
#' @check crownratio (0.1,0.9)
#'
#' @return DBM
#' @retvalcheck (0,50)
#' @export
Kofiner2_koivu <- function(dd, ss, a=-19.7244, b1=5.929, b2=10.9833)
{
  kom <- exp(a + b1*log(dd) - b2*log(ss)) / 1000
  return(kom)
}

#' @title funcFiner Kofiner1
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check diameter (0,20)
#' @check species {1,7}
#'
#' @return DBM
#' @retvalcheck (0,50)
#' @export
Kofiner1 <- function(dd, a=2.9225, b1=1.7067)
{
  kom <- exp(a + b1*log(dd)) / 1000
  return(kom)
}

#' @title funcFiner Nfiner4
#' @param diameter mean diameter of the tree
#' @param crownratio
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#' @alias ss crownratio
#'
#' @check crownratio (0,1)
#' @check diameter (0,30)
#' @check species {2}
#'
#' @return NM
#' @retvalcheck (0,100)
#' @export
Nfiner4 <- function(dd, ss,
                    a1=2.2939, a2=2.8349, a3=2.7760, a4=2.5818, a5=2.4523,
                    a6=2.1302, a7=1.9123,
                    b1=1.8981, b2=0.8337, b3=1.7137, b4=0.5291, b5=1.6714,
                    b6=0.5235, b7=1.7820, b8=0.6142, b9=1.7122, b10=0.5289,
                    b11=1.8232, b12=0.7358, b13=2.1511, b14=0.9628)
{
  nm <- ((exp(a1 + b1*log(dd) + b2*log(ss))) +
         (exp(a2 + b3*log(dd) + b4*log(ss))) +
         (exp(a3 + b5*log(dd) + b6*log(ss))) +
         (exp(a4 + b7*log(dd) + b8*log(ss))) +
         (exp(a5 + b9*log(dd) + b10*log(ss))) +
         (exp(a6 + b11*log(dd) + b12*log(ss))) +
         (exp(a7 + b13*log(dd) + b14*log(ss)))) / 1000
  return(nm)
}

#' @title funcFiner Nfiner3
#' @param diameter mean diameter of the tree
#' @param crownratio
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#' @alias ss crownratio
#'
#' @check species {1,7}
#' @check crownratio (0,1)
#' @check diameter (0,20)
#'
#' @return NM
#' @retvalcheck (0,100)
#' @export
Nfiner3 <- function(dd, ss, a1=2.8966, a2=2.6514, a3=2.6905,
                    b1=1.932, b2=1.9828, b3=1.8779,
                    b4=1.1458, b5=1.152, b6=0.8357)
{
  nm <- ((exp(a1 + b1*log(dd) + b4*log(ss)))  / 1000 +
         (exp(a2 + b2*log(dd) + b5*log(ss)))  / 1000 +
         (exp(a3 + b3*log(dd) + b6*log(ss)))) / 1000
  return(nm)
}

#' @title funcFiner Nfiner2_manty
#' @param diameter mean diameter of the tree
#'
#' @alias dd diameter
#'
#' @check species {1,7,8}
#' @check diameter (0,20)
#'
#' @return NM
#' @retvalcheck (0,100)
#' @export
Nfiner2_manty <- function(dd, a1=1.1906, a2=1.8862, a3=2.1337,
                          b1=2.0091, b2=1.8809, b3=1.8666) 
{
  nm <- ( ( exp( a1 + b1*log(dd) )) +
          ( exp( a2 + b2*log(dd) )) +
          ( exp( a3 + b3*log(dd) )) ) / 1000
  return(nm)
}

#' @title funcFiner Nfiner2_koivu
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check species {3,4,5,6}
#' @check diameter (0,20)
#'
#' @return NM
#' @retvalcheck (0,100)
#' @export
Nfiner2_koivu <- function(dd, b1=2.9749)
{
  nm  <-  exp(b1*log(dd)) / 1000
  return(nm) 
}

#' @title funcFiner Nfiner1
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check diameter (0,20)
#' @check species {1,7}
#'
#' @return NM
#' @retvalcheck NM (0,90)
#' @export
Nfiner1 <- function(dd, a1=2.3958, a2=3.0319, a3=2.8450,
                    b1=1.8121, b2=1.6660, b3=1.7205)
{
  nm <- ( ( exp( a1 + b1*log(dd) )) +
          ( exp( a2 + b2*log(dd) )) +
          ( exp( a3 + b3*log(dd) )) ) / 1000
  return(nm)
}

#' @title funcFiner Eonfiner4
#' @param diameter mean diameter of the tree
#' @param crownratio crownratio of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#' @alias ss crownratio
#'
#' @check species {2}
#' @check crownratio (0,1)
#' @check diameter (0,40)
#'
#' @return LBNM
#' @retvalcheck (0,1500)
#' @export
Eonfiner4 <- function(dd, ss, a1=4.1857, b1=2.20822, b2=0.6252)
{
  eonm <- exp(a1 + b1*log(dd) + b2*log(ss)) / 1000
  return(eonm)
}

#' @title funcFiner Eonfiner3
#' @param diameter mean diameter of the tree
#' @param crownratio crownratio of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#' @alias ss crownratio
#'
#' @check crownratio (0,1)
#' @check diameter (0, 30.5)
#' @check species {1,7}
#'
#' @return LBNM
#' @retvalcheck (0,1500)
#' @export
Eonfiner3  <-  function(dd, ss, a1=2.7932, b1=2.6708, b2=1.3568)
{
  eonm <- exp(a1 + b1*log(dd) + b2*log(ss)) / 1000
  return(eonm)
}

#' @title funcFiner Eonfiner2_manty
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check diameter (0,30)
#' @check species {1,7,8}
#'
#' @return LBNM
#' @retvalcheck (0,1500)
#' @export
Eonfiner2_manty  <-  function(dd, a1=3.0560)
{
  eonm <- exp(a1*log(dd)) / 1000
  return(eonm)
}

#' @title funcFiner Eonfiner2_koivu
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check diameter (0,30)
#' @check species (3,4,5,6)
#'
#' @return LBNM
#' @retvalcheck (0,1500)
#' @export
Eonfiner2_koivu <- function(dd, a1=3.3891)
{
  eonm <- exp(a1*log(dd)) / 1000
  return(eonm)
}

#' @title funcFiner Eonfiner1
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check diameter (0,30)
#' @check species {1,7}
#'
#' @return LBNM
#' @retvalcheck (0,1500)
#' @export
Eonfiner1  <-  function(dd, a1=3.2988, b1=2.2387)
{
  eonm <- exp(a1 + b1*log(dd)) / 1000
  return(eonm)
}

#' @title funcFiner Kfiner4
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check diameter (0,40)
#' @check species {2}
#'
#' @return BAM
#' @retvalcheck (0,1500)
#' @export
Kfiner4  <-  function(dd, a1=-5.9120, b1=2.7644)
{
  km <- exp(a1 + b1*log(dd) )
  return(km)
}

#' @title funcFiner Kfiner3
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#'
#' @unit diameter cm
#' @unit height m
#'
#' @alias dd diameter
#' @alias hh height
#'
#' @check diameter (0,20)
#' @check height (2,25)
#' @check species {1,7}
#'
#' @return BAM
#' @retvalcheck (0,100)
#' @export
Kfiner3  <-  function(dd, hh, a1=-0.722, b1=2.1274, b2=0.7392)
{
  km <- exp(a1 + b1*log(dd) - b2*log(hh*10))
  return(km)
}

#' @title funcFiner Kfiner2_manty
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check diameter (0,20)
#' @check species {1,7,8}
#'
#' @return BAM
#' @retvalcheck (0,1500)
#' @export
Kfiner2_manty  <-  function(dd, a1=-2.9847, b1=1.6874)
{
  km <- exp(a1 + b1*log(dd) )
  return(km)
}

#' @title funcFiner Kfiner2_koivu
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check species {3,4,5,6}
#' @check diameter (0,20)
#'
#' @return BAM
#' @retvalcheck (0,1500)
#' @export
Kfiner2_koivu  <-  function(dd, a1=-5.5507, b1=2.7731)
{
  km <- exp(a1 + b1*log(dd) )
  return(km)
}

#' @title funcFiner Kfiner1
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check diameter (0,20)
#' @check species {1,7}
#'
#' @return BAM
#' @retvalcheck (0,1500)
#' @export
Kfiner1  <-  function(dd, a1=-4.0168 , b1=2.0023)
{
  km <- exp(a1 + b1*log(dd))
  return(km)
}

#' @title funcFiner Rfiner4
#' @param diameter mean diameter of the tree
#' @param height height of the tree 
#'
#' @unit diameter cm
#' @unit height m
#'
#' @alias dd diameter
#' @alias hh height
#'
#' @check diameter (0,40)
#' @check height (2,25)
#' @check species {2}
#'
#' @return BM
#' @retvalcheck (0,1500)
#' @export
Rfiner4  <-  function(dd, hh, a1=-2.8414, b1=1.5541, b2=1.056)
{
  rm <- exp(a1 + b1*log(dd) + b2*log(hh-1.3))
  return(rm)
}

#' @title funcFiner Rfiner3
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#'
#' @unit diameter cm
#' @unit height m
#'
#' @alias dd diameter
#' @alias hh height
#'
#' @check species {1,7}
#' @check diameter (0,30)
#' @check height (2,25)
#'
#' @return BM
#' @retvalcheck (0,1500)
#' @export
Rfiner3  <-  function(dd, hh, a1=-5.7103, b1=1.7256, b2=1.0241)
{
  rm <- exp(a1 + b1*log(dd) + b2*log(hh*10))
  return(rm)
}

#' @title funcFiner Rfiner2_koivu
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check species {3,4,5,6}
#' @check diameter (0,30)
#'
#' @return BM
#' @retvalcheck (0,1500)
#' @export
Rfiner2_koivu  <-  function(dd, a1=-2.3362, b1=2.3811)
{
  rm <- exp(a1 + b1*log(dd))
  return(rm)
}

#' @title funcFiner Rfiner2_manty
#' @param diameter mean diameter of the tree
#'
#' @unit diameter cm
#'
#' @alias dd diameter
#'
#' @check diameter (0,30)
#' @check species {1,7,8}
#'
#' @return BM
#' @retvalcheck (0,1500)
#' @export
Rfiner2_manty  <-  function(dd, a1=-1.6475, b1=2.1064)
{
  rm <- exp(a1 + b1*log(dd))
  return(rm)
}

#' @title funcFiner Rfiner1
#' @param diameter mean diameter of the tree
#' @param height height of the tree
#'
#' @unit diameter cm
#' @unit height m
#'
#' @alias dd diameter
#' @alias hh height
#'
#' @check species {1,7}
#' @check diameter (0,30)
#' @check height (2,25)
#'
#' @return BM
#' @retvalcheck (0,1500)
#' @export
Rfiner1  <-  function(dd, hh, a1=-3.2875, b1=1.8136, b2=0.9317)
{
  rm <- exp(a1 + b1*log(dd) + b2*log(hh-1.3))
  return(rm)
}

