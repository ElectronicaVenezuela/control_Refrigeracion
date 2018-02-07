#include <18F2550.h>
#device adc=10

#FUSES NOWDT                    //No Watch Dog Timer
#FUSES WDT128                   //Watch Dog Timer uses 1:128 Postscale
#FUSES PLL1                     //No PLL PreScaler
#FUSES CPUDIV1                  //No System Clock Postscaler
#FUSES NOUSBDIV                 //USB clock source comes from primary oscillator
#FUSES XT                       //Crystal osc <= 4mhz for PCM/PCH , 3mhz to 10 mhz for PCD
#FUSES NOFCMEN                  //Fail-safe clock monitor disabled
#FUSES NOBROWNOUT               //No brownout reset
#FUSES NOLVP                    //No low voltage prgming, B3(PIC16) or B5(PIC18) used for I/O
#FUSES NOXINST                  //Extended set extension and Indexed Addressing mode disabled (Legacy mode)

///SALIDAS
#DEFINE COMPRESOR       PIN_C5
#DEFINE VENTILADOR      PIN_C6
#DEFINE RESISTENCIA     PIN_C7

///USUARIO
#DEFINE BOTON_PROGRA    PIN_A2
#DEFINE BOTON_SELECT    PIN_A3
#DEFINE BOTON_MAS       PIN_A4
#DEFINE BOTON_MENOS     PIN_A5

#use delay(clock=4000000)


