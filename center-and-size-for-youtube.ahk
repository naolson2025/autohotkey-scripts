^+!5::  ; Ctrl + Shift + Alt + 5
{
    win := WinGetID("A")
    if !win
        return

    ; Get window position to determine which monitor it's on
    WinGetPos(&wx, &wy, &ww, &wh, win)

    ; Find the monitor that contains the window's center point
    cx := wx + ww // 2
    cy := wy + wh // 2

    MonitorCount := MonitorGetCount()
    Loop MonitorCount
    {
        MonitorGet(A_Index, &left, &top, &right, &bottom)
        if (cx >= left && cx < right && cy >= top && cy < bottom)
        {
            MonitorGetWorkArea(A_Index, &monLeft, &monTop, &monRight, &monBottom)
            break
        }
    }

    monWidth  := monRight - monLeft
    monHeight := monBottom - monTop

    ; Desired size
    winWidth  := 1925
    winHeight := 1085

    ; Calculate centered position on that monitor
    x := monLeft + (monWidth  - winWidth)  // 2
    y := monTop  + (monHeight - winHeight) // 2

    WinRestore(win)
    WinMove(x, y, winWidth, winHeight, win)
}
