#===================================================================
#
#	Drum macro Class
#	
#===================================================================
class Drum:
	
	def __init__(self,number):
		self.number 	= number
		self.export_number = number
		self.used 		= False
		self.length 	= 0
		self.rows 		= []
		self.name 		= ''


	def set_length(self,length):
		if length > 64:
			raise SystemExit(f"Error reading drum length ({length}). Invalid data!")
		self.length = length

	def debug(self):
		if (self.length > 1):
			print (f"Name: {self.name} \tLength: {self.length}")
		
