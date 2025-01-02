from song import Song
from instrument import Instrument
from drum import Drum
from pattern import Pattern
from track import Track
from voice import Voice
from waveform import Waveform

#from replayer import Replayer

import sys

USAGE = f"TMUCompile v0.11\nUsage: {sys.argv[0]} [--options] infile [outfile]"

infile = ''
outfile = ''

_DB = "\tdb"
_DW = "\tdw"
_CHILD = "."


OPLL_notes = [	0,0,
			0xad,0x00,0xb7,0x00,0xc2,0x00,0xce,0x00,0xda,0x00,0xe7,0x00,	# Oct 1
			0xf5,0x00,0x03,0x01,0x13,0x01,0x23,0x01,0x34,0x01,0x47,0x01,
			0xad,0x02,0xb7,0x02,0xc2,0x02,0xce,0x02,0xda,0x02,0xe7,0x02,	# Oct 2
			0xf5,0x02,0x03,0x03,0x13,0x03,0x23,0x03,0x34,0x03,0x47,0x03,
			0xad,0x04,0xb7,0x04,0xc2,0x04,0xce,0x04,0xda,0x04,0xe7,0x04,	# Oct 3
			0xf5,0x04,0x03,0x05,0x13,0x05,0x23,0x05,0x34,0x05,0x47,0x05,
			0xad,0x06,0xb7,0x06,0xc3,0x06,0xce,0x06,0xda,0x06,0xe7,0x06,	# Oct 4
			0xf5,0x06,0x03,0x07,0x13,0x07,0x23,0x07,0x34,0x07,0x47,0x07,
			0xad,0x08,0xb7,0x08,0xc2,0x08,0xce,0x08,0xda,0x08,0xe7,0x08,	# Oct 5
			0xf5,0x08,0x03,0x09,0x13,0x09,0x23,0x09,0x34,0x09,0x47,0x09,
			0xad,0x0a,0xb7,0x0a,0xc2,0x0a,0xce,0x0a,0xda,0x0a,0xe7,0x0a,	# Oct 6
			0xf5,0x0a,0x03,0x0b,0x13,0x0b,0x23,0x0b,0x34,0x0b,0x47,0x0b,
			0xad,0x0c,0xb7,0x0c,0xc2,0x0c,0xce,0x0c,0xda,0x0c,0xe7,0x0c,	# Oct 7
			0xf5,0x0c,0x03,0x0d,0x13,0x0d,0x23,0x0d,0x34,0x0d,0x47,0x0d,
			0xad,0x0e,0xb7,0x0e,0xc2,0x0e,0xce,0x0e,0xda,0x0e,0xe7,0x0e,	# Oct 8
			0xf5,0x0e,0x03,0x0f,0x13,0x0f,0x23,0x0f,0x34,0x0f,0x47,0x0f]


OPLL_notes_konami = [	0,0,
			0xad,0x00,0xb7,0x00,0xc2,0x00,0xce,0x00,0xda,0x00,0xe7,0x00,	# Oct 1
			0xf5,0x00,0x03,0x01,0x13,0x01,0x23,0x01,0x34,0x01,0x47,0x01,
			0xad,0x02,0xb7,0x02,0xc2,0x02,0xce,0x02,0xda,0x02,0xe7,0x02,	# Oct 2
			0xf5,0x02,0x03,0x03,0x13,0x03,0x23,0x03,0x34,0x03,0x47,0x03,
			0xad,0x04,0xb7,0x04,0xc2,0x04,0xce,0x04,0xda,0x04,0xe7,0x04,	# Oct 3
			0xf5,0x04,0x03,0x05,0x13,0x05,0x23,0x05,0x34,0x05,0x47,0x05,
			0xad,0x06,0xb7,0x06,0xc2,0x06,0xce,0x06,0xda,0x06,0xe7,0x06,	# Oct 4
			0xf5,0x06,0x03,0x07,0x13,0x07,0x23,0x07,0x34,0x07,0x47,0x07,
			0xad,0x08,0xb7,0x08,0xc2,0x08,0xce,0x08,0xda,0x08,0xe7,0x08,	# Oct 5
			0xf5,0x08,0x03,0x09,0x13,0x09,0x23,0x09,0x34,0x09,0x47,0x09,
			0xad,0x0a,0xb7,0x0a,0xc2,0x0a,0xce,0x0a,0xda,0x0a,0xe7,0x0a,	# Oct 6
			0xf5,0x0a,0x03,0x0b,0x13,0x0b,0x23,0x0b,0x34,0x0b,0x47,0x0b,
			0xad,0x0c,0xb7,0x0c,0xc2,0x0c,0xce,0x0c,0xda,0x0c,0xe7,0x0c,	# Oct 7
			0xf5,0x0c,0x03,0x0d,0x13,0x0d,0x23,0x0d,0x34,0x0d,0x47,0x0d,
			0xad,0x0e,0xb7,0x0e,0xc2,0x0e,0xce,0x0e,0xda,0x0e,0xe7,0x0e,	# Oct 8
			0xf5,0x0e,0x03,0x0f,0x13,0x0f,0x23,0x0f,0x34,0x0f,0x47,0x0f]

