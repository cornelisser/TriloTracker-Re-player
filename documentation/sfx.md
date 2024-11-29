TT sfx player
=====
The TriloTracker sound effects player (ttsfx player) is based on the initial work of Shiru for ayFX. And the additional adaptations of Z80st and ARTRAG for use with the PT3 music player. The ttsfx player uses ayFX sound effects for playback of both the PSG and SCC. A for now no other tools are available for creating sound effects for ttsfx player.

**Contents**
- [TT sfx player](#tt-sfx-player)
- [The package](#the-package)
- [SFX-player functions.](#sfx-player-functions)
	- ['ttsfx\_init'](#ttsfx_init)
	- ['ttsfx\_psg\_start'](#ttsfx_psg_start)
	- ['ttsfx\_scc\_start'](#ttsfx_scc_start)
	- ['ttsfx\_play'](#ttsfx_play)
	- ['ttsfx\_scc\_balance'](#ttsfx_scc_balance)
	- ['ttsfx\_psg\_balance'](#ttsfx_psg_balance)
- [Restrictions](#restrictions)
- [Versions](#versions)
	- [SFX player using under BASIC.](#sfx-player-using-under-basic)
	- [SFX player using under C](#sfx-player-using-under-c)
- [Optimizations](#optimizations)
- [Trouble shooting](#trouble-shooting)
		- [The SFX volume for PSG and/or SCC is very low](#the-sfx-volume-for-psg-andor-scc-is-very-low)


# The package
The ttsfx player package consists out of 2 files:

ttsfxplay.asm (main code)
ttsfxplay_RAM.asm (variables to be placed in RAM)
This is all you need to play sfx in combination with the TT replayer. It's depending on the TT replayer and will not function stand alone. For usage of the ttsfx player the music replayer (ttreplay.asm) needs a modification. The following code needs to be enabled:

	;--- This for the ttsfxplayer!!!
	ld	a,(sfx_SCC_WAVE)
	cp	255
	jp	z,.nosfx		; if a == 255 there is no waveform

	ld	de,0x9800
	call	_write_SFX_wave	
	jp	.skip	
	
	.nosfx:	


# SFX-player functions.
## 'ttsfx_init'
Initializes the defaults (the main volumes of the PSG and SCC). This function is needed once before using the SFX player.

Example:

	call ttsfx_init
## 'ttsfx_psg_start'
Starts playback of a sound effect file at a given priority. The priority (0-127) is checked with any current effect being played back. Priority 0 is the highest priority.

Example:

	ld	bc,$0210		; Play effect 2 with priority 16
	call	ttsfx_psg_start


## 'ttsfx_scc_start'
Starts playback of a sound effect file at a given priority. The priority (0-127) is checked with any current effect being played back. Priority 0 is the highest priority.

Example:

	ld	bc,$0100		; Play effect 1 with priority 0
	call	ttsfx_scc_start


## 'ttsfx_play'
This is the main routine that handles the playback of the sound effects. It should ALWAYS be triggered after the "replay_play" function of the music replayer. The ttsfx_play function overwrites the PSG and SCC register value to be written.

Example:

	call	ttsfx_play


## 'ttsfx_scc_balance' 
## 'ttsfx_psg_balance'
These functions enable to set the SFX volume balance between the SCC and PSG independent. The function has a parameter (0-F). The lower the parameter the lower the volume output for the music chip. Example:

	ld   a,6
	call SFX_set_PSG_balance

# Restrictions
# Versions
...

## SFX player using under BASIC.
Not available yet. Want to help me create one? Please contact me.



## SFX player using under C
Not available yet. Want to help me create one? Please contact me.



# Optimizations
.....

# Trouble shooting
### The SFX volume for PSG and/or SCC is very low
Check if you initialized the sfx layer using SFX_INIT. This will set the SCC and PSG volume balance to maximum for both chips. On some MSX configurations the PSG is much louder than the SCC. Try setting the PSG balance lower using the 'SFX_set_PSG_balance' function.