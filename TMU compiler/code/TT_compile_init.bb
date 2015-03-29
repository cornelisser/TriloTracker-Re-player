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
Global mainWin = CreateWindow("[X] TriloTracker TMU compiler V0.2 ",0,0,mainWinW,mainWinH,Desktop())
Global mainPanel = CreatePanel(0,0,798,478,mainWin)
Global logging = CreateTextArea(0,80,788,300,mainPanel)
SetTextAreaFont logging,ttfont 
;---- Buttons
Global loadButton  = CreateButton("Load TMU",690,2,96,24,mainPanel,0)
Global saveButton  = CreateButton("Save TT",690,30,96,24,mainPanel,0)  
;---- Select boxes.
Global outputSelect = CreateComboBox (690,58,96,24,mainPanel)
AddGadgetItem outputSelect,"sjasm"
AddGadgetItem outputSelect,"asMSX"
SelectGadgetItem outputSelect,0


;--- Labels
CreateLabel "Output type:",620,62,60,16,mainPanel