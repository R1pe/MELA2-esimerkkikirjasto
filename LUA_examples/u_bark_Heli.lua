bark = {
  authors = {'hatusta'},

  const= {
    category = 'model',
    priority = '--',
    retval1 = {'B', u = 'mm'},  -- kuorenpaksuus 
    impl = function()
      return 5
    end,
  },
  
  d_ub = {
    category = 'model',
    retval1 = {'d_ub', u = 'mm'},
    param1 = {'d', u = 'mm'},
    param2 = {'B', u = 'mm'},
    impl = function(d,b)
      return d-b
    end,
  },

d_ub_h = {
    category = 'model',
    retval1 = {'d_ub_h', u = 'mm'},
    param1 = {'d_h', u = 'mm'},
    param2 = {'B', u = 'mm'},
    impl = function(d,b)
      return d-b
    end,
  }
}  