OPLL_notes_modern = [	0,0,
			0xab,0x00,0xb5,0x00,0xc0,0x00,0xcb,0x00,0xd8,0x00,0xe4,0x00,	# Oct 1
			0xf2,0x00,0x00,0x01,0x10,0x01,0x20,0x01,0x31,0x01,0x43,0x01,
			0xab,0x02,0xb5,0x02,0xc0,0x02,0xcb,0x02,0xd8,0x02,0xe4,0x02,	# Oct 2
			0xf2,0x02,0x00,0x03,0x10,0x03,0x20,0x03,0x31,0x03,0x43,0x03,
			0xab,0x04,0xb5,0x04,0xc0,0x04,0xcb,0x04,0xd8,0x04,0xe4,0x04,	# Oct 3
			0xf2,0x04,0x00,0x05,0x10,0x05,0x20,0x05,0x31,0x05,0x43,0x05,
			0xab,0x06,0xb5,0x06,0xc0,0x06,0xcb,0x06,0xd8,0x06,0xe4,0x06,	# Oct 4
			0xf2,0x06,0x00,0x07,0x10,0x07,0x20,0x07,0x31,0x07,0x43,0x07,
			0xab,0x08,0xb5,0x08,0xc0,0x08,0xcb,0x08,0xd8,0x08,0xe4,0x08,	# Oct 5
			0xf2,0x08,0x00,0x09,0x10,0x09,0x20,0x09,0x31,0x09,0x43,0x09,
			0xab,0x0a,0xb5,0x0a,0xc0,0x0a,0xcb,0x0a,0xd8,0x0a,0xe4,0x0a,	# Oct 6
			0xf2,0x0a,0x00,0x0b,0x10,0x0b,0x20,0x0b,0x31,0x0b,0x43,0x0b,
			0xab,0x0c,0xb5,0x0c,0xc0,0x0c,0xcb,0x0c,0xd8,0x0c,0xe4,0x0c,	# Oct 7
			0xf2,0x0c,0x00,0x0d,0x10,0x0d,0x20,0x0d,0x31,0x0d,0x43,0x0d,
			0xab,0x0e,0xb5,0x0e,0xc0,0x0e,0xcb,0x0e,0xd8,0x0e,0xe4,0x0e,	# Oct 8
			0xf2,0x0e,0x00,0x0f,0x10,0x0f,0x20,0x0f,0x31,0x0f,0x43,0x0f]

OPLL_notes_earth = [	0,0,
			0xab,0x00,0xb2,0x00,0xbc,0x00,0xc8,0x00,0xd4,0x00,0xe0,0x00,	# Oct 1
			0xee,0x00,0xfc,0x00,0x0b,0x01,0x1b,0x01,0x2b,0x01,0x3d,0x01,
			0xab,0x02,0xb2,0x02,0xbc,0x02,0xc8,0x02,0xd4,0x02,0xe0,0x02,	# Oct 2
			0xee,0x02,0xfc,0x02,0x0b,0x03,0x1b,0x03,0x2b,0x03,0x3d,0x03,
			0xab,0x04,0xb2,0x04,0xbc,0x04,0xc8,0x04,0xd4,0x04,0xe0,0x04,	# Oct 3
			0xee,0x04,0xfc,0x04,0x0b,0x05,0x1b,0x05,0x2b,0x05,0x3d,0x05,
			0xab,0x06,0xb2,0x06,0xbc,0x06,0xc8,0x06,0xd4,0x06,0xe0,0x06,	# Oct 4
			0xee,0x06,0xfc,0x06,0x0b,0x07,0x1b,0x07,0x2b,0x07,0x3d,0x07,
			0xab,0x08,0xb2,0x08,0xbc,0x08,0xc8,0x08,0xd4,0x08,0xe0,0x08,	# Oct 5
			0xee,0x08,0xfc,0x08,0x0b,0x09,0x1b,0x09,0x2b,0x09,0x3d,0x09,
			0xab,0x0a,0xb2,0x0a,0xbc,0x0a,0xc8,0x0a,0xd4,0x0a,0xe0,0x0a,	# Oct 6
			0xee,0x0a,0xfc,0x0a,0x0b,0x0b,0x1b,0x0b,0x2b,0x0b,0x3d,0x0b,
			0xab,0x0c,0xb2,0x0c,0xbc,0x0c,0xc8,0x0c,0xd4,0x0c,0xe0,0x0c,	# Oct 7
			0xee,0x0c,0xfc,0x0c,0x0b,0x0d,0x1b,0x0d,0x2b,0x0d,0x3d,0x0d,
			0xab,0x0e,0xb2,0x0e,0xbc,0x0e,0xc8,0x0e,0xd4,0x0e,0xe0,0x0e,	# Oct 8
			0xee,0x0e,0xfc,0x0e,0x0b,0x0f,0x1b,0x0f,0x2b,0x0f,0x3d,0x0f]

