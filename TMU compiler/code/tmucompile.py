from song import Song
from instrument import Instrument
from drum import Drum
from pattern import Pattern
from track import Track
import sys

USAGE = f"Usage: {sys.argv[0]} [--options] infile [outfile]"

infile = ''
outfile = ''


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
			ins = Instrument()
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
		
		if song.type == "SCC":
			for x in range(0,32):
				wf = data[index:index+32]
				song.waveforms.append(wf)
				index +=32
				x+=1
		else:
			for x in range(0,16):
				wf = data[index:index+8]
				song.voices.append(wf)
				index +=8
				x+=1
			
											# Drum names
			for d in range(0,20):
				drum = Drum()
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
				# store tracks
				chan = 0 
				for chan in range(0,8):
					track = Track(t)
					row = 0
					for row in range(0,64):
						note = pat[(chan*4+row*32)+0]
						ins = pat[(chan*4+row*32)+1]
						tmp = int(pat[(chan*4+row*32)+2])
						par = pat[(chan*4+row*32)+3]

						vol = tmp >> 4
						cmd = tmp & 0x0f
						track.rows.append([note,ins,tmp,vol,cmd,par])
						row += 1
					chan += 1
					t += 1
					song.tracks.append(track)
		# DONE!	
		
def decompress_pattern(data):
	pat = ['0']*2048
	
	s=0
	d=0
	for val in range(0,len(data)):
		val = data[s]
		if val == 255:
			return pat
		if val != 0:					# write val	
			pat[d] = val
			#print (f"Value: {val}")
			d+=1			
		else:							# repeat 0
			r = data[s+1]
			#print (f"Repeat: {r}")
			d+= r
		s+=1

	return pat
			

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
		outfile = file_args[0]+'.asm'
		
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


# Debug info
print (f"Input file: {infile}")
print (f"Output file: {outfile}")
song.debug()





