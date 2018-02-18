#include <deshiela.h>
#include <math.h>
#include <7segmentos.h>
#include <letras.h>
///////////////////////////////PAQUETES/////////////////////////////////////////
//CONFIGURACION DEL ARREGLO(Tcomp,Tvent,Tdesc,Fdesc(horas),t_aire,t_refrig,Delta_t)
SIGNED PAQUETE_1[] = {3, 5, 20, 6, -15, -2, 2, 3}; //congelado fuente
SIGNED PAQUETE_2[] = {3, 5, 10, 8, -5, 0, 2, 3}; //congelacion debil
INT VAR_PAQUETES = 0;
VOID PROGRAMAR_PAQUETES();
VOID PROGRAMAR_TERMISTOR();
VOID PROGRAMAR(INT PALABRA);
INT i;
////////////////////////////////////////////////////////////////////////////////
//VARIABLES DE CONTROL
SIGNED SET_POINT[] = {1, 1, 2, 1, -15, -10, 2, 3};
BOOLEAN BAN_1 = 0;
BOOLEAN BAN_2 = 0;
BOOLEAN BAN_3 = 0;
BOOLEAN BAN_C = 0;
INT ERROR = 0;
////////////////////////////////////////////////////////////////////////////////
INT progra = 0;
INT select = 0;
VOID PROGRAMAR ();
INT MODIFIC (INT X);
///////////////VARIABLES PARA TIEMPO////////////////////////////////////////////

INT SEGUNDOS = 0;
INT SEGUNDOS_A = 0;
INT SEGUNDOS_T = 0;
INT MINUTOS = 0;
INT HORAS = 0;
INT HORAS_2 = 0;
INT TICK = 0;

/////////////////PROTOTIPO DE FUNCIONES GENERALES //////////////////////////////

VOID RELOJ();
VOID MUESTRA();
VOID COMPARADOR();
VOID RESET_PORT ();
VOID ACONDICIONAR(FLOAT X);
VOID CONFIGURACION();
/////////////////VARIABLES PARA LEER TEMPERATURA////////////////////////////////
BOOLEAN T1 = false;
BOOLEAN T2 = false;
VOID LEER_TEMPERATURA();
FLOAT CONVER_TEMPERATURA(FLOAT X);
SIGNED K1, K2;
FLOAT SET_TERMIS = 4700;
INT TERMISTOR = 0;
////////////////VARIABLES PARA LEER VOLTAJE/////////////////////////////////////

////////////////PROTECCION//////////////////////////////////////////////////////

#int_TIMER1
void  TIMER1_isr(void)
{
  set_timer1 (0xBDC);
  TICK++;
  //output_TOGGLE(COMPRESOR);
  IF (TICK == 2)
  {
    SEGUNDOS++;
    SEGUNDOS_A++;
    SEGUNDOS_T++;
    TICK = 0;
  }
  ///TIEMPO PARA MEDIR TEMPERATURA
  IF(SEGUNDOS_T == 3) {
    T1 = TRUE;
    T2 = FAlSE;
  }
  IF(SEGUNDOS_T == 6) {
    T2 = TRUE;
    T1 = FALSE;
    SEGUNDOS_T = 0;
  }
}

////////////////////////////////////////////////////////////////////////////////
VOID CONFIGURACION() {

  setup_adc_ports( AN0_TO_AN1 );
  setup_adc (ADC_CLOCK_DIV_32);
  setup_timer_1(T1_INTERNAL | T1_DIV_BY_8); //500 ms overflow
  enable_interrupts(INT_TIMER1);
  enable_interrupts(GLOBAL);
  OUTPUT_C(0x00);

///cargo los valores almacenados en la eeprom
  FOR (i = 0; i < 7; i++)
  {
    SET_POINT[i] = read_eeprom (i);//DEBE SER PROGRAMADO ANTES DE INSTALARSE DE LO CONTRARIO DARA ERROR EN LOSEQUIPOS
    write_eeprom(i, SET_POINT[i]);
  }

  IF( read_eeprom (10) == 1)
  SET_TERMIS = 10000;
  ELSE
  SET_TERMIS = 4700;
}

