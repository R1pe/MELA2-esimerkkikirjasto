test = {
  authors = {"xXx"},

  F0 = {
    category = 'model',
    retval1 = {"X"},
    param1 = {"A",l={2,3}},
    param2 = {"C",l={">0"}},
    impl = '$1+$2',
  },
    
  F1 = {
    category = 'model',
    retval1 = {"X"},
    param1 = {"A",l={1}},
    param2 = {"C",l={"<>0"}},
    impl = '10 + $1 + $2',
  },
  
  F2 = {
    category = 'model',
    retval1 = {"X"},
    param1 = {"A",l={"<0"}},
    param2 = {"C",l={"<0"}},
    impl = '20 + $1 + $2',
  },

  F3 = {
    category = 'model',
    retval1 = {"X"},
    param1 = {"A",l={"<0"}},
    param2 = {"C",l={">0"}},
    impl = '30 + $1 + $2',
  },

  F4 = {
    category = 'model',
    retval1 = {"C"},
    param1 = {"A",l={2,3}},
    param2 = {"B",l={"0..4"}},
    impl = '40 + 0*$1 + 0*$2',
  },
    
  F5 = {
    category = 'model',
    retval1 = {"C"},
    param1 = {"A",l={1,-2}},
    param2 = {"B",l={"<0"}},
    impl = '50 + 0*$1 + 0*$2',
  },
}
