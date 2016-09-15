Global mainWinX = 0
Global mainWinY = 0
Global mainWinW = 800
Global mainWinH = 480

;/////////////////////////////////////////////////////
; Main GUI
;/////////////////////////////////////////////////////
; character set
Global xsmallfont=LoadFont("Verdana",10,False,False,False)
Global smallfont=LoadFont("Verdana",12,False,False,False)
Global largefont=LoadFont("Verdana",22,False,False,False)
Global ttfont = LoadFont ("Courier New",16,False,False,False)
;main window
Global mainWin = CreateWindow("[X] TriloTracker TMU compiler "+VERSION$,0,0,mainWinW,mainWinH,Desktop())
Global mainPanel = CreatePanel(0,0,798,478,mainWin)
Global logging = CreateTextArea(0,80,788,300,mainPanel)
SetTextAreaFont logging,ttfont 
;---- Buttons
Global loadButton  = CreateButton("Load TMU",590,2,96,24,mainPanel,0)
Global saveButton  = CreateButton("Save TT",590,30,96,24,mainPanel,0)  
Global sfxButton  = CreateButton("Save SFX",688,30,96,24,mainPanel,0) 
Global includeWave = CreateButton("waveforms",500,20,90,16,mainPanel,2)
SetButtonState includeWave,1
Global includeIns  = CreateButton("instruments",500,38,90,16,mainPanel,2)
SetButtonState includeIns,1
;---- Select boxes.
Global outputSelect = CreateComboBox (590,58,96,24,mainPanel)
AddGadgetItem outputSelect,"sjasm"
AddGadgetItem outputSelect,"asMSX"
SelectGadgetItem outputSelect,0



;--- Labels
CreateLabel "Output type:",500,62,60,16,mainPanel
CreateLabel "Include:",500,2,60,16,mainPanel