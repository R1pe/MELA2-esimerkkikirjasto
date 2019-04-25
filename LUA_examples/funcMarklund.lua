funcMarklund = {

    ------------------------------
    Jmark2 = function(kjm,kam)
      return kjm-kam
    end,

    ------------------------------
    Jmarkd_kuusi1 = function(dd)
      return math.exp(7.6283*(dd/(dd+12))-2.5706)
    end,

    ------------------------------
    Jmarkd_kuusi2 = function(dd)
      local jm=math.exp(13.3703*(dd/(dd+8))-6.3851)+
            math.exp(7.6283*(dd/(dd+12))-2.5706)
      return jm
    end,

    ------------------------------
    Jmarkd_manty1 = function(dd)
      return math.exp(8.8795*(dd/(dd+10))-3.8375)
    end,

    ------------------------------
    Jmarkd_manty2 = function(dd)
      local jm =math.exp(13.2902*(dd/(dd+9))-6.3413)+
            math.exp(8.8795*(dd/(dd+10))-3.8375)
      return jm
    end,

    ------------------------------
    Jmarkd_koivu1 = function(dd)
      return math.exp(8.8795*(dd/(dd+10))-3.8375)
    end,

    ------------------------------
     Jmarkd_koivu2 = function(dd)
      local jm = math.exp(13.2902*(dd/(dd+9))-6.3413) +
            math.exp(8.8795*(dd/(dd+10))-3.8375)
      return jm
    end,

    ------------------------------
    Kamark2 = function(kjm,jm)
      return kjm-jm
    end,

    ------------------------------
    Kamarkd_kuusi = function(dd)
      -- Marklundin kuusi
      return math.exp(10.6686*(dd/(dd+17))-3.3645)
    end,

    ------------------------------
    Kamarkd_muut = function(dd)
      -- Marklundin mänty (ja muut havupuut paitsi kuusi) sekä lehtipuut
      return math.exp(11.0481*(dd/(dd+15))-3.9657)
    end,

    ------------------------------
    Kjmarkd_kuusi = function(dd)
      -- Marklundin kuusi
      return math.exp(10.5381*(dd/(dd+14))-2.4447)
    end,

    ------------------------------
    Kjmarkd_muut = function(dd)
      -- Marklundin mänty (ja muut havupuut paitsi kuusi) sekä lehtipuut
      return math.exp(11.1106*(dd/(dd+12))-3.3913)
    end,

   ------------------------------
    Komarkdhcr = function(dd,hh,ss)
      return math.exp(5.6333*(dd/(dd+18))+2.7826*math.log(hh)-1.7460*math.log(ss*hh)-5.3924)
    end,

    ------------------------------
    Komarkdh_kuusi = function(dd,hh)
      -- Marklundin kuusi
      return math.exp(3.6518*(dd/(dd+18))+0.0493*hh+1.0129*math.log(hh)-4.6351)
    end,

    ------------------------------
    Komarkdh_manty = function(dd,hh)
      -- Marklundin mänty
      return math.exp(7.127*(dd/(dd+10))-0.0465*hh+1.106*math.log(hh)-5.8926)
    end,

    ------------------------------
    Komarkdh_koivu = function(dd,hh)
      -- Marklund koivu ja muut lehtipuut
      return math.exp(11.2872*(dd/(dd+30))-0.3081*hh+2.6821*math.log(hh)-6.6237)
    end,

    ------------------------------
    Komarkd_kuusi = function(dd)
      -- Marklundin kuusi
      return math.exp(9.9550*(dd/(dd+18))-4.3308)
    end,

    ------------------------------
    Komarkd_manty = function(dd)
      -- Marklundin mänty
      return math.exp(9.5938*(dd/(dd+10))-5.3338)
    end,

    ------------------------------
    Komarkd_koivu = function(dd)
      -- Marklund koivu ja muut lehtipuut
      return math.exp(7.9266*(dd/(dd+5))-5.9507)
    end,

    ------------------------------
    Nmarkdhcr = function(dd,hh,ss)
      local nm=math.exp(8.4127*(dd/(dd+12))-1.5628*math.log(hh)+
            1.4032*math.log(ss*hh)-1.5732)
      return nm
    end,

    ------------------------------
    Nmarkdh_kuusi = function(dd,hh)
      -- Marklundin kuusi
      return math.exp(9.7809*(dd/(dd+12))-0.4873*math.log(hh)-1.8551)
    end,

    ------------------------------
    Nmarkdh_muut = function(dd,hh)
      -- Marklundin mänty
      return math.exp(12.1095*(dd/(dd+7))+0.0413*hh-1.565*math.log(hh)-3.4781)
   end,

    ------------------------------
    Nmarkd_kuusi = function(dd)
      -- Marklundin kuusi
      return math.exp(7.8171*(dd/(dd+12))-1.9602)
    end,
    
    ------------------------------
    Nmarkd_manty = function(dd)
      -- Marklundin mänty
      return math.exp(7.7681*(dd/(dd+7))-3.7983)
    end,
 
    ------------------------------
    Eonmark2 = function(eom,nm)
      return eom-nm
    end,

    ------------------------------
    Eonmarkd = function(dd)
      -- Marklund koivu ja muut lehtipuut
      return math.exp(10.2806*(dd/(dd+10))-3.3633)
    end,

    ------------------------------
    Eomarkdh_kuusi = function(dd,hh)
       return math.exp(10.9708*(dd/(dd+13))-0.0124*hh-0.4923*math.log(hh)-1.2063)
    end,

    ------------------------------
    Eomarkdh_manty = function(dd,hh)
     -- Marklundin mänty (ja muut havupuut paitsi kuusi)
      return math.exp(13.3955*(dd/(dd+10))-1.1955*math.log(hh)-2.5413)
    end,

    -------------------------------
    Krmarkdh_kuusi = function(d,h)
      -- Marklund kuusi
      return math.exp(7.469*(d/(d+14))+0.0289*h+0.6828*math.log(h)-2.1702) 
    end,
    
    -------------------------------
    Krmarkdh_manty = function(d,h)
      -- Marklund mänty
      return math.exp(7.5939*(d/(d+13))+0.0151*h+0.8799*math.log(h)-2.6768)
    end,
    
    -------------------------------
    Krmarkdh_koivu = function(d,h)
      -- Marklund koivu ja muut 
      return math.exp(8.2827*(d/(d+7))+0.0393*h+0.5772*math.log(h)-3.5686)
    end,
    
    -------------------------------
    Krmarkd_kuusi = function(d)
      -- Marklund kuusi
      return math.exp(11.3341*(d/(d+14))-2.0571)
    end,

    -------------------------------
    Krmarkd_manty = function(d)
      -- Marklund mänty
      return math.exp(11.3264*(d/(d+13))-2.3388)
    end,

    -------------------------------
    Krmarkd_koivu = function(d)
      -- Marklund koivu ja muut 
      return math.exp(11.0735*(d/(d+8))-3.0932)
    end,

    -------------------------------
    Krmarkdht = function(d,h,ad)
      -- Marklund koivu ja muut 
      return math.exp(8.0420*(d/(d+7))+0.0531*h+0.3897*math.log(h)+0.1018*math.log(ad)-3.5194)
    end, 

    ------------------------------
    Rmarkd_kuusi = function(d)
    -- Marklund kuusi
      return math.exp(11.4873*(d/(d+14))-2.2471)
    end, 

    ------------------------------
    Rmarkd_manty = function(d)
    -- Marklund mänty (ja muut havupuut paitsi kuusi)
      return math.exp(11.4219*(d/(d+14))-2.2184)
    end, 

    ------------------------------
    Rmarkd_koivu = function(d)
    -- Marklund koivu ja muut lehtipuut
      return math.exp(10.8109*(d/(d+11))-2.3327)
    end, 

    ------------------------------
    Rmarkdh_kuusi = function(dd,hh)
      -- Marklund kuusi
      return math.exp(7.2309*(dd/(dd+14))+0.0355*hh+0.703*math.log(hh)-2.3032)
    end, 

    ------------------------------
    Rmarkdh_manty = function(dd,hh)
      -- Marklund mänty (ja muut havupuut paitsi kuusi)
       return math.exp(7.6066*(dd/(dd+14))+0.02*hh+0.8658*math.log(hh)-2.6864)
    end, 

   ------------------------------
    Rmarkdh_koivu = function(dd,hh)
      -- Marklund koivu ja muut lehtipuut
      return math.exp(8.1184*(dd/(dd+11))+0.9783*math.log(hh)-3.3045)
    end, 

   -------------------------------
    Rmark2 = function(krm,km)
      return krm-km
    end,

    -------------------------------
    Kmarkd_kuusi = function(dd)
      -- Marklund kuusi
      return math.exp(9.8364*(dd/(dd+15))-3.3912)
    end,

    -------------------------------
    Kmarkd_manty = function(dd)
      -- Marklund mänty (ja muut havupuut paitsi kuusi)
      return math.exp(8.8489*(dd/(dd+16))-2.9748)
    end,
 
    -------------------------------
    Kmarkd_koivu = function(dd)
      -- Marklund koivu ja muut lehtipuut
      return math.exp(10.3876*(dd/(dd+14))-3.2518)
    end,

    -------------------------------
    Kmarkdh_kuusi = function(dd,hh)
      -- Marklund kuusi
      return math.exp(8.3089*(dd/(dd+15))+0.0147*hh+0.2295*math.log(hh)-3.402)
    end,

    -------------------------------
    Kmarkdh_manty = function(dd,hh)
      -- Marklund mänty (ja muut havupuut paitsi kuusi)
      return math.exp(7.2482*(dd/(dd+16))+0.4487*math.log(hh)-3.2765)
    end,

    -------------------------------
    Kmarkdh_koivu = function(dd,hh)
      -- Marklund koivu ja muut lehtipuut
      return math.exp(8.3019*(dd/(dd+14))+0.7433*math.log(hh)-4.0778)
    end,

   -------------------------------
    Kmark2 = function(krm,rm)
      return krm-rm
    end,

    -------------------------------
    Eomarkd_kuusi = function(dd)
      return math.exp(8.5242*(dd/(dd+13))-1.2804)
    end,
    
    -------------------------------
    Eomarkd_manty = function(dd)
      -- Marklund mänty (ja muut havupuut paitsi kuusi)
      return math.exp(9.1015*(dd/(dd+10))-2.8604)
    end,

    -------------------------------

}