; =================================================================
; AutoHotkey v2 Script for Chrome Tab Navigation
;
; DESCRIPTION:
; This script remaps the keyboard shortcuts for switching tabs
; in Google Chrome.
;
; SHORTCUTS:
;   - Ctrl + Alt + Right Arrow: Switches to the next tab.
;   - Ctrl + Alt + Left Arrow:  Switches to the previous tab.
;
; This script only affects the Google Chrome window.
; =================================================================

; This directive makes the hotkeys below it context-sensitive.
; They will only work when a Google Chrome window is active.
#HotIf WinActive("ahk_exe chrome.exe")

    ; --- Hotkey for Next Tab ---
    ; Maps Ctrl+Alt+Right to send Ctrl+Tab (Chrome's default for next tab)
    ^!Right::Send "^{Tab}"

    ; --- Hotkey for Previous Tab ---
    ; Maps Ctrl+Alt+Left to send Ctrl+Shift+Tab (Chrome's default for previous tab)
    ^!Left::Send "^+{Tab}"

; This turns off the context-sensitive directive, so any hotkeys
; below this line would apply to all windows again.
#HotIf