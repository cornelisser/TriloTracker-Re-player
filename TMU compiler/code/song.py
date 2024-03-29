from instrument import Instrument
from drum import Drum
from pattern import Pattern
from voice import Voice
from waveform import Waveform

#===================================================================
#
#	Song Class
#	
#===================================================================
class Song:
	
	
	def __init__(self):
		self.version 	= 0
		self.chansetup	= 0		# 0 = 3-5, >0 = 2-6 setup
		self.type 		= ''
		self.speed 		= 0
		self.restart 	= 0
		self.length		= 0
		self.period		= 0
		self.order_list = []	
		self.name 		= ''
		self.by 		= ''
		self.ins		= []
		self.drums		= []
		self.waveforms 	= []
		self.voices		= []
		self.patterns	= []
		self.tracks		= []
		
		#--- Hardware voices
		for x in range(0,16):
			voice = Voice(x)
			self.voices.append(voice)
		#--- Preset voices
		voice_preset = [
		[0x21,0x22,0x52,0x45,0xe1,0xd3,0xf4,0xf6],		 #KEYS:
		[0x01,0x01,0x12,0x03,0xe3,0xe3,0xf3,0xf6],
		[0x11,0x11,0x08,0x04,0xfa,0xb2,0x20,0xf4],
		[0x33,0x31,0xd0,0x03,0x91,0x91,0x82,0x85],
		[0x60,0x61,0x89,0x00,0xf2,0xf1,0x5a,0x1a],
		[0x13,0x11,0x11,0x00,0xfa,0xf2,0x21,0xf4],
		[0x00,0x00,0x12,0x03,0xe3,0xe3,0xf3,0xf6],
		[0x30,0x11,0x0e,0x01,0xd9,0xb2,0x11,0xf4],
		[0x30,0x11,0x0e,0x05,0xd9,0xb2,0x11,0xf4],
		[0x30,0x10,0x0f,0x04,0xd9,0xb2,0x10,0xf3],
		[0x60,0x20,0x1a,0x85,0xf3,0xf3,0x24,0x37],
		[0x33,0x11,0x0c,0x03,0xf1,0xf3,0x58,0xc9],
		[0x19,0x53,0x0c,0x00,0xc7,0xf5,0x11,0x03],
		[0x03,0x09,0x11,0x06,0xd2,0xb4,0xf4,0xf4],
		[0x21,0x03,0x0b,0x05,0x90,0xd4,0x02,0xf5],
		[0x13,0x10,0x18,0x06,0xf7,0xf3,0x56,0x85], #;Chromatic Percussion
		[0x12,0x11,0x18,0x06,0xf7,0xf3,0x56,0x8c],
		[0x14,0x11,0x23,0x06,0xf7,0xf3,0x56,0x8c],
		[0x72,0x71,0x8f,0x86,0xb6,0xb2,0x43,0xb7],
		[0x44,0x61,0x99,0x07,0xf9,0xf5,0x2a,0xed],
		[0xf9,0xf1,0xdb,0x00,0xf5,0xf3,0x74,0xf2],
		[0xf3,0xf1,0xdb,0x00,0xf5,0xf3,0x74,0xf7],
		[0xf9,0xf1,0xdb,0x00,0xf3,0xf2,0x74,0xf2],
		[0x25,0x60,0x1e,0x05,0xfa,0xc3,0xfc,0x87],
		[0x17,0x52,0x18,0x00,0x88,0xd9,0x66,0x24],
		[0x32,0x30,0x94,0x05,0xf1,0xf1,0x21,0x31],
		[0xb5,0xb1,0x15,0x87,0x96,0xd8,0x63,0x22],
		[0x6b,0x63,0x1a,0x07,0xc5,0x96,0xf5,0xf4],
		[0x3e,0x32,0x57,0x00,0xf5,0xf4,0x74,0xf3],
		[0x43,0x40,0x92,0x07,0xf4,0xf2,0xaa,0xaa],
		[0x19,0x53,0x15,0x07,0xe7,0x95,0x21,0x03],
		[0x73,0x71,0x16,0x04,0xa9,0x80,0x11,0x34],	#;Organ
		[0x73,0xe0,0x57,0x81,0x86,0xc2,0x66,0x96],
		[0x73,0xe2,0x4d,0x81,0x86,0xc2,0x66,0x96],
		[0xf0,0xf1,0x12,0x04,0xf8,0xff,0x3f,0x0f],
		[0x71,0x74,0x10,0x05,0xff,0x5f,0x02,0x07],
		[0x71,0xf4,0x1b,0x07,0x73,0x3f,0x02,0x06],
		[0xb3,0xb1,0x52,0x04,0xf3,0xf2,0xa8,0xe9],	#;Guitar
		[0xf3,0xf1,0xa0,0x07,0xb3,0xd2,0xa6,0xe6],
		[0xb3,0xb1,0x16,0x04,0xf3,0xf2,0xa8,0xe9],
		[0x61,0x65,0x40,0x04,0xf4,0xf6,0x1a,0x7d],
		[0x31,0x12,0x10,0x06,0xf0,0xf1,0x67,0x95],
		[0x70,0xf0,0x16,0x07,0xf3,0xff,0x02,0x06],
		[0x01,0x11,0x40,0x04,0xc2,0xd1,0xff,0xff],
		[0x20,0x71,0x0d,0x06,0xc1,0xd5,0x56,0x06],
		[0x10,0x14,0x00,0x04,0xf1,0xf1,0xf1,0x11],
		[0x32,0x22,0x0c,0x40,0xf2,0xf2,0x10,0x56],
		[0x41,0x64,0x41,0x03,0xf4,0xff,0x22,0x1f],
		[0x12,0x1a,0x06,0x00,0xa1,0x80,0x21,0x62],
		[0x11,0x18,0x00,0x03,0xef,0xf1,0x12,0x20],
		[0x31,0x21,0x19,0x80,0xf2,0xf2,0x10,0x56],	#;Bass
		[0x21,0xe2,0xd1,0x00,0x86,0x88,0x37,0x17],
		[0x21,0x01,0x0a,0x03,0xf5,0xf5,0xf5,0xfa],
		[0x01,0x02,0x07,0x00,0xcb,0xe3,0x36,0x25],
		[0x61,0x31,0x94,0x07,0xe4,0xc1,0x1b,0xeb],
		[0x71,0x01,0x95,0x04,0x98,0xd4,0x65,0x56],
		[0x61,0x31,0x15,0x06,0xf3,0xf3,0xbb,0xec],
		[0x41,0x61,0x54,0x00,0xf6,0xf2,0x74,0x59],
		[0x31,0x32,0x0f,0x05,0xf2,0xf4,0x23,0x99],
		[0x21,0x02,0x0f,0x03,0xf5,0xf5,0xf5,0xf5],
		[0x01,0x01,0x46,0x02,0xe5,0xf5,0xf4,0xf7],
		[0x21,0x01,0x08,0x00,0x96,0xb2,0x49,0xf8],
		[0x31,0x31,0x17,0x06,0xd3,0xe1,0xbb,0xeb],
		[0x01,0x41,0x12,0x04,0x94,0xf2,0xf9,0xe8],
		[0x41,0x61,0x54,0x06,0xf6,0xf2,0x74,0x59],
		[0x01,0x10,0x0e,0x07,0xca,0xe6,0x44,0x24],
		[0x61,0x61,0x1b,0x07,0x94,0x54,0x14,0x06], #;Strings
		[0x61,0xb2,0x0f,0x47,0x6d,0x4c,0x30,0x06],
		[0x42,0x64,0x17,0x47,0xa1,0xa2,0x33,0x25],
		[0x71,0x71,0x18,0x07,0x9f,0x30,0x14,0x06],
		[0x61,0x61,0x22,0x07,0x94,0x54,0x14,0x06],
		[0x42,0x42,0x00,0x06,0xfe,0xfd,0x41,0x01],
		[0x61,0x62,0x8f,0x07,0xf5,0xf2,0x2f,0xfe],
		[0x71,0x71,0x18,0x07,0xf1,0x41,0x14,0x16],
		[0x61,0xa1,0x0a,0x05,0x76,0x54,0x12,0x07],
		[0x32,0xb1,0x29,0x07,0xf4,0xd2,0x34,0xf3],
		[0x51,0x72,0x94,0x07,0x41,0x62,0x24,0x02], 	#;Brass
		[0x71,0x31,0x1c,0x07,0x51,0x71,0x24,0x26],
		[0x71,0x71,0x19,0x07,0x32,0x44,0x35,0x2a],
		[0x30,0x70,0x19,0x07,0x42,0x62,0x26,0x24],
		[0x72,0x72,0x19,0x07,0x63,0x8f,0x15,0x0e],
		[0x71,0x71,0x15,0x07,0x63,0x8f,0x15,0x0e],
		[0x60,0x61,0x1d,0x07,0xf1,0x71,0x1a,0xda],
		[0x31,0x61,0x1a,0x07,0xe1,0xc1,0x1f,0x1f],
		[0x72,0x72,0x18,0x07,0xa5,0xc0,0x28,0x26],
		[0x51,0x61,0x17,0x07,0x50,0xf1,0x5c,0xdc],  
		[0x70,0x70,0x20,0x07,0x41,0x6f,0x15,0x0e],
		[0x70,0x70,0x14,0x04,0x42,0x4f,0x63,0x07],
		[0x31,0x71,0x16,0x00,0x51,0x52,0x26,0x24],
		[0x72,0x31,0x97,0x05,0x51,0x6f,0x75,0x09], 	#;Reed
		[0x70,0x30,0x4d,0x03,0x42,0x6f,0x25,0x06],
		[0x71,0x76,0x93,0x05,0x40,0x4f,0xf4,0x07],
		[0x70,0xb0,0x87,0x04,0x6f,0x52,0x03,0x25],
		[0x61,0x61,0x0e,0x04,0x81,0x75,0xf5,0x05],
		[0x60,0x60,0x40,0x04,0x81,0x75,0xf5,0x05],
		[0x61,0x71,0x26,0x05,0x61,0x50,0x75,0xf6], 	#;Pipe
		[0x24,0x22,0x24,0x01,0xa8,0x9f,0x17,0x07],
		[0x62,0x71,0x25,0x07,0x64,0x43,0x12,0x26],
		[0x61,0x61,0x5c,0x05,0x56,0x44,0x1d,0x0c],
		[0x72,0x31,0x17,0x00,0xf9,0x61,0x61,0x53],
		[0x22,0xe1,0x15,0x87,0xa4,0x62,0xb3,0x94],
		[0x62,0x72,0x26,0x00,0x61,0x50,0x75,0xf6],
		[0x60,0x20,0x11,0x85,0xf3,0xf3,0x24,0x35],		#;Synth Lead
		[0x60,0x22,0x0d,0x85,0xf3,0xf3,0x24,0x35],
		[0x72,0x74,0x09,0x00,0xf1,0xf1,0x72,0xa2],
		[0x00,0x41,0x53,0x07,0xe0,0x82,0xf8,0x98],
		[0x61,0x61,0x15,0x00,0x91,0x91,0x14,0x16],
		[0xf1,0x32,0x0a,0x04,0x80,0x81,0x30,0x42],
		[0x40,0x42,0x0b,0x04,0x94,0xb0,0x33,0xf6],
		[0x40,0x40,0x8a,0x05,0x74,0xe1,0xf6,0xf6],
		[0x32,0xa1,0x16,0x07,0xc0,0xc0,0x20,0x17],
		[0x72,0x31,0x92,0x07,0x51,0x6f,0x75,0x09],
		[0x61,0x61,0x20,0x47,0x21,0x31,0x22,0x02],	#;Synth Pad
		[0x62,0x22,0x19,0x05,0x54,0x12,0x08,0xd6],
		[0x60,0x21,0x09,0x85,0xf3,0xf3,0x24,0x34],
		[0xf1,0xf2,0x15,0x86,0x72,0xf1,0x24,0x74],
		[0x51,0x42,0x13,0x00,0x13,0x10,0x42,0x01],
		[0x72,0x32,0x19,0x05,0x84,0x42,0x01,0x25],
		[0x60,0x60,0x17,0x00,0xf0,0x40,0x00,0x05],
		[0x12,0x12,0x16,0x07,0x50,0x40,0x10,0x1a],
		[0x60,0x76,0x09,0x00,0x12,0x21,0x72,0x21],
		[0x60,0x72,0x0d,0x00,0x12,0x21,0x72,0x21],
		[0x51,0x42,0x10,0x02,0x03,0x10,0x42,0x01],
		[0x71,0x75,0x06,0x00,0xf1,0xf1,0x72,0xa2], #	;Ethnic
		[0x31,0x36,0x0d,0x05,0xf2,0xf4,0x23,0x99],
		[0x73,0xb1,0x4d,0x00,0xe4,0xf4,0x84,0x94],
		[0x13,0x11,0x0c,0x06,0xfc,0xd2,0x33,0x83],
		[0xb3,0xb2,0x28,0x07,0xf3,0xf2,0x92,0xb4],
		[0xf0,0xf3,0x15,0x86,0x72,0xf1,0x24,0x74],
		[0x02,0x03,0x09,0x07,0xcb,0xff,0x39,0x06], #	;Percussive
		[0x20,0x20,0x09,0x00,0xfa,0xf6,0xff,0xff],
		[0x00,0x01,0x07,0x06,0xcb,0xe3,0x36,0x25],
		[0x43,0x61,0x41,0x00,0xf9,0xf6,0xfc,0xfc],
		[0x03,0x00,0x04,0x00,0xf9,0xf4,0xf0,0xfa],
		[0x61,0x61,0x0d,0x03,0xf5,0xf4,0xf5,0xf5],
		[0x61,0x61,0x07,0x03,0xf6,0xf5,0xf5,0xf5],
		[0x72,0x31,0x06,0x00,0xf4,0xf2,0xfa,0xfd],
		[0x52,0x41,0x2c,0x00,0x45,0x99,0xfa,0xfa],
		[0x20,0x00,0x00,0x07,0xf1,0xf7,0x00,0xb8],
		[0x61,0x61,0x00,0x08,0xc5,0x96,0xe5,0xf6],
		[0x2f,0x2f,0x00,0x07,0xf1,0xa9,0x00,0x48],
		[0x2f,0x0f,0x00,0x07,0xf1,0x99,0x00,0xb8],
		[0x01,0x03,0x0b,0x07,0xba,0xd9,0x25,0x06],
		[0x00,0x21,0x01,0x07,0xda,0xf6,0x5f,0xff],
		[0x01,0x08,0x0d,0x07,0x78,0xf8,0x7f,0xf9],
		[0x30,0x00,0x41,0x02,0xf1,0xf1,0xa0,0xf7], 	#;Other
		[0xf0,0x31,0x0a,0x04,0x80,0x81,0x30,0x45],
		[0x30,0x00,0x41,0x02,0xf1,0xf1,0xa0,0xf7],
		[0x01,0x01,0x11,0x06,0xc0,0xb4,0x01,0xf6],
		[0x40,0x00,0x00,0x00,0xfa,0xd9,0x37,0x04],
		[0x24,0x28,0x4a,0x01,0xf2,0xf1,0x44,0x56],
		[0x73,0x31,0x0f,0x06,0xc1,0xf2,0xcf,0x4e],
		[0xa5,0xc1,0x04,0x02,0x67,0x61,0xb8,0xa5],
		[0xf1,0x32,0x07,0x04,0x80,0x81,0x30,0x49],
		[0x00,0x20,0x00,0x13,0xf2,0xff,0xf2,0x04],
		[0x61,0x61,0x1b,0x07,0xc5,0x96,0xf5,0xf6],
		[0x61,0x61,0x18,0x07,0xc5,0x96,0xf5,0xf6],
		[0x61,0x61,0x1f,0x07,0xc5,0x96,0xf5,0xf6],
		[0x61,0x78,0x0d,0x00,0x85,0xf2,0x14,0x03],
		[0x20,0xa0,0x10,0x08,0x01,0xf4,0xb6,0xfa],
		[0x42,0x64,0x1f,0x47,0xa4,0x72,0x33,0x24]]
		
		for x in range (0,161):
			voice = Voice(x+16)
			voice.data = voice_preset[x]
			self.voices.append(voice)

		
		
		
	def set_chansetup(self,setup):
		self.chansetup = setup		
		
	def set_version(self,version):

		if version < 11:
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
		if (self.restart >= length and self.restart != 255):
			raise SystemExit(f"Error reading order data. Invalid data!")
		self.length = length

	def set_period(self,period):
		self.period = period


	def get_pattern(self,number):
		for pat in self.patterns:
			if pat.number == number:
				return pat
		return None


	def get_voice(self,number):
		for voice in self.voices:
			if voice.number == number:
				return voice
		return None


	def get_waveform(self,number):
		for waveform in self.waveforms:
			if waveform.number == number:
				return waveform
		return None

	def get_period(self):
		p_tables = ["A440 Modern","A445 Konami","A448","A432 Earth"]

		return p_tables[self.period]




	def debug(self):
		print(f"Name: {self.name}")
		print(f"By: {self.by}")
		print(f"Version: {self.version}")
		print(f"Type: {self.type}")
		print(f"Period table: {self.get_period()}")
		print(f"Progress: ", end ='')

