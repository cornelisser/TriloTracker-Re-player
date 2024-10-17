# TT Re-Player

Contents
1 The package
2 Re-player functions.
2.1 'replay_init'
2.2 'replay_loadsong'
2.3 'replay_play'
2.4 'replay_route'
2.5 'replay_pause'
2.6 'replay_transpose'
2.7 'replay_fade_out'
2.8 'replay_set_SCC_balance' and 'replay_set_PSG_balance'
3 Example
4 Restrictions
5 Versions
5.1 Re-player using internal SCC (Konami SCC mapper).
5.2 Re-player using external SCC.
5.3 Re-player using under BASIC.
5.4 Re-player using under C
6 PSG only re-player
7 Optimizations
7.1 Waveforms
7.2 Instruments
7.3 Disabling channels
7.4 Fast SCC register update FGPA and SCC-I chips
7.5 Others
8 Trouble shooting
8.1 The volume for PSG and/or SCC is very low
8.2 The SCC sounds distorted
8.3 SCC morphing does not work
9 TMU Compiler.
9.1 features:
The package
The re-player package consists out of several files:

## ttreplay.asm (main code)
ttreplayDAT.asm (data to be placed in ROM or RAM)
voltable_combined.bin (used by ttreplayDAT.asm)
ttreplayRAM.asm (variables to be placed in RAM)
This is all you need to play your compiled TT songs. Except for compiled songs ;)

## Re-player functions.
### 'replay_init'
Initializes the re-players defaults (like the main volumes of the PSG and SCC). This function is needed once before using the re-player. Example:

call replay_init
### 'replay_loadsong'
Initializes (loads) the music data for the re-player. Re-player will commence playback once initialization is finished. Example:

ld   hl,song2
call replay_loadsong
### 'replay_play'
This function is the main function which will decode music data and process effects and instrument macro's. Execute this function every interrupt. Not timing critical, can be placed any where in the code. !important: Be sure that the music data (including instruments and waveforms) is available. Example:

call replay_play
### 'replay_route'
This function is responsible for updating the data to the music chips. This routine is time critical place this as close a possible to the start of the interrupt. !important: Be sure that the waveform data is available. Example:

call replay_route
### 'replay_pause'
This function will pause (and silence through the SCC and PSG mixer) the music. Same function can be used to un-pause the music and continue playback. Example:

call replay_pause
### 'replay_transpose'
This function will alter the note table base with provided number of semitones. Example:

ld   de,-1
call replay_transpose
### 'replay_fade_out'
This function will fade out the music being played. Once the music is silenced the music will be paused. It is possible to un-pause from this point and continue. Example:

ld   a,8
call replay_fadeout
### 'replay_set_SCC_balance' and 'replay_set_PSG_balance'
These functions enable to set the volume balance between the SCC and PSG independent. The function has a parameter (0-7). The lower the parameter the lower the volume output for the music chip. Example:

ld   a,6
call replay_set_PSG_balance

## Example
Below is an example on the use of the re-player in your assembly code:

; include this in your start-up code. replay_init only has to be called once. Never again.
call replay_init             ; this initializes the re-player
; this code will load a new song.
ld   hl,song1                ; set address of music data start in HL
call replay_loadsong         ; loads the song and starts playback
; place this code in your isr (interrupts service routine) (after VDP updates)
call replay_route            ; copy data to sound chip registers
call replay_play             ; calculate new data for replay_route.
## Restrictions
Effect 9xy - Macro offset is not supported.
Music data is not relocatable after compilation.

## Versions
Re-player using internal SCC (Konami SCC mapper).
...

Re-player using external SCC.
...

Re-player using under BASIC.
Not available yet. Want to help me create one? Please contact me.



Re-player using under C
Not available yet. Want to help me create one? Please contact me.

PSG only re-player
## Optimizations
### Waveforms
### Instruments
### Disabling channels
### Fast SCC register update FGPA and SCC-I chips
### Others
## Trouble shooting
### The volume for PSG and/or SCC is very low
Check if you initialized the re-player using replay_init. This will set the SCC and PSG volume balance to maximum for both chips. On some MSX configurations the PSG is much louder than the SCC. Try setting the PSG balance lower using the 'replay_set_PSG_balance' function.

### The SCC sounds distorted
Be sure to have the waveform data in active/accessible memory when invoking the 'replay_play' routine.

### SCC morphing does not work
Be sure to have the waveform data in active/accessible memory when invoking the 'replay_play' routine.

## TMU Compiler.
features:
- sjasm or asMSX output
