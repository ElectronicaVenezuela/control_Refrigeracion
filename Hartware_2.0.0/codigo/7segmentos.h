// Declaraci�n de las constantes para el display.
//#include <7segmentos.h>
/*int DIGITOS2[] =
{
   0b01000000, //C�digo del d�gito 0
   0b01111001, //C�digo del d�gito 1
   0b00100100, //C�digo del d�gito 2
   0b00110000, //C�digo del d�gito 3
   0b00011001, //C�digo del d�gito 4
   0b00010010, //C�digo del d�gito 5
   0b00000010, //C�digo del d�gito 6
   0b01111000, //C�digo del d�gito 7
   0b00000000, //C�digo del d�gito 8
   0b00011000, //C�digo del d�gito 9
};*/

int DIGITOS[] =
{
   0b10111111, //C�digo del d�gito 0
   0b10000110, //C�digo del d�gito 1
   0b11011011, //C�digo del d�gito 2
   0b11001111, //C�digo del d�gito 3
   0b11100110, //C�digo del d�gito 4
   0b11101101, //C�digo del d�gito 5
   0b11111101, //C�digo del d�gito 6
   0b10000111, //C�digo del d�gito 7
   0b11111111, //C�digo del d�gito 8
   0b11100111, //C�digo del d�gito 9
};


//Funci�n para visualizar el display din�mico DOBLE CON SIGNO NEGATIVO HUBICADO
//EN EL PIN B7.

/* VOID VerDisplay_DOBLE(SIGNED V1)
{
    BOOLEAN SIGNO=FALSE;
     
     IF(V1<1){
      
      V1=V1*-1;
      SIGNO=TRUE;
      }

     INT UM; //Variable para guardar las unidades.
     INT DM; //Variable para guardar las decenas.
      UM=V1/10;
      DM=V1%10;
     
     IF(SIGNO){
     
     
        OUTPUT_B (DIGITOS[UM]|0b10000000); //Visualiza las unidades.
        OUTPUT_high(PIN_C0); //Activa en alto el primer display
        delay_ms (5); //Retado de 10m segundos
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low (PIN_C0); //Desactiva todos los displays.
      
        OUTPUT_B (DIGITOS[DM]|0b10000000); //Visualiza las decenas.
        OUTPUT_high(PIN_C1); //Activa en alto el segundo display
        delay_ms (5); //Retado de 10m segundos
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low(PIN_C0); //Desactiva todos los displays.   
     
     
     
     }ELSE{
     
        OUTPUT_B (DIGITOS[UM]|0b00000000); //Visualiza las unidades.
        OUTPUT_high(PIN_C0); //Activa en alto el primer display
        delay_ms (5); //Retado de 10m segundos
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low (PIN_C0); //Desactiva todos los displays.
      
        OUTPUT_B (DIGITOS[DM]|0b00000000); //Visualiza las decenas.
        OUTPUT_high(PIN_C1); //Activa en alto el segundo display
        delay_ms (5); //Retado de 10m segundos
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low(PIN_C0); //Desactiva todos los displays.  
     }
}
*/

 VOID VerDisplay(SIGNED V1)
{
    BOOLEAN SIGNO=FALSE;
     
     IF(V1<1){
      
      V1=V1*-1;
      SIGNO=TRUE;
      }

     INT UM; //Variable para guardar las unidades.
     INT DM; //Variable para guardar las decenas.
   
     UM=V1/10;
     DM=V1%10;
     
     IF(SIGNO){
     
     
        OUTPUT_B (DIGITOS[UM]); //Visualiza las unidades.
        OUTPUT_high(PIN_C1); //Activa en alto el primer display
        delay_ms (5); //Retado de 10m segundos
        OUTPUT_low (PIN_C0); //Desactiva todos los displays.
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low (PIN_C2); //Desactiva todos los displays.
        
        OUTPUT_B (DIGITOS[DM]); //Visualiza las decenas.
        OUTPUT_high(PIN_C2); //Activa en alto el segundo display
        delay_ms (5); //Retado de 10m segundos
        OUTPUT_low (PIN_C0); //Desactiva todos los displays.
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low (PIN_C2); //Desactiva todos los displays.
         
        OUTPUT_B (0b11000000); //Visualiza las decenas.
        OUTPUT_high(PIN_C0); //Activa en alto el segundo display
        delay_ms (5); //Retado de 10m segundos
        OUTPUT_low (PIN_C0); //Desactiva todos los displays.
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low (PIN_C2); //Desactiva todos los displays.
     
     }ELSE{
     
        OUTPUT_B (DIGITOS[UM]); //Visualiza las unidades.
        OUTPUT_high(PIN_C1); //Activa en alto el primer display
        delay_ms (5); //Retado de 10m segundos
        OUTPUT_low (PIN_C0); //Desactiva todos los displays.
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low (PIN_C2); //Desactiva todos los displays.
        
        OUTPUT_B (DIGITOS[DM]); //Visualiza las decenas.
        OUTPUT_high(PIN_C2); //Activa en alto el segundo display
        delay_ms (5); //Retado de 10m segundos
        OUTPUT_low (PIN_C0); //Desactiva todos los displays.
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low (PIN_C2); //Desactiva todos los displays.
        
     }
}

 /*VOID VerDisplayALT(INT V1)
{
   
     INT D; //Variable para guardar las unidades.
     INT C; //Variable para guardar las decenas.
     INT U; //Variable para guardar las unidad.
    
     C= V1/100;
     D=(V1-C*100)/10;
     U=V1-C*100-D*10;
     
        OUTPUT_B (DIGITOS[C]); //Visualiza las unidades.
        OUTPUT_high(PIN_C2); //Activa en alto el primer display
        delay_ms (3); //Retado de 10m segundos
        OUTPUT_low (PIN_C0); //Desactiva todos los displays.
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low (PIN_C2); //Desactiva todos los displays.
        
        OUTPUT_B (DIGITOS[D]); //Visualiza las decenas.
        OUTPUT_high(PIN_C0); //Activa en alto el segundo display
        delay_ms (3); //Retado de 10m segundos
        OUTPUT_low (PIN_C0); //Desactiva todos los displays.
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low (PIN_C2); //Desactiva todos los displays.
         
        OUTPUT_B (DIGITOS[U]); //Visualiza las decenas.
        OUTPUT_high(PIN_C1); //Activa en alto el segundo display
        delay_ms (3); //Retado de 10m segundos
        OUTPUT_low (PIN_C0); //Desactiva todos los displays.
        OUTPUT_low (PIN_C1); //Desactiva todos los displays.
        OUTPUT_low (PIN_C2); //Desactiva todos los displays.
     
}*/
