from OmegaExpansion import onionI2C
import time
import sys

print 'Starting: onionI2C module testing...'

i2c 	= onionI2C.OnionI2C(0)

# set the verbosity
i2c.setVerbosity(1)

devAddr = 0x48



ADS1x15_CONFIG_OS_SINGLE       = 0x8000
ADS1x15_CONFIG_MUX_OFFSET      = 0
ADS1x15_CONFIG_COMP_QUE_DISABLE = 0x0003
mux=0b110
gain=0b010
mode=1
rate=0b100

config = ADS1x15_CONFIG_OS_SINGLE  # Go out of power-down mode for conversion.
 # Specify mux value.
config |= (mux & 0x07)<<12
#configuro Ganancia
config |= (gain&0x07)<<9
#modo
config |= (mode)<<8
#rate
config|=(rate&0x07)<<5
#siempre 3
config|=ADS1x15_CONFIG_COMP_QUE_DISABLE 

def conversion_value( low, high):
# Convert to 12-bit signed value.
	value = ((high & 0xFF) << 4) | ((low & 0xFF) >> 4)
# Check for sign bit and turn into a negative value if set.
	if value & 0x800 != 0:
		value -= 1 << 12
	return value



print ""

size 	= 2
addr 	= 0x01
print str(bin((config >> 8) & 0xFF))
print str(bin(config & 0xFF))
value	= [(config >> 8) & 0xFF, config & 0xFF]
print 'Writing to device 0x%02x, address: 0x%02x'%(devAddr, addr)

time.sleep(1)
val 	= i2c.readBytes(devAddr, addr, 2)
print '   Read returned: ', val

print ""

size 	= 2
addr 	= 0x00
print 'Reading from device 0x%02x, address: 0x%02x'%(devAddr, addr)
val 	= i2c.readBytes(devAddr, addr, size)


print "Valor convertido: "+str(conversion_value(val[1], val[0]))







print 'Done!'