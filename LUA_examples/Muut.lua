Muut = {  
  authors = {'XXX'},

  -- cr = s__cr(v)
  s__cr = {
    category = 'model',
    retval1 = {"cr"},
    impl = function()
      return 0.5
    end,
  },
 
  z_dec = {
    category = 'model',
    retval1 = {"cc1"},
    retval2 = {"cc2"},
    param1  = {"a"},
    param2  = {"zz"},
    impl = function(a,zz)
      local cc1,cc2
      local at = {0,1,2,5,10,20,50,100,200,500}
      local p = {1,0.98,0.90,0.60,0.30,0.15,0.05,0.02,0.01,0}
      local i = 0
      local bFound
      repeat
        i = i+1
        bFound = (a < at[i])      
      until bFound
      cc1 = p[i]*zz
      cc2 = -1*p[i]*zz
      return cc1, cc2
    end
  },
 
  s_len = {
    category = 'model',
    retval1 = {"h"},
    param1  = {"s"},
    param2  = {"d"},
    impl = function(s,d)
      local ht
      ht = 1.3 + 0.7*d + 0.1*s
      return ht
    end
  },
}
