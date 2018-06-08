import math
import onionGpio
import time
import json
import httplib
#from OmegaExpansion import onionI2C

#///////////////////////////////PAQUETES/////////////////////////////////////////
#//CONFIGURACION DEL ARREGLO(Tcomp,Tvent,Tdesc,Fdesc(horas),t_aire,t_refrig,Delta_t)
#//VARIABLES DE CONTROL

gpio15  = onionGpio.OnionGpio(15)#compresor
gpio16  = onionGpio.OnionGpio(16)#Ventilador
gpio17  = onionGpio.OnionGpio(17)#Resistencia
ret1=gpio15.setOutputDirection(0)
ret2=gpio16.setOutputDirection(0)
ret3=gpio17.setOutputDirection(0)
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

BAN_1 = 0
BAN_2 = 0
BAN_3 = 0
BAN_C = 0
ERROR = 0

#////////////////VARIABLES PARA LEER VOLTAJE/////////////////////////////////////
def configuracion():
  data = open('setpoint.json','r')
  valores= data.read()
  data.close()
  sp = json.loads(valores)
  return sp
  
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
    horas = 0
#////////////////////////////////////////////////////////////////////////////////

def temperatura():
  DATO=345
  global temp1
  global temp2
  #conn = httplib.HTTPSConnection("api.thingspeak.com")
  #codigo del I2C
  temp1 = convertirTemperatura(DATO)#temperatura refrigerante
  #cap=conn.request("GET", "/update?api_key=9CFTWW3LAB16YBDE&field1="+str(temp1))
  #r1 = conn.getresponse()
  gpio15.setValue(1)#prendo compresor
  """PRENDER LED PARA AVISAR"""
  time.sleep(20.0)
  gpio15.setValue(0)#prendo compresor
  temp2= convertirTemperatura(DATO)
  #cap2=conn.request("GET", "/update?api_key=9CFTWW3LAB16YBDE&field2="+str(temp2))
  #r1 = conn.getresponse() 
  time.sleep(20.0)
  #conn.close()

#////////////////////////////////////////////////////////////////////////////////
def convertirTemperatura(temperaturaBinaria):
  B = 3400.0 #BETA DEL NTC real: B=3400
  Ro = 4700.0 # //RESISTENCIA A 25C
  Rs = 20000.0 #RESISTENCIA DE LINEALIDAD
  Vt = 3.3*temperaturaBinaria/4096 #VOLTAJE DE ENTRADA
  #print "valor del voltaje", Vt
  if Vt==3.3:
    print "El sensor esta en Corto"
    exit()
  elif Vt==0:
    print "El sensor esta en Circuito Abierto"
    exit()
  else:  
    Rt = (Vt*Rs)/(5-Vt) #RESISTENCIA A TEMPERATURA MEDIDA
  T = (1/((math.log(Rt/Ro)*(1/B))+(1/298.15)))-273.15 #TEMPERATURA MEDIDA
  #print "valor de temperatura",T
  return T

#////////////////////////////////////////////////////////////////////////////////
def resetTime():#reseteo tiempos
  segundos = 0
  minutos = 0
  horas = 0
#////////////////////////////////////////////////////////////////////////////////

def comparador(): #compara todos los estados y tiempos
  
  global horas_2
  global BAN_1
  global BAN_2
  global BAN_3
  global BAN_C
  global ERROR
#//////////////// inicio de proteccion  /////////////////////////////////////////
  if minutos >= setPoint["Tcomp"] and BAN_1 == 0 or BAN_C == 1:
    
    gpio15.setValue(1)#prendo compresor
    resetTime() #reseteo tiempo
    BAN_1 = 1
    BAN_C = 0
  if minutos >= setPoint["Tvent"] and BAN_1 == 1:
    if temp1 - setPoint["t_refrig"] < 0 and BAN_1 == 1: #ENCENDIDO POR TEMPERATURA (1)*
      gpio16.setValue(1)#prendo ventilador
      resetTime() #reseteo tiempo
      BAN_1 = 0
#//////////////// fin de proteccion /////////////////////////////////////////////
#////////////inicio de funcion termostato ////////////////////////////////
  if (temp1 - setPoint["t_refrig"]) < setPoint["t_aire"] and BAN_2 == 0:
    gpio15.setValue(0)#apago compresor
    resetTime() #reseteo tiempo
    BAN_2 = 1
  elif minutos == setPoint["t_refrig"] and temp1 + setPoint["t_aire"] > setPoint["t_refrig"] and BAN_C == 0:
    BAN_C = 1
    BAN_2 = 0
#/////////////////// fin de funcion termostato //////////////////////////////////
#////////////////////////inicio de descarche/////////////////////////////////////
  if horas_2 >= setPoint["Tdesc"]: 
    #gpio14.setValue(0)#apago compresor
    #gpio15.setValue(0)#apago ventilador
    #gpio16.setValue(1)#prendo Resistencia
    resetTime() #reseteo tiempo
    horas_2 = 0
    BAN_3 = 1
    BAN_C = 0

  if minutos >= setPoint["Tdesc"] and BAN_3 == 1: 
    #OUTPUT_LOW(RESISTENCIA) ;
    resetTime()
    ERROR = 1 #ERROR EXISTE PORQUE SE APAGA POR RESISTENCIA
    BAN_1 = 0
    BAN_2 = 0
    BAN_3 = 0

  elif temp2 + setPoint["t_refrig"] >= setPoint["t_aire"] and BAN_3 == 1:
    #OUTPUT_LOW(RESISTENCIA) ;
    resetTime()
    BAN_1 = 0
    BAN_2 = 0
    BAN_3 = 0
#///////////////////////FIN DE DESCARCHE/////////////////////////////////////////  
def main():
  global setPoint
  setPoint = configuracion()
  print "Valor de refrigerante: "+str(setPoint["t_refrig"])
  while 1:
    reloj()
    temperatura()
    comparador()
    time.sleep(1.0)
   
if __name__ == '__main__':
  main()

#// (1)*: DEBO ESPERAR HASTA QUE LA TEMPERATURA ESTE POR DEBAJO DE CERO GRADOS Y
#// TAMBIEN HALLA TRANSCURRIDO UN TIEMPO PARA CONSIDERAR QUE EL VENTILADOR NO
#// DISPARARA AIRE CALIENTE AL SISTEMA