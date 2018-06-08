ADS1x15_CONFIG_OS_SINGLE       = 0x8000
ADS1x15_CONFIG_MUX_OFFSET      = 0
ADS1x15_CONFIG_COMP_QUE_DISABLE = 0x0003
mux=0b101
gain=0b111
mode=0
rate=0b101

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

print bin(config)
 # Explicitly break the 16-bit value down to a big endian pair of bytes.
# self._device.writeList(ADS1x15_POINTER_CONFIG, [(config >> 8) & 0xFF, config & 0xFF])
 # Wait for the ADC sample to finish based on the sample rate plus a
 # small offset to be sure (0.1 millisecond).
 #time.sleep(1.0/128+0.0001)
 # Retrieve the result.
 #result = self._device.readList(ADS1x15_POINTER_CONVERSION, 2)
 #return self._conversion_value(result[1], result[0])
print "valor convertido 1: "+str(bin((config>>8)&0xFF))
print "valor convertido 2: "+str(bin(config&0xFF))
 #0b1101000010000011