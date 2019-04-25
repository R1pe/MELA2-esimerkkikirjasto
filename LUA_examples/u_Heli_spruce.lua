Heli_spruce = {
  authors = {'Heli Peltola','V-P Ikonen'},

  Density = {
    category = 'model',
    chkvar1 = {'s',l={2}},
    retval1 = {'density', u = 'kgm-3'},-- kgm-3
    param1 = {'d_ub_h', u = 'mm',l = {'>0'}},  -- diameter under bark at height h
    param2 = {'a_h', u = 'a'},     -- number of annual rings (age) at height h
    param3 = {'ts', u = 'C'},      -- temperature sum
    param4 = {'Heli_d',d=1.11},
    impl = function(dh,ch,ts,heli)
      local dens = heli*(304.3+10.4437*math.log(ch)^0.5-444.13*dh^1.5/ch/ts+0.2957*ts/(0.5*dh/ch+2.3))
      return dens
    end,
  },
  
  Latewood = {
    category = 'model',
    chkvar1 = {'s',l={2}},
    retval1 = {'latewood', u = '%',l={"0..100"}}, -- %
    param1 = {'d_ub_h', u = 'mm',l = {'>0'}},  -- diameter under bark at height h
    param2 = {'a_h', u = 'a'},     -- number of annual rings (age) at height h
    param3 = {'ts', u = 'C'},      -- temperature sum
    impl = function(dh,ch,ts)
      local lw = 6.1-9.183*math.log(dh)+28.885*math.log(ch)^0.5+0.005911*ts
      return lw
    end,
  },
  
  Earlywood = {
    category = 'model',
    chkvar1 = {'s',l={2}},
    retval1 = {'earlywood', u = '%',l={"0..100"}},  -- %
    param1 = {'latewood', u = '%',l={"0..100"}},  
    param2 = {'Heli_e',d=0.95},     
    impl = function(lw,heli)
      return heli*(100-lw)
    end,
  },

  Fibre = {
    category = 'model',
    chkvar1 = {'s',l={2}},
    retval1 = {'fibre_l', u = 'mm',l={">0"}}, -- mm
    param1 = {'d_ub_h', u = 'mm', l = {'>0'}},  -- diameter under bark at height h
    param2 = {'a_h', u = 'a'},     -- number of annual rings (age) at height h
    param3 = {'ts', u = 'C'},      -- temperature sum
    param4 = {'rel_h', l = {"0..1"}},   -- relative height
    param5 = {'Heli_f', d=1.05},
    impl = function(dh,ch,ts,rh,heli)
      local fl = heli*(3.06-2.20*math.exp(1)^(-1*ch/29.35)-1.55*math.exp(1)^(-0.5*dh/ch/0.74)-
                 0.70*math.exp(1)^(-1*rh/0.14)+0.00056*ts)
      return fl
    end,
  },
}  