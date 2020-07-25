from instrument import Instrument
from drum import Drum
from pattern import Pattern

#===================================================================
#
#	Song Class
#	
#===================================================================
class Song:
	
	version = 0
	type 	= ''
	
	speed 	= 0
	restart = 0
	length	= 0
	order_list = []	
		
	name 	= ''
	by 		= ''
	
	ins		= []
	drums	= []
	
	waveforms 	= []
	voices		= []
	
	patterns	= []
	tracks		= []
	
	def __init__(self):
		pass
		
		
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
		for ins in Song.ins:
			if (ins.length != 1):
				ins.debug()
		for drum in Song.drums:
		#	if (drum.length != 1):
				drum.debug()
