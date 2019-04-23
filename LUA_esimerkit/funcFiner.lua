funcFiner = {

  Kjfiner2 = function(dd)
  local kjm
  -- Finerin mänty (ja muut havupuut paitsi kuusi)
     kjm=math.exp(-3.342+2.4142*math.log(dd))
    return kjm
  end,

  ------------------------------
  Kjfiner1_kuusi = function(dd)
  local kjm
  -- Finerin kuusi
    kjm=math.exp(-4.9853+3.0333*math.log(dd))
    return kjm
  end,

  Kjfiner1_manty = function(dd)
  local kjm
  -- Finerin mänty (ja muut havupuut paitsi kuusi)
    kjm=math.exp(-4.5698+2.7929*math.log(dd))
    return kjm
  end,

  Kjfiner1_koivu = function(dd)
  local kjm
  -- Finerin koivu ja muut lehtipuut
    kjm=math.exp(-5.3806+3.0861*math.log(dd))
    return kjm
  end,

  ------------------------------
  Kofiner4 = function(dd)
  local kom
  -- Finerin kuusi
    kom=(math.exp(5.5372+0.1328*dd))/1000
    return kom
  end,

  ------------------------------
  Kofiner3 = function(dd)
  local kom
  -- Finerin mänty (ja muut havupuut paitsi kuusi) (IR)
    kom=(math.exp(1.8943+2.2181*math.log(dd)))/1000
    return kom
  end,

  ------------------------------
  Kofiner2_manty = function(dd)
  local kom
    kom=(math.exp(2.7189*math.log(dd)))/1000
    return kom
  end,

  Kofiner2_koivu = function(dd,ss)
  local kom
  -- Finerin koivu ja muut lehtipuut
    kom=(math.exp(-19.7244+5.929*math.log(dd)-10.9833*math.log(ss)))/1000
    return kom
  end,

  ------------------------------
  Kofiner1 = function(dd)
  local kom
  -- Finerin mänty (VNRmu)
    kom=(math.exp(2.9225+1.7067*math.log(dd)))/1000
    return kom
  end,

  ------------------------------
  Nfiner4 = function(dd,ss)
  local nm
  -- Finerin kuusi
    nm=((math.exp(2.2939+1.8981*math.log(dd)+0.8337*math.log(ss)))+
        (math.exp(2.8349+1.7137*math.log(dd)+0.5291*math.log(ss)))+
        (math.exp(2.776+1.6714*math.log(dd)+0.5235*math.log(ss)))+
        (math.exp(2.5818+1.782*math.log(dd)+0.6142*math.log(ss)))+
        (math.exp(2.4523+1.7122*math.log(dd)+0.5289*math.log(ss)))+
        (math.exp(2.1302+1.8232*math.log(dd)+0.7358*math.log(ss)))+
        (math.exp(1.9123+2.1511*math.log(dd)+0.9628*math.log(ss))))/1000
  return nm
  end,

  ------------------------------
  Nfiner3 = function(dd,ss)
  local nm
  -- Finerin mänty (ja muut havupuut paitsi kuusi) (IR)
    nm=((math.exp(2.8966+1.932*math.log(dd)+1.1458*math.log(ss)))/1000+
        (math.exp(2.6514+1.9828*math.log(dd)+1.152*math.log(ss)))/1000+
        (math.exp(2.6905+1.8779*math.log(dd)+0.8357*math.log(ss))))/1000
    return nm
  end,

  ------------------------------
  Nfiner2_manty = function(dd)
  local nm
    nm=((math.exp(1.1906+2.0091*math.log(dd)))+
        (math.exp(1.8862+1.8809*math.log(dd)))+
        (math.exp(2.1337+1.8666*math.log(dd))))/1000
    return nm
  end,

  Nfiner2_koivu = function(dd)
  local nm
  -- Finerin koivu ja muut lehtipuut
    nm=math.exp(2.9749*math.log(dd))/1000
    return nm
  end,

   ------------------------------
  Nfiner1 = function(dd)
  local nm
  -- Finerin mänty (VNRmu)
    nm=((math.exp(2.3958+1.8121*math.log(dd)))+
        (math.exp(3.0319+1.6660*log(dd)))+
        (math.exp(2.8450+1.7205*log(dd))))/1000
    return nm
  end,

  ------------------------------
  Eonfiner4 = function(dd,ss)
  local eonm
  -- Finerin kuusi
    eonm=math.exp(4.1857+2.20822*math.log(dd)+0.6252*math.log(ss))/1000
    return eonm
  end,

  ------------------------------
  Eonfiner3 = function(dd,ss)
  local eonm
  -- Finerin mänty (ja muut havupuut paitsi kuusi)
    eonm=math.exp(2.7932+2.6708*math.log(dd)+1.3568*math.log(ss))/1000
    return eonm
  end,

  ------------------------------
  Eonfiner2_manty = function(dd)
  local eonm
    eonm=math.exp(3.0560*math.log(dd))/1000
    return eonm
  end,

 Eonfiner2_koivu = function(dd)
  local eonm
  -- Finerin koivu ja muut lehtipuut
    eonm=math.exp(3.3891*math.log(dd))/1000
    return eonm
  end,

  ------------------------------
  Eonfiner1 = function(dd)
  local eonm
  -- Finerin mänty (VNRmu)
    eonm=math.exp(3.2988+2.2387*math.log(dd))/1000
    return eonm
  end,

  ------------------------------
  Kfiner4 = function(dd)
  local km
  -- Finerin kuusi (MKmu)
    km=math.exp(-5.9120+2.7644*math.log(dd))
    return km
  end,

  ------------------------------
  Kfiner3 = function(dd,hh)
  local km
    -- Finerin mänty (IR)
    km=math.exp(-0.722+2.1274*math.log(dd)-0.7392*math.log(hh*10))
    return km
  end,

  ------------------------------
  Kfiner2_manty = function(dd)
  local km
    -- Finerin mänty (RhNRmu)
    km=math.exp(-2.9847+1.6874*math.log(dd))
    return km
  end,

  Kfiner2_koivu = function(dd)
  local km
    km=math.exp(-5.5507+2.7731*math.log(dd))
    return km
  end,

 ------------------------------
  Kfiner1 = function(dd)
  local km
  -- Finerin mänty (VNRmu)
    km=math.exp(-4.0168+2.0023*math.log(dd))
    return km
  end,

  ------------------------------
  Rfiner4 = function(dd,hh)
  local rm
  -- Finerin kuusi (MKmu)
    rm=math.exp(-2.8414+1.5541*math.log(dd)+1.056*math.log(hh-1.3))
    return rm
  end,

  ------------------------------
  Rfiner3 = function(dd,hh)
  local rm
  -- Finerin mänty (IR)
    rm=math.exp(-5.7103+1.7256*math.log(dd)+1.0241*math.log(hh*10))
    return rm
  end,

  ------------------------------
  Rfiner2_koivu = function(dd)
  local rm
    -- Finerin koivu
    rm=math.exp(-2.3362+2.3811*math.log(dd))
    return rm
  end,
      
  Rfiner2_manty = function(dd)
  local rm
    rm=math.exp(-1.6475+2.1064*math.log(dd))
    return rm
  end,
      
  ------------------------------
  Rfiner1 = function(dd,hh)
  local rm
  -- Finerin mänty (VNRmu)
    rm=math.exp(-3.2875+1.8136*math.log(dd)+0.9317*math.log(hh-1.3))
    return rm
  end
}
