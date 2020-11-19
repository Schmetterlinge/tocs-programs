//read and write one letter
           SOB START
           SOB INT1
           SOB INT2
           SOB INT3
           SOB INT4
START:
           IN 1
PROGRAM:
           OUT 2
           SOB PROGRAM
INT1:
           MAS 15
           LAD saveAK
           
           POB fst
           DOD on
           LAD fst
           ODE five
           SOM LATER1
           POB one
           OUT 2
           SOB END
LATER1:
           
           POB saveAK
           MAS 0
           RFI                 
INT2:
           MAS 15
           //MAS 7 
           LAD saveAK
           
           POB snd
           DOD on
           LAD snd
           ODE five
           SOM LATER2
           POB two
           OUT 2
           SOB END
LATER2:
           
           POB saveAK
           MAS 0
           RFI             
INT3:
           MAS 15
           //MAS 3
           LAD saveAK
           
           POB trd
           DOD on
           LAD trd
           ODE five
           SOM LATER3
           POB three
           OUT 2
           SOB END
LATER3:
           
           POB saveAK
           MAS 0
           RFI  
INT4:
           MAS 15
           //MAS 1
           LAD saveAK
           
           POB for
           DOD on
           LAD for
           ODE five
           SOM LATER4
           POB four
           OUT 2
           SOB END
LATER4:
           
           POB saveAK
           MAS 0
           RFI
END:
           STP
           
one:       RST 49
two:       RST 50
three:     RST 51
four:      RST 52
five:      RST 5
saveAK:    RPA
on:        RST 1
fst:       RST 0
snd:       RST 0
trd:       RST 0
for:       RST 0