OPLL_notes_a448 = [	0,0,
			0xae,0x00,0xb8,0x00,0xc3,0x00,0xcf,0x00,0xdb,0x00,0xe9,0x00,	# Oct 1
			0xf6,0x00,0x05,0x01,0x15,0x01,0x25,0x01,0x37,0x01,0x49,0x01,
			0xae,0x02,0xb8,0x02,0xc3,0x02,0xcf,0x02,0xdb,0x02,0xe9,0x02,	# Oct 2
			0xf6,0x02,0x05,0x03,0x15,0x03,0x25,0x03,0x37,0x03,0x49,0x03,
			0xae,0x04,0xb8,0x04,0xc3,0x04,0xcf,0x04,0xdb,0x04,0xe9,0x04,	# Oct 3
			0xf6,0x04,0x05,0x05,0x15,0x05,0x25,0x05,0x37,0x05,0x49,0x05,
			0xae,0x06,0xb8,0x06,0xc3,0x06,0xcf,0x06,0xdb,0x06,0xe9,0x06,	# Oct 4
			0xf6,0x06,0x05,0x07,0x15,0x07,0x25,0x07,0x37,0x07,0x49,0x07,
			0xae,0x08,0xb8,0x08,0xc3,0x08,0xcf,0x08,0xdb,0x08,0xe9,0x08,	# Oct 5
			0xf6,0x08,0x05,0x09,0x15,0x09,0x25,0x09,0x37,0x09,0x49,0x09,
			0xae,0x0a,0xb8,0x0a,0xc3,0x0a,0xcf,0x0a,0xdb,0x0a,0xe9,0x0a,	# Oct 6
			0xf6,0x0a,0x05,0x0b,0x15,0x0b,0x25,0x0b,0x37,0x0b,0x49,0x0b,
			0xae,0x0c,0xb8,0x0c,0xc3,0x0c,0xcf,0x0c,0xdb,0x0c,0xe9,0x0c,	# Oct 7
			0xf6,0x0c,0x05,0x0d,0x15,0x0d,0x25,0x0d,0x37,0x0d,0x49,0x0d,
			0xae,0x0e,0xb8,0x0e,0xc3,0x0e,0xcf,0x0e,0xdb,0x0e,0xe9,0x0e,	# Oct 8
			0xf6,0x0e,0x05,0x0f,0x15,0x0f,0x25,0x0f,0x37,0x0f,0x49,0x0f]


