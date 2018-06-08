import sys

__version__ = "0.1"

_EXIT_SUCCESS			= 0
_EXIT_FAILURE			= -1

GPIO_BASE_PATH 					= '/sys/class/gpio'
GPIO_EXPORT 					= GPIO_BASE_PATH + '/export'

GPIO_PATH 						= GPIO_BASE_PATH + '/gpio%d'
GPIO_VALUE_FILE					= 'value'
GPIO_DIRECTION_FILE				= 'direction'

_GPIO_INPUT_DIRECTION			= 'in'
_GPIO_OUTPUT_DIRECTION			= 'out'

_GPIO_ACTIVE_HIGH				= 0
_GPIO_ACTIVE_LOW				= 1

class myGpio:

	def __init__(self, gpio):
		self.gpio 		= gpio
		self.path 		= GPIO_PATH%(self.gpio)

	def _initGpio(self):
		with open(GPIO_EXPORT, 'w') as fd:
			fd.write(str(self.gpio))
			fd.close()
			return _EXIT_SUCCESS
		return _EXIT_FAILURE

	def getValue(self):
		#status 	= self._initGpio()
			gpioFile 	= self.path + "/" + GPIO_VALUE_FILE
			value 		= 0

			with open(gpioFile, 'r') as fd:
				value 	= fd.read()
				fd.close()
			return value

	def setValue(self, value):
		ret = _EXIT_FAILURE
			gpioFile = self.path + "/" + GPIO_VALUE_FILE

			with open(gpioFile, 'w') as fd:
				fd.write(str(value))
				fd.close()
				ret = _EXIT_SUCCESS
			return ret


	def getDirection(self):

			gpioFile 	= self.path + "/" + GPIO_DIRECTION_FILE
			direction	= _EXIT_FAILURE
			with open(gpioFile, 'r') as fd:
				direction 	= fd.read()
				fd.close()
			return direction

	def _setDirection(self, direction):
		ret = _EXIT_FAILURE
		status 	= self._initGpio()
		if status == _EXIT_SUCCESS:
			gpioFile 	= self.path + "/" + GPIO_DIRECTION_FILE

			with open(gpioFile, 'w') as fd:
				fd.write(direction)
				fd.close()
				ret = _EXIT_SUCCESS

				if direction == _GPIO_OUTPUT_DIRECTION and ret==_EXIT_SUCCESS:
					self.setValue(0)
			return ret
		return _EXIT_FAILURE

	def setInputDirection(self):
		ret 	= self._setDirection(_GPIO_INPUT_DIRECTION)
		return 	ret

	def setOutputDirection(self):
		ret 	= self._setDirection(_GPIO_OUTPUT_DIRECTION)
		return 	ret