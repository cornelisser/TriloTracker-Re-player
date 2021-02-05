#===================================================================
#
#	Replayer_Chan Class
#	
#===================================================================
class Replayer_Chan:
	
	def __init__(self,num):
		self.num			= num
		self.Instrument		= 0
		self.Command		= 0
		self.MacroPointer	= 0
		self.MacroStep		= 0
		self.Note			= 0
		self.Volume			= 0
		self.Voice			= 0
		self.B_TRGNOT		= 0		# 0 note trigger
		self.B_ACTNOT		= 0		# 1 note active
		self.B_TRGENV		= 0		# 2 envelope
		self.B_TRGCMD		= 0		# 3 cmd active
		self.B_KEYON		= 0		# 4 key trigger
		self.B_SUST			= 0		# 5 sustain
		self.B_TRGVOI		= 0		# 6 custom voice 
		self.B_CHIP			= "AY3"		# 7 PSG/FM/SCC	
		self.ToneAdd		= 0
		self.VolumeAdd		= 0
		self.Noise			= 0
		self.cmd_ToneSlideAdd = 0
		self.cmd_VolumeAdd	= 0
		self.cmd_ToneAdd	= 0
		self.cmd_detune		= 0
		self.cmd_0			= 0
		self.cmd_1			= 0
		self.cmd_2			= 0
		self.cmd_3			= 0
		self.cmd_4_depth	= 0
		self.cmd_4_step		= 0
		self.cmd_NoteAdd	= 0
		self.cmd_9			= 0
		self.cmd_A			= 0
		self.cmd_B			= 0
		self.cmd_E			= 0
		self.Timer			= 0 
		self.Step			= 0
		
		self.ToneRegister	= 0
		self.VolumeRegister = 0
		