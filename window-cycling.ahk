#Requires AutoHotkey v2.0
#SingleInstance Force

; === Settings ===
cycleTimeout := 600 ; milliseconds before cycle resets

; === State ===
leftState := 0
rightState := 0
lastLeftPress := 0
lastRightPress := 0

; === Left Cycle: Ctrl + Shift + Alt + Left ===
^+!Left::{
    global leftState, lastLeftPress, cycleTimeout

    now := A_TickCount
    if (now - lastLeftPress > cycleTimeout)
        leftState := 0

    leftState := Mod(leftState + 1, 3)
    lastLeftPress := now

    if (leftState = 1)
        Send "^+!{F5}"
    else if (leftState = 2)
        Send "^+!{F6}"
    else if (leftState = 0)
        Send "^+!{F7}"
}

; === Right Cycle: Ctrl + Shift + Alt + Right ===
^+!Right::{
    global rightState, lastRightPress, cycleTimeout

    now := A_TickCount
    if (now - lastRightPress > cycleTimeout)
        rightState := 0

    rightState := Mod(rightState + 1, 3)
    lastRightPress := now

    if (rightState = 1)
        Send "^+!{F12}"
    else if (rightState = 2)
        Send "^+!{F11}"
    else if (rightState = 0)
        Send "^+!{F10}"
}
