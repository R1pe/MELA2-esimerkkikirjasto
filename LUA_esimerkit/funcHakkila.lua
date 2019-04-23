funcHakkila = {  
    Kjhakkid_kuusi = function(dd)
      -- Hakkilan kuusi
      return -7.0+0.051*(1.33*dd)^2
    end,

  ------------------------------
    Kjhakkid_muut = function(dd)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi) ja lehtipuut
      return -2.0+0.039*(1.33*dd)^2
    end,

  ------------------------------
    Kohakkid_kuusi = function(dd)
      -- Hakkilan kuusi
      return -0.62+0.0134*(dd*10)+(3.9e-8)*(dd*10)^3
    end,

  ------------------------------
    Kohakkid_manty = function(dd)
      return -0.84+0.0194*(dd*10)
    end,

  ------------------------------
    Kohakkid_koivu = function(dd)
      return -0.07+0.0040*(dd*10)
    end,

  ------------------------------
    Nhakkidcr_kuusi = function(dd,ss)
      -- Hakkilan kuusi
      return (0.37+(1.592e-8)*((dd*10)^3)*ss*100+(4.73e-6)*(dd*10)*(ss*100)^2)
    end,

  ------------------------------
    Nhakkidcr_manty = function(dd,ss)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi)
       return math.exp(-9.01+1.8485*math.log(dd*10)+0.0155*ss*100)
    end,

  ------------------------------
    Nhakkid_kuusi = function(dd)
      -- Hakkilan kuusi
      return math.exp(-9.03+2.2204*math.log(dd*10))
    end,

  ------------------------------
    Nhakkid_manty = function(dd)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi)
      return math.exp(-7.47+1.6975*math.log(dd*10))
    end,

  ------------------------------
    Eonhakkidhcr = function(dd,hh,ss)
     local eonm=math.exp(-12.4606+2.73067*math.log(dd*10)+1788.90/(hh*10)^2
              +0.01664*ss*100)
     return eonm
    end,

  ------------------------------
    Eonhakkid = function(dd)
      -- Hakkilan koivu ja muut lehtipuut
      return math.exp(-10.7699+2.6016*math.log(dd*10))
    end,

  ------------------------------
    Eohakkidhcr_kuusi = function(dd,hh,ss)
      local eom = math.exp(-9.821+2.3031*math.log(dd*10)+0.017075*ss*100+
             992.36/(hh*10)^2)
      return eom
    end,

  ------------------------------
    Eohakkidhcr_manty = function(dd,hh,ss)
      local eom = math.exp(-11.059+2.56050*math.log(dd*10)-0.0058932*
             ((hh*10)-(ss*100*hh*10)/100)+(8.14e-5)*((dd*10)+180)*
             ss*100+(1.13e-6)*(dd*10)*(ss*100)^2)
      return eom
    end,

  ------------------------------
    Eohakkidh_kuusi = function(dd,hh)
      -- Hakkilan kuusi
      local eom=0.4112+0.00026724*(dd*10)^2+(1.41e-6)*((dd*10)^3)+0.00043562*
             (((dd*10)^3)/(hh*10))
      return eom
    end,

  ------------------------------
    Eohakkidh_manty = function(dd,hh)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi)
      local eom=math.exp(-5.2678+3.4914*math.log(dd*10)-1.9498*math.log(hh*10)-47.454*
              ((dd*10)/(hh*10)^2))
      return eom
    end,

  ------------------------------
    Eohakkid_kuusi = function(dd)
      -- Hakkilan kuusi
      return (-3.71+0.10229*dd*10+(3.3e-6)*((dd*10)^3))
    end,

  ------------------------------
    Eohakkid_manty = function(dd)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi)
      return math.exp(-9.3954+2.3268*math.log(dd*10))
    end,

  ------------------------------
    Keonhakkidhcr = function(dd,ss)
      return math.exp(-9.0521+2.0532*math.log(dd*10)+(5.498e-5)*((dd*10)+180)*ss*100)
    end,

  ------------------------------
    Keonhakkid = function(dd)
      -- Hakkilan koivu ja muut lehtipuut
      return (math.exp(-10.2692+2.5124*math.log(dd*10)))
    end,

  ------------------------------
    Keohakkidhcr_kuusi = function(dd,hh,ss)
      -- Hakkilan kuusi
      local keom=math.exp(-9.3308+2.2742*math.log(dd*10)+872.51/((hh*10)^2)+0.013594*ss*100)
      return keom
    end,

  ------------------------------
    Keohakkidhcr_manty = function(dd,hh,ss)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi)
      local keom=math.exp(-10.230+2.5478*math.log(dd*10)-0.0050869*((hh*10)-
              ((hh*10*ss*100)/100))+0.0057087*ss*100)
      return keom
    end,

  ------------------------------
    Keohakkidh_kuusi = function(dd,hh)
      -- Hakkilan kuusi
      local keom=0.4866+0.00035026*(dd*10)^2+(1.35e-6)*(dd*10)^3+
              0.00042424*(dd*10)^3/(hh*10)
      return keom
    end,

  ------------------------------
    Keohakkidh_manty = function(dd,hh)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi)
      return math.exp(-9.7486+0.0016023*dd+2.5600*math.log(dd*10)-0.0063173*hh*10)
    end,

   ------------------------------
    Keohakkid_kuusi = function(dd)
      -- Hakkilan kuusi
      return (-4.34+0.11571*dd*10+(3.34e-6)*(dd*10)^3)
    end,

  ------------------------------
    Keohakkid_manty = function(dd)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi)
      return math.exp(-8.8027+2.2475*math.log(dd*10))
    end,

   ------------------------------
    Rhakki2_koivu = function(dd,tt,vv,kk)
     -- Hakkilan koivu (ja muut lehtipuut), pituus >=7.5 m
      return (vv-kk)*((335.64+34.156*math.log(tt)+138.5/dd)*1.01)
    end,

  ------------------------------
    Rhakki2_manty1 = function(dd,hh,tt,vv,kk)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi),  pituus >=7.5  m
    local rm=(vv-kk)*((341.77+92.930*(hh/dd)-193.00*(hh/tt)^2+
         1.832*(tt/hh))*1.01*0.93)
      return rm
    end,

  ------------------------------
    Rhakki2_manty2 = function(dd,hh,tt,vv,kk)
    local rm=(vv-kk)*((341.77+92.930*(hh/dd)-193.00*(hh/tt)^2+
          1.832*(tt/hh))*1.01*0.97)
      return rm
    end,

   ------------------------------
    Rhakki2_manty3 = function(dd,hh,tt,vv,kk)
    local rm=(vv-kk)*((341.77+92.930*(hh/dd)-193.00*(hh/tt)^2+
         1.832*(tt/hh))*1.01)  
      return rm
    end,

   ------------------------------
    Rhakki2_kuusi1 = function(dd,hh,tt,vv,kk)
      -- Hakkilan kuusi, pituus >=7.5 
    local rm=(vv-kk)*((303.37-67.95*math.log(dd/tt)-0.2795*tt+
          0.619*hh+19.13*(dd/tt)^3)*1.01*1.05)
      return rm
    end,

  ------------------------------
    Rhakki2_kuusi2 = function(dd,hh,tt,vv,kk)
      -- Hakkilan kuusi, pituus >=7.5 
    local rm=(vv-kk)*((303.37-67.95*math.log(dd/tt)-0.2795*tt+
         0.619*hh+19.13*(dd/tt)^3)*1.01)
      return rm
    end,

   ------------------------------
    Rhakki1_koivu = function(dd,tt,vv,kk)
      -- Hakkilan koivu (ja muut lehtipuut), pituus 2.5-7.4 m
      return (vv-kk)*(379.99+22.84*math.log(tt)+2.771*(tt/dd)*1.01)
    end,
  ------------------------------
    Rhakki1_manty1 = function(dd,hh,tt,vv,kk)
    local rm=((vv-kk)*(381.63-27.43*(dd/tt)^2+
         62.44*math.log(hh/dd)-26.88*math.log(hh/tt)+0.526*hh)*
         1.01*0.93)
      return rm
    end,

  ------------------------------
    Rhakki1_manty2 = function(dd,hh,tt,vv,kk)
    local rm=(vv-kk)*((381.63-27.43*(dd/tt)^2+
         62.44*math.log(hh/dd)-26.88*math.log(hh/tt)+0.526*hh)*
         1.01*0.97)
      return rm
    end,

  ------------------------------
    Rhakki1_manty3 = function(dd,hh,tt,vv,kk)
    local rm=(vv-kk)*((381.63-27.43*(dd/tt)^2+
         62.44*math.log(hh/dd)-26.88*math.log(hh/tt)+0.526*hh)*1.01)
      return rm
    end,

  ------------------------------
    Rhakki1_kuusi1 = function(dd,hh,tt,vv,kk)
   -- Hakkilan kuusi, 2.5-7.4 m m
    local rm=(vv-kk)*((307.21-67.35*math.log(dd/tt)-0.270*tt+
         0.001679*hh^3+167.7/tt-9.837*(vv-kk)^2+17.79*(dd/tt)^3)*
         1.01*1.05)
      return rm
    end,

    ------------------------------
    Rhakki1_kuusi2 = function(dd,hh,tt,vv,kk)
   -- Hakkilan kuusi, 2.5-7.4 m m
    local rm=(vv-kk)*((307.21-67.35*math.log(dd/tt)-0.270*tt+
          0.001679*hh^3+167.7/tt-9.837*(vv-kk)^2+17.79*(dd/tt)^3)*1.01)
      return rm
    end,

    ------------------------------
    Krhakki2_koivu = function(dd,tt,vv)
      -- Hakkilan koivu (ja muut lehtipuut), pituus >=7.5 m
      return vv*(((335.64+34.156*math.log(tt)+138.5/dd)*1.01)*1.005)
    end,

    ------------------------------
    Krhakki2_manty1 = function(dd,hh,tt,vv)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi),  pituus >=7.5 m
    local krm=vv*((341.77+92.930*(hh/dd)-193.00*(hh/tt)^2+
          1.832*(tt/hh))*1.01*0.98*0.93)
      return krm
    end,

    ------------------------------
    Krhakki2_manty2 = function(dd,hh,tt,vv)
    local krm=vv*(((341.77+92.930*(hh/dd)-193.00*(hh/tt)^2+
          1.832*(tt/hh))*1.01)*0.98*0.97)
      return krm
    end,

    ------------------------------
    Krhakki2_manty3 = function(dd,hh,tt,vv)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi),  pituus >=7.5 m
    local krm=vv*((341.77+92.930*(hh/dd)-193.00*(hh/tt)^2+
          1.832*(tt/hh))*1.01*0.98)
      return krm
    end,

  ------------------------------
    Krhakki2_kuusi1 = function(dd,hh,tt,vv)
      -- Hakkilan kuusi, >= 7.5 m
    local krm=vv*((303.37-67.95*math.log(dd/tt)-0.2795*tt+
          0.619*hh+19.13*(dd/tt)^3)*1.01*1.05)
      return krm
    end,

  ------------------------------
    Krhakki2_kuusi2 = function(dd,hh,tt,vv)
     -- Hakkilan kuusi, >= 7.5 m
    local krm=vv*((303.37-67.95*math.log(dd/tt)-0.2795*tt+
          0.619*hh+19.13*(dd/tt)^3)*1.01)
      return krm
    end,

 ------------------------------  
    Krhakki1_koivu = function(dd,tt,vv)
       -- Hakkilan koivu (ja muut lehtipuut), pituus 2.5-7.4 m
      return vv*(379.99+22.84*math.log(tt)+2.771*(tt/dd)*1.01*1.005)
    end,

  ------------------------------  
    Krhakki1_manty3 = function(dd,hh,tt,vv)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi), pituus 2.5-7.4 m
    local krm=vv*((381.63-27.43*(dd/tt)^2+62.44*math.log(hh/dd)-
          26.88*math.log(hh/tt)+0.526*hh)*1.01*0.98)
      return krm
    end,

  ------------------------------  
    Krhakki1_manty2 = function(dd,hh,tt,vv)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi), pituus 2.5-7.4 m
    local krm=vv*((381.63-27.43*(dd/tt)^2+
           62.44*math.log(hh/dd)-26.88*math.log(hh/tt)+0.526*hh)*
           1.01*0.98*0.97)
      return krm
    end,

  ------------------------------  
    Krhakki1_manty1 = function(dd,hh,tt,vv)
      -- Hakkilan mänty (ja muut havupuut paitsi kuusi), pituus 2.5-7.4 m
    local krm=vv*((381.63-27.43*(dd/tt)^2+
          62.44*math.log(hh/dd)-26.88*math.log(hh/tt)+0.526*hh)*
          1.01*0.98*0.93)
      return krm
    end,

  ------------------------------  
    Krhakki1_kuusi2 = function(dd,hh,tt,vv)
    local krm=vv*((307.21-67.35*math.log(dd/tt)-0.270*tt+
          0.001679*hh^3+167.7/tt-9.837*vv^2+17.79*(dd/tt)^3)*1.01)
      return krm
    end,

  ------------------------------  
    Krhakki1_kuusi1 = function(dd,hh,tt,vv)
    local krm=vv*((307.21-67.35*math.log(dd/tt)-0.270*tt+
          0.001679*hh^3+167.7/tt-9.837*vv^2+
          17.79*(dd/tt)^3)*1.01*1.05)
      return krm
    end,

  ------------------------------
} 
 