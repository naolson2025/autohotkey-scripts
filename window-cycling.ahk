#Requires AutoHotkey v2.0
#SingleInstance Force

; Initialize cycle states
leftCycleState := 0
rightCycleState := 0
upCycleState := 0

; Left Cycle: F5 -> F6 -> F7
; Triggered by Hyper + Left Arrow (Ctrl + Shift + Alt + Left)
^!+Left::
{
    global leftCycleState
    leftCycleState := Mod(leftCycleState, 3) + 1 ; Cycles 1 -> 2 -> 3 -> 1
    
    if (leftCycleState = 1)
        Send "^!+{F7}"
    else if (leftCycleState = 2)
        Send "^!+{F6}"
    else
        Send "^!+{F5}"
}

; Right Cycle: F12 -> F11 -> F10
; Triggered by Hyper + Right Arrow (Ctrl + Shift + Alt + Right)
^!+Right::
{
    global rightCycleState
    rightCycleState := Mod(rightCycleState, 3) + 1 ; Cycles 1 -> 2 -> 3 -> 1
    
    if (rightCycleState = 1)
        Send "^!+{F10}"
    else if (rightCycleState = 2)
        Send "^!+{F11}"
    else
        Send "^!+{F12}"
}

; Up Cycle: F1 -> F2 -> F3
; Triggered by Hyper + Up Arrow (Ctrl + Shift + Alt + Up)
^!+Up::
{
    global upCycleState
    upCycleState := Mod(upCycleState, 3) + 1 ; Cycles 1 -> 2 -> 3 -> 1
    
    if (upCycleState = 1)
        Send "^!+{F1}"
    else if (upCycleState = 2)
        Send "^!+{F2}"
    else
        Send "^!+{F3}"
}
