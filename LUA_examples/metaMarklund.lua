dofile('LeenanMallit_RetConstrains_4\\funcMarklund.lua')

Marklund = {
  authors = {'XXX'},

  -- BABM = Krmarkd(s,d)
  Krmarkd_kuusi = {
    category = 'model',
    retval1 = {"BABM",l={"0..1500"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Krmarkd_kuusi
  },
 
  Krmarkd_manty = {
    category = 'model',
    retval1 = {"BABM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Krmarkd_manty
  },

  Krmarkd_koivu = {
    category = 'model',
    retval1 = {"BABM",l={"0..1500"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Krmarkd_koivu
  },
 
 -- BABM = Krmarkdh(s,d,h)   
  Krmarkdh_kuusi = {
    category = 'model',
    retval1 = {"BABM",l={"0..1500"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Krmarkdh_kuusi
  },

  Krmarkdh_manty = {
    category = 'model',
    retval1 = {"BABM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Krmarkdh_manty
  },

  Krmarkdh_koivu = {
    category = 'model',
    retval1 = {"BABM",l={"0..1500"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Krmarkdh_koivu
  },

  -- BABM = Krmarkdht(s,d,h,ad)
  Krmarkdht = {
    category = 'model',
    retval1 = {"BABM",l={"0..1500"}},
    chkvar1 = {"s",l={3,4,8}},
    param1 = {"d",l={"0.100"}},
    param2 = {"h",l={"0..40"}},
    param3 = {"ad",l={"5..300"}},
    impl = funcMarklund.Krmarkdht
  },

  -- BM   = Rmarkd(s,d)
  Rmarkd_kuusi = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Rmarkd_kuusi
  },

  Rmarkd_manty = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Rmarkd_manty
  },

  Rmarkd_koivu = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Rmarkd_koivu
  },

  -- BM   = Rmarkdh(s,d,h)
  Rmarkdh_kuusi = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Rmarkdh_kuusi
  },

  Rmarkdh_manty = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Rmarkdh_manty
  },

  Rmarkdh_koivu = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Rmarkdh_koivu
  },

  -- _BM  = Rmark2(s,BABM,BAM)
  Rmark2 = {
    category = 'model',
    retval1 = {"_BM",l={"0..1500"}},
    chkvar1 = {"s",l={"1..8"}},
    param1 = {"BABM",l={"0..1500"}},
    param2 = {"BAM",l={"0..110"}},
    impl = funcMarklund.Rmark2
  },

  -- BAM  = Kmarkd(s,d)
  Kmarkd_kuusi = {
    category = 'model',
    retval1 = {"BAM",l={"0..110"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Kmarkd_kuusi
  },

  Kmarkd_manty = {
    category = 'model',
    retval1 = {"BAM",l={"0..110"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Kmarkd_manty
  },

  Kmarkd_koivu = {
    category = 'model',
    retval1 = {"BAM",l={"0..110"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Kmarkd_koivu
  },

  -- BAM  = Kmarkdh(s,d,h)
  Kmarkdh_kuusi = {
    category = 'model',
    retval1 = {"BAM",l={"0..110"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Kmarkdh_kuusi
  },

  Kmarkdh_manty = {
    category = 'model',
    retval1 = {"BAM",l={"0..110"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Kmarkdh_manty
  },

  Kmarkdh_koivu = {
    category = 'model',
    retval1 = {"BAM",l={"0..110"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Kmarkdh_koivu
  },

  -- _BAM = Kmark2(s,BABM,BM)
  Kmark2 = {
    category = 'model',
    retval1 = {"_BAM",l={"0..110"}},
    chkvar1 = {"s",l={"1..8"}},
    param1 = {"BABM",l={"0..1500"}},
    param2 = {"BM",l={"0..1500"}},
    impl = funcMarklund.Kmark2
  },

   -- LBM  = Eomarkd(s,d)
  Eomarkd_kuusi = {
    category = 'model',
    retval1 = {"LBM",l={"0..550"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Eomarkd_kuusi
  },

  Eomarkd_manty = {
    category = 'model',
    retval1 = {"LBM",l={"0..550"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Eomarkd_manty
  },
       
  -- LBM = Eomarkhd(s,d,h)
  Eomarkdh_kuus1 = {
    category = 'model',
    retval1 = {"LBM",l={"0..550"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Eomarkdh_kuusi
  },
  
  Eomarkdh_manty = {
    category = 'model',
    retval1 = {"LBM",l={"0..550"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Eomarkdh_manty
  },

  -- LBMN = Eonmarkd(s,d)
  Eonmarkd = {
    category = 'model',
    retval1 = {"LBMN",l={"0..550"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Eonmarkd
  },

  -- _LBMN = Eonmark2(s,d)
  Eonmark2 = {
    category = 'model',
    retval1 = {"_LBMN",l={"0..500"}},
    chkvar1 = {"s",l={"1..8"}},
    param1 = {"LBM",l={"0..550"}},
    param2 = {"NM",l={"0..150"}},
    impl = funcMarklund.Eonmark2
  },

  -- NM = Nmarkd(s,d)
  Nmarkd_kuusi = {
    category = 'model',
    retval1 = {"NM",l={"0..150"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Nmarkd_kuusi
  },

  Nmarkd_manty = {
    category = 'model',
    retval1 = {"NM",l={"0..150"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Nmarkd_manty
  },

  -- NM = Nmarkdh(s,d,h)
  Nmarkdh_kuusi = {
    category = 'model',
    retval1 = {"NM",l={"0..150"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Nmarkdh_kuusi
  },

  Nmarkdh_muut = {
    category = 'model',
    retval1 = {"NM",l={"0..150"}},
    chkvar1 = {"s",l={1,"3..8"}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    impl = funcMarklund.Nmarkdh_muut
  },

  -- NM = Nmarkdhcr(s,d,h,cr)
  Nmarkdhcr = {
    category = 'model',
    retval1 = {"NM",l={"0..150"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..40"}},
    param3 = {"cr"},
    impl = funcMarklund.Nmarkdhcr
  },

  -- DBM = Komarkd(s,d)
  Komarkd_kuusi = {
    category = 'model',
    retval1 = {"DBM",l={"0..80"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Komarkd_kuusi
  },

  Komarkd_manty = {
    category = 'model',
    retval1 = {"DBM",l={"0..80"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Komarkd_manty
  },

  Komarkd_koivu = {
    category = 'model',
    retval1 = {"DBM",l={"0..80"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Komarkd_koivu
  },

  -- DBM = Komarkdh(s,d,h)
  Komarkdh_kuusi = {
    category = 'model',
    retval1 = {"DBM",l={"0..80"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h"},
    impl = funcMarklund.Komarkdh_kuusi
  },

  Komarkdh_manty = {
    category = 'model',
    retval1 = {"DBM",l={"0..80"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h"},
    impl = funcMarklund.Komarkdh_manty
  },

  Komarkdh_koivu = {
    category = 'model',
    retval1 = {"DBM",l={"0..80"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h"},
    impl = funcMarklund.Komarkdh_koivu
  },

  -- DBM = Komarkdhcr(s,d,h,cr)
  Komarkdhcr = {
    category = 'model',
    retval1 = {"DBM",l={"0..80"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    param2 = {"h",l={"0..100"}},
    param3 = {"cr",l={"0..100"}},
    impl = funcMarklund.Komarkdhcr
  },

  -- STRM = Kjmarkd(s,d)
  Kjmarkd_kuusi = {
    category = 'model',
    retval1 = {"STRM",l={"0..300"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Kjmarkd_kuusi
  },

  Kjmarkd_muut = {
    category = 'model',
    retval1 = {"STRM",l={"0..300"}},
    chkvar1 = {"s",l={1,"3..8"}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Kjmarkd_muut
  },

  -- STM = Kamarkd(s,d)
  Kamarkd_kuusi = {
    category = 'model',
    retval1 = {"STM",l={"0..250"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Kamarkd_kuusi
  },

  Kamarkd_muut = {
    category = 'model',
    retval1 = {"STM",l={"0..250"}},
    chkvar1 = {"s",l={1,"3..8"}},
    param1 = {"d",l={"0..100"}},
    impl = funcMarklund.Kamarkd_muut
  },

  -- _STM = Kamark2(s,STRM,RM)
  Kamark2 = {
    category = 'model',
    retval1 = {"_STM",l={"0..250"}},
    chkvar1 = {"s",l={"1..8"}},
    param1 = {"STRM",l={"0..400"}},
    param2 = {"RM",l={"0..350"}},
    impl = funcMarklund.Kamark2
  },

  -- RM = Jmarkd(s,d)
  Jmarkd_kuusi1 = {
    category = 'model',
    retval1 = {"RM",l={"0..350"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"<10"}},
    impl = funcMarklund.Jmarkd_kuusi1
  },

  Jmarkd_kuusi2 = {
    category = 'model',
    retval1 = {"RM",l={"0..350"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={">=10"}},
    impl = funcMarklund.Jmarkd_kuusi2
  },

  Jmarkd_manty1 = {
    category = 'model',
    retval1 = {"RM",l={"0..350"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"<10"}},
    impl = funcMarklund.Jmarkd_manty1
  },

  Jmarkd_manty2 = {
    category = 'model',
    retval1 = {"RM",l={"0..350"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={">=10"}},
    impl = funcMarklund.Jmarkd_manty2
  },

  Jmarkd_koivu1 = {
    category = 'model',
    retval1 = {"RM",l={"0..350"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"<10"}},
    impl = funcMarklund.Jmarkd_koivu1
  },

  Jmarkd_koivu2 = {
    category = 'model',
    retval1 = {"RM",l={"0..350"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={">=10"}},
    impl = funcMarklund.Jmarkd_koivu2
  },

  -- _RM = Jmark2(s,STRM,STM)
  Jmark2 = {
    category = 'model',
    retval1 = {"_RM",l={"0..350"}},
    chkvar1 = {"s",l={"1..8"}},
    param1 = {"STRM",l={"0..400"}},
    param2 = {"STM",l={"0..250"}},
    impl = funcMarklund.Jmark2
  },
}
