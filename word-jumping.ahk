#Requires AutoHotkey v2.0
#SingleInstance Force

; Apply the following hotkeys only to Google Chrome and VS Code
#HotIf WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe Code.exe") || WinActive("ahk_exe Notion.exe") || WinActive("ahk_exe Raycast.exe") || WinActive("ahk_exe Antigravity.exe")

; Alt + Left/Right to jump words
!Left::Send "^{Left}"
!Right::Send "^{Right}"

; Alt + Shift + Left to highlight the previous word
!+Left::Send "^+{Left}"

; Alt + Shift + Right to highlight the next word
!+Right::Send "^+{Right}"

; Ctrl + Left to jump to start of line (Home key)
^Left::Send "{Home}"
^+Left::Send "+{Home}"

; Ctrl + Right to jump to end of line (End key)
^Right::Send "{End}"
^+Right::Send "+{End}"

; Reset the context-sensitivity for any hotkeys below this line
#HotIf