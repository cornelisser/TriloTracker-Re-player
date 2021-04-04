from song import Song
from instrument import Instrument
from drum import Drum
from pattern import Pattern
from track import Track
from voice import Voice
from waveform import Waveform

#from replayer import Replayer

import sys

USAGE = f"Usage: {sys.argv[0]} [--options] infile [outfile]"

infile = ''
outfile = ''

_DB = "\tdb"
_DW = "\tdw"
_CHILD = "."
#===================================================================
#
#	TMU File Loading 
#	
#===================================================================
def load_tmu(infile,song):

	index = 0 

	with open(infile,"rb") as file:
		data = file.read()
		file.close()	
			
		val = data[index]
		index += 1
		song.set_version(val & 0x0f)		# version
		song.set_type(val >> 4)				# type
		
		str = data[index:index+32]			# name
		index += 32		
		song.name = str.decode('utf-8')

		
		str = data[index:index+32]			# by
		index += 32		
		song.by = str.decode('utf-8')

		val = data[index]
		index += 1	
		song.set_speed(val)					#speed
		
		val = data[index]
		index += 1	
		song.restart = val					#order restart	
		
		val = data[index]
		index += 1	
		song.set_length(val)				#order length	
		
		lst = data[index:index+song.length]
		index += song.length
		song.order_list = lst				# order list
		
		for i in range(0,31):				# set 16 instrument names.
			ins = Instrument(i+1)
			str = data[index:index+16]	
			index += 16	
			try:
				ins.name = str.decode('utf-8')	
			except:
				raise SystemExit(f"Error reading instrument name. Invalid data!")
			i += 1
			song.ins.append(ins)

		for i in range(0,31):
			ins = song.ins[i]
			l = data[index]					# length
			ins.set_length(l)
			index += 1	
			r = data[index]					# restart
			ins.restart = r
			index += 1	
			
			if song.type == "SCC":
				w = data[index]				# waveform
				ins.waveform = w
			else:
				v = data[index]				# voice
				ins.voice = v
			index += 1				
			
			ins_data = data[index:index+(l*4)]
			r = 0
			for r in range(0,l):
				row = ins_data[r*4:(r*4)+4]
				ins.rows.append(row)
				r+=1
			index += (l*4)
			i += 1
		
		if song.type == "SCC":				# Waveform data
			for x in range(0,32):
				waveform = Waveform(x)
				waveform.data = data[index:index+32]
				song.waveforms.append(waveform)
				index +=32

		else:
			for x in range(0,16):			# Custom FM voices 
				voice = Voice(x+177)
				voice.data = data[index:index+8]
				song.voices.append(voice)
				index +=8

			
											# Drum names
			if (song.version < 9):
				nr_drum = 20
			else:
				nr_drum = 19
		

			for d in range(0,nr_drum):
				drum = Drum(d)
				str = data[index:index+16]
				drum.name = str.decode('utf-8')
				d+=1
				index+=16
				song.drums.append(drum)
				
											#drum macros
			for d in range(0,nr_drum):
				drum = song.drums[d]
				l = data[index]
				drum.set_length(l)
				index+=1
				drm_data = data[index:index+(l*7)]
				index+=l*7
				r=0
				for r in range(0,l):
					row = drm_data[r*7:(r*7)+7]
					drum.rows.append(row)
					r+=1
				d+=1


		# THIS IS TO OVERCOME AN ERROR IN THE FILES
	#	if song.type != "SCC":	
	#		index = index -1	
		
		p = 0							# Patterns
		t = 0
		while p != -1:
			num = data[index]
			if num == 255:
				break
			index+=1
			l = data[index]
			l += ord(data[index+1:index+2])*256
			index+=2
			# decompress pattern
			cmp_pat = data[index:index+l]
			pat = decompress_pattern(cmp_pat)
			index+=l
			# store pattern
			pattern = Pattern(num,t)
			song.patterns.append(pattern)
			#print (pattern.tracks)
			# store tracks
			chan = 0 
			for chan in range(0,8):
				#print(f"Pat:{num} Track: {t}")
				track = Track(t)
				row = 0
				for row in range(0,64):
					note = pat[(chan*4+row*32)+0]
					ins = pat[(chan*4+row*32)+1]
					tmp = int(pat[(chan*4+row*32)+2])
					par = pat[(chan*4+row*32)+3]
					vol = tmp >> 4
					cmd = tmp & 0x0f
						
					track.rows.append([note,ins,vol,cmd,par])
					#row += 1
				#chan += 1
				t += 1
				song.tracks.append(track)
	# DONE!	
	
def decompress_pattern(data):
	pat = [0]*2048
	
	s	= 0
	d	= 0
	val = 0
	
	while d < 2048:
		val = data[s]
#		if val == 255:
#			return pat
		if val != 0:					# write val	
			pat[d] = val
			d+=1			
		else:							# repeat 0
			s+= 1
			r = data[s]
			d+= r	
		s+=1

	return pat
			


