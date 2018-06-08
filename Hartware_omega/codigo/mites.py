import onionGpio
import time

gpio16 	= onionGpio.OnionGpio(15)
ret 	= gpio16.setOutputDirection(0)

while 1:
	ret		= gpio16.setValue(1)
	time.sleep(1.0)
	ret		= gpio16.setValue(0)
	time.sleep(1.0)
