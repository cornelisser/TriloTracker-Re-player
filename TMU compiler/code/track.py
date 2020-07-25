#===================================================================
#
#	Track Class
#	
#===================================================================
class Track:
	

	def __init__(self,number):
		self.number = number
		self.used = False
		self.rows = []
		
	def detect_length(self):
		r = 1

		for row in self.rows:
			#print (row)
			if row[3] == 0x0d:
				return r
			r+=1
		return r