#		print(f"Speed: {self.speed}")
#		print(f"Length: {self.length}")
#		print(f"Restart: {self.restart}")
#		print(f"Order list: {self.order_list}")
#		for ins in self.ins:
#			if (ins.length != 1):
#				ins.debug()
#		for drum in self.drums:
#			if (drum.length != 1):
#				drum.debug()


	
	
	
	
	
	def cleanup(self):
	
		# ====================================
		# Check if start of song has volume and instrument
		# ====================================
		nr = self.order_list[0]
		pat = self.patterns[nr]
		for t in pat.tracks:
			track = self.tracks[t]
			ins = 0
			vol = 0
			for row in track.rows:
				n = row[0]
				i = row[1]
				v = row[2]
				if n == 99:
					vol = 255
				if i > 0:
					ins = i
				if v > 0:
					vol = v
				if n > 0:
					break
			if ins == 0:
				track.rows[0][1] = 1
#				print(f'pat {nr} track {t} YES')
#			else:
#				print(f'pat {nr} track {t} NO {ins}')
			if vol == 0:
				track.rows[0][2] = 15			

		# ====================================
		# Detect used tracks
		# ====================================
		for pat in self.patterns:
			if pat.number in self.order_list:			# test if pattern is on order list
				length = 64
				pat.used = True						# Set to true if used.
				for t in pat.tracks:					# Set tracks related to pattern also to true
					tmp = self.tracks[t].detect_length()	# Detect Effect D00 in track
					if tmp < length:						
						length = tmp				
									
				pat.length = length
				for t in pat.tracks:					# update tracks with length
					self.tracks[t].set_length(length)	
					self.tracks[t].used = True
		
      	# ====================================
		# Remove redundance and pre=proces tracks
		# ====================================
		for track in self.tracks:
			prev_i = 0
			prev_v = 0
			if track.used == True:
				for row in track.rows:
					i = row[1]
					v = row[2]
					c = row[3]							
					p = row[4]	

					isPSG = True
					if ((track.number) % 8) > 2: 						# chanels 3 and up are FM
						isPSG = False
					elif (((track.number) % 8) == 2 and self.chansetup == 0):	# chan 2 is only FM id chansetup != 0
						isPSG = False
						
					if i != 0:
						if prev_i == i:
							#print (f"Duplicate {i-1} - {self.ins[i-1].voice}")
							row[1] = 0					# remove redundant instruments
						else:
							if self.type == "SCC" or isPSG == True:
								prev_i = i 	
							else:
							    if self.ins[i-1].voice <= 16:
								    prev_i = i 	  		# set used instruments
								    #print (f"Set {i-1} - {self.ins[i-1].voice}")
							    else:
								    prev_i = 800 #i 	# TODO workaround for ins with voice 0 
								    #print (f"Set not  {i-1} - {self.ins[i-1].voice}")
							self.ins[i-1].used = True	# set used instruments
					if v != 0:
						if prev_v == v:					# remove redundant volumes
							row[2] = 0
						else:
							prev_i = i
							
					if self.type == "FM" or self.type == "SMS":	
						if c == 0x0c and p <= 0x13:			# set used drums
							self.drums[p-1].used = True
						if (isPSG == False):	 
							if c == 0x01:				# for FM channels reverse cmd 1 and 2
								row[3] = 0x02
							elif c == 0x02:
								row[3] = 0x01
							if c == 0x0e:
								x = p & 0xf0
								y = p & 0x0f
								if x == 0x10:
									x = 0x20
									row[4] = x | y
								elif x == 0x20:
									x = 0x10
									row[4] = x | y
					if self.type == "SCC":
						if c == 0x0b:					# SCC command Bxy
							cmd = p &0xf0				# get the command type
							val = p &0x0f				# get the waveform
							if cmd == 0x00:
								self.waveforms[val].used = True
							elif cmd == 0x10:
								self.waveforms[val+16].used = True
						if c == 0x0c:					# SCC morph
							cmd = p &0xf0				# get the command type
							val = p &0x0f				# get the waveform
							if cmd == 0x00:
								self.waveforms[val].used = True
							elif cmd == 0x10:
								self.waveforms[val+16].used = True
					
	

		# ====================================
		# Detect tracks duplicates
		# ====================================
		for tracka in self.tracks:
			if tracka.used:
				for t in range(tracka.number+1,len(self.tracks)):
					trackb = self.tracks[t]

					if trackb.used:
						if tracka.rows == trackb.rows:
						#	print (f"Duplicate {tracka.number} -> {trackb.number}")
							trackb.used = False
							trackb.export_number = tracka.number

		
		# ===================================
		# Detect used instruments
		# ===================================
		number = 0			
		for instrument in self.ins:
			if instrument.used == True:
				instrument.export_number = number
			#	print(f"{instrument.number} + {instrument.export_number} + {number}")
				number+=1
				if self.type != "SCC":
					self.voices[instrument.voice].used = True		# Set used voices
				else:
					self.waveforms[instrument.waveform].used = True		# Set used waveforms

				if self.type == "SCC":
					#--- Check for used waveforms in instrument macro					
					for r in range(0,instrument.length):
						row = instrument.rows[r]
						test = row[0] & 0x60
						wve = row[0] &0x1f
						if (row[0] & 0x60) == 0x20:
							w = row[0] & 0x1f
							self.waveforms[w].used = True



		# ===================================
		# Renumber the used software voices for FM
		# ===================================
		if self.type != "SCC":
			number = 0	
			for voice in self.voices:
				if voice.used == True:
					if voice.number > 15:
						voice.export_number = number
						print(f"softvoice: {voice.number} -> {voice.export_number}")
						number+=1
			number = 0
			for drum in self.drums:
				if drum.used == True:
					drum.export_number = number
					number += 2

		else:
			number = 0	
			for waveform in self.waveforms:
				if waveform.used == True:
					waveform.export_number = number*8			# Times 8 for cpu load reduce in replayer
					#print(f"waveform: {waveform.number} -> {waveform.export_number}")
					number+=1						
	
		


	
	