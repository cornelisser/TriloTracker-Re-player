#===================================================================
#
#	Instrument Class
#	
#===================================================================
class Instrument:
	
	length 		= 0
	restart		= 0
	waveform	= 0
	voice		= 0
	rows 		= []
	name 		= ''
	
	
	def __init__(self):
		pass


	def set_length(self,length):
		if length > 64:
			raise SystemExit(f"Error reading instrument length ({length}). Invalid data!")
		self.length = length
		
	
		
	def debug(self):
		print(f"Name: {self.name} \tLength: {self.length} \tRestart: {self.restart} \tVoice: {self.voice} \tWaveform: {self.waveform}")
		r=0
		while r in range(0,self.length-1):
		#	print(self.rows[r])
			r+=1
			
