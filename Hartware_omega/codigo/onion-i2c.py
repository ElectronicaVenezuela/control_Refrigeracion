from OmegaExpansion import onionI2C
import time
import sys

print 'Starting: onionI2C module testing...'

i2c 	= onionI2C.OnionI2C(0)

# set the verbosity
i2c.setVerbosity(1)

devAddr = 0x68

size 	= 1
addr 	= 0x03
value	= [0x05]
val 	= i2c.writeBytes(devAddr, addr, value)
print '   Set dia semana: ', val


print ""
ret = raw_input('  Ready to read?')

while 1:
	# perform series of reads
	size 	= 1
	addr 	= 0x00
	val 	= i2c.readBytes(devAddr, addr, size)
	print '   Segundos: ', val

	size 	= 1
	addr 	= 0x01
	val 	= i2c.readBytes(devAddr, addr, size)
	print '   Minutos: ', val

	size 	= 1
	addr 	= 0x02
	val 	= i2c.readBytes(devAddr, addr, size)
	print '   Horas: ', val

	size 	= 1
	addr 	= 0x03
	val 	= i2c.readBytes(devAddr, addr, size)
	print '   Dias semana: ', val

	size 	= 1
	addr 	= 0x04
	val 	= i2c.readBytes(devAddr, addr, size)
	print '   Dias: ', val

	size 	= 1
	addr 	= 0x05
	val 	= i2c.readBytes(devAddr, addr, size)
	print '   Mes: ', val

	size 	= 1
	addr 	= 0x06
	val 	= i2c.readBytes(devAddr, addr, size)
	print '   Ano: ', val

	time.sleep(1.0)