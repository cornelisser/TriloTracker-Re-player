#===================================================================
#
#	Pattern Class
#	
#===================================================================
class Pattern:
	
	number	= 0
	used = False
	tracks = [0,0,0,0,0,0,0,0]

	def __init__(self,number,track):
		self.number = number
		t=0
		for t in range(0,8):
			self.tracks[t] = track
			track +=1
			
	
