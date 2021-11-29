;~ #Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv 
SetWorkingDir %A_ScriptDir%
#SingleInstance Force

;~ v1.0.0
;~ TODO
;~ spraw by to kurwa działało idioto
;~ a window asking you how many pontiacs you have
;~ make this script reliable and maybe faster idk

;~ EDIT THIS------------------
Pontiacs := 10				;your pontiac count

SelectPorsche() {				;your 'path' to porsche category
Send, {BackSpace}
sleep, 150
Send, {Up 5}{Left}{Enter}
}

;~ -----------------------------


^L::
SetKeyDelay, 150
Send {Left 2}{Up}{Right}
Loop, 2 {
	SetKeyDelay, 150
	Send, {Enter}  ;firstSetup
	Sleep 1000
	SelectPorsche()
	SetKeyDelay 550
	Sleep 1000
		if (Pontiacs & 1) {
			send, {Left 2}{Down}
		}
		else {
			Send, {Left 2}
		}
	SetKeyDelay 500
	Send, {Enter 2}
	Pontiacs := Pontiacs -1
	Sleep, 9500
	Send, {Esc}
	Sleep 1500
	Send, {Left}{Enter}
	Sleep 500
	SetKeyDelay 200	
	Send, {Right 2}{Down}{Enter}
	Sleep, 1000
	SetKeyDelay 800	
	Send {Enter}
	Sleep, 2150
	Send, {Right}{Enter}{Right}{Enter}{Up}{Enter}{Right}{Enter}{Up}{Enter}{Esc}
	Sleep 800
	Send, {Esc}
	Sleep 800
	Send, {Right}
}
Loop, %Pontiacs% {	
	SetKeyDelay, 150
	Send, {Enter}
	Sleep 1000
	SelectPorsche()
	SetKeyDelay 550
	if (Pontiacs & 1) {
			Sleep 500
			send, {Left 2}
		}
		else {
			Sleep 500
			Send, {Left 2}{Down}
		}
	SetKeyDelay 500
	Send, {Enter}{Down 4}{Enter 2}
	Sleep 800
	Send, {Enter}
	sleep 300
	Send, {Enter}
	Pontiacs := Pontiacs -1
	Sleep, 9500
	Send, {Esc}
	Sleep 1500
	Send, {Left}{Enter}
	Sleep 500
	SetKeyDelay 200	
	Send, {Right 2}{Down}{Enter}
	Sleep, 1000
	SetKeyDelay 800	
	Send {Enter}
	Sleep, 2150
	Send, {Right}{Enter}{Right}{Enter}{Up}{Enter}{Right}{Enter}{Up}{Enter}{Esc}
	Sleep 500
	Send, {Esc}
	Sleep 500
	Send, {Right}
}
MsgBox, 64, End, All of the wheelspins have been bought!
return

F12::
MsgBox, 64, , Script has been closed
ExitApp
return