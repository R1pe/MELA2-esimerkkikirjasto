dofile('LeenanMallit_RetConstrains_4\\funcR_osat.lua')

R_osat = {  
  authors = {'XXX'},

  -- SWTM = Tukki(s,BM,v,k,vs,ks)
  Tukki = {
    category = 'model',
    retval1 = {"SWTM",l={"0..1500"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BM", l={"0..1500"}},
    param2 = {"v", l={"0..0.5"}},
    param3 = {"k", l={"0..0.1"}},
    param4 = {"vs", l={"0..0.3"}},
    param5 = {"ks", l={"0..0.08"}},
    impl = funcR_osat.Tukki
  },

  -- PBM = Runkok(s,BM,v,k,vp,kp)
  Runkok =    {
    category = 'model',
    retval1 = {"PBM",l={"0..1500"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BM", l={"0..1500"}},
    param2 = {"v", l={"0..0.5"}},
    param3    = {"k", l={"0..0.1"}},
    param4 = {"vp", l={"0..0.3"}},
    param5 = {"kp", l={"0..0.08"}},
    impl = funcR_osat.Runkok
  },

  -- TBM = Latvak(s,BM,v,k,vt,kt)
  Latvak = {
    category = 'model',
    retval1 = {"TBM",l={"0..1500"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BM", l={"0..1500"}},
    param2 = {"v", l={"0..0.5"}},
    param3 = {"k", l={"0..0.1"}},
    param4 = {"vt", l={"0..0.3"}},
    param5 = {"kt", l={"0..0.08"}},
    impl = funcR_osat.Latvak
  },

  -- WBM = Hukka(s,BM,v,k,vw,kw)
  Hukka = {
    category = 'model',
    retval1 = {"WBM",l={"0..500"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BM", l={"0..1500"}},
    param2 = {"v", l={"0..0.5"}},
    param3 = {"k", l={"0..0.1"}},
    param4 = {"vw", l={"0..0.3"}},
    param5 = {"kw", l={"0..0.08"}},
    impl = funcR_osat.Hukka
  },

  -- BASM = Krtukki(s,BABM,v,vs)
  Krtukki = {
    category = 'model',
    retval1 = {"BASM",l={"0..1500"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BABM", l={"0..1500"}},
    param2 = {"v", l={"0..0.5"}},
    param3 = {"vs", l={"0..0.3"}},
    impl = funcR_osat.Krtukki
  },

  -- BAPM = Krrunkok(s,BABM,v,vp)
  Krrunkok = {
    category = 'model',
    retval1 = {"BAPM",l={"0..1500"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BABM", l={"0..1500"}},
    param2 = {"v", l={"0..0.5"}},
    param3 = {"vp", l={"0..0.3"}},
    impl = funcR_osat.Krrunkok
  },

  -- BATM = Krlatvak(s,BABM,v,vt)
  Krlatvak = {
    category = 'model',
    retval1 = {"BATM",l={"0..1500"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BABM", l={"0..1500"}},
    param2 = {"v", l={"0..0.5"}},
    param3 = {"vt", l={"0..0.3"}},
    impl = funcR_osat.Krlatvak
  },

  -- BATM = Krhukka(s,BABM,v,vw)
  Krhukka = {
    category = 'model',
    retval1 = {"BATM",l={"0..500"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BABM", l={"0..1500"}},
    param2 = {"v", l={"0..0.5"}},
    param3 = {"vw", l={"0..0.3"}},
    impl = funcR_osat.Krhukka
  },

  -- BRSM = Ktukki(s,BAM,k,ks)
  Ktukki = {
    category = 'model',
    retval1 = {"BRSM",l={"0..70"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BAM", l={"0..90"}},
    param2 = {"k", l={"0..0.08"}},
    param3 = {"ks", l={"0..0.06"}},
    impl = funcR_osat.Ktukki
  },

  -- BRPM = Krunkok(s,BAM,k,kp)
  Krunkok = {
    category = 'model',
    retval1 = {"BRPM",l={"0..70"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BAM", l={"0..90"}},
    param2 = {"k", l={"0..0.08"}},
    param3 = {"kp", l={"0..0.06"}},
    impl = funcR_osat.Krunkok
  },

  -- BRTM = Klatvak(s,BAM,k,kt)
  Klatvak = {
    category = 'model',
    retval1 = {"BRTM",l={"0..70"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BAM", l={"0..90"}},
    param2 = {"k", l={"0..0.08"}},
    param3 = {"kt", l={"0..0.06"}},
    impl = funcR_osat.Klatvak
  },

  -- BRWM = Khukka(s,BAM,k,kw)
  Khukka = {
    category = 'model',
    retval1 = {"BRWM",l={"0..70"}},
    chkvar1 = {"s", l={"1..8"}},
    param1 = {"BAM", l={"0..90"}},
    param2 = {"k", l={"0..0.08"}},
    param3 = {"kw", l={"0..0.06"}},
    impl = funcR_osat.Khukka
  },
}