def get_note(note,song):
      match song.period:
            case 0:
                  return OPLL_notes_modern[note]
            case 1:
                  return OPLL_notes_konami[note]   
            case 2:
                  return OPLL_notes_a448[note]
            case 3:
                  return OPLL_notes_earth[note]  
            case default:
                  return OPLL_notes_modern[note] 
      return 

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
		song.set_version(val & 0x0f)			# version
		song.set_type((val >> 4) & 0x07)		# type
		song.set_chansetup(val & 0x80)		# channel set up
		
		#--- extra bytes 
		if (song.version >= 11):
			tmp = data[index]
			song.set_period(data[index+1])
			index += tmp + 1

		str = data[index:index+32].replace(b'\x00', b' ')			# name
		index += 32		
		song.name = str.decode('utf-8')

		
		str = data[index:index+32].replace(b'\x00', b' ')			# by
		index += 32		
		song.by = str.decode('utf-8')

		val = data[index]
		index += 1	
		song.set_speed(val)				#speed
		
		val = data[index]
		index += 1	
		song.restart = val				#order restart	
		
		val = data[index]
		index += 1	
		song.set_length(val)				#order length	

		lst = data[index:index+song.length]
		index += song.length
		song.order_list = lst				# order list
		
		for i in range(0,31):				# set 16 instrument names.
			ins = Instrument(i+1)
			str = data[index:index+16].replace(b'\x00', b' ')
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
				str = data[index:index+16].replace(b'\x00', b' ')
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
		if val == 0 and data[s+1] == 0: # 255:
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
		file.write(f"; By:   {song.by}\n")
		file.write(f"; Period table: {song.get_period()}\n\n")		
	
		file.write("; [ Song start data ]\n")
		file.write(f"{_DB} ${song.speed:02x}\t\t\t\t\t; Initial song speed.\n")
		if song.type == 'SCC':
			file.write(f"{_DW} {_CHILD}waveform_start\t\t\t; Start of the waveform data.\n")
		else:
			file.write(f"{_DB} ${song.chansetup:02x}\t\t\t\t\t; Channel setup.\n")
			file.write(f"{_DW} {_CHILD}customvoice_start-8\t\t\t; Start of the custom voices data.\n")
			file.write(f"{_DW} {_CHILD}drummacro_start\t\t\t; Start of the drum macro data.\n")		

		file.write(f"{_DW} {_CHILD}instrument_start\t\t\t; Start of the instrument data.\n")		

		file.write("\n; [ Song order pointer list ]\n")	
		step = 0
		for val in song.order_list:
			if step == song.restart:								# Check if position is restart position
				file.write(f"{_CHILD}restart:\n")
			step+=1
			pat = song.get_pattern(val)
			## Check below is for cases where the last pattern is looped but empty 
			## TODO See if there is an easy solution (track with 64 empty steps) for this issue.
			if pat is None:
				sys.exit('The TMU file has empty patterns in the replay order. Unable to compile empty patterns.')	
			file.write(f"{_DW}")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[0]].export_number:03},")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[1]].export_number:03},")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[2]].export_number:03},")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[3]].export_number:03},")			
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[4]].export_number:03},")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[5]].export_number:03},")			
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[6]].export_number:03},")
			file.write(f" {_CHILD}track_{song.tracks[pat.tracks[7]].export_number:03}\t; Step:{step-1:03} Pattern:{pat.number:03}\n")		
		if (song.restart == 255):
			file.write(f"{_DW} 0x0000, 0x0000\t\t\t\t; End of sequence delimiter + end of song.\n\n")
		else:
			file.write(f"{_DW} 0x0000, {_CHILD}restart\t\t\t\t; End of sequence delimiter + restart address.\n\n")

		if song.type == 'SCC':
			file.write("\n; [ SCC Waveforms ]\n")		
			file.write(f"{_CHILD}waveform_start:\n")	
			for waveform in song.waveforms:
				if waveform.used == True:
					file.write(f"{_DB}")
					for x in range(0,31):
						file.write(f" ${waveform.data[x]:02x},")
					file.write(f" ${waveform.data[31]:02x}\t\t\t\t; Waveform:{waveform.number:0}\n")	
		else:
			file.write("; [ Custom FM voices ]\n")		
			file.write(f"{_CHILD}customvoice_start:\n")
			for voice in song.voices:
				if voice.number > 15:
					if voice.used == True:
						file.write(f"{_DB} ${voice.data[0]:02x},${voice.data[1]:02x},${voice.data[2]:02x},${voice.data[3]:02x},${voice.data[4]:02x},${voice.data[5]:02x},${voice.data[6]:02x},${voice.data[7]:02x} \t\t; Custom voice:{voice.number:0}\n")				
				
			file.write("\n; [ FM Drum macros]\n")		
			file.write(f"{_CHILD}drummacro_start:\n")		
			for drum in song.drums:
				if drum.used == True:
					file.write(f"{_DW} {_CHILD}drum_{drum.export_number:02}\n")	
			
			for drum in song.drums:
				if drum.used == True:
					#file.write(f"\n{_CHILD}drum_{drum.export_number:02}:\n")
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
					file.write(f"{_DB} ${waveform.export_number:02x}\t\t\t\t\t\t; Waveform {waveform.export_number//8}\n")
				elif song.type == "FM" or song.type == "SMS":
					voice = song.get_voice(instrument.voice)
					if instrument.voice == 0:
						file.write(f"{_DB} $0F\t\t\t\t\t; FM Hardware Voice was not set\n")

					elif instrument.voice < 16:
						file.write(f"{_DB} ${instrument.voice << 4:02x}\t\t\t\t\t; FM Hardware Voice {voice.number}\n")
					else:
						# set the address offset of the voice data (= export+1 * 4) 
						file.write(f"{_DB} $00,${voice.export_number+1 << 2:02x}\t\t\t\t\t; FM Software Voice {voice.export_number}\n")
				export_ins(instrument, song, file)
		
		file.write("\n; [ Song track data ]\n")							
		for track in song.tracks:
			if track.used:
				file.write(f"{_CHILD}track_{track.number:03}:\n")
				export_track(file, track)
		file.write("\n")			
		file.close()	



