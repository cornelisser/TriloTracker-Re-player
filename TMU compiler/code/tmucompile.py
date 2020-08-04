from song import Song
from instrument import Instrument
from drum import Drum
from pattern import Pattern
from track import Track
from voice import Voice
from waveform import Waveform

import argparse
import sys

USAGE = f"Usage: {sys.argv[0]} [--options] infile [outfile]"

infile = ''
outfile = ''
template_filename = None

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
						row += 1
					chan += 1
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
		file.write(f"{_DB} {_CHILD}customvoice_start\t\t\t; Start of the custom voices data.\n")
		file.write(f"{_DB} {_CHILD}drummacro_start\t\t\t; Start of the drum macro data.\n")		
		file.write(f"{_DB} {_CHILD}instrument_start\t\t\t; Start of the instrument data.\n")		

		file.write("\n; [ Song order pointer list ]\n")	
		step = 0
		for val in song.order_list:
			if step == song.restart:								# Check if position is restart position
				file.write(f"{_CHILD}restart:\n")
			step+=1
			pat = song.get_pattern(val)
			file.write(f"{_DB}")
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
				file.write(f"{_DW} {_CHILD}instrument_{instrument.number:02}\n")
		file.write("\n")	

		for instrument in song.ins:
			if instrument.used == True:
				file.write(f"{_CHILD}instrument_{instrument.number:02}:\n")
				if song.type == "SCC":
					waveform = song.get_waveform(instrument.waveform)
					file.write(f"{_DB} ${waveform.export_number:02x}\t\t\; Waveform {waveform.number}\n")
				elif song.type == "FM" or song.type == "SMS":
					voice = song.get_voice(instrument.waveform)
					file.write(f"{_DB} ${voice.export_number:02x}\t\t; FM Voice {voice.number}\n")
			
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


def export_trackrow(file,row,wait):
	n = row[0]		# note
	i = row[1]		# instrument
	v = row[2]		# volume
	c = row[3]		# command
	p = row[4]		# parameters
	
	if n == 0 and i == 0 and v == 0 and c == 0 and p == 0:
		wait += 1
		return wait
	elif wait > 0:
		file.write(f"{_DB} ${192+wait:02x}\t\t\t;Wait {wait}\n")

	if n != 0:
		file.write(f"{_DB} ${n:02x}\t\t\t;Note {n}\n")
	if v != 0:
		file.write(f"{_DB} ${v:02x}\t\t\t;Volume {v}\n")
		
	if i != 0:
		tmp = song.ins[i].export_number
		file.write(f"{_DB} ${tmp:02x}\t\t\t;Instrument {i}\n")
	
	if c == 0 and p == 0:
		pass	
	else:
		if c == 0:					# arpeggio
			file.write(f"\t\t\t;CMD Arpeggio\n")	
		elif c == 1:					# portamento up
			file.write(f"\t\t\t;CMD Portamento up\n")
		elif c == 2:					# portamento down
			file.write(f"\t\t\t;CMD Portamento up\n")
		elif c == 3:					# portamento tone
			file.write(f"\t\t\t;CMD Portamento tone\n")		
		elif c == 4:					# vibrato
			file.write(f"\t\t\t;CMD Vibrato\n")	
		elif c == 5:					# portamento tone + volume slide
			file.write(f"\t\t\t;CMD Portamento tone + Volume slide\n")	
		elif c == 6:					# vibrato + volume slide
			file.write(f"\t\t\t;CMD Vibrato + Volume slide\n")	
		elif c == 7:					# Unused
			file.write(f"\t\t\t;CMD Unused\n")	
		elif c == 8:	
			if song.type == 'SMS': 	# unused
				file.write(f"\t\t\t;CMD Unused\n")	
			else:					# envelope multiplier
				file.write(f"\t\t\t;CMD Envelope multiplier\n")	
		elif c == 9:					# Unused
			file.write(f"\t\t\t;CMD Unused up\n")
		elif c == 0xa:				# volume slide
			file.write(f"\t\t\t;CMD Volume slide up\n")			
		elif c == 0xb:				
			if song.type == "SCC":	# SCC commands
				file.write(f"\t\t\t;CMD SCC up\n")
			else:					# Channel setup
				file.write(f"\t\t\t;CMD Channel setup\n")	
		elif c == 0xc:		
			if song.type == "SCC":	# SCC commands
				file.write(f"\t\t\t;CMD SCC up\n")
			else:					# Drum
				file.write(f"\t\t\t;CMD Drum\n")	
		elif c == 0x0d:				# End of pattern
			pass						
		elif c == 0x0e:				# Extended command
			file.write(f"\t\t\t;CMD Entended\n")
		elif c == 0x0f:				# Speed
			file.write(f"\t\t\t;CMD Speed\n")			

	return 0







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
	global template_filename

	parser = argparse.ArgumentParser()
	parser.add_argument( "infile", help="Input .TMU file to convert")
	parser.add_argument( "outfile", nargs='?', default=None, help="Optional output file (otherwise assumes <infile>.ASM)")
	parser.add_argument( "-t", "--template", help="Optional Jinja2 template file for formatting output.")
	args = parser.parse_args()

	# If no outfile specified, use the input filename as a base.
	if args.outfile is None:
		args.outfile = args.infile.split('.')[0]+'.asm'

	# Assign globals from args.
	infile = args.infile
	outfile = args.outfile
	template_filename = args.template


#==========================================
# Main
#==========================================
process_commandline_parameters()
song = Song()
load_tmu(infile,song)

song.cleanup()

if template_filename is None:
	# Use the explicit export.
	export_asm(outfile,song)
else:
	# Only require Jinja to be installed if the user specified a template.
	from jinja2 import Environment, PackageLoader, TemplateNotFound

	# Load the Jinja environment, specifying directory and module.
	jinja_env = Environment(
		loader=PackageLoader('tmucompile', '.')	
		, trim_blocks=True
		, lstrip_blocks=True
		)
	try:
		template = jinja_env.get_template(template_filename)
		render = template.render(song=song)

		with open(outfile,"w+") as file:
			file.write(render)
			file.close()
	except TemplateNotFound:
		print(f"\tERROR:  Unable to find Jinja2 template '{template_filename}'.")
		sys.exit()

# Debug info
print (f"Input file: {infile}")
print (f"Output file: {outfile}")
song.debug()



