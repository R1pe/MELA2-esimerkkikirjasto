dofile('LeenanMallit_RetConstrains_4\\funcKorhonen_Maltamo.lua')

Korhonen_Maltamo = {  
  authors = {'XXX'},

  -- AGM = Mpkorhodhcr(s,d,h,cr)
  Mpkorhodhcr = {
    category = 'model',
    retval1 = {"AGM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..30"}},
    param3 = {"cr",l={"0.1..0.9"}},
    impl = funcKorhonen_Maltamo.Mpkorhodhcr
  },

  -- BM = Rkorhodh(s,d,h)
  Rkorhodh = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcKorhonen_Maltamo.Rkorhodh
  },

  -- BM = Rkorhodh(s,d,h,a)
  Rkorhodht = {
    category = 'model',
    retval1 = {"BM",l={"0..1200"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    param3 = {"a",l={"10..180"}},
    impl = funcKorhonen_Maltamo.Rkorhodht
  },

  -- BAM = Kkorhodh(s,d,h)
  Kkorhodh = {
    category = 'model',
    retval1 = {"BAM",l={"0..90"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcKorhonen_Maltamo.Kkorhodh
  },

  -- BAM = Kkorhodhbo(s,d,h,st)
  Kkorhodhbo_stn5 = {
    category = 'model',
    retval1 = {"BAM",l={"0..90"}},
    chkvar1 = {"s",l={1,7}},
    chkvar2 = {"st",l={"1..<5","<5..8"}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcKorhonen_Maltamo.Kkorhodhbo_stn5
  },

  Kkorhodhbo_st5 = {
    category = 'model',
    retval1 = {"BAM",l={"0..90"}},
    chkvar1 = {"s",l={1,7}},
    chkvar2 = {"st",l={5}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcKorhonen_Maltamo.Kkorhodhbo_st5
  },

  -- LBM = Eokorhodhcr(s,d,h,cr)
  Eokorhodhcr = {
    category = 'model',
    retval1 = {"LBM",l={"0..90"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    param3 = {"cr",l={"0.1..0.9"}},
    impl = funcKorhonen_Maltamo.Eokorhodhcr
  },
}