def export_ins(ins, song, file):
	vol_prev = 255
	noise_prev = 255
	loop_bytes = 0

	print("*", end = '')

	for r in range(0,ins.length):
		row = ins.rows[r]
      

		bit0 = 1
		bit1 = 2
		bit2 = 4
		bit3 = 8
		bit4 = 16
		bit5 = 32
		bit6 = 64
		bit7 = 128
								# SCC
		byte1 = row[0]			# [N |Nd |Nd |  Noise 5bit   ] 
		byte2 = row[1]			# [T |Td |Vd |Vd |Volume 4bit]
		byte3 = row[2]			# [      Tone low 8 bit      ]
		byte4 = row[3]			# [           |Tone high 4bit]

								# TTSMS
								# [N |          | Voice 4bit ] if Vl = 1
								# [N |Noise 3bit|NoiVol 4bit ]
								# [T |Td|Vd |Vd |Volume 4bit ]
								# [      Tone low 8 bit      ]
								# [ Vl |    Tone high 7 bit  ]

								# TTFM
								# [N |          | Voice 4bit ] if Vl = 1
								# [N |Nd |Nd |  Noise 5bit   ]
								# [T |Td|Vd |Vd |Volume 4bit ]
								# [      Tone low 8 bit      ]
								# [ Vl |    Tone high 7 bit  ]



		# Restart position
		if r == ins.restart:			# set the end of instrument bit
			#file.write(f"{_CHILD}rst_i{ins.export_number:02}:\t\t\t\t\t\t\t; Loop address\n")
			file.write(f"\t\t\t\t\t\t\t\t; --- Macro loop\n")
			vol_prev = 255            # reset previous values as this is a loop point.
			noise_prev = 255
			loop_bytes = 2


		# Mixer
		mixer = 0
		out = ''
		if (byte2 & bit7):      # Tone bit
			mixer += 16  
			out = out+'T'
		if (byte1 & bit7):      # Noise bit
			mixer += 128
			out = out+'N'
		if mixer !=0:			# value 8 is most of the times. Only set differences to this.
			loop_bytes += 2
			file.write(f"{_DB} $02,${mixer:02x}\t\t\t\t\t\t; Mixer ({out})\n")