#===================================================================
#
#	ASM Export
#	
#===================================================================
def export_asm(outfile,song):

	index = 0 

	with open(outfile,"w+") as file:
		file.write(f"; Song: {song.name}\n")
		file.write(f"; By:   {song.by}\n\n")		
	
		file.write("; [ Song start data ]\n")
		file.write(f"{_DB} ${song.speed:02x}\t\t\t\t\t; Initial song speed.\n")
		if song.type == 'SCC':
			file.write(f"{_DW} {_CHILD}waveform_start\t\t\t; Start of the waveform data.\n")
		else:
			file.write(f"{_DW} {_CHILD}customvoice_start-8\t\t\t; Start of the custom voices data.\n")
			file.write(f"{_DW} {_CHILD}drummacro_start\t\t\t\t; Start of the drum macro data.\n")		

		file.write(f"{_DW} {_CHILD}instrument_start\t\t\t; Start of the instrument data.\n")		

		file.write("\n; [ Song order pointer list ]\n")	
		step = 0
		for val in song.order_list:
			if step == song.restart:								# Check if position is restart position
				file.write(f"{_CHILD}restart:\n")
			step+=1
			pat = song.get_pattern(val)
			file.write(f"{_DW}")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[0]].export_number:03},")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[1]].export_number:03},")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[2]].export_number:03},")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[3]].export_number:03},")			
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[4]].export_number:03},")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[5]].export_number:03},")			
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[6]].export_number:03},")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[7]].export_number:03}\t; Step:{step:03} Pattern:{pat.number:03}\n")		
		file.write(f"{_DW} 0x0000, {_CHILD}restart\t\t\t\t; End of sequence delimiter + restart address.\n\n")


	
		file.write("; [ Custom FM voices ]\n")		
		file.write(f"{_CHILD}customvoice_start:\n")
		for voice in song.voices:
			if voice.number > 15:
				if voice.used == True:
					file.write(f"{_DB} ${voice.data[0]:02x},${voice.data[1]:02x},${voice.data[2]:02x},${voice.data[3]:02x},${voice.data[4]:02x},${voice.data[5]:02x},${voice.data[6]:02x},${voice.data[7]:02x} \t\t; Custom voice:{voice.number:0}\n")				

		file.write("\n; [ SCC Waveforms ]\n")		
		file.write(f"{_CHILD}waveform_start:\n")	
		for waveform in song.waveforms:
			if waveform.used == True:
				file.write(f"{_DB}")
				for x in range(0,31):
					file.write(f" ${waveform.data[x]:02x},")
				file.write(f" ${waveform.data[31]:02x}\t\t\t\t; Waveform:{waveform.number:0}\n")		
			
		file.write("\n; [ FM Drum macros]\n")		
		file.write(f"{_CHILD}drummacro_start:\n")		
		for drum in song.drums:
			if drum.used == True:
				file.write(f"{_DW} {_CHILD}drum_{drum.number:02}\n")	
		
		for drum in song.drums:
			## if drum.used == True:
			##	file.write(f"\n{_CHILD}drum_{drum.number:02}:\n")
				export_drum(file,drum)
			
		file.write("\n; [ Instruments]\n")				
		file.write(f"{_CHILD}instrument_start:\n")
		for instrument in song.ins:
			if instrument.used == True:
				file.write(f"{_DW} {_CHILD}instrument_{instrument.export_number:02}\t\t\t\t; {instrument.name}\n")
		file.write("\n")	

		for instrument in song.ins:
			if instrument.used == True:
				file.write(f"{_CHILD}instrument_{instrument.export_number:02}:\t\t\t\t\t; {instrument.name}\n")
				if song.type == "SCC":
					waveform = song.get_waveform(instrument.waveform)
					file.write(f"{_DB} ${waveform.export_number:02x}\t\t\t\t\t\t\t; Waveform {waveform.export_number//8}\n")
				elif song.type == "FM" or song.type == "SMS":
					voice = song.get_voice(instrument.voice)
					if instrument.voice == 0:
						file.write(f"{_DB} $01\t\t\t\t\t; FM Hardware Voice was not set\n")

					elif instrument.voice < 16:
						file.write(f"{_DB} ${instrument.voice << 4:02x}\t\t\t\t\t; FM Hardware Voice {voice.number}\n")
					else:
						# set the address offset of the voice data (= export+1 * 4) 
						file.write(f"{_DB} $00,${voice.export_number+1 << 2:02x}\t\t\t\t\t; FM Software Voice {voice.export_number}\n")
					
				#file.write("\t\t;Flg,Vol,Noi,Lnk,Tone\n")
				for r in range(0,instrument.length):
					if r == instrument.restart:
						file.write(f"{_CHILD}rst_i{instrument.export_number:02}:\n")
						# Compile row
						#===========================================
					file.write(export_ins_row_asm(instrument,r,song))
				file.write(f"{_DW} {_CHILD}rst_i{instrument.export_number:02}\t\t\t\t\t\t; Loop address\n")		
		
		file.write("\n; [ Song track data ]\n")							
		for track in song.tracks:
			if track.used:
				file.write(f"{_CHILD}track_{track.number:03}:\n")
				export_track(file, track)
		file.write("\n")			
		file.close()	



def export_ins_row_asm(ins,r,song):
	
	if song.type == "SMS":
		return export_ins_row_asm_sms(ins,r)
	elif song.type == "SCC":
		return export_ins_row_asm_scc(ins,r)
	else:
		return export_ins_row_asm_fm(ins,r)
		
		
		

