#' @title funcR_osat Khukka
#' @param trunkbarkmass rungon kuoren massa 
#' @param barkvolume volume of the bark
#' @param wastebarkvolume hukkapuun kuoren tilavuus
#' @alias BAM trunkbarkmass
#' @alias kk barkvolume
#' @alias kw wastebarkvolume
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check trunkbarkmass (0, 90)
#' @check barkvolume (0, 0.08)
#' @check wastebarkvolume (0, 0.06)
#' @return BRWM mass of the bark in wastewood
#' @retvalcheck (0, 70)
Khukka <- function(BAM,kk,kw)
{
  return((kw/kk)*BAM)
}

#' @title funcR_osat Klatvak
#' @param topstemfiberbarkmass rungon kuoren massa 
#' @param barkvolume volume of the bark
#' @param barkvolumetopfibre latvakuitupuun kuoren tilavuus
#' @alias BRTM topstemfiberbarkmass
#' @alias kk barkvolume
#' @alias kt barkvolumetopfibre
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check trunkbarkmass (0, 90)
#' @check barkvolume (0, 0.08)
#' @check barkvolumetopfibre (0, 0.06)
#' @return BRTM latvakuitupuun kuoren massa
#' @retvalcheck (0,70)
Klatvak <- function(BAM,kk,kt)
{
  return((kt/kk)*BAM)
}

#' @title funcR_osat Klatvak
#' @param trunkbarkmass rungon kuoren massa 
#' @param barkvolume volume of the bark
#' @param stemfiberbarkvolume runkokuitupuun kuoren tilavuus
#' @alias BRPM trunkbarkmass
#' @alias kk barkvolume
#' @alias kp stemfiberbarkvolume
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check trunkbarkmass (0, 90)
#' @check barkvolume (0, 0.08)
#' @check stemfiberbarkvolume (0, 0.06)
#' @return BRWM mass of the bark in stem fiber tree
#' @retvalcheck (0,70)
Krunkok <- function(BAM,kk,kp)
{
  return((kp/kk)*BAM)
}

#' @title funcR_osat Ktukki
#' @param trunkbarkmass rungon kuoren massa 
#' @param barkvolume volume of the bark
#' @param timbervolume tukkipuun kuoren tilavuus
#' @alias BRSM timbertreemass
#' @alias kk barkvolume
#' @alias ks timbervolume
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check trunkbarkmass (0, 90)
#' @check barkvolume (0, 0.08)
#' @check timbervolume (0, 0.06)
#' @return BRSM tukkipuun kuoren massa
#' @retvalcheck (0,70)
Ktukki <- function(BAM,kk,ks)
{
  return((ks/kk)*BAM)
}

#' @title funcR_osat Krhukka
#' @param unbarkedmass kuorellisen rungon massa
#' @param unbarkedvolume kuorellisen rungon tilavuus
#' @param unbarkedvolumewastewood hukkapuun kuorellinen tilavuu
#' @alias BABM unbarkedmass
#' @alias vv unbarkedvolume
#' @alias vw unbarkedvolumewastewood
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check unbarkedmass (0, 1500)
#' @check unbarkedvolume (0, 0.5)
#' @check unbarkedvolumewastewood (0, 0.3)
#' @return BATM kuorellisen latvakuitupuun massa
#' @retvalcheck (0,500)
Krhukka <- function(BABM,vv,vw)
{
  return((vw/vv)*BABM)
}

#' @title funcR_osat Krlatvak
#' @param unbarkedmass kuorellisen rungon massa
#' @param unbarkedvolume kuorellisen rungon tilavuus
#' @param unbarkedvolumetopfiber latvakuitupuun kuorellinen tilavuus
#' @alias BABM unbarkedmass
#' @alias vv unbarkedvolume
#' @alias vt unbarkedvolumetopfiber
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check unbarkedmass (0, 1500)
#' @check unbarkedvolume (0, 0.5)
#' @check unbarkedvolumetopfiber (0, 0.3)
#' @return BATM kuorellisen latvakuitupuun massa
#' @retvalcheck (0,1500)
Krlatvak <- function(BABM,vv,vt)
{
  return((vt/vv)*BABM)
}

#' @title funcR_osat Krrunkok
#' @param unbarkedmass kuorellisen rungon massa
#' @param unbarkedvolume kuorellisen rungon tilavuus
#' @param unbarkedvolumetrunkfiber runkokuitupuun kuorellinen tilavuus
#' @alias BABM unbarkedmass
#' @alias vv unbarkedvolume
#' @alias vp unbarkedvolumetrunkfiber
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check unbarkedmass (0, 1500)
#' @check unbarkedvolume (0, 0.5)
#' @check unbarkedvolumetrunkfiber (0, 0.3)
#' @return BAPM kuorellinen runkokuitupuun massa
#' @retvalcheck (0,1500)
Krrunkok <- function(BABM,vv,vp)
{
  return((vp/vv)*BABM)
} 

