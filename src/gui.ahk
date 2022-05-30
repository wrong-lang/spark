Menu, Tray, Icon, ..\assets\icon.ico
Gui, Add, DDL, gSelected vThaiLayout Choose1 w500, Kedmanee|Pattachote|Manoonchai
Gui, Add, DDL, gSelected vEngLayout  Choose1 w500, Qwerty|Dvorak|Colemak
Gui, Show,, WrongLang Spark (Demo)

Selected:
Gui, Submit, nohide
if (ThaiLayout)
	thLayoutPref := ThaiLayout
if (EngLayout)
	enLayoutPref := EngLayout
return

OnMessage(0x53, "WM_HELP")
MsgBox, 0x4040, WrongLang Spark (Demo), The application is working in the background.

GuiClose:
ExitApp