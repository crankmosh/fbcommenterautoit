; This is an AUTO-IT script
; This scripts posts some lame comments on Facebook when your browser window becomes active
; it tries to randomize the comment and timeouts between posts to not get banned
; you may have to change stuff to get it to work right for you such as the mouse position
;
; The FB post should be the main focus on your browser window
;
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
WinWaitActive("Facebook - Google Chrome")
Local $i = 0
while $i <= 400
;	MsgBox($MB_SYSTEMMODAL,"Message Counter","Current: " & $i,10)
	MouseMove(4852,1316)
	MouseClick("left")
	$xx = Random(1,600,1)
	if  Random(0,1,1) Then
		Send("Hah can we get to " & $xx & " comments?")
	Else
		Send("Random comment number " & $xx)
	EndIf
	Sleep(1000)
	Send("{ENTER}")
	Sleep(Random(200,20000))
	$i=$i + 1
WEnd
