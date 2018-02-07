#include <16F877A.h>


#FUSES NOWDT                    //No Watch Dog Timer
#FUSES XT                       //High speed Osc (> 4mhz for PCM/PCH) (>10mhz for PCD)
#FUSES NOPUT                    //No Power Up Timer
#FUSES NOPROTECT                //Code not protected from reading
#FUSES NODEBUG                  //No Debug mode for ICD
#FUSES NOBROWNOUT               //No brownout reset
#FUSES NOLVP                    //No low voltage prgming, B3(PIC16) or B5(PIC18) used for I/O
#FUSES NOCPD                    //No EE protection
#FUSES NOWRT                    //Program memory not write protected
#use delay(clock=4000000)
//#use rs232(BAUD=9600,BITS=8,PARITY=N,XMIT=PIN_C6,RCV=PIN_C7)

VOID inicia_puertos(){
   
   set_tris_a(0b00000000);
   set_tris_c(0b11110000);
   
   output_a(0X00);
   output_b(0X00);
   output_c(0X00);
   output_d(0X00);
   output_e(0X00);
}
