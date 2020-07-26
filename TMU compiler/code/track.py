#===================================================================
#
#	Track Class
#	
#===================================================================
class Track:
	

	def __init__(self,number):
		self.number 	= number
		self.export_number = number
		self.used 		= False
		self.rows 		= []
		self.length 	= 64
		
	def detect_length(self):
		r = 1

		for row in self.rows:
			#print (row)
			if row[3] == 0x0d:
				row[3] = 0				# remove D00 command
				row[4] = 0
				return r
			r+=1
		return r
		
		
	def	set_length(self,len):
		self.rows = self.rows[0:len]
		self.length = len

