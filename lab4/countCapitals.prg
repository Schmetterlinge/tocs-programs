LOOP:
      INB 1
      ODE stop
      SOZ END
      DOD stop
      ODE A
      SOM CDN
      ODE Z
      SOM CNT
      DOD A
      DOD Z
      SOB DLJ
CNT:
      DOD A
      DOD Z
      LAD tmp
      POB i
      DOD one
      LAD i
      POB tmp
      SOB DLJ
CDN:
      DOD A
DLJ:
      OTB 2
      SOB LOOP
END:
      OTB 2
      POB i
      STP
      
stop: RST 46
A:    RST 65
Z:    RST 25
i:    RST 0
tmp:  RST 0
one:  RST 1