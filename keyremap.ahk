#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState Off
state:=false
Esc::
 state:= not state
 if (state) {
	 SetCapsLockState On
 } else {
	 SetCapsLockState Off
 }
 Return

*CapsLock::
	Send {LControl down}
	Return
*CapsLock up::
	Send {LControl Up}
	if (A_PriorKey=="CapsLock"){
		if (A_TimeSincePriorHotkey < 1000)
			Suspend On
			Send, {Esc}
			Suspend Off
	}
	Return
; The next part is only relevant to users of Virtual Box, which interacts weirdly with AutoHotkey. The code below resets ctrl  and caps lock when a Virtual Box window is unfocused.
InVB()
{
	return WinActive("ahk_exe VirtualBox.exe")
}
in_vb:=InVB()
was_in_vb:=in_vb

Gui +LastFound 
hWnd := WinExist()
DllCall( "RegisterShellHookWindow", UInt,Hwnd )
MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
OnMessage( MsgNum, "ShellMessage" )

ShellMessage( wParam,lParam )
{
 global in_vb
 global was_in_vb
 was_in_vb:=in_vb
 in_vb:=InVB()
 if (was_in_vb and not in_vb)
 {
	Suspend On
	Send {LControl Up}
	SetCapsLockState Off
	Suspend Off
 }
}