void main()
{
  CONFIGURACION();

  while (TRUE)
  {
    RELOJ();
    LEER_TEMPERATURA();//ojo se puede poner en el timer
    PROGRAMAR_TERMISTOR();
    PROGRAMAR_PAQUETES();
    PROGRAMAR();
    COMPARADOR();//metodo q chequela las condiciones

    IF (progra == 0 && select == 0 && VAR_PAQUETES == 0 && TERMISTOR == 0) {
      MUESTRA();

    }
  }
}

////////////////////////////////////////////////////////////////////////////////

VOID RELOJ()
{

  IF (SEGUNDOS == 60)
  {
    MINUTOS++;
    SEGUNDOS = 0;
  } ELSE IF (MINUTOS == 60)
  {
    HORAS++;
    HORAS_2++;
    MINUTOS = 0;
  } ELSE IF (HORAS == 24)
  {
    HORAS = 0;
  }
}

////////////////////////////////////////////////////////////////////////////////

VOID PROGRAMAR_TERMISTOR() {

  IF (INPUT(BOTON_PROGRA ) == 0 && INPUT(BOTON_MENOS) == 0) {

    DELAY_MS (300);
    TERMISTOR++;
    SEGUNDOS_A = 0;
  }
  SWITCH (TERMISTOR)
  {
CASE 1:

    SET_TERMIS = 10000;
    write_eeprom(10, 1);
    IF (SEGUNDOS_A < 3)
    {
      letra (21) ;
    } ELSE{
      TERMISTOR = 0;
    }
    BREAK;
CASE 2:

    SET_TERMIS = 4700;
    write_eeprom(10, 2);


    IF (SEGUNDOS_A < 3)
    {
      letra (29) ;
    } ELSE{
      TERMISTOR = 0;
    }
    BREAK;
CASE 3:
    TERMISTOR = 0;
    BREAK;
  }
}

VOID PROGRAMAR_PAQUETES()
{

  IF (INPUT(BOTON_PROGRA ) == 0 && INPUT (BOTON_MAS) == 1 && INPUT(BOTON_SELECT) == 0)
  {
    DELAY_MS (300) ;
    VAR_PAQUETES++;
    SEGUNDOS_A = 0;
  }
  SWITCH (VAR_PAQUETES)
  {
CASE 1:
    FOR (i = 0; i < 7; i++)
    {
      SET_POINT[i] = PAQUETE_1[i];
      write_eeprom(i, SET_POINT[i]);

    }
    IF (SEGUNDOS_A < 3)
    {
      letra (81) ;
    } ELSE{
      VAR_PAQUETES = 0;
    }
    BREAK;

CASE 2:
    FOR (i = 0; i < 7; i++)
    {
      SET_POINT[i] = PAQUETE_2[i];
      write_eeprom(i, SET_POINT[i]);
    }
    IF (SEGUNDOS_A < 3)
    {
      letra (89) ;
    } ELSE{
      VAR_PAQUETES = 0;
    }
    BREAK;

CASE 3:
    VAR_PAQUETES = 0;
    break;
  }

}
///////////////////////////////////////////////////////////////////////////////

