import httplib
import json
import random
import time
import onionGpio

gpio15  = onionGpio.OnionGpio(15)#compresor
ret1=gpio15.setOutputDirection(0)
conn = httplib.HTTPSConnection("api.thingspeak.com")
#"https://api.thingspeak.com/update?api_key=DQ751GECY94XV1LW&field1=13"


while 1:
	data=random.uniform(1,100)
	conn.request("GET", "/update?api_key=DQ751GECY94XV1LW&field2="+str(data))
	r1 = conn.getresponse()	
	if r1.status==200:
		print "Data enviada: "+ str(data)
	else:
		print "error"
	time.sleep(1)
	gpio15.setValue(1)#prendo compresor
	time.sleep(1)
	gpio15.setValue(0)#prendo compresor
	time.sleep(18)

#conn.request("GET", "/channels/472566/feeds.json?api_key=A6I2H0X4EI14E0M7&results=3")
#r1 = conn.getresponse()
#if r1.status==200:
#	print "Data leida"

#data1 = r1.read()
#print data1

j = json.loads(data)
print "Temeratura: "+str(j["feeds"][0]["field2"])
print "Temeratura: "+str(j["feeds"][1]["field2"])
print "Temeratura: "+str(j["feeds"][2]["field2"])
#print j['channel']['description']
conn.close()