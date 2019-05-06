dofile('LeenanMallit_RetConstrains_4\\funcLaiho.lua')

Laiho = {  
  authors = {'XXX'},

  -- AGM = Mplaiho(s,d,h)
  Mplaiho_kuusi = {
    category = 'model',
    retval1 = {"AGM",l={"0..1500"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcLaiho.Mplaiho_kuusi
  },

  Mplaiho_manty = {
    category = 'model',
    retval1 = {"AGM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcLaiho.Mplaiho_manty
  },

  Mplaiho_koivu = {
    category = 'model',
    retval1 = {"AGM",l={"0..1500"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcLaiho.Mplaiho_koivu
  },

  -- BABM = Krlaiho(s,d,h)
  Krlaiho = {
    category = 'model',
    retval1 = {"BABM",l={"0..1500"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcLaiho.Krlaiho
  },

  -- BM = Rlaiho(s,d,h)
  Rlaiho_manty = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"1..45"}},
    param2 = {"h",l={"1..30"}},
    impl = funcLaiho.Rlaiho_manty
  },

  Rlaiho_koivu = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"1..45"}},
    param2 = {"h",l={"1..30"}},
    impl = funcLaiho.Rlaiho_koivu
  },

  -- BAM = Klaiho(s,d,h)
  Klaiho_manty = {
    category = 'model',
    retval1 = {"BAM",l={"0..90"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcLaiho.Klaiho_manty
  },

  Klaiho_koivu = {
    category = 'model',
    retval1 = {"BAM",l={"0..90"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcLaiho.Klaiho_koivu
  },

  -- LBNM = Eonlaiho(s,d,h,cr,hdom)
  Eonlaiho_manty = {
    category = 'model',
    retval1 = {"LBNM",l={"0..250"}},
    chkvar1 = {"s",l={1,7,}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    param3 = {"cr",l={"0.1..0.9"}},
    impl = funcLaiho.Eonlaiho_manty
  },

  Eonlaiho_koivu = {
    category = 'model',
    retval1 = {"LBNM",l={"0..250"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    param3 = {"hdom"},
    impl = funcLaiho.Eonlaiho_koivu
  },

  -- NM = Nlaiho(s,d,h,cr)
  Nlaiho_manty = {
    category = 'model',
    retval1 = {"NM",l={"0..90"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    param3 = {"cr",l={"0.1..0.9"}},
    impl = funcLaiho.Nlaiho_manty
  },

  Nlaiho_koivu = {
    category = 'model',
    retval1 = {"NM",l={"0..90"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"4..50"}},
    impl = funcLaiho.Nlaiho_koivu
  },

  -- DBM = Kolaiho(s,d,h,hdom)
  Kolaiho_manty = {
    category = 'model',
    retval1 = {"DBM",l={"0..250"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    param3 = {"hdom",l={"3..33"}},
    impl = funcLaiho.Kolaiho_manty 
  },

  Kolaiho_koivu = {
    category = 'model',
    retval1 = {"DBM",l={"0..250"}},
    chkvar1 = {"s",l={"3..6",8}},
    param1 = {"d",l={"4..50"}},
    param2 = {"h",l={"3..29"}},
    impl = funcLaiho.Kolaiho_koivu 
  },
}
