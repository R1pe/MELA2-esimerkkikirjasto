test = {
  authors = {"xXx"},

  F0 = {
    category = 'model',
    retval1 = {"X"},
    param1 = {"A"},
    param2 = {"C"},
    impl = '$1 + $2',
  },
   
  F1 = {
    category = 'model',
    retval1 = {"X"},
    param1 = {"A"},
    param2 = {"C"},
    impl = '10 + $1 + $2',
  },
  
  F2 = {
    category = 'model',
    retval1 = {"X"},
    param1 = {"A"},
    param2 = {"C"},
    impl = '20 + $1 + $2',
  },

  F3 = {
    category = 'model',
    retval1 = {"X"},
    param1 = {"A"},
    param2 = {"C"},
    impl = '30 + $1 + $2',
  },

  F4 = {
    category = 'model',
    retval1 = {"C"},
    param1 = {"A"},
    param2 = {"B"},
    impl = function(a,b)
      return 40
    end,
  },
    
  F5 = {
    category = 'model',
    retval1 = {"C"},
    param1 = {"A"},
    param2 = {"B"},
    impl = function(a,b)
      return 50
    end,
  },
}