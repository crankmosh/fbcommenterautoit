#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
WinWaitActive("Dominica Nieto - Google Chrome")
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
