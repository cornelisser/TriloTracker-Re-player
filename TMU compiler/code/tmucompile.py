from song import Song
from instrument import Instrument
from drum import Drum
from pattern import Pattern
from track import Track
from voice import Voice
from waveform import Waveform

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
				voice = Voice(x+178)
				voice.data = data[index:index+8]
				song.voices.append(voice)
				index +=8

			
											# Drum names
			for d in range(0,20):
				drum = Drum(d)
				str = data[index:index+16]
				drum.name = str.decode('utf-8')
				d+=1
				index+=16
				song.drums.append(drum)
				
											#drum macros
			for d in range(0,20):
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
			index = index -1	
			
			
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
		if val == 255:
			return pat
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
		file.write(f"{_DW} {_CHILD}customvoice_start\t\t\t; Start of the custom voices data.\n")
		file.write(f"{_DW} {_CHILD}drummacro_start\t\t\t; Start of the drum macro data.\n")		
		file.write(f"{_DW} {_CHILD}instrument_start\t\t\t; Start of the instrument data.\n")		

		file.write("\n; [ Song order pointer list ]\n")	
		step = 0
		for val in song.order_list:
			if step == song.restart:								# Check if position is restart position
				file.write(f"{_CHILD}restart:\n")
			step+=1
			pat = song.get_pattern(val)
			file.write(f"{_DW}")
			file.write(f" {_CHILD}track_{pat.tracks[0]:03},")
			file.write(f" {_CHILD}track_{pat.tracks[1]:03},")
			file.write(f" {_CHILD}track_{pat.tracks[2]:03},")
			file.write(f" {_CHILD}track_{pat.tracks[3]:03},")			
			file.write(f" {_CHILD}track_{pat.tracks[4]:03},")
			file.write(f" {_CHILD}track_{pat.tracks[5]:03},")			
			file.write(f" {_CHILD}track_{pat.tracks[6]:03},")
			file.write(f" {_CHILD}track_{pat.tracks[7]:03}\t; Step:{step:03} Pattern:{pat.number:03}\n")		
		file.write(f"{_DW} 0x0000, {_CHILD}restart\t\t\t; End of sequence delimiter + restart address.\n\n")


	
		file.write("; [ Custom FM voices ]\n")		
		file.write(f"{_CHILD}customvoice_start:\n")
#		for voice in song.voices:
#			file.write(f"{_DB}")
#			for x in range(0,7):
#				file.write(f" ${voice.data[x]:02x},")
#			file.write(f" ${voice.data[7]:02x}\t\t; Custom voice:{voice.number:0}\n")				
	
		file.write("\n; [ SCC Waveforms ]\n")		
		file.write(f"{_CHILD}waveform_start:\n")	
		for waveform in song.waveforms:
			if waveform.used == True:
				file.write(f"{_DB}")
				for x in range(0,31):
					file.write(f" ${waveform.data[x]:02x},")
				file.write(f" ${waveform.data[31]:02x}\t\t; Waveform:{waveform.number:0}\n")		
			
		file.write("\n; [ FM Drum macros]\n")		
		file.write(f"{_CHILD}drummacro_start:\n")		
		for drum in song.drums:
			if drum.used == True:
				file.write(f"{_DW} {_CHILD}drum_{drum.number:02}\n")	
		
		for drum in song.drums:
			if drum.used == True:
				file.write(f"\n{_CHILD}drum_{drum.number:02}:\n")
			
		file.write("\n; [ Instruments]\n")				
		file.write(f"{_CHILD}instrument_start:\n")
		for instrument in song.ins:
			if instrument.used == True:
				file.write(f"{_DW} {_CHILD}instrument_{instrument.number:02}\t\t\t\t; {instrument.name}\n")
		file.write("\n")	

		for instrument in song.ins:
			if instrument.used == True:
				file.write(f"{_CHILD}instrument_{instrument.number:02}:\t\t\t\t\t; {instrument.name}\n")
				if song.type == "SCC":
					waveform = song.get_waveform(instrument.waveform)
					file.write(f"{_DB} ${waveform.export_number:02x}\t\t\t\t\t\; Waveform {waveform.number}\n")
				elif song.type == "FM" or song.type == "SMS":
					voice = song.get_voice(instrument.waveform)
					file.write(f"{_DB} ${voice.export_number:02x}\t\t\t\t\t; FM Voice {voice.number}\n")
			
				#file.write("\t\t;Flg,Vol,Noi,Lnk,Tone\n")
				for r in range(0,instrument.length):
					if r == instrument.restart:
						file.write(f"{_CHILD}rst_i{instrument.export_number:02}:\n")
						# Compile row
						#===========================================
					file.write(export_instrument_row_asm(instrument,r))
				file.write("\n")		
		
		file.write("\n; [ Song track data ]\n")							
		for track in song.tracks:
			if track.used:
				file.write(f"{_CHILD}track_{track.number:03}:\n")
				wait = 0
				for row in track.rows:
					wait = export_trackrow(file,row,wait)
				if wait > 0:
					file.write(f"{_DB} ${191+wait:02x}\t\t\t;Wait {wait}\n")
				file.write(f"{_DB} $bf\t\t\t;[End-Of-Track]\n")
		file.write("\n")			
		file.close()	