def export_ins_row_asm_sms(ins,r):
	row = ins.rows[r]
	out = ""
	bit0 = 1
	bit1 = 2
	bit2 = 4
	bit3 = 8
	bit4 = 16
	bit5 = 32
	bit6 = 64
	bit7 = 128

	byte1 = row[0]			# [N |          | Voice 4bit ] if Vl = 1
							# [N |Noise 3bit|NoiVol 4bit ]
	byte2 = row[1]			# [T |Td|Vd |Vd |Volume 4bit ]
	byte3 = row[2]			# [      Tone low 8 bit      ]
	byte4 = row[3]			# [ Vl |    Tone high 7 bit  ]

							# Output format:
							# [Nup|Nvol|  T | Tv | Vv | Vd | Vl |End]
							#	7    6    5    4    3    2    1    0

	# Calculate the end of instrument bit
	if r == (ins.length -1):		# set the end of instrument bit
		e = bit0
	else:
		e = 0
	result_info = e	

	# calculate volume
	result_vol = byte2 & 0x0f							# volume value
	if ((byte2 & 0x20) == 0x00):
		#base volume
		result_info = result_info + bit3
		out = out+ f"{_DB} ${result_vol:02x}\t\t\t; Volume _\n"
	elif (byte2 & 0x30) == 0x20 and (result_vol > 0):
		# add volume
		result_info = result_info + bit3 + bit2
		out = out+ f"{_DB} ${result_vol:02x}\t\t\t; Volume +\n"
	elif (result_vol > 0):
		#min volume
		result_info = result_info + bit3 + bit2
		result_vol = (255-result_vol)+1
		out = out+ f"{_DB} ${result_vol:02x}\t\t\t; Volume -\n"



	# calculate noise value
	result_noise = (byte1 >> 4) & 0x07					# noise value	
	if (byte1 & bit7 > 0):
		result_info = result_info + bit7
		out = out+ f"{_DB} ${result_noise:02x}\t\t\t; Noise\n"		



	# calculate noise volume
	result_noisevol = (byte1 & 0x0f) 					# noise volume
	if (byte1 & bit7) > 0:								# set noise volume to 0 if no noise is active
		result_info = result_info + bit6
		out = out+ f"{_DB} ${result_noisevol:02x}\t\t\t; Noise volume\n"	



	# calculate voice link value
	if (byte4 & bit7 > 0):								# voice link bit	
		result_voice = (byte1 & 0x0f) 					# voice
		result_info = result_info + bit1
		out = out+ f"{_DB} ${result_voice:02x}\t\t\t; FM Voice\n"
	

	

	# Calculate the Tone bit
	if (byte2 & bit7 > 0):
		result_info = result_info + bit5
		# calculate tone
		result_toneL = byte3
		result_toneH = byte4 & 0x7f							# tone without voicelink bit	
		if (result_toneL + result_toneH > 0):
			if ((byte2 & 0x40) == 0x40):
				# min
				result_toneL = (0xffff - (byte3 + (byte4*256)) +1) & 0xff
				result_toneH = ((0xffff - (byte3 + (byte4*256)) + 1) >> 8) and 0xff
			result_info = result_info + bit4
			out = out+ f"{_DW} ${result_toneH:02x}{result_toneL:02x}\t\t\t; Tone\n"


	
	# calculate output
	out = f"{_DB} ${result_info:02x}\t\t\t; Info byte: {result_info:08b}\n"+out
	return out





def export_ins_row_asm_fm(ins,r):
	row = ins.rows[r]

	byte1 = row[0]	
	byte2 = row[1]
	byte3 = row[2]
	byte4 = row[3]

	if r == ins.length:			# set the end of instrument bit
		e = 0x08
	else:
		e = 0

	result_info = byte1 & 0x80						# Set the noise active bit
	result_info = result_info + ((byte2 >>3 ) & 0x10)	# Set the tone active bit
	result_info = result_info + e						# Set the END macro bit

	


	result_vol = byte2 & 0x0f						# volume value
	result_noise= 0									#byte1 And $1f	; noise value / voicelink
	result_nvol = 0

	result_toneL = byte3
	result_toneH = byte4 & 0x7f						# tone without voicelink bit
	
	result_link = byte4 & 0x80					# voicelink bit

	# Calculate noise
	if (byte1 & 0x80 > 0):
		result_noise= byte1 & 0x1f					#; noise value
		if ((byte1 & 0x40) == 0):		
			# base noise
			result_info = result_info + 0x20
		elif (result_noise> 0):
			if ((byte1 & 0x60) == 0x40):
				# add noise
				result_info = result_info + 0x60
			elif ((byte1 & 0x60) == 0x60):
				# min noise
				#result_info = result_info + $40		Be aware changed this as only an add is needed as value is negative
				result_info = result_info + 0x60
				result_noise= (255-result_noise)+1
	
	if (result_link > 0):
		result_noise= byte1 & 0x0f					#; voice value
		result_info = result_info + 0x40	

	# calculate volume
	if ((byte2 & 0x20) == 0x00):
		#base volume
		result_info = result_info + 0x01
	elif (byte2 & 0x30) == 0x20 and (result_vol > 0):
		# add volume
		result_info = result_info + 0x03
	elif (result_vol > 0):
		#min volume
		result_info = result_info + 0x03
		result_vol = (255-result_vol)+1
	
	# calculate tone	
	if (result_toneL + result_toneH > 0):
		if ((byte2 & 0x40) == 0x40):
			# min
			result_toneL = (0xffff - (byte3 + (byte4*256)) +1) & 0xff
			result_toneH = ((0xffff - (byte3 + (byte4*256)) + 1) >> 8) and 0xff
		result_info = result_info + 0x04

	
	# calculate output
	out = f"{_DB} ${result_info:02x}"
	if ((result_info & 0x03) > 0):
		out = out + f",${result_vol:02x}"
	else: 
		out = out + "    "

	if (result_noise> 0):
		if (result_link > 0):
			out = out + "    "
			out = out +f",${result_link:02x}"
		else:
			out = out +f",${result_noise:02x}"
			out = out + "    "
	else:
		out = out + "        "
	if ((result_info & 0x04) > 0):
		out = out + f",${result_toneL:02x}"
		out = out + f",${result_toneH:02x}"
	else: 
		out = out + "        "	
		
	out = out + f"\t\t; {result_info:08b}\n"
	return out