#' @title funcR_osat Krtukki
#' @param unbarkedmass kuorellisen rungon massa
#' @param unbarkedvolume kuorellisen rungon tilavuus
#' @param unbarkedvolumetimber tukkipuun kuorellinen tilavuus
#' @alias BABM unbarkedmass
#' @alias vv unbarkedvolume
#' @alias vs unbarkedvolumetimber
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check unbarkedmass (0, 1500)
#' @check unbarkedvolume (0, 0.5)
#' @check unbarkedvolumetimber (0, 0.3)
#' @return BASM kuorellisen tukkipuun massa
#' @retvalcheck (0,1500)
Krtukki <- function(BABM,vv,vs)
{
  return((vs/vv)*BABM)
}

#' @title funcR_osat Hukka
#' @param frametimbermass runkopuun (kuoreton) massa
#' @param unbarkedvolume kuorellisen rungon tilavuus
#' @param barkvolume volume of the bark
#' @param unbarkedvolumewastewood hukkapuun kuorellinen tilavuus
#' @param wastebarkvolume hukkapuun kuoren tilavuus
#' @alias BM frametimbermass
#' @alias vv unbarkedvolume
#' @alias kk barkvolume
#' @alias vw unbarkedvolumewastewood
#' @alias kw wastebarkvolume
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check frametimbermass (0, 1500)
#' @check unbarkedvolume (0, 0.5)
#' @check barkvolume (0, 0.1)
#' @check unbarkedvolumewastewood (0, 0.3)
#' @check wastebarkvolume (0, 0.08)
#' @return WBM kuorettoman hukkapuun massa
#' @retvalcheck (0,500) 
Hukka <- function(BM,vv,kk,vw,kw)
{
  return( ((vw-kw)/(vv-kk)) * BM )
}

#' @title funcR_osat Latvak
#' @param frametimbermass runkopuun (kuoreton) massa
#' @param unbarkedvolume kuorellisen rungon tilavuus
#' @param barkvolume volume of the bark
#' @param unbarkedvolumetopfiber latvakuitupuun kuorellinen tilavuus
#' @param barkvolumetopfibre latvakuitupuun kuoren tilavuus
#' @alias BM frametimbermass
#' @alias vv unbarkedvolume
#' @alias kk barkvolume
#' @alias vt unbarkedvolumetopfiber
#' @alias kt barkvolumetopfibre
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check frametimbermass (0, 1500)
#' @check unbarkedvolume (0, 0.5)
#' @check barkvolume (0, 0.1)
#' @check unbarkedvolumetopfiber (0, 0.3)
#' @check barkvolumetopfibre (0, 0.08)
#' @return TBM kuorettoman latvakuitupuun massa
#' @retvalcheck (0, 1500)
Latvak <- function(BM,vv,kk,vt,kt)
{
  return( ((vt-kt)/(vv-kk)) * BM )
}

#' @title funcR_osat Runkok
#' @param frametimbermass runkopuun (kuoreton) massa
#' @param unbarkedvolume kuorellisen rungon tilavuus
#' @param barkvolume volume of the bark
#' @param unbarkedvolumetrunkfiber runkokuitupuun kuorellinen tilavuus
#' @param stemfiberbarkvolume runkokuitupuun kuoren tilavuus
#' @alias BM frametimbermass
#' @alias vv unbarkedvolume
#' @alias kk barkvolume
#' @alias vp unbarkedvolumetrunkfiber
#' @alias kp stemfiberbarkvolume
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check frametimbermass (0, 1500)
#' @check unbarkedvolume (0, 0.5)
#' @check barkvolume (0, 0.1)
#' @check unbarkedvolumetrunkfiber (0, 0.3)
#' @check stemfiberbarkvolume (0, 0.08)
#' @return PBM kuorettoman runkokuitupuun massa
#' @retvalcheck (0, 1500)
Runkok <- function(BM,vv,kk,vp,kp)
{
  return( ((vp-kp)/(vv-kk)) * BM )
}

#' @title funcR_osat Tukki
#' @param frametimbermass runkopuun (kuoreton) massa
#' @param unbarkedvolume kuorellisen rungon tilavuus
#' @param barkvolume volume of the bark
#' @param unbarkedvolumetimber tukkipuun kuorellinen tilavuus
#' @param timbervolume tukkipuun kuoren tilavuus
#' @alias BM frametimbermass
#' @alias vv unbarkedvolume
#' @alias kk barkvolume
#' @alias vs unbarkedvolumetimber
#' @alias ks timbervolume
#' @check species {1, 2, 3, 4, 5, 6, 7, 8}
#' @check frametimbermass (0, 1500)
#' @check unbarkedvolume (0, 0.5)
#' @check barkvolume (0, 0.1)
#' @check unbarkedvolumetimber (0, 0.3)
#' @check timbervolume (0, 0.08)
#' @return SWTM
#' @retvalcheck (0, 1500)
Tukki <- function(BM,vv,kk,vs,ks)
{
  return( ((vs-ks)/(vv-kk)) * BM )
}
  