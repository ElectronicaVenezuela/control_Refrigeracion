import json
import time



def configuracion():
  data = open('setpoint.json','r')
  valores= data.read()
  data.close()
  setpoint = json.loads(valores)
  print str(setpoint["Tcomp"])
  return setpoint


def hola():
    print str(sp["Fdesc"])

global sp
sp=configuracion()
while 1:
	hola()
	time.sleep(1)
