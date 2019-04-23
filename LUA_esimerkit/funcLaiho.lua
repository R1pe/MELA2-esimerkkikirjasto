funcLaiho = {  

     Kolaiho_manty = function(dd,hh,hd)
      --  Laihon mänty (ja muut havupuut paitsi kuusi)
      return (3101.458*(dd^0.307)*(hh/hd)^5.275)/1000
    end,

  ------------------------------
    Kolaiho_koivu = function(dd,hh)
      -- Laihon koivu ja muut lehtipuut
      return (1130.121*(dd^1.693)*hh^(-2.146))/1000
    end,

   ------------------------------
    Nlaiho_manty = function(dd,hh,ss)
      --  Laihon mänty (ja muut havupuut paitsi kuusi)
      return (33.203*(dd^2.132)*(hh-(ss*hh))^(-0.502))/1000
    end,

  ------------------------------
    Nlaiho_koivu = function(dd)
      -- Laihon koivu ja muut lehtipuut
      return (13.18*(dd^1.978))/1000
    end,

   ------------------------------
    Eonlaiho_manty = function(dd,hh,ss)
      --  Laihon mänty (ja muut havupuut paitsi kuusi)
      return (3.992*(dd^3.285)*(hh-(ss*hh))^(-0.804))/1000
    end,

  ------------------------------
    Eonlaiho_koivu = function(dd,hh,hd)
      -- Laihon koivu ja muut lehtipuut
      return (3.775*dd^2.966*(hh/hd)^(-0.745))/1000
    end,

   ------------------------------
    Klaiho_manty = function(dd,hh)
      --  Laihon mänty (ja muut havupuut paitsi kuusi)
      return (5.658*dd^2.251*hh^0.249)/1000
    end,

  ------------------------------
    Klaiho_koivu = function(dd,hh)
      -- Laihon koivu ja muut lehtipuut
      return (5.156*(dd^1.197)*(hh^1.456))/1000
    end,

  ------------------------------
    Rlaiho_manty = function(dd,hh)
      --  Laihon mänty (ja muut havupuut paitsi kuusi)
      return (14.422*(dd^1.84)*(hh^1.185))/1000
    end,

    ------------------------------
    Rlaiho_koivu = function(dd,hh)
      -- Laihon koivu ja muut lehtipuut
      return (6.329*dd^1.82*hh^1.58)/1000
    end,

   ------------------------------
    Krlaiho = function(dd,hh)
      return (38.711*(dd^1.789)*(hh^0.901))/1000
    end,

  ------------------------------
    Mplaiho_kuusi = function(dd,hh)
      return (92.558*(dd^1.652)*(hh^0.855))/1000
    end,

  ------------------------------
    Mplaiho_manty = function(dd,hh)
      return (53.677*(dd^2.143)*(hh^0.510))/1000
    end,

   ------------------------------
    Mplaiho_koivu = function(dd,hh)
      return (37.437*(dd^2.031)*(hh^0.799))/1000
    end,

   ------------------------------
}

