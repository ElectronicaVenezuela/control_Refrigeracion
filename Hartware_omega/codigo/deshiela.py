import math
import onionGpio
#from OmegaExpansion import onionI2C

#///////////////////////////////PAQUETES/////////////////////////////////////////
#//CONFIGURACION DEL ARREGLO(Tcomp,Tvent,Tdesc,Fdesc(horas),t_aire,t_refrig,Delta_t)
#//VARIABLES DE CONTROL
setPoint = [1,2,3,4,5,6,7,8]

gpio14  = onionGpio.OnionGpio(14)#compresor
#gpio15  = onionGpio.OnionGpio(15)#Ventilador
#gpio16  = onionGpio.OnionGpio(16)#Resistencia
#ret1=gpio14.setOutputDirection()
#ret2=gpio15.setOutputDirection()
#ret3=gpio16.setOutputDirection()
#///////////////VARIABLES PARA TIEMPO////////////////////////////////////////////
segundos = 0
minutos = 0
horas = 0
horas_2 = 0
#/////////////////VARIABLES PARA LEER TEMPERATURA////////////////////////////////
T1 = False
T2 = False
temp1=0
temp2=0
termistor = 0
#////////////////VARIABLES PARA LEER VOLTAJE/////////////////////////////////////
def configuracion():
  f = open("setpoint")
  for val in f:
    setPoint.append(val)
  f.close()
  print("valor de la lista"+setpoint.len())
#////////////////////////////////////////////////////////////////////////////////
def reloj():
  global segundos
  global minutos
  global horas
  if segundos == 60:
    minutos+=1
    segundos = 0
  elif minutos == 60:
    horas+=1
    horas_2+=1
    minutos = 0
  elif horas == 24:
    horas = 0;
#////////////////////////////////////////////////////////////////////////////////
def programar():#PROGRAMACION PERSONALIZADA
  #leeo valores de base de datos
  print("programar")
#///////////////////////////////////////////////////////////////////////////////

def temperatura():
  DATO=345
  global temp1
  global temp2
  #codigo del I2C
  temp1 = convertirTemperatura(DATO)#temperatura refrigerante
  temp2= convertirTemperatura(DATO)
#////////////////////////////////////////////////////////////////////////////////
def convertirTemperatura(temperaturaBinaria):
  B = 3400.0 #BETA DEL NTC real: B=3400
  Ro = 4700.0 # //RESISTENCIA A 25C
  Rs = 20000.0 #RESISTENCIA DE LINEALIDAD
  Vt = 5.0*temperaturaBinaria/1024 #VOLTAJE DE ENTRADA
  print "valor del voltaje", Vt
  if Vt==5:
    print "El sensor esta en Corto"
    exit()
  elif Vt==0:
    print "El sensor esta en Circuito Abierto"
    exit()
  else:  
    Rt = (Vt*Rs)/(5-Vt) #RESISTENCIA A TEMPERATURA MEDIDA
  T = (1/((math.log(Rt/Ro)*(1/B))+(1/298.15)))-273.15 #TEMPERATURA MEDIDA
  print "valor de temperatura",T
  return T;

#////////////////////////////////////////////////////////////////////////////////
def resetTime():#reseteo tiempos
  segundos = 0;
  minutos = 0;
  horas = 0;

#////////////////////////////////////////////////////////////////////////////////

def comparador(): #compara todos los estados y tiempos
  
  global horas_2
  BAN_1 = 0
  BAN_2 = 0
  BAN_3 = 0
  BAN_C = 0
  ERROR = 0
#//////////////// inicio de proteccion  /////////////////////////////////////////
  if minutos >= setPoint[0] and BAN_1 == 0: #or BAN_C == 1:
    
    #gpio14.setValue(1)#prendo compresor
    resetTime() #reseteo tiempo
    BAN_1 = 1
    BAN_C = 0
  if minutos >= setPoint[1] and BAN_1 == 1:
    if temp1 - setPoint[6] < 0 and BAN_1 == 1: #ENCENDIDO POR TEMPERATURA (1)*
     # gpio15.setValue(1)#prendo ventilador
      resetTime() #reseteo tiempo
      BAN_1 = 0
#//////////////// fin de proteccion /////////////////////////////////////////////
#////////////inicio de funcion termostato ////////////////////////////////
  if (temp1 - setPoint[6]) < setPoint[4]:# and BAN_2 == 0:
    #gpio14.setValue(0)#apago compresor
    resetTime() #reseteo tiempo
    BAN_2 = 1
  elif minutos == setPoint[7] and temp1 + setPoint[6] > setPoint[4] and BAN_C == 0:
    BAN_C = 1
    BAN_2 = 0
#/////////////////// fin de funcion termostato //////////////////////////////////
#////////////////////////inicio de descarche/////////////////////////////////////

  if horas_2 >= setPoint[3]: 
    #gpio14.setValue(0)#apago compresor
    #gpio15.setValue(0)#apago ventilador
    #gpio16.setValue(1)#prendo Resistencia
    resetTime() #reseteo tiempo
    horas_2 = 0
    BAN_3 = 1
    BAN_C = 0

  if minutos >= setPoint[2] and BAN_3 == 1: 
    #OUTPUT_LOW(RESISTENCIA) ;
    resetTime()
    ERROR = 1 #ERROR EXISTE PORQUE SE APAGA POR RESISTENCIA
    BAN_1 = 0
    BAN_2 = 0
    BAN_3 = 0

  elif temp2 + setPoint[6] >= setPoint[5] and BAN_3 == 1:
    #OUTPUT_LOW(RESISTENCIA) ;
    resetTime()
    BAN_1 = 0
    BAN_2 = 0
    BAN_3 = 0
#///////////////////////FIN DE DESCARCHE/////////////////////////////////////////  
while 1:
  reloj()
  temperatura()#ojo se puede poner en el timer
  comparador()

#// (1)*: DEBO ESPERAR HASTA QUE LA TEMPERATURA ESTE POR DEBAJO DE CERO GRADOS Y
#// TAMBIEN HALLA TRANSCURRIDO UN TIEMPO PARA CONSIDERAR QUE EL VENTILADOR NO
#// DISPARARA AIRE CALIENTE AL SISTEMA