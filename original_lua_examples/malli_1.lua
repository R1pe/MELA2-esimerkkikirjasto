test = {
  authors = {"xXx"},

  F0 = {
    category = 'model',
    retval1 = {"X"},
    param1 = {"A"},
    param2 = {"C"},
    impl = '$1+$2',
  },
    
  F1 = {
    category = 'model',
    retval1 = {"C"},
    param1 = {"B"},
    impl = '$1*$1*$1+2',
  },
    
  F2 = {
    category = 'model',
    retval1 = {"C"},
    param1 = {"A"},
    impl = '$1*$1*$1',
  },
}