#===================================================================
#
#	Voice Class
#	
#===================================================================
class Voice:
	
	def __init__(self,number):	
		self.number = number
		self.export_number = number
		self.data = []
		self.used = False
	