def export_ins_row_asm_scc(ins,r):
	row = ins.rows[r]
	out = ""
	bit0 = 1
	bit1 = 2
	bit2 = 4
	bit3 = 8
	bit4 = 16
	bit5 = 32
	bit6 = 64
	bit7 = 128

	byte1 = row[0]			# [N |Nd |Nd |  Noise 5bit   ] 
	byte2 = row[1]			# [T |Td |Vd |Vd |Volume 4bit]
	byte3 = row[2]			# [      Tone low 8 bit      ]
	byte4 = row[3]			# [           |Tone high 4bit]

							# Output format:
							# [Nbit |Nupd|Ndev|Tbit|Tupd|Vupd|Vdev|End]
							#	7     6    5    4    3    2    1    0
							#    '0'   '1' = Waveform update
	if r == ins.length -1:			# set the end of instrument bit
		e = bit0
	else:
		e = 0
	result_info = e

	# calculate volume
	result_vol = byte2 & 0x0f
	if ((byte2 & bit5) == 0x00):		# if bit5 is not set
		#base volume		
		if ins.restart != r and r > 0: 
			vol_prev = ins.rows[r][2] & 0x0f			# detect of volume has not changed
			if result_vol != vol_prev:
				result_info = result_info + bit2
				out = out+ f"{_DB} ${result_vol:02x}\t\t\t\t\t\t\t; Volume _\n"
		else:
			result_info = result_info + bit2
			out = out+ f"{_DB} ${result_vol:02x}\t\t\t\t\t\t\t; Volume _\n"
	elif (byte2 & 0x30) == 0x20 and (result_vol > 0):
		# add volume
		result_info = result_info + bit2 + bit1
		out = out+ f"{_DB} ${result_vol:02x}\t\t\t\t\t\t\t; Volume +\n"
	elif (result_vol > 0):
		#min volume
		result_info = result_info + bit2 + bit1
		result_vol = (255-result_vol)+1
		out = out+ f"{_DB} ${result_vol:02x}\t\t\t\t\t\t\t; Volume -\n"

	# calculate noise value
	result_noise = byte1 & 0x1f
	if ((byte1 & bit7)!= 0x00):
		# set noise bit
		result_info = result_info + bit7
		if ((byte1 & bit6) == 0x00):
			# base noise
			result_info = result_info + bit6
			out = out+ f"{_DB} ${result_noise:02x}\t\t\t\t\t\t\t; Noise _\n"
		elif ((byte1 & 0x60) == 0x40 and result_noise >0):
			# add noise
			result_info = result_info + bit6 + bit5
			out = out+ f"{_DB} ${result_noise:02x}\t\t\t\t\t\t\t; Noise +\n"		
		elif (result_noise > 0):
			# min noise
			result_info = result_info + bit6 + bit5
			result_noise = (255-result_noise)+1	
			out = out+ f"{_DB} ${result_noise:02x}\t\t\t\t\t\t\t; Noise +\n"		
	# Test form waveform update in macro
	elif ((byte1 & bit6) != 0x00):
		# waveform update
		result_info = result_info + bit6
		result_waveform = result_noise
		out = out+ f"{_DB} ${result_waveform:02x}\t\t\t\t\t\t\t; Waveform +\n"


	# calculate tone
	result_toneL = byte3
	result_toneH = byte4 & 0x0f

	if ((byte2 & bit7)!= 0x00):
		# Set Tone bit
		result_info = result_info + bit4
		if (result_toneL + result_toneH > 0):
			if ((byte2 & bit6) == bit6):
				# min
				result_toneL = (0xffff - (byte3 + (byte4*256)) +1) & 0xff
				result_toneH = ((0xffff - (byte3 + (byte4*256)) + 1) >> 8) and 0xff				
			result_info = result_info + bit3
			out = out+ f"{_DW} ${result_toneH:02x}{result_toneL:02x}\t\t\t\t\t\t\t; Tone\n"			

	# calculate output
	out = f"{_DB} ${result_info:02x}\t\t\t\t\t\t\t; Info byte: {result_info:08b}\n"+out
	return out