def export_instrument_row_asm(ins,r):
	row = ins.rows[r]

	byte1 = row[0]
	byte2 = row[1]
	byte3 = row[2]
	byte4 = row[3]

	if r == ins.length:			# set the end of instrument bit
		e = 0x08
	else:
		e = 0

	result1 = byte1 & 0x80						# Set the noise active bit
	result1 = result1 + ((byte2 >>3 ) & 0x10)	# Set the tone active bit
	result1 = result1 + e						# Set the END macro bit

	result2 = byte2 & 0x0f						# volume value
	result3 = 0;								#byte1 And $1f			; noise value / voicelink

	result4 = byte3
	result5 = byte4 & 0x7f						# tone without voicelink bit
	
	voicelink = byte4 & 0x80					# voicelink bit

	# Calculate noise
	if (byte1 & 0x80 > 0):
		result3 = byte1 & 0x1f					#; noise value
		if ((byte1 & 0x40) == 0):		
			# base noise
			result1 = result1 + 0x20
		elif (result3 > 0):
			if ((byte1 & 0x60) == 0x40):
				# add noise
				result1 = result1 + 0x60
			elif ((byte1 & 0x60) == 0x60):
				# min noise
				#result1 = result1 + $40		Be aware changed this as only an add is needed as value is negative
				result1 = result1 + 0x60
				result3 = (255-result3)+1
	
	if (voicelink > 0):
		result3 = byte1 & 0x0f					#; voice value
		result1 = result1 + 0x40	

	# calculate volume
	if ((byte2 & 0x20) == 0x00):
		#base volume
		result1 = result1 + 0x01
	elif (byte2 & 0x30) == 0x20 and (result2 > 0):
		# add volume
		result1 = result1 + 0x03
	elif (result2 > 0):
		#min volume
		result1 = result1 + 0x03
		result2 = (255-result2)+1
	
	# calculate tone	
	if (result4 + result5 > 0):
		if ((byte2 & 0x40) == 0x40):
			# min
			result4 = (0xffff - (byte3 + (byte4*256)) +1) & 0xff
			result5 = ((0xffff - (byte3 + (byte4*256)) + 1) >> 8) and 0xff
		result1 = result1 + 0x04

	
	# calculate output
	out = f"{_DB} ${result1:02x}"
	if ((result1 & 0x03) > 0):
		out = out + f",${result2:02x}"
	else: 
		out = out + "    "

	if (result3 > 0):
		if (voicelink > 0):
			out = out + "    "
			out = out +f",${result:02x}"
		else:
			out = out +f",${result3:02x}"
			out = out + "    "
	else:
		out = out + "        "
	if ((result1 & 0x04) > 0):
		out = out + f",${result4:02x}"
		out = out + f",${result5:02x}"
	else: 
		out = out + "        "	
		
	out = out + f"\t\t; {result1:08b}\n"
	return out







