dofile('LeenanMallit_RetConstrains_4\\funcFiner.lua')

Finer = {  
  authors = {'XXX'},

  -- BM = Rfiner1(s,d,h)
  Rfiner1 = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..30"}, u = "cm"},
    param2 = {"h",l={"2..25"}, u = "m"},
    impl = funcFiner.Rfiner1
  },

  -- BM = Rfiner2(s,d)
  Rfiner2_manty = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7,8}},
    param1 = {"d",l={"0..30"}},
    impl = funcFiner.Rfiner2_manty
  },

  -- BM = Rfiner2(s,d)
  Rfiner2_koivu = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={"3..6"}},
    param1 = {"d",l={"0..30"}},
    impl = funcFiner.Rfiner2_koivu
  },

  -- BM = Rfiner3(s,d,h)
  Rfiner3 = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..30"}},
    param2 = {"h",l={"2..25"}},
    impl = funcFiner.Rfiner3
  },

  -- BM = Rfiner4(s,d,h)
  Rfiner4 = {
    category = 'model',
    retval1 = {"BM",l={"0..1500"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..40"}},
    param2 = {"h",l={"2..25"}},
    impl = funcFiner.Rfiner4
  },

  -- BAM = Kfiner1(s,d)
  Kfiner1 = {
    category = 'model',
    retval1 = {"BAM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Kfiner1
  },

  -- BAM = Kfiner2(s,d)
  Kfiner2_manty = {
    category = 'model',
    retval1 = {"BAM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7,8}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Kfiner2_manty
  },

  Kfiner2_koivu = {
    category = 'model',
    retval1 = {"BAM",l={"0..1500"}},
    chkvar1 = {"s",l={"3..6"}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Kfiner2_koivu
  },

  -- BAM = Kfiner3(s,d,h)
  Kfiner3 = {
    category = 'model',
    retval1 = {"BAM",l={"0..100"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..20"}},
    param2 = {"h",l={"2..25"}},
    impl = funcFiner.Kfiner3
  },

  -- BAM = Kfiner4(s,d)
  Kfiner4 = {
    category = 'model',
    retval1 = {"BAM",l={"0..1500"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..40"}},
    impl = funcFiner.Kfiner4
  },

  -- LBNM = Eonfiner1(s,d)
  Eonfiner1 = {
    category = 'model',
    retval1 = {"LBNM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..30"}},
    impl = funcFiner.Eonfiner1
  },

  -- LBNM = Eonfiner2(s,d)
  Eonfiner2_manty = {
    category = 'model',
    retval1 = {"LBNM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7,8}},
    param1 = {"d",l={"0..30"}},
    impl = funcFiner.Eonfiner2_manty
  },

  Eonfiner2_koivu = {
    category = 'model',
    retval1 = {"LBNM",l={"0..1500"}},
    chkvar1 = {"s",l={"3..6"}},
    param1 = {"d",l={"0..30"}},
    impl = funcFiner.Eonfiner2_koivu
  },

  -- LBNM = Eonfiner3(s,d,cr)
  Eonfiner3 = {
    category = 'model',
    retval1 = {"LBNM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..30.5"}},
    param2 = {"cr",l={"0..1"}},
    impl = funcFiner.Eonfiner3
  },

  -- LBNM = Eonfiner4(s,d,cr)
  Eonfiner4 = {
    category = 'model',
    retval1 = {"LBNM",l={"0..1500"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..40"}},
    param2 = {"cr",l={"0..1"}},
    impl = funcFiner.Eonfiner4
  },

  -- NM = Nfiner1(s,d)
  Nfiner1 = {
    category = 'model',
    retval1 = {"NM",l={"0..90"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Nfiner1
  },

  -- NM = Nfiner2(s,d)
  Nfiner2_manty = {
    category = 'model',
    retval1 = {"NM",l={"0..100"}},
    chkvar1 = {"s",l={1,7,8}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Nfiner2_manty
  },

  Nfiner2_koivu = {
    category = 'model',
    retval1 = {"NM",l={"0..100"}},
    chkvar1 = {"s",l={"3..6"}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Nfiner2_koivu
  },

  -- NM = Nfiner3(s,d,cr)
  Nfiner3 = {
    category = 'model',
    retval1 = {"NM",l={"0..100"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..20"}},
    param2 = {"cr",l={"0..1"}},
    impl = funcFiner.Nfiner3
  },

  -- NM = Nfiner4(s,d,cr)
  Nfiner4 = {
    category = 'model',
    retval1 = {"NM",l={"0..100"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..30"}},
    param2 = {"cr",l={"0..1"}},
    impl = funcFiner.Nfiner4
  },

  -- DBM = Kofiner1(s,d)
  Kofiner1 = {
    category = 'model',
    retval1 = {"DBM",l={"0..50"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Kofiner1
  },

  -- DBM = Kofiner2(s,d,cr)
  Kofiner2_manty = {
    category = 'model',
    retval1 = {"DBM",l={"0..50"}},
    chkvar1 = {"s",l={1,7,8}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Kofiner2_manty
  },

  Kofiner2_koivu = {
    category = 'model',
    retval1 = {"DBM",l={"0..50"}},
    chkvar1 = {"s",l={"3..6"}},
    param1 = {"d",l={"0..20"}},
    param2 = {"cr",l={"0.1..0.9"}},
    impl = funcFiner.Kofiner2_koivu
  },

  -- DBM = Kofiner3(s,d)
  Kofiner3 = {
    category = 'model',
    retval1 = {"DBM",l={"0..50"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Kofiner3
  },

  -- DBM = Kofiner4(s,d)
  Kofiner4 = {
    category = 'model',
    retval1 = {"DBM",l={"0..50"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..30"}},
    impl = funcFiner.Kofiner4
  },

  -- STRM = Kjfiner1(s,d)
  Kjfiner1_kuusi = {
    category = 'model',
    retval1 = {"STRM",l={"0..1500"}},
    chkvar1 = {"s",l={2}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Kjfiner1_kuusi
  },

  Kjfiner1_manty = {
    category = 'model',
    retval1 = {"STRM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7,8}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Kjfiner1_manty
  },

  Kjfiner1_koivu = {
    category = 'model',
    retval1 = {"STRM",l={"0..1500"}},
    chkvar1 = {"s",l={"3..6"}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Kjfiner1_koivu
  },

  -- STRM = Kjfiner2(s,d)
  Kjfiner2 = {
    category = 'model',
    retval1 = {"STRM",l={"0..1500"}},
    chkvar1 = {"s",l={1,7}},
    param1 = {"d",l={"0..20"}},
    impl = funcFiner.Kjfiner2
  },
}

