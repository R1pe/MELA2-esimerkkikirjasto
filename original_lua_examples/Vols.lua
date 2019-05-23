R_tilav = {  
  authors = {'Reetta Lempinen'},

  -- v = s_vol(s,d,h)
  s_vol = {
    category = 'model',
    retval1 = {"v"},
    param1 = {"s"},
    param2 = {"d"},
    param3 = {"h"},
    impl = function(s,d,h)
      return 0.00007853475*d^2*h*0.5+0.01*s
    end,
  },

  -- vs = s_fvs(v)
  s_fvs = {
    category = 'model',
    retval1 = {"vs"},
    param1 = {"v"},
    impl = function(v)
      return 0.45*v
    end,
  },

  -- ks = s_fks(v)
  s_fks = {
    category = 'model',
    retval1 = {"ks"},
    param1 = {"v"},
    impl = function(v)
      return 0.05*v
    end,
  },

  -- vp = s_fvp(v)
  s_fvp = {
    category = 'model',
    retval1 = {"vp"},
    param1 = {"v"},
    impl = function(v)
      return 0.36*v
    end,
  },

  -- kp = s_fkp(v)
  s_fkp = {
    category = 'model',
    retval1 = {"kp"},
    param1 = {"v"},
    impl = function(v)
      return 0.04*v
    end,
  },

  -- vt = s_fvt(v)
  s_fvt = {
    category = 'model',
    retval1 = {"vt"},
    param1 = {"v"},
    impl = function(v)
      return 0.09*v
    end,
  },

  -- kt = s_fkt(v)
  s_fkt = {
    category = 'model',
    retval1 = {"kt"},
    param1 = {"v"},
    impl =  function(v)
      return 0.01*v
    end,
  },

  -- vw = s_fvw(v)
  s_fvw = {
    category = 'model',
    retval1 = {"vw"},
    param1 = {"v"},
    impl = function(v)
      return 0.09*v
    end,
  },

  -- kw = s_fkw(v)
  s_fkw = {
    category = 'model',
    retval1 = {"kw"},
    param1 = {"v"},
    impl = function(v)
      return 0.01*v
    end,
  },

  -- kk = s_fkk(v)
  s_fkk = {
    category = 'model',
    retval1 = {"k"},
    param1 = {"v"},
    impl = function(v)
      return 0.1*v
    end
  },
}
