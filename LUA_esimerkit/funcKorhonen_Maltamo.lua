funcKorhonen_Maltamo = {  

   ------------------------------
    Eokorhodhcr = function(dd,hh,ss)
      local eom=math.exp(-3.0599+3.1287*math.log(dd)-1.3936*math.log(hh)-
             0.0005298*dd^2+0.1162*(hh-(ss*hh)))
      return eom
    end,

  ------------------------------
    Kkorhodhbo_stn5 = function(dd,hh)
      return math.exp(-4.409+0.905*math.log(dd^2)+0.3925*math.log(hh))
    end,

  ------------------------------
    Kkorhodhbo_st5 = function(dd,hh)
      return math.exp(-4.409+0.905*math.log(dd^2)+0.3925*math.log(hh)*0.101)
    end,

  ------------------------------
    Kkorhodh = function(dd,hh)
      return math.exp(-4.344+0.885*math.log(dd^2)+0.435*math.log(hh))
    end,

  ------------------------------
    Rkorhodht = function(dd,hh,tt)
      return math.exp(-4.326+0.842*math.log(dd^2)+1.212*math.log(hh)+0.087*math.log(tt))
    end,

  ------------------------------
    Rkorhodh = function(dd,hh)
      return math.exp(-4.182+0.879*math.log(dd^2)+1.215*math.log(hh))
    end,

  ------------------------------
    Mpkorhodhcr = function(dd,hh,ss)
    local agm=math.exp(-2.649+2.127*math.log(dd)+0.117*hh-0.000202*dd^2-
             0.1496*math.log(hh*ss)-0.00163*hh^2)
--      end
    return agm
    end,

  ------------------------------ 
}