#--------------------------------------------
#
# DRUM
#
#--------------------------------------------
def export_drum(file,drum):
	file.write(f"\n{_CHILD}drum_{drum.export_number:02}:\t\t\t\t\t\t; Drum {drum.number}. {drum.name}\n")				

	for r in range(0,drum.length):
		row = drum.rows[r]
		p = row[0]			# percussion
		bt = row[1]
		bv = row[2]	& 0x0f	# bdrum
		st = row[3]
		sv = row[4] & 0xf0 	# snare
		hv = row[4] & 0x0f	# hihat
		ct = row[5]
		cv = row[6] & 0xf0 	# cymbal
		tv = row[6] & 0x0f	# tom

		# tone byte  [n | d | x x x x x x]
		# n = note, d = deviation, x = value

		# cmd: 
		# 0 = end of row
		# 2 = stop playback
		# 4 = bdrum vol
		# 6 = snare vol
		# 8 = hhat vol
		# a = snare+hhat vol
		# c = cymbal vol
		# e = tomtom vol
		# 10 = cymbal+tomtom vol
		# 12 = bdrum tone note
		# 14 = dbrum tone add
		# 16 = snare+hhat tone note
		# 18 = snare+hhat tone add
		# 1a = cymbal+hhat tone note
		# 1c = cymbal+hhat tone add 
		# 1e = percussion

		if (p != 0):	
			# percussion
			file.write(f"{_DW} $1e, ${p:02x}\t\t\t\t\t\t\t; Percussion\n")			
		if (bv != 0):
			# bdrum volume
			file.write(f"{_DW} $04, ${bv:02x}\t\t\t\t\t\t\t; volume Base drum\n")	
		if (sv != 0 and hv == 0):
			# Snare volume
			file.write(f"{_DW} $06, ${(sv):02x}\t\t\t\t\t\t\t; volume Snare\n")				
		if (sv != 0 and hv != 0):
			# Hihat volume
			file.write(f"{_DW} $08, ${(hv):02x}\t\t\t\t\t\t\t; volume HiHat\n")	
		if (sv != 0 and hv != 0):
			# Snare + Hihat volume
			file.write(f"{_DW} $0a, ${(sv+hv):02x}\t\t\t\t\t\t\t; volume Snare + HiHat\n")	
		if (cv != 0 and tv == 0):
			# Cymbal 
			file.write(f"{_DW} $0c, ${(cv):02x}\t\t\t\t\t\t\t; volume Cymbal\n")	
		if (cv == 0 and tv != 0):
			# Tom volume
			file.write(f"{_DW} $0e, ${tv:02x}\t\t\t\t\t\t\t; volume Tom\n")	
		if (cv != 0 and tv != 0):
			# Cymbal + Tom volume
			file.write(f"{_DW} $10, ${(sv+hv):02x}\t\t\t\t\t\t\t; volume Cymbal + Tom \n")	

		if (bt != 0):
			if (bt & 0x80 == 0):
				#note
				file.write(f"{_DW} $12, ${(bt & 0x7f):02x}\t\t\t\t\t\t\t; note Bdrum\n")					
			elif (bt &0x3f != 0):
				if (bt & 0x40 == 0):
					#add
					file.write(f"{_DW} $14, ${(bt & 0x3f):02x}\t\t\t\t\t\t\t; tone add pos Bdrum \n")
				else:
					#add - neg
					file.write(f"{_DW} $14, ${256-(bt & 0x3f):02x}\t\t\t\t\t\t\t; tone add neg Bdrum \n")										
		if (st != 0):
			if (st & 0x80 == 0):
				#note
				file.write(f"{_DW} $16, ${(st & 0x7f):02x}\t\t\t\t\t\t\t; note Snare \n")	
			elif (st &0x3f != 0):
				if (st & 0x40 == 0):
					#add
					file.write(f"{_DW} $18, ${(st & 0x3f):02x}\t\t\t\t\t\t\t; tone add pos Snare \n")
				else:
					#add - neg
					file.write(f"{_DW} $18, ${256-(st & 0x3f):02x}\t\t\t\t\t\t\t; tone add neg Snare \n")						
		if (ct != 0):
			if (ct & 0x80 == 0):
				#note
				file.write(f"{_DW} $1a, ${(ct & 0x7f):02x}\t\t\t\t\t\t\t; note Cymbal \n")					
			elif (ct &0x3f != 0):
				if (ct & 0x40 == 0):
					#add
					file.write(f"{_DW} $1c, ${(ct & 0x3f):02x}\t\t\t\t\t\t\t; tone add pos Cymbal \n")
				else:
					#add - neg
					file.write(f"{_DW} $1c, ${256-(ct & 0x3f):02x}\t\t\t\t\t\t\t; tone add neg Cymbal \n")		

		# End of row to End of Drum macro?
		if (r == drum.length -1):
			file.write(f"{_DW} $02\t\t\t\t\t\t\t; STOP - End of Drum macro\n")		
		else:
			file.write(f"{_DW} $00\t\t\t\t\t\t\t; END  - End of row\n")
	return	




