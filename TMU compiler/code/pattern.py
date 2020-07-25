#===================================================================
#
#	Pattern Class
#	
#===================================================================
class Pattern:
	


	def __init__(self,number,track):
		self.used = False
		self.tracks = []
		self.number = number

		tmp = []
		for t in range(0,8):
			tmp.append(track)
			track +=1
			self.tracks = tmp

			
	
