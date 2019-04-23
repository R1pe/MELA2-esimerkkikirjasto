funcR_osat = {  
 
  Khukka = function(BAM,kk,kw)
  local brwm
    brwm=(kw/kk)*BAM
    return brwm
  end,
  ------------------------------
  Klatvak = function(BAM,kk,kt)
  local brtm
    brtm=(kt/kk)*BAM
    return brtm
  end,

  ------------------------------
  Krunkok = function(BAM,kk,kp)
  local brpm
    brpm=(kp/kk)*BAM
    return brpm
  end,

  ------------------------------
  Ktukki = function(BAM,kk,ks)
  local brsm
    brsm=(ks/kk)*BAM
    return brsm
  end,

  ------------------------------
  Krhukka = function(BABM,vv,vw)
  local bawm
    bawm=(vw/vv)*BABM
    return bawm
  end,

  ------------------------------
  Krlatvak = function(BABM,vv,vt)
  local batm
    batm=(vt/vv)*BABM
    return batm
  end,

  ------------------------------
  Krrunkok = function(BABM,vv,vp)
  local bapm
    bapm=(vp/vv)*BABM
    return bapm
  end,

  ------------------------------
  Krtukki = function(BABM,vv,vs)
  local basm
    basm=(vs/vv)*BABM
    return basm
  end,

  ------------------------------
  Hukka = function(BM,vv,kk,vw,kw)
  local wbm
    wbm=((vw-kw)/(vv-kk))*BM
    return wbm
  end,

  ------------------------------
  Latvak = function(BM,vv,kk,vt,kt)
  local tbm
    tbm=((vt-kt)/(vv-kk))*BM
    return tbm
  end,

  ------------------------------
  Runkok = function(BM,vv,kk,vp,kp)
  local pbm
    pbm=((vp-kp)/(vv-kk))*BM
    return pbm
  end,

  ------------------------------
  Tukki = function(BM,vv,kk,vs,ks)
  local swtm
    swtm=((vs-ks)/(vv-kk))*BM
    return swtm
  end,

 ------------------------------
}
