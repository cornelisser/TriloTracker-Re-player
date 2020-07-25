#===================================================================
#
#	Drum macro Class
#	
#===================================================================
class Drum:
	
	length 		= 0
	rows 		= []
	name 		= ''
	
	
	def __init__(self):
		pass


	def set_length(self,length):
		if length > 64:
			raise SystemExit(f"Error reading drum length ({length}). Invalid data!")
		self.length = length

	def debug(self):
		if (self.length > 1):
			print (f"Name: {self.name} \tLength: {self.length}")