def export_trackrow(file,row,wait):
	n = row[0]		# note
	i = row[1]		# instrument
	v = row[2]		# volume
	c = row[3]		# command
	p = row[4]		# parameters
	
	ins_offset = 98	
	vol_offset = 129
	cmd_offset = 145
	wait_offset = 192
	
	cmd = {
			# lasting effects
			"0":	cmd_offset+0,	#arp
			"1": 	cmd_offset+1,	#p up
			"2":	cmd_offset+2,	#p down
			"3":	cmd_offset+3,	#p tone
			"4":	cmd_offset+4,	#vib
			"5":	cmd_offset+5,	#p tone+vib
			"6":	cmd_offset+6,	#vib + v slide			
			"A":	cmd_offset+7,	#v slide	
			"EC":	cmd_offset+8,	#note cut				
			"ED":	cmd_offset+9,	#note delay				
			
			# set only effects
			"END":	cmd_offset+10,	# end all lasting effects
			"C":	cmd_offset+11,	#SCC Morph/FM Drum			
			"E0":	cmd_offset+12,	#arp speed
			"E1":	cmd_offset+13,	#tone up
			"E2":	cmd_offset+14,	#tone down
			"E5":	cmd_offset+15,	#note link
			"E6":	cmd_offset+16,	#track detune
			"EF":	cmd_offset+17,	#trigger	
			"F":	cmd_offset+18,	#speed
			#SMS
			"E8":	cmd_offset+19,	#tone panning			
			"E9":	cmd_offset+20,	#noise panning	
			"B":	cmd_offset+21,	#FM+SG Chan setup	
			#FM+SCC
			"EE":	cmd_offset+19,	#envelope	
			"8":	cmd_offset+20,	#PSG ENV				
			# SCC
			"B0":	cmd_offset+21,	#SCC RESET		
			"B1":	cmd_offset+22,	#SCC Duty Cycle
			"B2":	cmd_offset+23,	#SCC Waveform cut
			"BB":	cmd_offset+24,	#SCC set waveform
			"BC":	cmd_offset+25,	#SCC set waveform +16		
					}

	
	
	if (n == 0 and i == 0 and v == 0 and c == 0 and p == 0):
		wait += 1
		return wait
	elif wait > 0:
		file.write(f"{_DB} ${wait_offset+wait:02x}\t\t\t;Wait {wait}\n")

	if n != 0:
		file.write(f"{_DB} ${n:02x}\t\t\t;Note {n}\n")
	if i != 0:
		tmp = song.ins[i].export_number
		file.write(f"{_DB} ${ins_offset+tmp:02x}\t\t\t;Instrument {i}\n")
	if v != 0:
		file.write(f"{_DB} ${vol_offset+v:02x}\t\t\t;Volume {v}\n")

	
	if c == 0 and p == 0:
		pass	
	else:
		# Add end command detection here (e.g. 100, 300, 400 etc)
		if p == 0 and (c <= 6 or c == 0xa):	# command end
			file.write(f"{_DB} ${cmd['END']:02x}\t\t\t;CMD End \n")	
		elif c == 0:					# arpeggio
			file.write(f"{_DB} ${cmd['0']:02x},${p:02x}\t\t\t;CMD Arpeggio\n")	
		elif c == 1:					# portamento up
			file.write(f"{_DB} ${cmd['1']:02x},${p:02x}\t\t\t;CMD Portamento up\n")	
		elif c == 2:					# portamento down
			file.write(f"{_DB} ${cmd['2']:02x},${p:02x}\t\t\t;CMD Portamento down\n")	
		elif c == 3:					# portamento tone
			file.write(f"{_DB} ${cmd['3']:02x},${p:02x}\t\t\t;CMD Portamento tone\n")	
		elif c == 4:					# vibrato
			file.write(f"{_DB} ${cmd['4']:02x},${p:02x}\t\t\t;CMD Vibrato\n")			
		elif c == 5:					# portamento tone + volume slide
			file.write(f"{_DB} ${cmd['5']:02x},${p:02x}\t\t\t;CMD Portamento tone + Volume slide\n")
		elif c == 6:					# vibrato + volume slide
			file.write(f"{_DB} ${cmd['6']:02x},${p:02x}\t\t\t;CMD Vibrato + Volume slide\n")
		elif c == 7:					# Unused
			file.write(f"\t\t\t;CMD 7 Unused\n")	
		elif c == 8:	
			if song.type == 'SMS': 	# unused
				file.write(f"\t\t\t;CMD 8 Unused\n")	
			else:					# envelope multiplier
				file.write(f"{_DB} ${cmd['8']:02x},${p:02x}\t\t\t;CMD Envelope multiplier\n")
		elif c == 9:					# Unused
			file.write(f"\t\t\t;CMD 9 Unused up\n")
		elif c == 0xa:				# volume slide
			file.write(f"{_DB} ${cmd['A']:02x},${p:02x}\t\t\t;CMD Volume slide up\n")			
		elif c == 0xb:				
			if song.type == "SCC":	# SCC commands
				file.write(f"\t\t\t;CMD SCC up\n")
			else:					# Channel setup
				file.write(f"{_DB} ${cmd['B']:02x},${p:02x}\t\t\t;CMD Channel setup\n")
		elif c == 0xc:		
			if song.type == "SCC":	# SCC commands
				file.write(f"\t\t\t;CMD SCC up\n")
			else:					# Drum
				file.write(f"{_DB} ${cmd['C']:02x},${p:02x}\t\t\t;CMD Drum ${p:02x}\n")
		elif c == 0x0d:				# End of pattern
			pass						
		elif c == 0x0e:		# Extended command
			x = p & 0xf0
			y = p & 0x0f
			if x == 0:				# Arpegio speed
				file.write(f"{_DB} ${cmd['E0']:02x},${y:02x}\t\t\t;CMD Arpegio speed\n")
			elif x == 0x10:			# Portamento fine up
				file.write(f"{_DB} ${cmd['E1']:02x},${y:02x}\t\t\t;CMD Portamento fine up\n")
			elif x == 0x20:			# Portamento fine down
				file.write(f"{_DB} ${cmd['E2']:02x},${y:02x}\t\t\t;CMD Portamento fine up\n")
			elif x == 0x50: 			# note link
				file.write(f"{_DB} ${cmd['E5']:02x}\t\t\t;CMD Note link\n")
			elif x == 0x60: 			# track detune
				file.write(f"{_DB} ${cmd['E6']:02x},${y:02x}\t\t\t;CMD Track detune\n")
			elif x == 0x80 and song.type == 'SMS':
				file.write(f"{_DB} ${cmd['E8']:02x},${y:02x}\t\t\t;CMD GG tone panning\n")
			elif x == 0x90 and song.type == 'SMS':
				file.write(f"{_DB} ${cmd['E9']:02x},${y:02x}\t\t\t;CMD GG noise panning\n")
			elif x == 0xc0:	
				file.write(f"{_DB} ${cmd['EC']:02x},${y:02x}\t\t\t;CMD Note cut delay\n")
			elif x == 0xd0:				# Note delay	
				file.write(f"{_DB} ${cmd['ED']:02x},${y:02x}\t\t\t;CMD Note delay\n")
			elif x == 0xe0 and song.type != 'SMS':
				file.write(f"{_DB} ${cmd['EE']:02x},${y:02x}\t\t\t;CMD Envelope shape\n")
			elif x == 0xf0:			# Trigger
				file.write(f"{_DB} ${cmd['EF']:02x},${y:02x}\t\t\t;CMD Trigger ${y:02x}\n")
			else:
				print(f"Unable to parse extended command $E{p:02x}")
		elif c == 0x0f:				# Speed
			file.write(f"{_DB} ${cmd['F']:02x},${p:02x}\t\t\t;CMD Speed\n")
		else:
			print(f"Unable to parse command ${c:02x}")		
	
	return 1			# Return wait = 1 to trigger on next row







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
	'''
	Process all the options here
	'''
	pass	





#==========================================
# Main
#==========================================
process_commandline_parameters()
song = Song()
load_tmu(infile,song)

print (f"Input file: {infile}")
print (f"Output file: {outfile}")

song.cleanup()
# Debug info
song.debug()


export_asm(outfile,song)