def export_track(file,track):
	wait = -1
	wait_prev = 255
	
	vol_offset = 98
	ins_offset = 113	
	cmd_offset = 144
	special_offset = 184
	wait_offset = 192
	
	notes = ["C-","C#","D-","D#","E-","F-","F#","G-","G#","A-","A#","B-"]
	
	cmd = {
			# primary effects
			"0":	cmd_offset+3,	#arp
			"1": 	cmd_offset+5,	#p up
			"2":	cmd_offset+2,	#p down
			"3":	cmd_offset+0,	#p tone
			"4":	cmd_offset+4,	#vib
			"5":	cmd_offset+1,	#p tone+vib
			"6":	cmd_offset+6,	#vib + v slide			
			"A":	cmd_offset+7,	#v slide
			"7":	cmd_offset+8,	# tremelo
			"EC":	cmd_offset+9,	#note cut				
			"ED":	cmd_offset+10,	#note delay				
			
			# secondary effects
			"END":cmd_offset+11,	# end all lasting effects
			"C":	cmd_offset+12,	#FM Drum		
			"C0":	cmd_offset+12,	#SCC Morph to waveform	
			"C1":	cmd_offset+12,	#SCC Morph to waveform+16

			"E0":	cmd_offset+13,	#arp speed
			"E1":	cmd_offset+14,	#tone up
			"E2":	cmd_offset+15,	#tone down
			"E5":	cmd_offset+16,	#note link
			"E6":	cmd_offset+17,	#track detune
			"EF":	cmd_offset+18,	#trigger	
			"F":	cmd_offset+19,	#speed
			#SN7
			"E8":	cmd_offset+20,	#tone panning			
			"E9":	cmd_offset+21,	#noise panning	
			"B":	cmd_offset+22,	#FM+SG Chan setup	
			#AY3
			"EE":	cmd_offset+20,	#envelope	
			"8":	cmd_offset+21,	#PSG ENV				
			# SCC
			"BE":	cmd_offset+22,	#SCC RESET		
			"B3":	cmd_offset+23,	#SCC Duty Cycle
			"B5":	cmd_offset+24,	#SCC Soften waveform
			"B0":	cmd_offset+25,	#SCC set waveform
			"B1":	cmd_offset+25,	#SCC set waveform +16	
			"CC":	cmd_offset+26,	#SCC Morph follow (Carbon C0py)
			"CE":	cmd_offset+27,	#SCC Morph type
			"CF":	cmd_offset+28,	#SCC Morph speed
			"CA":	cmd_offset+29,	#SCC Sample		
		}


	last_value = 	0	# last value written in data. Used for checking delay repeat exceptions
	curr_value =      0					
	for row in track.rows:


		n = row[0]		# note
		i = row[1]		# instrument
		v = row[2]		# volume
		c = row[3]		# command
		p = row[4]		# parameters
		
		if curr_value > 0:
			last_value = curr_value
		# detect highest action
		if (p != 0):
			curr_value = 4
		elif (c != 0):
			curr_value = 4
		elif (v != 0):
			curr_value = 3
		elif (i != 0):
			curr_value = 2
		elif (n != 0):
			curr_value = 1
		else:
			curr_value = 0

		# Handle wait timer/repeat.
		if (n + i + v + c + p == 0):		# If empty row then add 1 wait
			wait += 1				
		elif wait >= 0:					# Action and there are waits then add wait
			if (wait == wait_prev) & (curr_value <= last_value):			# If previous wait is same then just repeat
				file.write(f"\t\t\t\t\t;Wait Repeat {wait_prev+1}\n")
				wait = 0
			else:							# Add the new wait.
				file.write(f"{_DB} ${wait_offset+wait:02x}\t\t\t;Wait {wait+1}\n")
				wait_prev = wait
				wait = 0
		else:
			wait += 1

			
		if n != 0:
			n -= 1			#note 1 -> 0
			if n == 96:
				file.write(f"{_DB} ${n:02x}\t\t\t;Release {n}\n")
			elif n == 97:
				file.write(f"{_DB} ${n:02x}\t\t\t;Sustain {n}\n")
			else:
				file.write(f"{_DB} ${n:02x}\t\t\t;Note {notes[(n%12)]}{int(n/12)+1}\n")
		if v != 0:
			file.write(f"{_DB} ${vol_offset+v-1:02x}\t\t\t;Volume {v}\n")
		if i != 0:
			tmp = song.ins[i-1].export_number