#		else:
#			file.write(f";{_DB} $02,${mixer:02x}\t\t\t\t\t\t; Mixer\n")

		# Tone 
		result_toneL = byte3
		result_toneH = byte4 & 0x0f

		if ((byte2 & bit7)!= 0x00):                  # tone enabled?

			if (result_toneL + result_toneH > 0):     # tone update?
				if (byte2 & bit6):
					# min
					tmp = 0x10000 - ((result_toneH*256)+result_toneL)
					result_toneL = tmp & 0xff
					result_toneH = (tmp >> 8)
					loop_bytes += 3
					file.write(f"{_DB} $04,${result_toneL:02x},${result_toneH:02x}\t\t\t\t\t; Tone sub\n")
				else:		
					loop_bytes += 3	
					file.write(f"{_DB} $04,${result_toneL:02x},${result_toneH:02x}\t\t\t\t\t; Tone add\n")


		# Noise
		# SMS noise
		if	song.type == 'SMS':
			result_noise = byte1 & 0x70 >> 4
			result_noise_vol = byte1 & 0x0f
			if	(byte4 & bit7) != 0x00:
				loop_bytes += 2
				result_voice = byte1 & 0x0f
				file.write(f"{_DB} $16,${result_voice:02x}\t\t\t\t\t\t; FM Hardware Voice\n")
			elif ((byte1 & bit7) != 0x00):
				loop_bytes += 3
				file.write(f"{_DB} $14,${result_noise:02x},${result_noise_vol:02x}\t\t\t\t\t; Noise + Noise volume\n")	
			
		else:
    	# SCC and FM noise		
			result_noise = byte1 & 0x1f
			if ((byte1 & bit7)!= 0x00):            # Noise enabled?
				if ((byte1 & (bit6+bit5)) == 0x00) and (result_noise != noise_prev):
					# base noise
					noise_prev = result_noise
					loop_bytes += 2
					file.write(f"{_DB} $0E,${result_noise:02x}\t\t\t\t\t\t; Noise _\n")
				elif ((byte1 & (bit6+bit5)) == 0x40 and result_noise >0):
					# add noise
					noise_prev = 255
					loop_bytes += 2
					file.write(f"{_DB} $12,${result_noise:02x}\t\t\t\t\t\t; Noise +\n")	
				elif ((byte1 & (bit6+bit5)) == 0x60 and result_noise > 0):
					# min noise
					noise_prev = 255
					loop_bytes += 2
					result_noise = (255-result_noise)+1	
					file.write(f"{_DB} $12,${result_noise:02x}\t\t\t\t\t\t; Noise -\n")	

			# Waveform
			elif ((byte1 & (bit6+bit5)) == 0x20) and song.type == 'SCC':
				# waveform update
				loop_bytes += 2
				result_waveform = song.waveforms[result_noise].export_number
				file.write(f"{_DB} $16,${result_waveform:02x}\t\t\t\t\t\t; Waveform +\n")

			# Voice link
			elif ((byte4 & (bit7)) != 0) and song.type != 'SCC':
				loop_bytes += 2
				result_voice = (byte1 << 4) & 0xf0
				file.write(f"{_DB} $16,${result_voice:02x}\t\t\t\t\t\t; FM Hardware Voice\n")


		# Volume
		result_vol = byte2 & 0x0f

		if ((byte2 & (bit5+bit4) == 0x00)):		      # Base volume?
			#base volume		
			if ins.restart != r and r > 0: 
				if result_vol != vol_prev:
					vol_prev = result_vol
					loop_bytes += 2
					file.write(f"{_DB} $08,${result_vol:02x}\t\t\t\t\t\t; Volume _\n")
				else:
					loop_bytes += 1
					file.write(f"{_DB} $00\t\t\t\t\t\t\t; Volume same\n")				
			else:
				loop_bytes += 2
				file.write(f"{_DB} $08,${result_vol:02x}\t\t\t\t\t\t; Volume _\n")
		elif (byte2 & (bit5+bit4)) == 0x20:
			if (result_vol > 0):
				# add volume
				vol_prev = 255
				loop_bytes += 2
				file.write(f"{_DB} $0a,${result_vol:02x}\t\t\t\t\t\t; Volume +\n")
			else:
				loop_bytes += 1
				file.write(f"{_DB} $00\t\t\t\t\t\t\t; Volume same\n")
		elif (byte2 & (bit5+bit4)) == 0x30:
			if (result_vol > 0):
				#min volume
				vol_prev = 255
				loop_bytes += 2
				file.write(f"{_DB} $0c,${result_vol:02x}\t\t\t\t\t\t; Volume -\n")
			else:
				loop_bytes += 1
				file.write(f"{_DB} $00\t\t\t\t\t\t\t; Volume same\n")
		elif (byte2 & (bit5+bit4)) == 0x10:
			if	song.type == 'SMS':
				file.write("ERRRRROOOORRRRRRRRRR\n")
			else:
				#envelope
				vol_prev = 16
				if result_vol > 0:
					loop_bytes += 2
					file.write(f"{_DB} $1c,${result_vol:02x}\t\t\t\t\t\t; Envelope shape\n")
				else:
					loop_bytes += 1
					file.write(f"{_DB} $1a\t\t\t\t\t\t; Envelope\n")

		#file.write(f"\t\t\t\t\t\t\t\t\t; {loop_bytes -2} \n")

		# Instrument end
		if r == ins.length -1:			# set the end of instrument bit
			if (ins.restart == 255):
				file.write(f"{_DB} $06\t\t\t\t\t\t; End\n\n")	
			else:
				loop = 0xff - (loop_bytes -2)
				file.write(f"{_DB} $18,${loop:02x}\t\t\t\t\t\t; Loop (-{loop_bytes})\n\n")
#		else:
#			loop_bytes += 1
#			file.write(f"{_DB} $00\t\t\t\t\t\t\t; End of row.\n")

	return 


