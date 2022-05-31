Menu, Tray, Icon, ..\assets\icon.ico
Gui, Add, DDL, gSelected vThaiLayout Choose1 w300, Kedmanee|Pattachote|Manoonchai
Gui, Add, DDL, gSelected vEngLayout  Choose1 w300, Qwerty|Dvorak|Colemak
Gui, Show,, WrongLang Spark (Demo)

Selected:
	Gui, Submit, nohide
	If (ThaiLayout) 
	{
		thLayoutPref := ThaiLayout
	}
	If (EngLayout)
	{
		enLayoutPref := EngLayout
	}
Return