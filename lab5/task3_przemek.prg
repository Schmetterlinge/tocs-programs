//read and write one letter
           SOB START
           SOB INT1         //ustawienie 1 iterrupt'a
           SOB INT2         //ustawienie 2 iterrupt'a
           SOB INT3         //ustawienie 3 iterrupt'a
           SOB INT4         //ustawienie 4 iterrupt'a
START:
           IN 1 
           lad key
PROGRAM:
           pob key
           OUT 2
           SOB PROGRAM      
INT1:         
rmsk tempmask3       
           SETM mask1 
           lad ak1
           pob three
           lad temp1
           loop1:   
           pob temp1
           ode one
           som end1
           lad temp1   
           pob onechar
           OUT 2
           sob loop1
           end1:
           pob ak1
           SETM tempmask3            
           RFI                
INT2:       
           RMSK tempmask             
           SETM mask2
           lad ak2
           pob five
           lad temp2
           loop2:   
           pob temp2
           ode one
           som end2
           lad temp2   
           pob twochar
           OUT 2
           sob loop2
           end2:
           pob ak2
           SETM tempmask           
           RFI                    
INT3:
RMSK tempmask1 
           SETM mask3
           lad ak3
           pob seven
           lad temp3
           loop3:   
           pob temp3
           ode one
           som end3
           lad temp3   
           pob threechar
           OUT 2
           sob loop3
           end3:
           pob ak3
           SETM tempmask1              
           RFI    
INT4:
           RMSK tempmask2 
           SETM mask4
           lad ak4
           pob nine
           lad temp4
           loop4:   
           pob temp4
           ode one
           som end4
           lad temp4   
           pob fourchar
           OUT 2
           sob loop4
           end4:
           pob ak4
            SETM tempmask2           
           RFI    
           

one: RST 1 
three: RST 3
five: Rst 5
seven: rst 7
nine: rst 9
ak1:       RST 0
ak2:       RST 0
ak3:     RST 0
ak4:      RST 0
onechar:    RST 49
twochar:    RST 50
threechar:  RST 51
fourchar:   RST 52
key: RPA
temp1: rpa
temp2: rpa
temp3: rpa
temp4: rpa
mask4: rst 1
mask3: rst 3
mask2: RST 7
mask1: RST 15
mask0: RST 0
tempmask: rpa
tempmask1: rpa
tempmask2: rpa
tempmask3: rpa