#--------------------------------------------
#
# DRUM
#
#--------------------------------------------
def export_drum(file,drum):
	file.write(f"\n{_CHILD}drum_{drum.export_number:02}:\t\t\t\t\t\t; Drum {drum.number}. {drum.name}\n")				

	print("*", end = '')

	for r in range(0,drum.length):
		row = drum.rows[r]
		p = row[0] #| 0x20		# percussion
		bt = row[1]
		bv = 0x0f - (row[2] & 0x0f)	# bdrum
		st = row[3]
		sv = 0xf0 - (row[4] & 0xf0) 	# snare
		hv = 0x0f - (row[4] & 0x0f)	# hihat
		ct = row[5]
		cv = 0xf0 - (row[6] & 0xf0) 	# cymbal
		tv = 0x0f - (row[6] & 0x0f)	# tom

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
	
		if (bv != 0x0f):
			# bdrum volume
			file.write(f"{_DB} $04, ${bv:02x}\t\t\t\t\t\t\t; volume Base drum\n")	
		if (sv != 0xf0 and hv == 0x0f):
			# HiHat volume
			file.write(f"{_DB} $08, ${(sv):02x}\t\t\t\t\t\t\t; volume HiHat\n")				
		if (sv == 0xf0 and hv != 0x0f):
			# Snare volume
			file.write(f"{_DB} $06, ${(hv):02x}\t\t\t\t\t\t\t; volume Snare\n")	
		if (sv != 0xf0 and hv != 0x0f):
			# Snare + Hihat volume
			file.write(f"{_DB} $0a, ${(sv&0xf0)|(hv&0x0f):02x}\t\t\t\t\t\t\t; volume Snare + HiHat\n")	
		if (cv != 0xf0 and tv == 0x0f):
			# Tom volume 
			file.write(f"{_DB} $0c, ${(cv):02x}\t\t\t\t\t\t\t; volume TomTom\n")	
		if (cv == 0xf0 and tv != 0x0f):
			# Cymbal volume
			file.write(f"{_DB} $0e, ${tv:02x}\t\t\t\t\t\t\t; volume Cymbal\n")	
		if (cv != 0xf0 and tv != 0x0f):
			# Cymbal + Tom volume
			file.write(f"{_DB} $10, ${(sv&0xf0)|(hv&0xf0):02x}\t\t\t\t\t\t\t; volume Cymbal + Tom \n")	

		if (bt != 0):
			if (bt & 0x80 == 0):
				#note
				tmp_note = (bt & 0x7f)*2
				file.write(f"{_DB} $12, ${get_note(tmp_note,song):02x}, ${get_note(tmp_note+1,song):02x}\t\t\t\t\t\t; note Bdrum\n")					
			elif (bt &0x3f != 0):
				if (bt & 0x40 == 0):
					#add
					file.write(f"{_DB} $14, ${(bt & 0x3f):02x}, $00\t\t\t\t\t\t; tone add pos Bdrum \n")
				else:
					#add - neg
					file.write(f"{_DB} $14, ${256-(bt & 0x3f):02x}, $ff\t\t\t\t\t\t; tone add neg Bdrum \n")										
		if (st != 0):
			if (st & 0x80 == 0):
				#note
				tmp_note = (st & 0x7f)*2
				file.write(f"{_DB} $16, ${get_note(tmp_note,song):02x}, ${get_note(tmp_note+1,song):02x}\t\t\t\t\t\t; note Snare \n")	
			elif (st &0x3f != 0):
				if (st & 0x40 == 0):
					#add
					file.write(f"{_DB} $18, ${(st & 0x3f):02x}, $00\t\t\t\t\t\t; tone add pos Snare \n")
				else:
					#add - neg
					file.write(f"{_DB} $18, ${256-(st & 0x3f):02x}, $ff\t\t\t\t\t\t; tone add neg Snare \n")						
		if (ct != 0):
			if (ct & 0x80 == 0):
				#note
				tmp_note = (ct & 0x7f)*2
				file.write(f"{_DB} $1a, ${get_note(tmp_note,song):02x}, ${get_note(tmp_note+1,song):02x}\t\t\t\t\t\t; note Cymbal \n")					
			elif (ct &0x3f != 0):
				if (ct & 0x40 == 0):
					#add
					file.write(f"{_DB} $1c, ${(ct & 0x3f):02x}, $00\t\t\t\t\t\t; tone add pos Cymbal \n")
				else:
					#add - neg
					file.write(f"{_DB} $1c, ${256-(ct & 0x3f):02x}, $ff\t\t\t\t\t\t; tone add neg Cymbal \n")		
		#if (p != 0):	
			# percussion
		file.write(f"{_DB} $1e, ${p:02x}\t\t\t\t\t\t\t; Percussion\n")	
		# End of row to End of Drum macro?
		if (r == drum.length-1):
			file.write(f"{_DB} $02\t\t\t\t\t\t\t; STOP - End of Drum macro\n")		
