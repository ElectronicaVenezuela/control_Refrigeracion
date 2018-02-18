////////////////////////////////////////////////////////////////////////////////
//         CONVERTIDOR DE TEMPERATURA PARA MEDIR CON SENSOR NTC               //
//                                                                            //
//         Vt=VOLTAJE MEDIDO                                                  //
//         Rt=RESISTENCIA MEDIDA EN EL NTC                                    //
//         T= VALOR DE TEMPERATURA MEDIDO Y Q ES RETORNADO                    //
//         B= BETA DEL NTC                                                    //
//         Ro= RESISTENCIA A TEMPERATURA AMBIENTE                             //
//         Rs= RESISTENCIA DE LINEALIDAD                                      //
//                                                 copyright MIO              //
//         AUTOR: MAYKOL REY                                                  //
//         UNIVERSIDAD NACIONAL EXPERIMNENTAL DEL TACHIRA                     //
//         TACHIRA- VENEZUELA                                                 //
//                          #include <temperatura.h>                          //
////////////////////////////////////////////////////////////////////////////////






  float CONVER_TEMPERATURA(float X){
      float Vt;
      float Rt;
      float T;
// ****VARIABLES MODIFICABLES****************************************************
      FLOAT B=3900; //BETA DEL NTC
      FLOAT Ro=10000;//RESISTENCIA A 25ºC
      FLOAT Rs=10000; //RESISTENCIA DE LINEALIDAD
//*******************************************************************************
      Vt=5*X/1024; //VOLTAJE DE ENTRADA
      Rt=(Vt*Rs)/(5-Vt);//RESISTENCIA A TEMPERATURA MEDIDA
      T=(1/((LOG(Rt/Ro)*(1/B))+(1/298.15)))-273.15;//TEMPERATURA MEDIDA
      RETURN T; 
   }