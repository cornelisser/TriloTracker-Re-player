#===================================================================
#
#	Waveform Class
#	
#===================================================================
class Waveform:
	
	
	def __init__(self,number):
		self.number = number
		self.export_number = number
		self.data = []
		self.used = False