#		else:
#			file.write(f"{_DB} $00\t\t\t\t\t\t\t; END  - End of row\n")
	return	




def export_track(file,track):
    	
	print("*", end = '')

	wait = -1
	wait_prev = 255
	
	vol_offset = 98		
	ins_offset = 113+1	# increased to add volume 0
	cmd_offset = 144+1
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
			"END":	cmd_offset+11,	# end all lasting effects
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
			#AY3
			"9":	cmd_offset+20,	#envelope High	
			"8":	cmd_offset+21,	#envelope Low				
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
			# FM
			"EB":	cmd_offset+22,	#FM Brightness		

		}


	last_value = 	0	# last value written in data. Used for checking delay repeat exceptions
	curr_value =      0					
	for row in track.rows:


		n = row[0]		# note
		i = row[1]		# instrument
		v = row[2]		# volume
		c = row[3]		# command
		p = row[4]		# parameters
		
		#--- Replace V0 with volume 0
		if n == 99:
			if v == 0:
				v = 255
			n = 0

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
			if v == 255:
				file.write(f"{_DB} ${vol_offset+0:02x}\t\t\t;Volume (special) 0\n")
			else:
				file.write(f"{_DB} ${vol_offset+v:02x}\t\t\t;Volume {v}\n")
		if i != 0:
			tmp = song.ins[i-1].export_number
#			print(f"{song.ins[i-1].number} + {song.ins[i-1].export_number}")
			file.write(f"{_DB} ${ins_offset+tmp:02x}\t\t\t;Instrument {tmp}\n")
	
		if c == 0 and p == 0:
			pass	
		else:
			# Add end command detection here (e.g. 100, 300, 400 etc)
			if p == 0 and (c <= 7 or c == 0xa):	
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
				if par < 0x90:
					file.write(f"{_DB} ${cmd['4']:02x},${par:02x}\t\t\t;CMD Vibrato\n")	
				else:
					file.write(f"{_DB} ${cmd['4']:02x},${par:02x}\t\t\t;CMD Vibrato Extended\n")			
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
					file.write(f"{_DB} ${cmd['8']:02x},${p:02x}\t\t\t;CMD Envelope multiplier low\n")
			elif c == 9:	
				if song.type != 'SMS':
					# envelope multiplier
					# parameter: as in tracker
					file.write(f"{_DB} ${cmd['9']:02x},${p:02x}\t\t\t;CMD Envelope multiplier high\n")					
				# Unused
				else:
					file.write(f"\t\t\t;CMD 9 Not supported [Macro Offset][WARNING]\n")
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
				#else:					
					# Channel setup
				#	file.write(f"{_DB} ${cmd['B']:02x},${p:02x}\t\t\t;CMD Channel setup\n")
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
				elif p <= 0x13:					
					# Drum
					# parameter: as in tracker
					drum = song.drums[p-1]
					file.write(f"{_DB} ${cmd['C']:02x},${drum.export_number:02x}\t\t\t;CMD Drum ${p:02x}\n")
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
					elif song.type == 'FM':
						# GLobal transpose
						if (y > 8):
							y = 8-y
						else:
							y =y
						file.write(f"{_DB} ${cmd_offset+23:02x}\n{_DW} ${y*2:04x}\t\t\t;CMD Global transpose\n")
					elif song.type == 'SCC':
						# GLobal transpose
						if (y > 8):
							y = 8-y
						else:
							y =y
						file.write(f"{_DB} ${cmd_offset+30:02x}\n{_DW} ${y*2:04x}\t\t\t;CMD Global transpose\n")
					else:	

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
				elif x == 0xb0:	
					# Note cut delay
					# Parameter: xy = tic value +1
					if y > 7:
						y = 7-y	
					file.write(f"{_DB} ${cmd['EB']:02x},${y:02x}\t\t\t;CMD Brightness\n")

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
					# Unused
					file.write(f"\t\t\t;CMD EE Not supported [--][WARNING]\n")
					print(f"CMD EE Not supported [--][WARNING]")	
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
print ('')

song.cleanup()
# Debug info
song.debug()


export_asm(outfile,song)

#replayer.logframes(song)