#			print(f"{song.ins[i-1].number} + {song.ins[i-1].export_number}")
			file.write(f"{_DB} ${ins_offset+tmp:02x}\t\t\t;Instrument {tmp}\n")
	
		if c == 0 and p == 0:
			pass	
		else:
			# Add end command detection here (e.g. 100, 300, 400 etc)
			if p == 0 and (c <= 6 or c == 0xa):	
				# command end
				# parameter: none
				file.write(f"{_DB} ${cmd['END']:02x}\t\t\t;CMD End \n")	
			elif c == 0:					
				# arpeggio
				# parameter: as in tracker
				file.write(f"{_DB} ${cmd['0']:02x},${p:02x}\t\t\t;CMD Arpeggio\n")	
			elif c == 1:					
				# portamento up
				# parameter: as in tracker
				file.write(f"{_DB} ${cmd['1']:02x},${p:02x}\t\t\t;CMD Portamento up\n")	
			elif c == 2:					
				# portamento down
				# parameter: as in tracker
				file.write(f"{_DB} ${cmd['2']:02x},${p:02x}\t\t\t;CMD Portamento down\n")	
			elif c == 3:					
				# portamento tone
				# parameter: as in tracker
				file.write(f"{_DB} ${cmd['3']:02x},${p:02x}\t\t\t;CMD Portamento tone\n")	
			elif c == 4:					
				# vibrato
				# parameter: xy - x = speed, y=depth. Depth is limited to 0xC0
				par = calculate_vibrato_parameter(p)
				file.write(f"{_DB} ${cmd['4']:02x},${par:02x}\t\t;CMD Vibrato\n")			
			elif c == 5:					
				# portamento tone + volume slide
				# parameter: xy = slide value value (pos or negative)
				val = calculate_volslide_parameter(p)	
				file.write(f"{_DB} ${cmd['5']:02x},${val:02x}\t\t\t;CMD Portamento tone + Volume slide\n")
			elif c == 6:					
				# vibrato + volume slide
				# parameter: xy = slide value value (pos or negative)
				val = calculate_volslide_parameter(p)
				file.write(f"{_DB} ${cmd['6']:02x},${val:02x}\t\t\t;CMD Vibrato + Volume slide\n")
			elif c == 7:				
				# Tremolo
				# parameter: xy - x = speed, y=depth. Depth is limited to 0xC0
				par = calculate_vibrato_parameter(p)
				file.write(f"{_DB} ${cmd['7']:02x},${par:02x}\t\t\t;CMD Tremolo\n")				
			elif c == 8:	
				if song.type == 'SMS': 	
					# unused
					file.write(f"\t\t\t;CMD 8 Unused [WARNING]\n")	
					print(f"CMD 8 Unused [WARNING]")	
				else:					
					# envelope multiplier
					# parameter: as in tracker
					file.write(f"{_DB} ${cmd['8']:02x},${p:02x}\t\t;CMD Envelope multiplier\n")
			elif c == 9:					
				# Unused
				file.write(f"\t\t\t;CMD 9 Not supported [Macro Offset][WARNING]\n")
				print(f"CMD 9 Not supported [Macro Offset][WARNING]")
			elif c == 0xa:				
				# volume slide
				# parameter: xy = slide value value (pos or negative)
				val = calculate_volslide_parameter(p)	
				file.write(f"{_DB} ${cmd['A']:02x},${val:02x}\t\t\t;CMD Volume slide up\n")			
			elif c == 0xb:				
				if song.type == "SCC":
					# SCC commands
					cm = p & 0xf0
					v = p & 0x0f

					if cm == 0x00:
						# set waveform 
						wf = song.get_waveform(v)
						file.write(f"{_DB} ${cmd['B0']:02x},${wf.export_number:02x}\t\t\t; SCC Set Waveform {v}\n")
					elif cm == 0x10:
						# set waveform +16 
						wf = song.get_waveform(v+16)
						file.write(f"{_DB} ${cmd['B1']:02x},${wf.export_number:02x}\t\t\t; SCC Set Waveform {v+16}\n")
					elif cm == 0x30:
						# duty cycle Waveform
						file.write(f"{_DB} ${cmd['B3']:02x},${v:02x}\t\t\t; SCC Duty cycle Waveform\n")
					elif cm == 0x50:
						# soften waveform
						file.write(f"{_DB} ${cmd['B5']:02x}\t\t\t\t; SCC Soften Waveform\n")
					elif cm == 0xE0:
						# waveform reset
						file.write(f"{_DB} ${cmd['BE']:02x}\t\t\t\t; SCC Waveform reset\n")	
					else:
						file.write(f"\t\t\t;CMD {c:01x}{p:02x} Waveform Not valid [WARNING]\n")
						print(f"CMD {c:01x}{p:02x} Waveform Not valid [WARNING]")
				else:					
					# Channel setup
					file.write(f"{_DB} ${cmd['B']:02x},${p:02x}\t\t\t;CMD Channel setup\n")
			elif c == 0xc:		
				if song.type == "SCC":	
					# SCC Morph commands
					cm = p & 0xf0
					v = p & 0x0f

					if cm == 0x00:
						# morph to waveform 
						wf = song.get_waveform(v)
						file.write(f"{_DB} ${cmd['C0']:02x},${wf.export_number:02x}\t\t\t; SCC Morph to Waveform {v}\n")
					elif cm == 0x10:
						# morph to waveform +16
						wf = song.get_waveform(v+16)
						file.write(f"{_DB} ${cmd['C1']:02x},${wf.export_number:02x}\t\t\t; SCC Morph to Waveform {v+16}\n")
					elif cm == 0xC0:
						# morph follow (Carbom C0py)
						file.write(f"{_DB} ${cmd['CC']:02x}\t\t\t\t; SCC Morph foloow (Carbon C0poy) {v}\n")
					elif cm == 0xE0:
						# morph type ( 0 = from waveform, 1 = continue from fata in waveform buffer)
						file.write(f"{_DB} ${cmd['CE']:02x},${v:02x}\t\t\t; SCC Morph follow (Carbon C0poy) {v}\n")
					elif cm == 0xF0:
						# morph speed
						file.write(f"{_DB} ${cmd['CF']:02x},${v:02x}\t\t\t; SCC Morph speed {v}\n")
					elif cm == 0xA0:
						# Sample playback
						file.write(f"{_DB} ${cmd['CA']:02x},${v*2:02x}\t\t\t; SCC Sample {v}\n")
					else:
						# SCC commands
						file.write(f"\t\t\t;CMD {c:01x}{p:02x} Waveform Not valid [WARNING]\n")
						print(f"CMD {c:01x}{p:02x} Waveform Not valid [WARNING]")
				else:					
					# Drum
					# parameter: as in tracker
					file.write(f"{_DB} ${cmd['C']:02x},${p:02x}\t\t\t;CMD Drum ${p:02x}\n")
			elif c == 0x0d:				
				# End of pattern
				# Parameter: none
				pass						
			elif c == 0x0e:		
				# Extended command
				x = p & 0xf0
				y = p & 0x0f
				if x == 0:				
					# Arpegio speed
					# Parameter: xy = speed value
					file.write(f"{_DB} ${cmd['E0']:02x},${y:02x}\t\t\t;CMD Arpegio speed\n")
				elif x == 0x10:			
					# Portamento fine up
					# Parameter: xy = value (pos)
					file.write(f"{_DB} ${cmd['E1']:02x},${y:02x}\t\t\t;CMD Portamento fine up\n")
				elif x == 0x20:			
					# Portamento fine down
					# Parameter: xy = value (negative)
					y = 256-y
					file.write(f"{_DB} ${cmd['E2']:02x},${y:02x}\t\t\t;CMD Portamento fine up\n")
				elif x == 0x50: 			
					# note link
					# Parameter: none
					file.write(f"{_DB} ${cmd['E5']:02x}\t\t\t;CMD Note link\n")
				elif x == 0x60: 			
					# track detune
					# Parameter: xy = value
					file.write(f"{_DB} ${cmd['E6']:02x},${y:02x}\t\t\t;CMD Track detune\n")
				elif x == 0x80:
					if song.type == 'SMS':
						# GG Tone panning
						# Parameter: xy = panning value
						file.write(f"{_DB} ${cmd['E8']:02x},${y:02x}\t\t\t;CMD GG tone panning\n")
					else:
						# Unused
						file.write(f"\t\t\t;CMD 8 Not supported [Global transpose][WARNING]\n")	
						print(f"CMD 8 Not supported [Global transpose][WARNING]")	
				elif x == 0x90:
					if song.type == 'SMS':
						# GG Noise panning
						# Parameter: xy = panning value
						file.write(f"{_DB} ${cmd['E9']:02x},${y:02x}\t\t\t;CMD GG noise panning\n")
					else:
						# Unused
						file.write(f"\t\t\t;CMD E9 Not supported [WARNING]\n")
						print(f"CMD E9 Not supported [WARNING]")
				elif x == 0xc0:	
					# Note cut delay
					# Parameter: xy = tic value +1
					y = y + 1
					file.write(f"{_DB} ${cmd['EC']:02x},${y:02x}\t\t\t;CMD Note cut delay\n")
				elif x == 0xd0:				
					# Note delay	
					# Parameter: xy = tic value +1
					y = y + 1
					file.write(f"{_DB} ${cmd['ED']:02x},${y:02x}\t\t\t;CMD Note delay\n")
				elif x == 0xe0:
					if song.type != 'SMS':
						# Envelope shape
						# Parameter: xy = shape
						file.write(f"{_DB} ${cmd['EE']:02x},${y:02x}\t\t\t;CMD Envelope shape\n")
					else:
						# Unused
						file.write(f"\t\t\t;CMD EE Not supported [Global transpose][WARNING]\n")
						print(f"CMD EE Not supported [Global transpose][WARNING]")	
				elif x == 0xf0:			
					# Trigger
					# Parameter: xy = trigger value
					file.write(f"{_DB} ${cmd['EF']:02x},${y:02x}\t\t\t;CMD Trigger ${y:02x}\n")
				else:
					# unknown
					print(f"Unable to parse extended command $E{p:02x} [WARNING]")
			elif c == 0x0f:				
				# Speed
				# Parameter: as in tracker
				file.write(f"{_DB} ${cmd['F']:02x},${p:02x}\t\t\t;CMD Speed\n")
			else:
				# unknown
				print(f"Unable to parse command ${c:02x} [WARNING]")		

	if wait > 0:
