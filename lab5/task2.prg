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
           
           POB one
           OUT 2
           
           POB saveAK
           MAS 0
           RFI                 
INT2:
           MAS 15
           //MAS 7 
           LAD saveAK
           
           POB two
           OUT 2
           
           POB saveAK
           MAS 0
           RFI             
INT3:
           MAS 15
           //MAS 3
           LAD saveAK
           
           POB three
           OUT 2
           
           POB saveAK
           MAS 0
           RFI  
INT4:
           MAS 15
           //MAS 1
           LAD saveAK
           
           POB four
           OUT 2
           
           POB saveAK
           MAS 0
           RFI
           
one:       RST 49
two:       RST 50
three:     RST 51
four:      RST 52
saveAK:    RPA
on:        RST 1
fst:       RST 0
snd:       RST 0
trd:       RST 0
for:       RST 0