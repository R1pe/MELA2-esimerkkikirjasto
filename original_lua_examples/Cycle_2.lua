A = {
  authors = {'XXX'},

  Func1 = {
    category = 'model',
    retval1 = {"y"},
    retval2 = {"x"},
    param1 = {"x"},
    param2 = {"y"},
    impl = function(a,b)
      a,b = b,a
      return a,b
    end,
  },
}