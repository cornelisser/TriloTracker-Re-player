from replayer_chan import Replayer_Chan

#===================================================================
#
#	Re-player Class
#	
#===================================================================
class Replayer:

	def __init__(self,song):
		#--- I N I T I A L I S A T I O N 
		self.song 					= song
		self.channels				= []
		self.replay_speed 			= song.speed
		self.replay_speed_timer 	= 1 #song.speed//2 
		self.replay_speed_subtimer 	= 0	

		self.replay_orderpos		= 0
		self.replay_patpage			= song.order_list[0]
		self.replay_patpointer		= 0
		
		self.replay_previous_note	= 0

		self.FM_regMixer			= 0


		self.replay_opllregs		= [0] * 57		# reg 0x00 - 0x38
		self.replay_opllregs_old	= [0] * 57
		
		self.replay_sn7regs			= [0] * 8
		# 	0 = ToneA
		#	1 = ToneB
		#	2 = ToneC
		#	3 = Noise
		#	4 = VolA
		#	5 = VolB
		#	6 = VolC
		#	7 = VolN		
		self.replay_sn7regs_old		= [0] * 8		
		
		self.replay_ay3regs			= [0] 

		self.AY3_RegNoise			= 0
		self.SN7_RegNoise			= 0
		
		self.isr 		= 0  		# isr counter
	
		#--- Channels
		for x in range(0,8):
			chan = Replayer_Chan(x)
			self.channels.append(chan)


	#--- F u n c t i o n s 
	
	#=====================================================
	#
	#
	#
	#
	#
	#=====================================================
	def	set_nextpattern(self,song):
		self.replay_patpointer = 0
		self.replay_orderpos += 1
		if self.replay_orderpos == song.length:
			self.replay_orderpos = song.restart
		self.replay_patpage	= song.order_list[self.replay_orderpos]
		
		
		print(f"{self.replay_patpage}")
		# add check for loop here.
		return
	

	#=====================================================
	#
	#
	#
	#
	#
	#=====================================================	
	def set_vibrato(self, chan, par):
		depth = par >> 4
		speed = par & 0x0f
			
		if depth != 0:
			if depth > 12:
				depth = 12
			chan.cmd_4_depth = depth
			
		chan.cmd_4_step = speed
		chan.Step = -speed
		return
	
	#=====================================================
	#
	#
	#
	#
	#
	#=====================================================
	def	set_porttone(self, chan, par):
		# Calculate the delta between current and destination note
		start_tone = self.get_tone(self.replay_previous_note,chan.B_CHIP)
		start_tone += chan.cmd_ToneSlideAdd
		end_tone = self.get_tone(chan.Note,chan.B_CHIP)
		delta_tone = start_tone - end_tone

		chan.cmd_ToneSlideAdd = delta_tone
		chan.cmd_3 = par	
		return 
		
	#=====================================================
	#
	#
	#
	#
	#
	#=====================================================	
	def get_volume(self, volume, type):

		AY3_Volumes [
						0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
						0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
						0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02,
						0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03,
						0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04,
						0x00, 0x00, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04, 0x05, 0x05,
						0x00, 0x00, 0x01, 0x01, 0x02, 0x02, 0x02, 0x03, 0x03, 0x04, 0x04, 0x04, 0x05, 0x05, 0x06, 0x06,
						0x00, 0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04, 0x04, 0x05, 0x05, 0x06, 0x06, 0x07, 0x07,
						0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04, 0x04, 0x05, 0x05, 0x06, 0x06, 0x07, 0x07, 0x08,
						0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x04, 0x04, 0x05, 0x05, 0x06, 0x07, 0x07, 0x08, 0x08, 0x09,
						0x00, 0x01, 0x01, 0x02, 0x03, 0x03, 0x04, 0x05, 0x05, 0x06, 0x07, 0x07, 0x08, 0x09, 0x09, 0x0A,
						0x00, 0x01, 0x01, 0x02, 0x03, 0x04, 0x04, 0x05, 0x06, 0x07, 0x07, 0x08, 0x09, 0x0A, 0x0A, 0x0B,
						0x00, 0x01, 0x02, 0x02, 0x03, 0x04, 0x05, 0x06, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0A, 0x0B, 0x0C,
						0x00, 0x01, 0x02, 0x03, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0A, 0x0B, 0x0C, 0x0D,
						0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E,
						0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F]
					
		Default_Volumes	[	
						0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
						0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
						0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,
						0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,3,
						0,0,0,0,0,0,0,0,0,0,0,0,1,2,3,4,
						0,0,0,0,0,0,0,0,0,0,0,1,2,3,4,5,
						0,0,0,0,0,0,0,0,0,0,1,2,3,4,5,6,
						0,0,0,0,0,0,0,0,0,1,2,3,4,5,6,7,		
						0,0,0,0,0,0,0,0,1,2,3,4,5,6,7,8,
						0,0,0,0,0,0,0,1,2,3,4,5,6,7,8,9,
						0,0,0,0,0,0,1,2,3,4,5,6,7,8,9,10,
						0,0,0,0,0,1,2,3,4,5,6,7,8,9,10,11,		
						0,0,0,0,1,2,3,4,5,6,7,8,9,10,11,12,
						0,0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,
						0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,
						0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]	

					
		if type == 'AY3':
			return AY3_Volumes[volume]
		elif type == 'SN7':
			return Default_Volumes[volume]
		elif type == 'OPLL':
			return (15-Default_Volumes[volume])
		else:
			return Default_Volumes[volume]


	
	#=====================================================
	#
	#
	#
	#
	#
	#=====================================================	
	def	get_tone(self, note, type):
	
		AY3_notes = [0,											
					3392, 3200, 3008, 2848, 2688, 2528, 2368, 2240, 2112, 2016, 1888, 1792,
					1696, 1600, 1504, 1424, 1344, 1264, 1184, 1120, 1056, 1008, 944, 896,
					848, 800, 752, 712, 672, 632, 592, 560, 528, 504, 472, 448,
					424, 400, 376, 356, 336, 316, 296, 280, 264, 252, 236, 224,
					212, 200, 188, 178, 168, 158, 148, 140, 132, 126, 118, 112,
					106, 100, 94, 89, 84, 79, 74, 70, 66, 63, 59, 56,
					53, 50, 47, 45, 42, 40, 37, 35, 33, 32, 30, 28,
					27, 25, 24, 22, 21, 20, 19, 18, 17, 16, 15, 14,
					13, 13, 12, 11, 11, 10, 9, 9, 8, 8, 7, 7]

		SN7_notes = [	0, 
						0x0001,	# C1			
						0x0001,	# C#1			
						0x0001,	# D1			
						0x0001,	# D#1			
						0x0001,	# E1			
						0x0001,	# F1			
						0x0001,	# F#1			
						0x0001,	# G1
						0x0001,	# G#1	
						0x0001,	# A1
						0x0001,	# A#1/Bb1 
						0x0001,	# B1	
						0x0001,	# C2			
						0x0001,	# C#2			
						0x0001,	# D2			
						0x0001,	# D#2			
						0x0001,	# E2			
						0x0001,	# F2			
						0x0001,	# F#2			
						0x0001,	# G2
						0x0001,	# G#2			
   
						0x03F9,	#A2
						0x03C0,	# A#2/Bb2 
						0x038A,	#B2
						0x0357,	#C3
						0x0327,	# C#3/Db3 
						0x02FA,	#D3
						0x02CF,	# D#3/Eb3 
						0x02A7,	#E3
						0x0281,	#F3
						0x025D,	# F#3/Gb3 
						0x023B,	#G3
						0x021B,	# G#3/Ab3 
						0x01FC,	#A3
						0x01E0,	# A#3/Bb3 
						0x01C5,	#B3
						0x01AC,	#C4
						0x0194,	# C#4/Db4 
						0x017D,	#D4
						0x0168,	# D#4/Eb4 
						0x0153,	#E4
						0x0140,	#F4
						0x012E,	# F#4/Gb4 
						0x011D,	#G4
						0x010D,	# G#4/Ab4 
						0x00FE,	#A4
						0x00F0,	# A#4/Bb4 
						0x00E2,	#B4
						0x00D6,	#C5
						0x00CA,	# C#5/Db5 
						0x00BE,	#D5
						0x00B4,	# D#5/Eb5 
						0x00AA,	#E5
						0x00A0,	#F5
						0x0097,	# F#5/Gb5 
						0x008F,	#G5
						0x0087,	# G#5/Ab5 
						0x007F,	#A5
						0x0078,	# A#5/Bb5 
						0x0071,	#B5
						0x006B,	#C6
						0x0065,	# C#6/Db6 
						0x005F,	#D6
						0x005A,	# D#6/Eb6 
						0x0055,	#E6
						0x0050,	#F6
						0x004C,	# F#6/Gb6 
						0x0047,	#G6
						0x0043,	# G#6/Ab6 
						0x0040,	#A6
						0x003C,	# A#6/Bb6 
						0x0039,	#B6
						0x0035,	#C7
						0x0032,	# C#7/Db7 
						0x0030,	#D7
						0x002D,	# D#7/Eb7 
						0x002A,	#E7
						0x0028,	#F7
						0x0026,	# F#7/Gb7 
						0x0024,	#G7
						0x0022,	# G#7/Ab7 
						0x0020,	#A7
						0x001E,	# A#7/Bb7 
						0x001C,	#B7
						0x001B,	#C8
						0x0019,	# C#8/Db8 
						0x0018,	#D8
						0x0016,	# D#8/Eb8 
						0x0015,	#E8
						0x0014,	#F8
						0x0013,	# F#8/Gb8 
						0x0012,	#G8
						0x0011,	# G#8/Ab8 
						0x0010,	#A8
						0x000F,	# A#8/Bb8 
						0x000E	#B8
						]
				
		OPLL_notes = [	0,0,
						0xad,0x00,0xb7,0x00,0xc2,0x00,0xcd,0x00,0xd9,0x00,0xe6,0x00,	# Oct 1
						0xf4,0x00,0x03,0x01,0x12,0x01,0x22,0x01,0x34,0x01,0x46,0x01,
						0xad,0x02,0xb7,0x02,0xc2,0x02,0xcd,0x02,0xd9,0x02,0xe6,0x02,	# Oct 2
						0xf4,0x02,0x03,0x03,0x12,0x03,0x22,0x03,0x34,0x03,0x46,0x03,
						0xad,0x04,0xb7,0x04,0xc2,0x04,0xcd,0x04,0xd9,0x04,0xe6,0x04,	# Oct 3
						0xf4,0x04,0x03,0x05,0x12,0x05,0x22,0x05,0x34,0x05,0x46,0x05,
						0xad,0x06,0xb7,0x06,0xc2,0x06,0xcd,0x06,0xd9,0x06,0xe6,0x06,	# Oct 4
						0xf4,0x06,0x03,0x07,0x12,0x07,0x22,0x07,0x34,0x07,0x46,0x07,
						0xad,0x08,0xb7,0x08,0xc2,0x08,0xcd,0x08,0xd9,0x08,0xe6,0x08,	# Oct 5
						0xf4,0x08,0x03,0x09,0x12,0x09,0x22,0x09,0x34,0x09,0x46,0x09,
						0xad,0x0a,0xb7,0x0a,0xc2,0x0a,0xcd,0x0a,0xd9,0x0a,0xe6,0x0a,	# Oct 6
						0xf4,0x0a,0x03,0x0b,0x12,0x0b,0x22,0x0b,0x34,0x0b,0x46,0x0b,
 						0xad,0x0c,0xb7,0x0c,0xc2,0x0c,0xcd,0x0c,0xd9,0x0c,0xe6,0x0c,	# Oct 7
						0xf4,0x0c,0x03,0x0d,0x12,0x0d,0x22,0x0d,0x34,0x0d,0x46,0x0d,
						0xad,0x0e,0xb7,0x0e,0xc2,0x0e,0xcd,0x0e,0xd9,0x0e,0xe6,0x0e,	# Oct 8
						0xf4,0x0e,0x03,0x0f,0x12,0x0f,0x22,0x0f,0x34,0x0f,0x46,0x0f]

	
		if type == "AY3":
			return AY3_notes[note]
		elif type == "OPLL":
			val = OPLL_notes[note*2] + (OPLL_notes[notes*2]*256)
			return val
		elif type == "SN7":
			return SN7_notes[note]
		elif type == "SCC":
			return AY3_notes[note]+1
	
	
	
	
	
	
	
	
	
	#=====================================================
	#
	#
	#
	#
	#
	#=====================================================	
	def	decode_chan(self,chan,song):
		self.replay_previous_note = chan.Note 
		self.B_TRGENV = 0
		
		#--- Get the row object
		patnum = song.order_list[self.replay_orderpos]
		tracknum = song.patterns[patnum].tracks[chan.num]
		track = song.tracks[tracknum]
		row = track.rows[self.replay_patpointer]
	
		# debug
		print(f"chan {chan.num} pat {patnum} tra {tracknum} row {self.replay_patpointer} - len {track.length} {row} {row[2]}")
		
		
		#--- Note
		note = row[0]
		if note == 97:
			# rest note
			chan.B_ACTNOT = 0
			chan.B_KEYON = 0
			chan.B_SUST = 0
			chan.Note = self.replay_previous_note
			
	#		print (f"Rest {note}")	
		elif note == 98:
			# sustain note
			chan.B_ACTNOT = 0
			chan.B_KEYON = 0
			chan.B_SUST = 1
			chan.Note = self.replay_previous_note
			
	#		print (f"Sustain {note}")
		elif (note > 0) and (note < 97):
			# note
			chan.Note = note
			chan.B_TRGNOT = 1
			chan.B_KEYON = 0
			
	#		print(f"Note {note}")	

		
		#--- Instrument
		ins = row[1]
		if row != 0:
			if ins != chan.Instrument:
				chan.Instrument = ins
				chan.MacroPointer = 0
				instrument = song.ins[ins]
						
				# Check if it is a software voice
				if instrument.voice >= 16:
					voice = song.get_voice(instrument.voice)
					chan.voice = 0
					for x in range (0,8):
						self.replay_opllregs[x] = voice.data[x]
	#					print (f"{x} = {voice.data[x]}")
				else:
					chan.voice = instrument.voice
		
		#--- Volume
		vol = row[2]
		if vol != 0:
			# volume
			tmp = chan.Volume & 0x0f
			chan.Volume = tmp | (vol << 4)
		#	print(f"Vol {chan.Volume}")
		
		#--- Command
		cmd = row[3]
		par = row[4]
		# arpeggio
		if cmd == 0 and par != 0:
			# Arpeggio
			chan.Command = cmd
			chan.cmd_0 = par
			chan.B_TRGCMD = 1
			chan.Step = 2
			chan.Timer = 0
	#		print("Arp")
		elif cmd == 1:
			if par == 0:
				chan.B_TRGCMD = 0
			else:
				chan.Command = cmd
				chan.cmd_1 = par
				chan.B_TRGCMD = 1
	#		print ("Port up")
		elif cmd == 2:
			if par == 0:
				chan.B_TRGCMD = 0
			else:
				chan.Command = cmd
				chan.cmd_2 = par
				chan.B_TRGCMD = 1
	#		print ("Port down")
		elif cmd == 3:
			if par == 0:
				chan.B_TRGCMD = 0
			else:
				chan.Command = cmd
				chan.Timer = 2
				
				# only start when next to a note.
				if chan.B_TRGNOT != 0:
					chan.B_KEYON = 1		
					chan.B_TRGNOT = 0		# continue note

					self.set_porttone(chan, par)
				
