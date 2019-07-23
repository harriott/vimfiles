; Joseph Harriott - http://momentary.eu/
; I keep this in my vimfiles because I implemented it for Vim.

; AutoHotkey: http://www.autohotkey.com/docs/FAQ.htm#Startup

; Into effect automatically every time I start my PC:
; shortcut to the script in the Startup folder, one of these:
; C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup
; C:\Users\jnbh\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

; http://vim.wikia.com/wiki/Map_caps_lock_to_escape_in_Windows
; The following AutoHotkey script will turn off CapsLock and generate Escape when Esc is pressed:

Esc::
SetCapsLockState, off
Suspend On
Send, {ESC}
Suspend Off
return
