Gui, Add, DDL, gSelected vThaiLayout Choose1 w300, Kedmanee|Pattachote|Manoonchai
Gui, Add, DDL, gSelected vEngLayout  Choose1 w300, Qwerty|Dvorak|Colemak
Gui, Add, Link,, Reference: <a href="https://spark.wrong-lang.click/">Spark Documentation</a>
Gui, Show,, WrongLang Spark (v1.0.0)

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