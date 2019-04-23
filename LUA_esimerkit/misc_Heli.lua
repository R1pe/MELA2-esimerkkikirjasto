misc = {
  authors = {'reetta'},

  RelativeHeight= {
    category = 'model',
    retval1 = {'rel_h'},  -- 
    param1 = {'h_x'},  -- height h
    param2 = {'h',l={'>0'}},  -- Total height of the tree
    impl = function(x,h)
      return x/h
    end,
  },
}  