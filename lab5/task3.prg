//read and write one letter
           SOB START
           SOB INT1
           SOB INT2 
           SOB INT3
           SOB INT4
START:
           IN 1 
           LAD CHAR
PROGRAM:
           pob CHAR
           OUT 2
           SOB PROGRAM      
INT1:         
           RMSK mask1       
           MAS 15 
           LAD saveAk1

           POB three
           LAD temp1
LOOP1:   
           POB temp1
           ODE one
           SOM LATER1
           LAD temp1   
           POB onechar
           OUT 2
           SOB LOOP1
LATER1:
           POB saveAk1
           SETM mask1           
           RFI

INT2:       
           RMSK mask2             
           MAS 7
           LAD saveAk2
           POB five
           LAD temp2
LOOP2:   
           POB temp2
           ODE one
           SOM LATER2
           LAD temp2   
           POB twochar
           OUT 2
           SOB loop2
LATER2:
           POB saveAk2
           SETM mask2           
           RFI                    
INT3:
           RMSK mask3 
           MAS 3
           LAD saveAk3
           POB seven
           LAD temp3
LOOP3:   
           POB temp3
           ODE one
           SOM LATER3
           LAD temp3   
           POB threechar
           OUT 2
           SOB LOOP3
LATER3:
           POB saveAk3
           SETM mask3              
           RFI    
INT4:
           RMSK mask4 
           MAS 1
           LAD saveAk4
           POB nine
           LAD temp4
LOOP4:   
           POB temp4
           ODE one
           SOM LATER4
           LAD temp4   
           POB fourchar
           OUT 2
           SOB LOOP4
LATER4:
           POB saveAk4
           SETM mask4           
           RFI    
           

one:       RST 1 
three:     RST 3
five:      Rst 5
seven:     RST 7
nine:      RST 9
saveAk1:   RST 0
saveAk2:   RST 0
saveAk3:   RST 0
saveAk4:   RST 0
onechar:   RST 49
twochar:   RST 50
threechar: RST 51
fourchar:  RST 52
CHAR:      RPA
temp1:     RPA
temp2:     RPA
temp3:     RPA
temp4:     RPA
mask1:     RPA
mask2:     RPA
mask3:     RPA
mask4:     RPA