#		if wait == wait_prev:
#			file.write(f"\t\t\t\t\t;Wait Repeat\n")
#		else:
			file.write(f"{_DB} ${wait_offset+wait:02x}\t\t\t;Wait {wait+1}\n")
	file.write(f"{_DB} ${191:02x}\t\t\t;[End-Of-Track]\n")



def calculate_volslide_parameter(p):
	val = p
	if val > 0x0f:
		val = 16 - (p >> 4)
	else:
		val = (16-val) + 128	
	return val
	
def calculate_vibrato_parameter(p):
	speed = ((p & 0xf0) >> 4)
	depth = ((p & 0x0f) << 4)
	if depth > 0xc0:				# Limit max depth
		depth = 0xc0					
	return depth+speed				# in compiled date low/high nibble are switched.

	
	

#===================================================================
#
#	Command line parameter handling
#	
#===================================================================
def process_commandline_parameters():
	''' 
	Check if there is an input file, output file and
	process all the options from the command line.
	'''
	global infile
	global outfile

	args = sys.argv[1:]					# Get all the arguments.
	if not args:
		raise SystemExit(USAGE)			# Error is no arguments.

	file_args = [arg for arg in args if arg[0] != '-']
	option_args = [arg for arg in args if arg[0] == '-']

	if not file_args:
		print ('Input file is missing!')
		raise SystemExit(USAGE)			# Error is no file arguments.
	else:
		infile = file_args[0]

	if len(file_args) > 1:
		outfile = file_args[1]
	else:
		outfile = file_args[0].split('.')[0]+'.asm'		#rename to asm ext
		
	for option in option_args:
		process_commandline_parameter_option(option)
	
def process_commandline_parameter_option(option):
	if option == "-wladx":
		global _DB 
		global _DW 
		global _CHILD

		_DB = "\t.db"
		_DW = "\t.dw"
		_CHILD = "@"






#==========================================
# Main
#==========================================
process_commandline_parameters()
song = Song()
load_tmu(infile,song)
#replayer = Replayer(song)

print (f"Input file: {infile}")
print (f"Output file: {outfile}")

song.cleanup()
# Debug info
song.debug()


export_asm(outfile,song)

#replayer.logframes(song)









