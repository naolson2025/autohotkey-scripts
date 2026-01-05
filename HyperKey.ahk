#Requires AutoHotkey v2.0

*CapsLock::
{
    ; 1. Hold Logic: Press Modifiers
    ; This sends Ctrl + Alt + Shift
    Send "{Blind}{Ctrl down}{Alt down}{Shift down}"
    
    KeyWait "CapsLock"
    
    ; 2. Release Modifiers
    Send "{Blind}{Ctrl up}{Alt up}{Shift up}"
    
    ; REMOVED: The "Tap Logic" (A_PriorKey) has been removed so tapping 
    ; CapsLock alone does nothing but trigger the Hyper key modifiers. 
}

; 3. New Logic: Toggle CapsLock with CapsLock + L
; Since CapsLock sends Ctrl+Alt+Shift, we define the hotkey as ^!+l (Ctrl+Alt+Shift+L)
^!+l::
{
    ; This checks the current state (T = Toggle) and sets it to the opposite (!)
    SetCapsLockState !GetKeyState("CapsLock", "T")
}