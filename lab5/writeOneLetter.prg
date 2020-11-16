//read and write one letter
           SOB START
           SOB INT1         //ustawienie 1 iterrupt'a
           SOB INT2         //ustawienie 2 iterrupt'a
           SOB INT3         //ustawienie 3 iterrupt'a
           SOB INT4         //ustawienie 4 iterrupt'a
START:
           IN 1 //wybieramy znak, który bedzie kopiowany
PROGRAM:
           OUT 2
           SOB PROGRAM      // mamy skakać do programu
INT1:                       // definicja interrupt'a
           MAS 15           // masking (AD)->RM
           LAD saveAK       // save AK
           
           POB one          //program, który ma się wykonać podczas interrupt
           OUT 2
           OUT 2
           OUT 2
           OUT 2
           OUT 2
           
           POB saveAK       // load AK
           MAS 0            // wczytuje (AD)->RM
           RFI              // wraca z interrupt   
INT2:                       //to samo co wczesniej
           MAS 15
           LAD saveAK
           
           POB two
           OUT 2
           OUT 2
           OUT 2
           OUT 2
           OUT 2
           
           POB saveAK
           MAS 0
           RFI             
INT3:
           MAS 15
           LAD saveAK
           
           POB three
           OUT 2
           OUT 2
           OUT 2
           OUT 2
           OUT 2
           
           POB saveAK
           MAS 0
           RFI  
INT4:
           MAS 15
           LAD saveAK
           
           POB four
           OUT 2
           OUT 2
           OUT 2
           OUT 2
           OUT 2
           
           POB saveAK
           MAS 0
           RFI
                            //zmienne
one:       RST 49
two:       RST 50
three:     RST 51
four:      RST 52
saveAK:    RPA