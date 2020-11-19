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
           LAD saveAK1

           POB fst
           LAD tmp1
LOOP1:          
           POB tmp1
           ODE on
           SOM LATER1
           LAD tmp1
           POB one
           OUT 2
           SOB LOOP1 
LATER1:

           POB saveAK1
           MAS 0
           RFI                 
INT2:
           MAS 7 
           LAD saveAK2

           POB snd
           LAD tmp2
LOOP2:          
           POB tmp2
           ODE on
           SOM LATER2
           LAD tmp2
           POB two
           OUT 2
           SOB LOOP2 
LATER2:
           
           POB saveAK2
           MAS 0
           RFI             
INT3:
           MAS 3
           LAD saveAK3
           
           POB trd
           LAD tmp3
LOOP3:          
           POB tmp3
           ODE on
           SOM LATER3
           LAD tmp3
           POB three
           OUT 2
           SOB LOOP3 
LATER3:
           
           POB saveAK3
           MAS 0
           RFI  
INT4:
           MAS 1
           LAD saveAK4
           
           POB for
           LAD tmp4
LOOP4:          
           POB tmp4
           ODE on
           SOM LATER4
           LAD tmp4
           POB four
           OUT 2
           SOB LOOP4 
LATER4:
           
           POB saveAK4
           MAS 0
           RFI
           
one:       RST 49
two:       RST 50
three:     RST 51
four:      RST 52
saveAK1:    RPA
saveAK2:    RPA
saveAK3:    RPA
saveAK4:    RPA
tmp1:      RPA
tmp2:      RPA
tmp3:      RPA
tmp4:      RPA
on:        RST 1
fst:       RST 3
snd:       RST 5
trd:       RST 7
for:       RST 9