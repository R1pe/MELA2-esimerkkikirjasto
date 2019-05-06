dofile('LeenanMallit_RetConstrains_4\\funcHakkila.lua')

Hakkila = {  
  authors = {'XXX'},

  -- BABM = Krhakki1(s,d,h,ad,v,ts)
  Krhakki1_kuusi1 = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {2}},
    chkvar2 = {"ts",l = {"750..<1000"}},
    param1 = {"d",l = {"1..8"}},
    param2 = {"h",l = {"2.5..7.4"}},
    param3 = {"ad",l = {"10..35"}},
    param4 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki1_kuusi1
  },

  Krhakki1_kuusi2 = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {2}},
    chkvar2 = {"ts",l = {"<750",">=1000"}},
    param1 = {"d",l = {"1..8"}},
    param2 = {"h",l = {"2.5..7.4"}},
    param3 = {"ad",l = {"10..35"}},
    param4 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki1_kuusi2
  },
  Krhakki1_manty1 = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l =  {"500..<750"}},
    param1 = {"d",l = {"1..8"}},
    param2 = {"h",l = {"2.5..7.4"}},
    param3= {"ad",l = {"10..35"}},
    param4 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki1_manty1
  },
  Krhakki1_manty2 = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"750..<870"}},
    param1 = {"d",l = {"1..8"}},
    param2 = {"h",l = {"2.5..7.4"}},
    param3 = {"ad",l = {"10..35"}},
    param4 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki1_manty2
  },
  Krhakki1_manty3 = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"870..<1350"}},
    param1 = {"d",l = {"1..8"}},
    param2 = {"h",l = {"2.5..7.4"}},
    param3 = {"ad",l = {"10..35"}},
    param4 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki1_manty3
  },
  
  Krhakki1_koivu = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {"3..6"}},
    param1 = {"d",l = {"1..8"}},
    param2 = {"ad",l = {"10..35"}},
    param3 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki1_koivu
  },

  -- BABM = Krhakki2(s,d,h,ad,v,ts)
  Krhakki2_kuusi1 = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {2}},
    chkvar2= {"ts",l = {"750..<1000"}},
    param1 = {"d",l = {"5..50"}},
    param2 = {"h",l = {"0..25"}},
    param3 = {"ad",l = {"2..200"}},
    param4 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki2_kuusi1
  },

  Krhakki2_kuusi2 = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {2}},
    chkvar2 = {"ts",l = {"<750",">=1000"}},
    param1 = {"d",l = {"5..50"}},
    param2 = {"h",l = {"0..25"}},
    param3 = {"ad",l = {"2..200"}},
    param4 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki2_kuusi2
  },

  Krhakki2_manty1 = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"500..<750"}},
    param1 = {"d",l = {"5..50"}},
    param2 = {"h",l = {"0..25"}},
    param3 = {"ad",l = {"2..200"}},
    param4 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki2_manty1
  },

  Krhakki2_manty2 = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"750..<870"}},
    param1 = {"d",l = {"5..50"}},
    param2 = {"h",l = {"0..25"}},
    param3 = {"ad",l = {"2..200"}},
    param4 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki2_manty2
  },

  Krhakki2_manty3 = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"870..<1350"}},
    param1 = {"d",l = {"5..50"}},
    param2 = {"h",l = {"0..25"}},
    param3 = {"ad",l = {"2..200"}},
    param4 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki2_manty3
  },

  Krhakki2_koivu = {
    category = 'model',
    retval1 = {"BABM",l = {"0..1500"}},
    chkvar1 = {"s",l = {"3..6"}},
    param1 = {"d",l = {"5..50"}},
    param2 = {"ad",l = {"2..200"}},
    param3 = {"v",l = {"0..0.5"}},
    impl = funcHakkila.Krhakki2_koivu
  },

  -- BM = Rhakki1(s,d,h,ad,v,k,ts)
  Rhakki1_kuusi1 = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {2}},
    chkvar2 = {"ts",l = {"750..<1000"}},
    param1 = {"d",l = {"1..10"}},
    param2 = {"h",l = {"2.5..7.4"}},
    param3 = {"ad",l = {"10..35"}},
    param4 = {"v",l = {"0..0.5"}},
    param5 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki1_kuusi1
  },

  Rhakki1_kuusi2 = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {2}},
    chkvar2 = {"ts",l = {"<750",">=1000"}},
    param1 = {"d",l = {"1..10"}},
    param2 = {"h",l = {"2.5..7.4"}},
    param3 = {"ad",l = {"10..35"}},
    param4 = {"v",l = {"0..0.5"}},
    param5 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki1_kuusi2
  },

  Rhakki1_manty1 = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"500..<750"}},
    param1 = {"d",l = {"1..10"}},
    param2 = {"h",l = {"2.5..7.4"}},
    param3 = {"ad",l = {"10..35"}},
    param4 = {"v",l = {"0..0.5"}},
    param5 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki1_manty1
  },

  Rhakki1_manty2 = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"750..<870"}},
    param1 = {"d",l = {"1..10"}},
    param2 = {"h",l = {"2.5..7.4"}},
    param3 = {"ad",l = {"10..35"}},
    param4 = {"v",l = {"0..0.5"}},
    param5 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki1_manty2
  },

  Rhakki1_manty3 = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"870..<1350"}},
    param1 = {"d",l = {"1..10"}},
    param2 = {"h",l = {"2.5..7.4"}},
    param3 = {"ad",l = {"10..35"}},
    param4 = {"v",l = {"0..0.5"}},
    param5 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki1_manty3
  },

  Rhakki1_koivu = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {"3..6"}},
    param1 = {"d",l = {"1..10"}},
    param2 = {"ad",l = {"10..35"}},
    param3= {"v",l = {"0..0.5"}},
    param4 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki1_koivu
  },

  -- BM = Rhakki2(s,d,h,ad,v,k,ts)
  Rhakki2_kuusi1 = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {2}},
    chkvar2 = {"ts",l = {"750..<1000"}},
    param1 = {"d",l = {"5..40"}},
    param2 = {"h",l = {"0..30"}},
    param3 = {"ad",l = {"10..250"}},
    param4 = {"v",l = {"0..0.5"}},
    param5 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki2_kuusi1
  },

  Rhakki2_kuusi2 = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {2}},
    chkvar2 = {"ts",l = {"<750",">=1000"}},
    param1 = {"d",l = {"5..40"}},
    param2 = {"h",l = {"0..30"}},
    param3 = {"ad",l = {"10..250"}},
    param4 = {"v",l = {"0..0.5"}},
    param5 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki2_kuusi2
  },

  Rhakki2_manty1 = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"500..<750"}},
    param1 = {"d",l = {"5..40"}},
    param2 = {"h",l = {"0..30"}},
    param3 = {"ad",l = {"10..250"}},
    param4 = {"v",l = {"0..0.5"}},
    param5 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki2_manty1
  },

  Rhakki2_manty2 = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"750..<870"}},
    param1 = {"d",l = {"5..40"}},
    param2 = {"h",l = {"0..30"}},
    param3 = {"ad",l = {"10..250"}},
    param4 = {"v",l = {"0..0.5"}},
    param5 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki2_manty2
  },

  Rhakki2_manty3 = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {1,7,8}},
    chkvar2 = {"ts",l = {"870..<1350"}},
    param1 = {"d",l = {"5..40"}},
    param2 = {"h",l = {"0..30"}},
    param3 = {"ad",l = {"10..250"}},
    param4 = {"v",l = {"0..0.5"}},
    param5 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki2_manty3
  },

  Rhakki2_koivu = {
    category = 'model',
    retval1 = {"BM",l = {"0..1500"}},
    chkvar1 = {"s",l = {"3..6"}},
    param1 = {"d",l = {"5..40"}},
    param2 = {"ad",l = {"10..250"}},
    param3 = {"v",l = {"0..0.5"}},
    param4 = {"k",l = {"0..0.1"}},
    impl = funcHakkila.Rhakki2_koivu
  },

  -- DLBM = Keohakkid(s,d)
  Keohakkid_kuusi = {
    category = 'model',
    retval1 = {"DLBM",l = {"0..300"}},
    chkvar1 = {"s",l = {2}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Keohakkid_kuusi
  },

  Keohakkid_manty = {
    category = 'model',
    retval1 = {"DLBM",l = {"0..300"}},
    chkvar1 = {"s",l = {1,7}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Keohakkid_manty
  },

  -- DLBM = Keohakkidh(s,d,h)
  Keohakkidh_kuusi = {
    category = 'model',
    retval1 = {"DLBM",l = {"0..300"}},
    chkvar1 = {"s",l = {2}},
    param1 = {"d",l = {"1..45"}},
    param2 = {"h",l = {"1..30"}},
    impl = funcHakkila.Keohakkidh_kuusi
  },

  Keohakkidh_manty = {
    category = 'model',
    retval1 = {"DLBM",l = {"0..300"}},
    chkvar1 = {"s",l = {1,7}},
    param1 = {"d",l = {"1..45"}},
    param2 = {"h",l = {"1..30"}},
    impl = funcHakkila.Keohakkidh_manty
  },

  -- DLBM = Keohakkidhcr(s,d,h,cr)
  Keohakkidhcr_kuusi =  {
    category = 'model',
    retval1 = {"DLBM",l = {"0..300"}},
    chkvar1 = {"s",l = {2}},
    param1 = {"d",l = {"1..45"}},
    param2 = {"h",l = {"1..30"}},
    param3 = {"cr",l = {"0.1..0.9"}},
    impl = funcHakkila.Keohakkidhcr_kuusi
  },

  Keohakkidhcr_manty =  {
    category = 'model',
    retval1 = {"DLBM",l = {"0..300"}},
    chkvar1 = {"s",l = {1,7}},
    param1 = {"d",l = {"1..45"}},
    param2 = {"h",l = {"1..30"}},
    param3 = {"cr",l = {"0.1..0.9"}},
    impl = funcHakkila.Keohakkidhcr_manty
  },

  -- DLNM = Keonhakkid(s,d)
  Keonhakkid = {
    category = 'model',
    retval1 = {"DLNM",l = {"0..300"}},
    chkvar1 = {"s",l = {"3..6",8}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Keonhakkid
  },

  -- DLNM = Keonhakkidhcr(s,d,cr)
  Keonhakkidhcr = {
    category = 'model',
    retval1 = {"DLNM",l = {"0..300"}},
    chkvar1 = {"s",l = {"3..6",8}},
    param1 = {"d",l = {"1..45"}},
    param2 = {"cr",l = {"0.1..0.9"}},
    impl = funcHakkila.Keonhakkidhcr
  },

  -- LBM = Eohakkid(s,d)
  Eohakkid_kuusi = {
    category = 'model',
    retval1 = {"LBM",l = {"0..250"}},
    chkvar1 = {"s",l = {2}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Eohakkid_kuusi
  },

  Eohakkid_manty = {
    category = 'model',
    retval1 = {"LBM",l = {"0..250"}},
    chkvar1 = {"s",l = {1,7}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Eohakkid_manty
  },

  -- LBM = Eohakkidh(s,d,h)
  Eohakkidh_kuusi = {
    category = 'model',
    retval1 = {"LBM",l = {"0..300"}},
    chkvar1 = {"s",l = {2}},
    param1 = {"d",l = {"1..45"}},
    param2 = {"h",l = {"1..30"}},
    impl = funcHakkila.Eohakkidh_kuusi
  },

  Eohakkidh_manty = {
    category = 'model',
    retval1 = {"LBM",l = {"0..300"}},
    chkvar1 = {"s",l = {1,7}},
    param1 = {"d",l = {"1..45"}},
    param2 = {"h",l = {"1..30"}},
    impl = funcHakkila.Eohakkidh_manty
  },

  -- LBM = Eohakkidhcr(s,d,h,cr)
  Eohakkidhcr_kuusi = {
    category = 'model',
    retval1 = {"LBM",l = {"0..90"}},
    chkvar1 = {"s",l = {2}},
    param1 = {"d",l = {"4..50"}},
    param2 = {"h",l = {"3..29"}},
    param3 = {"cr",l = {"0.1..0.9"}},
    impl = funcHakkila.Eohakkidhcr_kuusi
  },

  Eohakkidhcr_manty = {
    category = 'model',
    retval1 = {"LBM",l = {"0..90"}},
    chkvar1 = {"s",l = {1,7}},
    param1 = {"d",l = {"4..50"}},
    param2 = {"h",l = {"3..29"}},
    param3 = {"cr",l = {"0.1..0.9"}},
    impl = funcHakkila.Eohakkidhcr_manty
  },

  -- LBNM = Eonhakkid(s,d)
  Eonhakkid = {
    category = 'model',
    retval1 = {"LBNM",l = {"0..250"}},
    chkvar1 = {"s",l = {"3..6",8}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Eonhakkid
  },

 -- LBNM = Eonhakkidhcr(s,d,h,cr)
  Eonhakkidhcr = {
    category = 'model',
    retval1 = {"LBNM",l = {"0..1000"}},
    chkvar1 = {"s",l = {"3..6",8}},
    param1 = {"d",l = {"4..50"}},
    param2 = {"h",l = {"3..29"}},
    param3 = {"cr",l = {"0.1..0.9"}},
    impl = funcHakkila.Eonhakkidhcr
  },

  -- NM = Nhakkid(s,d)
  Nhakkid_kuusi = {
    category = 'model',
    retval1 = {"NM",l = {"0..90"}},
    chkvar1 = {"s",l = {2}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Nhakkid_kuusi
  },

  Nhakkid_manty = {
    category = 'model',
    retval1 = {"NM",l = {"0..90"}},
    chkvar1 = {"s",l = {1,7}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Nhakkid_manty
  },

  -- NM = Nhakkidcr(s,d,cr)
  Nhakkidcr_kuusi = {
    category = 'model',
    retval1 = {"NM",l = {"0..90"}},
    chkvar1 = {"s",l = {2}},
    param1 = {"d",l = {"4..45"}},
    param2 = {"cr",l = {"0.1..0.9"}},
    impl = funcHakkila.Nhakkidcr_kuusi
  },

  Nhakkidcr_manty = {
    category = 'model',
    retval1 = {"NM",l = {"0..90"}},
    chkvar1 = {"s",l = {1,7}},
    param1 = {"d",l = {"4..45"}},
    param2 = {"cr",l = {"0.1..0.9"}},
    impl = funcHakkila.Nhakkidcr_manty
  },

  -- DBM = Kohakkid(s,d)
  Kohakkid_kuusi = {
    category = 'model',
    retval1 = {"DBM",l = {"0..10"}},
    chkvar1 = {"s",l = {2}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Kohakkid_kuusi
  },

  Kohakkid_manty = {
    category = 'model',
    retval1 = {"DBM",l = {"0..10"}},
    chkvar1 = {"s",l = {1,7}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Kohakkid_manty
  },

  Kohakkid_koivu = {
    category = 'model',
    retval1 = {"DBM",l = {"0..10"}},
    chkvar1 = {"s",l = {"3..6",8}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Kohakkid_koivu
  },

  -- STRM = Kjhakkid(s,d)
  Kjhakkid_kuusi = {
    category = 'model',
    retval1 = {"STRM",l = {"0..500"}},
    chkvar1 = {"s",l = {2}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Kjhakkid_kuusi
  },

    Kjhakkid_muut = {
    category = 'model',
    retval1 = {"STRM",l = {"0..500"}},
    chkvar1 = {"s",l = {1,"3..8"}},
    param1 = {"d",l = {"1..45"}},
    impl = funcHakkila.Kjhakkid_muut
  },
}