VOID PROGRAMAR() //PROGRAMACION PERSONALIZADA
{
  IF (INPUT (BOTON_PROGRA) == 0 && INPUT (BOTON_MAS) == 0) //para entrar en modo programacion manual
  {
    DELAY_MS (200) ;
    progra = 1; //activo la programacion
    SEGUNDOS_A = 0;
  }
  IF (progra == 1 && select == 0)
  {
    letra (85) ;
  }
  IF (INPUT (BOTON_SELECT) == 0 && progra == 1)
  {
    DELAY_MS (400) ;
    select++;
    SEGUNDOS_A = 0;
  }

  SWITCH (select)
  {
CASE 1: ////TIEMPO DEL COMPRESOR
    PROGRAMAR(62);
    BREAK;

CASE 2:////TIEMPO DEL VENTILADOR
    PROGRAMAR(63);
    BREAK;

CASE 3:////TIEMPO DE DESCARCHE
    PROGRAMAR(64);
    BREAK;

CASE 4:////FRECUENCIA DE DESCARCHE
    PROGRAMAR(74);
    BREAK;

CASE 5:////TEMPERATURA SET POINT AIRE
    PROGRAMAR(01);
    BREAK;

CASE 6:////TEMPERATURA SET POINT REFRIGERANTE
    PROGRAMAR(05);
    BREAK;

CASE 7:////DELTA DE TEMPERATURA
    PROGRAMAR(40);
    BREAK;

CASE 8:////parada del compresor
    PROGRAMAR(83);
    BREAK;

CASE 9:/// FIN DE PROGRAMACION
    select = 0;
    progra = 0;//apago la programacion
    BREAK;
  }
}//fin del modo de programacion

///////////////////////////////////////////////////////////////////////////////

VOID LEER_TEMPERATURA() {
  FLOAT DATO;
  if (T1) {
    set_adc_channel (0) ;
    DELAY_MS(20);
    DATO = read_adc () ;
    K1 = CONVER_TEMPERATURA(DATO); //temperatura ambiente
    T1 = FALSE;
  }
  if (T2) {
    set_adc_channel (1) ;
    DELAY_MS(20);
    DATO = read_adc () ;
    K2 = CONVER_TEMPERATURA(DATO); //temperatura refrigerante
    T2 = FALSE;
  }
}

float CONVER_TEMPERATURA(float X) {
  float Vt;//voltaje transformado
  float Rt;//Resistencia del termistor
  float T;//temperatura
  FLOAT B = 3400; //BETA DEL NTC real: B=3400
  FLOAT Ro = SET_TERMIS; //RESISTENCIA A 25ºC
  FLOAT Rs = 20000; //RESISTENCIA DE LINEALIDAD

  Vt = 5 * X / 1024; //VOLTAJE DE ENTRADA
  Rt = (Vt * Rs) / (5 - Vt); //RESISTENCIA A TEMPERATURA MEDIDA
  T = (1 / ((LOG(Rt / Ro) * (1 / B)) + (1 / 298.15))) - 273.15; //TEMPERATURA MEDIDA
  RETURN T;
}
///////////////////////////////////////////////////////////////////////////////
INT MODIFIC (INT X)
{

  IF (INPUT (BOTON_MAS) == 0)
  {
    DELAY_MS (200) ;
    X++;
  } ELSE IF (INPUT (BOTON_MENOS) == 0)
  {
    DELAY_MS (200) ;
    X--;
  }
  RETURN X;
}
////////////////////////////////////////////////////////////////////////////////

VOID MUESTRA() {
//funcion que muestra las temperaturas del sistema de forma intercalada

  BOOLEAN D = FALSE;
  IF(SEGUNDOS_A == 0 && D == FALSE) {
    SEGUNDOS_A = 0;
    D = TRUE;
  }
  SWITCH(SEGUNDOS_A) {
CASE 0:
    //letra (01);
    VerDisplay(SET_POINT[4]);
    BREAK;
CASE 2:
    VerDisplay(K2);
    BREAK;
CASE 4:

    if (ERROR <= 2 && ERROR > 1) {
      ERROR++;
      letra (71) ;
    } else {
      ERROR = 0;
      SEGUNDOS_A = 0;
    }

    BREAK;
CASE 6://debo colocar 6 cuando termine de hacer las pruebas del tiempo
    SEGUNDOS_A = 0;
    BREAK;
  }
}

