test = {
  authors = {"xXx"},
  F0 = {
    category = 'model',
    retval1 = {"X"},
    retval2 = {"Y"},
    param1 = {"A"},
    param2 = {"C"},
    impl = function( a, b)
      return 1,2
    end,
  },
    
  F1 = {
    category = 'model',
    retval1 = {"X"},
    retval2 = {"Y",l={">20"}},
    param1 = {"A",l={">0"}},
    param2 = {"C"},
    impl = function(a,b)
      return 3,4
    end,
  },
  
  F2 = {
    category = 'model',
    retval1 = {"X"},
    retval2 = {"Y",l={">20"}},
    param1 = {"A",l={"2..5"}},
    param2 = {"C",l={">0"}},
    impl = function( a, b)
      return 6,7
    end,
  },

  F3 = {
    category = 'model',
    retval1 = {"X"},
    retval2 = {"Y",l={">20"}},
    param1 = {"A",l={"1..5"}},
    param2 = {"C"},
    impl = function(a,b)
      return 20,21
    end,
  },
  
  F4 = {
    category = 'model',
    retval1 = {"X"},
    retval2 = {"Y",l={">20"}},
    param1 = {"A",l = {1}},
    param2 = {"C",l={"-1..1"}},
    impl = function( a, b)
      return 22,23
    end,
  },
}
   