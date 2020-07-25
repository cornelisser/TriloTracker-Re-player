from instrument import Instrument
from drum import Drum
from pattern import Pattern

#===================================================================
#
#	Song Class
#	
#===================================================================
class Song:
	
	
	def __init__(self):
		self.version 	= 0
		self.type 		= ''
		self.speed 		= 0
		self.restart 	= 0
		self.length		= 0
		self.order_list = []	
		self.name 		= ''
		self.by 		= ''
		self.ins		= []
		self.drums		= []
		self.waveforms 	= []
		self.voices		= []
		self.patterns	= []
		self.tracks		= []
		
		
	def set_version(self,version):

		if version != 8:
			raise SystemExit('The version of the .TMU file is not compatible')			# Error is no file arguments.
		self.version = version
	
	
	
	def set_type(self,type):
		types = ['SCC','FM','reserved','SMS']
		
		if len(types) < type:
			raise SystemExit(f'The type ({type}) of the .TMU file is not known')				
		self.type = types[type]



	def set_speed(self,speed):
		if speed > 64:
			raise SystemExit(f"Error reading speed ({speed}) Invalid data!")
		self.speed = speed



	def set_length(self,length):
		if (self.restart >= length):
			raise SystemExit(f"Error reading order data. Invalid data!")
		self.length = length

	def debug(self):
		print(f"Name: {self.name}")
		print(f"By: {self.by}")
		print(f"Version: {self.version}")
		print(f"Type: {self.type}")		
		print(f"Speed: {self.speed}")
		print(f"Length: {self.length}")
		print(f"Restart: {self.restart}")
		print(f"Order list: {self.order_list}")
		for ins in self.ins:
			if (ins.length != 1):
				ins.debug()
		for drum in self.drums:
			if (drum.length != 1):
				drum.debug()


	
	def cleanup(self):
	
		for pat in self.patterns:
			if pat.number in self.order_list:			# test if pattern is on order list
				length = 64;
				pat.used = True							# Set to true if used.
				for t in pat.tracks:					# Set tracks related to pattern also to true
					tmp = self.tracks[t].detect_length()	# Detect Effect D00 in track
					if tmp < length:						
						length = tmp				
									
				pat.length = length
				for t in pat.tracks:					# update tracks with length
					self.tracks[t].length = self.length	
					self.tracks[t].used = True
		
			#	;--- remove redundant instruments in patterns
			#	;--- Check volume setting on first pattern. Add volume F if none is set.
			#	;--- Check used: Instruments, waveforms, voices, drums
	
	