////////////////////////////////////////////////////////////////////////////////
VOID RESET_PORT () //reseteo tiempos
{
  SEGUNDOS = 0;
  MINUTOS = 0;
  HORAS = 0;
}
////////////////////////////////////////////////////////////////////////////////

VOID PROGRAMAR(INT PALABRA) {


  IF (SEGUNDOS_A <= 2)
  {
    letra (PALABRA) ;
  }
  IF (SEGUNDOS_A > 2)
  {
    SET_POINT[select - 1] = MODIFIC(SET_POINT[select - 1]) ;
    write_eeprom(select - 1, SET_POINT[select - 1]); //escribo en la eepron de una vez
    VerDisplay (SET_POINT[select - 1]);//muestro el valor
  }
}

////////////////////////////////////////////////////////////////////////////////
VOID COMPARADOR() //compara todos los estados y tiempos
{
//////////////// inicio de proteccion  /////////////////////////////////////////
  IF((MINUTOS >= SET_POINT[0] && BAN_1 == 0) || BAN_C == 1)
  {
    OUTPUT_HIGH (COMPRESOR); //prendo compresor
    RESET_PORT ();//reseteo tiempo
    BAN_1 = 1;
    BAN_C = 0;

  }
  IF(MINUTOS >= SET_POINT[1] && BAN_1 == 1)
  {

    IF((K2 - SET_POINT[6]) < 0 && BAN_1 == 1) { //ENCENDIDO POR TEMPERATURA (1)*

      OUTPUT_HIGH (VENTILADOR);//prendo ventilador
      RESET_PORT();//reseteo tiempo
      BAN_1 = 0;

    }
  }
//////////////// fin de proteccion /////////////////////////////////////////////

///////////////////inicio de funcion termostato ////////////////////////////////
  if ((K2 - SET_POINT[6]) < SET_POINT[4] && BAN_2 == 0) //ojo aqui con la parte del delta de temperatura
  {
    OUTPUT_LOW (COMPRESOR);//apago compresor
    RESET_PORT () ;//reseteo tiempo
    BAN_2 = 1;

  } else if (MINUTOS == SET_POINT[7] && (K2 + SET_POINT[6]) > SET_POINT[4] && BAN_C == 0) {

    BAN_C = 1;
    BAN_2 = 0;
  }
/////////////////// fin de funcion termostato //////////////////////////////////

////////////////////////inicio de descarche/////////////////////////////////////

  IF(HORAS_2 >= SET_POINT[3]) {

    OUTPUT_LOW(COMPRESOR) ;
    OUTPUT_LOW(VENTILADOR) ;
    OUTPUT_HIGH(RESISTENCIA) ;
    RESET_PORT();//reseteo tiempo
    HORAS_2 = 0;
    BAN_3 = 1;
    BAN_C = 0;
  }

  IF(MINUTOS >= SET_POINT[2] && BAN_3 == 1) {

    OUTPUT_LOW(RESISTENCIA) ;
    RESET_PORT ();
    ERROR = 1; //ERROR EXISTE PORQUE SE APAGA POR RESISTENCIA
    BAN_1 = 0;
    BAN_2 = 0;
    BAN_3 = 0;

  } else if ((K1 + SET_POINT[6]) >= SET_POINT[5] && BAN_3 == 1) {

    OUTPUT_LOW(RESISTENCIA) ;
    RESET_PORT ();
    BAN_1 = 0;
    BAN_2 = 0;
    BAN_3 = 0;
  }
}
///////////////////////FIN DE DESCARCHE/////////////////////////////////////////

// (1)*: DEBO ESPERAR HASTA QUE LA TEMPERATURA ESTE POR DEBAJO DE CERO GRADOS Y
// TAMBIEN HALLA TRANSCURRIDO UN TIEMPO PARA CONSIDERAR QUE EL VENTILADOR NO
// DISPARARA AIRE CALIENTE AL SISTEMA



