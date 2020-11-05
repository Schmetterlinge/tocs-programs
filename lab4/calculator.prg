//calculator var1 a, var 2 b, sign s
      INB 1
      ODE cnt
      LAD a
      INB 1
      ODE cnt
      LAD b
      INB 1
      LAD s
      //trzeba zmienic kolejnosc dla roznego polecenia
      ODE mul
      SOZ MULT
      ODE one
      SOZ ADDI
      ODE two
      SOZ SUBS
      ODE two
      SOZ DIVI

ADDI:
      POB a
      DOD b
      LAD res
      SOB END
SUBS:
      POB a
      ODE b
      LAD res
      SOB END
MULT:
      POB a
      SOZ END
      POB b
      SOZ END
      LAD tmpb
MLOOP:
      POB res
      DOD a
      LAD res
      POB tmpb
      ODE one
      LAD tmpb
      SOZ END
      SOB MLOOP
DIVI:
      POB a
      SOZ END
      LAD tmpa
      POB b
      SOZ END
DLOOP:
      POB tmpa
      ODE b
      SOM END
      LAD tmpa
      POB res
      DOD one
      LAD res
      SOB DLOOP
END:
      POB a
      DOD cnt
      OTB 2
      POB s
      OTB 2
      POB b
      DOD cnt
      OTB 2
      POB eq
      OTB 2
      POB res
      DOD cnt
      OTB 2
      POB tmpa
      SOZ SKIP
      POB r
      OTB 2
      POB tmpa
      DOD cnt
      OTB 2
SKIP:
      STP

a:    RPA
b:    RPA
s:    RPA
res:  RST 0
tmpa: RST 0
tmpb: RST 0

//constant variable
mul:  RST 42
cnt:  RST 48
r:    RST 114
eq:   RST 61
one:  RST 1
two:  RST 2