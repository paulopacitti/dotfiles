; lock screen
Pause::DllCall("LockWorkStation")
; screenshot
PrintScreen::Send, {LWin Down}{Shift Down}S{LWin Up}{Shift Up}