Heli_pine = {
  authors = {'Heli Peltola','V-P Ikonen'},

  Density = {
    category = 'model',
    chkvar1 = {'s',l={1}},
    retval1 = {'density', u = 'kgm-3'}, -- kgm-3
    param1 = {'d_ub_h', u = 'mm', l = {'>0'}},  -- diameter under bark at height h
    param2 = {'a_h', u = 'a'},     -- number of annual rings (age) at height h
    param3 = {'a', u = 'a'},       -- number of annual rings at breast height (1.3 m)
    param4 = {'d_ub', u = 'mm',l = {'>0'}},    -- diameter under bark at breast height
    param5 = {'ts', u = 'C'},      -- temperature sum
    param6 = {'Heli_a',d=1.08},
    impl = function(dh,ch,cbh,dbh,ts,heli)
      local dens = heli*(364.4-17.578*0.5*dh/ch-0.607*math.log(cbh)^3+
                   0.4172*math.log(cbh)^3*math.exp(1)^((dh/dbh)^7)+0.0578*ts)
      return dens
    end,
  },
  
  Latewood = {
    category = 'model',
    chkvar1 = {'s',l={1}},
    retval1 = {'latewood', u = '%', l={"0..100"}}, -- %
    param1 = {'d_ub_h', u = 'mm',l = {'>0'}},  -- diameter under bark at height h
    param2 = {'a_h', u = 'a'},     -- number of annual rings (age) at height h
    param3 = {'a', u = 'a'},       -- number of annual rings at breast height (1.3 m)
    param4 = {'d_ub', u = 'mm', l = {'>0'}},    -- diameter under bark at breast height
    param5 = {'ts', u = 'C'},      -- temperature sum
    impl = function(dh,ch,cbh,dbh,ts)
      local lw = 91.7-31.7*math.log(0.5*dh/ch)-224.9*1/(0.5*dh/ch+2)+
                 2.09*math.exp(1)^((dh/dbh)^7)+0.00517*ts
      return lw
    end,
  },
  
  Earlywood = {
    category = 'model',
    retval1 = {'earlywood', u = '%', l={"0..100"}},  -- %
    chkvar1 = {'s',l={1}},
    param1 = {'latewood', u = '%', l={"0..100"}},  
    param2 = {'Heli_b',d=0.85},     
    impl = function(lw,heli)
      return heli*(100-lw)
    end,
  },

  Fibre = {
    category = 'model',
    retval1 = {'fibre_l', u = 'mm', l={">0"}}, -- mm
    chkvar1 = {'s',l={1}},
    param1 = {'d_ub_h', u = 'mm',l = {'>0'}},  -- diameter under bark at height h
    param2 = {'a_h', u = 'a'},     -- number of annual rings (age) at height h
    param3 = {'ts', u = 'C'},      -- temperature sum
    param4 = {'rel_h', l = {"0..1"}},   -- relative height
    param5 = {'Heli_c', d=1.25},
    impl = function(dh,ch,ts,rh,heli)
      local fl = heli*(-1.21+0.69*math.log(ch)+0.33*math.log(0.5*dh/ch)+
      0.65*(1-math.exp(1)^(-1*rh/0.13))+0.00043*ts)
      return fl
    end,
  },
}  