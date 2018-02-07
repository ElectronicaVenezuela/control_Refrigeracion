///////////////////////////////////////////////////////////////////////////////
//                     LIBRERI PARA DESHIELADOR                              //
//   FUNCION: indicar la funcion que sera programada                         //
//   void letra():  valores que correspondes a valor binario                 //
//                                                                           //
//                    0b01110000,//T-->0                                     //
//                    0b01110111,//A-->1                                     //
//                    0b01101101,//S-->2                                     //
//                    0b00000110,//1-->3                                     //
//                    0b01011011,//2-->4                                     //
//                    0b01001111,//3-->5                                     //
//  EJEMPLO:                                                                 //
//             letra(01) --> TA                                              //
// #include<letras.h>                                AUTOR: Maykol Rey       //
///////////////////////////////////////////////////////////////////////////////                                                                    

 /* int letras[]={
   0b00000111,//t-->0
   0b00001000,//A-->1
   0b01000110,//C-->2
   0b01000001,//v-->3
   0b00100001,//d-->4
   0b00101111,//r-->5
   0b01001110,//T-->6
   0b00001110,//F-->7
   0b00001100,//P-->8
   0b00000011,//B-->9
   };*/
  int letras[]={
   0b11111000,//t-->0
   0b11110111,//A-->1
   0b10111001,//C-->2
   0b10111110,//v-->3
   0b11011110,//d-->4
   0b11010000,//r-->5
   0b10110001,//T-->6
   0b11110001,//F-->7
   0b11110011,//P-->8
   0b11111100,//B-->9
   };
   void letra(int valor){
      
      int V1,V2;
      V1=valor%10;
      V2=valor/10;
      
      output_B(letras[V1]);
      output_HIGH(PIN_C2);
      delay_ms(10);
      output_LOW(PIN_C1);
      output_LOW(PIN_C2);
      
      output_B(letras[V2]);
      output_HIGH(PIN_C1);
      delay_ms(10);
      output_LOW(PIN_C1);
      output_LOW(PIN_C2);
   }  
