﻿#SingleInstance, force
#Include, layout.ahk
#Include, utils.ahk
#Include, gui.ahk

; WrongLang Script
^+F5::
clipboard := ""
Send, ^c
ClipWait
words = %clipboard%
Send, {BACKSPACE}

Try 
{
    For i, char in StrSplit(words)
    {
        If (RegExMatch(char, "[a-zA-Z0-9\-=\[\]\\;',./!@#$%^&*()_+{}|:""<>]"))
        {
            Send % ThaiKeyLayout[thLayoutPref][GetIndexOf(EnglishKeyLayout[enLayoutPref], char)]
        }
        Else If (RegExMatch(char, "[ก-๛!@#$%^&*()_+\-=|/\-]"))
        {
            Send % EnglishKeyLayout[enLayoutPref][GetIndexOf(ThaiKeyLayout[thLayoutPref], char)]
        }
        Else
        {
            Send % char
        }
    }
} 
Catch e 
{
    MsgBox % "Error: " + e.Message
}
return

; Check if program is working
^+BACKSPACE::
SoundBeep, 2000

MsgBox, Program is working fine.
MsgBox % "Current Thai Layout: " thLayoutPref
MsgBox % "Current English Layout: " enLayoutPref
return