
; Joseph Harriott - Tue 24 May 2022

; $vimfiles\CapsLockEsc.ahk

; move a Shortcut of this script into
;  C:\Users\troin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

; it's copied from  http://vim.wikia.com/wiki/Map_caps_lock_to_escape_in_Windows
; "The following AutoHotkey script will turn off CapsLock and generate Escape when Esc is pressed:"

Esc::
SetCapsLockState, off
Suspend On
Send, {ESC}
Suspend Off
return

