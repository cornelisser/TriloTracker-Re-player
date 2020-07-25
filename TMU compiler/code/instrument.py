#===================================================================
#
#	Instrument Class
#	
#===================================================================
class Instrument:
	
	def __init__(self):
		self.length 	= 0
		self.restart	= 0
		self.waveform	= 0
		self.voice		= 0
		self.rows 		= []
		self.name 		= ''

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
			
