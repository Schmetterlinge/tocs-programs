LOOP:
      INB 1
      ODE stop
      SOZ END
      DOD stop
      ODE A
      SOM CDN
      ODE Z
      SOM ZMIEN
      DOD A
      DOD Z
      SOB DLJ
ZMIEN:
      DOD A
      DOD Z
      DOD cnt
      SOB DLJ
CDN:
      DOD A
DLJ:
      OTB 2
      SOB LOOP
END:
      DOD stop
	  STP
      
stop: RST 46
cnt:  RST 32
A:    RST 65
Z:    RST 25