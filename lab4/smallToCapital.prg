LOOP:
      INB 1
      ODE stop
      SOZ END
      DOD stop
      ODE a
      SOM CDN
      ODE Z
      SOM ZMIEN
      DOD a
      DOD Z
      SOB DLJ
ZMIEN:
      DOD a
      DOD Z
      ODE cnt
      SOB DLJ
CDN:
      DOD a
DLJ:
      OTB 2
      SOB LOOP
END:
      DOD stop
	  STP
      
stop: RST 46
cnt:  RST 32
a:    RST 97
Z:    RST 25