#			print ("Port tone")
		elif cmd == 4:
			if par == 0:
				chan.B_TRGCMD = 0
			else:
				chan.Command = cmd
				self.set_vibrato(chan,par)
				
				
		#		print (f"Vibrato depth {depth} - speed {speed}")
		#	print ("Vibrato")
		elif cmd == 5:
			if par == 0:
				chan.B_TRGCMD = 0	
			else:
				chan.Command = cmd
				if chan.B_TRGNOT != 0:
					chan.B_KEYON = 1
					chan.B_TRGNOT = 0			
					tmp = chan.cmd_3
					self.set_porttone(chan,tmp)
				
				chan.B_TRGCMD = 1
#			print ("Port tone + Vibrato")
		elif cmd == 6:
			print ("Vibrato + Volslide")
		elif cmd == 7:
			if par < 0x10:
				chan.B_TRGCMD = 0
			else:
				chan.Command = cmd
				self.set_vibrato(chan)			
				chan.B_TRGCMD = 1
			print ("Tremelo")
		elif cmd == 8:
			print ("Unused 8")
		elif cmd == 9:
			print ("Unused 9")
		elif cmd == 0xa:
			print ("Vol slide")
			
			#self.set_volslide(chan,par)
		elif cmd == 0xb:
			print ("cmd b")
		elif cmd == 0xc:
			print ("Drum")
		elif cmd == 0xd:
			print ("None")
		elif cmd == 0xe:
			print ("Extended")
		elif cmd == 0xf:
			print ("Speed")
		elif cmd > 0:
			print (f"Unknown cmd{cmd}")
			
	
		#-- Handle pattern end
		if (chan.num == 7):
			if (track.length == self.replay_patpointer + 1):
				self.set_nextpattern(song)	
		
		return
	#=====================================================
	#
	#
	#
	#
	#
	#=====================================================
	def process_chan(self,chan,song):
		
		# Set mixer right
		mixer = self.FM_regMixer 
		self.FM_regMixer = mixer >> 1
		
		#--- speed equalization
		# [to do]
		
		#--- Command
		chan.cmd_NoteAdd = 0			# Reset ARP
		if chan.B_TRGCMD != 0:
			#--- Handle commands here
		
		
		
		#--- Note
		if chan.B_TRGNOT != 0:
			# trigger note
			chan.B_ACTNOT = 1
			if not (chan.B_TRGCMD == 1 and chan.Command == 9):	
				# Reset instrument macro 
				chan.MacroStep = 0
			chan.ToneAdd = 0
			chan.VolumeAdd = 0
			chan.VolumeAdd = 0
			chan.cmd_ToneAdd = 0
			chan.cmd_VolumeAdd = 0
			chan.Noise = 0
			chan.cmd_ToneSlideAdd = 0
	
		#--- Get current Note
		note = chan.Note + chan.cmd_NoteAdd
		
		#--- Macro
		if chan.B_ACTNOT == 1:
			ins = song.ins[chan.Instrument]
			step = chan.MacroPointer
				
			# Check for macro loop
			if step > ins.length:
				step = ins.restart
			
			# Get macro data
			data = ins.row[step]
			voicelink = data[3] & 0x80		
			noisebit = data[0] & 0x80
			tonebit = data[1] & 0x80
			toneval = (data[2] & 0x7f)*256 + data[3])
			tonedeviation = data[1] & 0x40
			

			# store macro pointer
			chan.MacroPointer = step + 1
			
			#--- Voicelink
			if voicelink != 0:
				chan.B_TRGVOI = 1			# Trigger voice update
				voice = data[0] & 0x0f		
				chan.Voice = voice
				noisebit = 0
				
			#--- Tone output
			if tonebit != 0:
				self.FM_regMixer = self.FM_regMixer | 16
			
			#--- Tone deviation
			if tonedeviation == 0:
				#-add
				chan.ToneAdd += toneval
			else:
				#-min
				chan.ToneAdd -= toneval
			
			chan.B_TRGNOT = 0
			noteval = self.get_tone(self, note, chan.B_CHIP):
			noteval += chan.cmd_detune
			noteval += chan.cmd_ToneAdd
			noteval += chan.cmd_ToneSlideAdd
			
			if chan.B_CHIP == 'OPLL':
				# tone wrap

		
			chan.ToneRegister = noteval


			#--- Noise
			if noisebit != 0:
				if chan.B_CHIP == 'SN7':
					self.FM_regMixer = self.FM_regMixer | 128
					noiseval = data[0] >> 4 & 0x07
					noisevol = data[0] & 0x0f
					self.SN7_regNOISE = chan.Noise
					self.SN7_regVOlN = self.getVolume(noisevol | chan.Volume, chan.B_CHIP)
			
				elif chan.B_CHIP == 'AY3':
					self.FM_regMixer = self.FM_regMixer | 128
					noisedeviation = data[0] & 0x60
					noiseval = data[0] & 0x1f
					if noisedeviation == 0:
						chan.Noise = noiseval
					elif noisedeviation == 0x40:
						chan.Noise += noiseval
					else:
						chan.Noise -= noiseval
					self.AY3_regNOISE = chan.Noise
				else:
					pass
			
			#--- Volume
			vol = data[1] = & 0xf
			vol_deviation = data[1] & 0x30

			if vol_deviation == 0:
				# Base volume
				chan.VolumeAdd = vol
			elif vol_deviation == 0x20:
				# add
				if chan.VolumeAdd + vol > 15:
					chan.VolumeAdd = 15
				else:
					chan.VolumeAdd += vol
			
			# Envelope?
			if chan.B_TRGENV != 0:
				# envelope
				chan.self.VolumeRegister = 16
			else
				# normal volume
				HIER HIER HIER HIER HIER
		return
	
	#=====================================================
	#
	#
	#
	#
	#
	#=====================================================
	def play(self,song):
#		print (f"{self.isr} - {self.replay_speed_timer}")
		
		#--- Handle the speed timer
		self.replay_speed_timer -= 1
		
		if self.replay_speed_timer == 0:
			self.replay_speed_subtimer = self.replay_speed_subtimer ^ (self.replay_speed%2)
			self.replay_speed_timer = self.replay_speed//2 + self.replay_speed_subtimer

			#--- Decode data
			for chan in self.channels:
				self.decode_chan(chan,song)
			self.replay_patpointer += 1


		#--- process data
		
		# Mixer init
		self.FM_regMIXER = 0
		self.replay_sn7regs[4] = 0	# VolA
		self.replay_sn7regs[5] = 0	# VolB		
		self.replay_sn7regs[6] = 0	# VolC	
		self.replay_sn7regs[7] = 0	# VolN		

		for chan in self.channels:
			self.process_chan(chan,song)
		
		#--- process drums
		return
		
		
		
		
		
		
		
	
	#=====================================================
	#
	#
	#
	#
	#
	#=====================================================		
	def	logframes(self,song):
	
		print (f"Starting logging...{song.name}")		
	
		while self.isr < 500:
			self.play(song)
			self.isr += 1
		return

			





		
		
