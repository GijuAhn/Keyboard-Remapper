#Requires AutoHotkey v2.0
#SingleInstance Force
ProcessSetPriority "High"
KeyHistory 0
ListLines 0
SetKeyDelay 0
SetMouseDelay 0

SetCapsLockState "AlwaysOff"
SetScrollLockState "AlwaysOff"
SetNumLockState "AlwaysOff"

/*
[Author] Ahn Giju
[Update] 2023-12-24
#: WIN
^: CTRL
!: ALT
+: SHIFT
*: Wildcard
~: Pass through (no-suppress)
$: Hook
*/


; Key Remapping
CapsLock::Control


; Toggle suspending this script (Halt)
#SuspendExempt
>+h:: Suspend
#SuspendExempt False


; SpaceFN Layer (Function keys, Navigation keys)
~Space & 1::F1
~Space & 2::F2
~Space & 3::F3
~Space & 4::F4
~Space & 5::F5
~Space & 6::F6
~Space & 7::F7
~Space & 8::F8
~Space & 9::F9
~Space & 0::F10
~Space & -::F11
~Space & =::F12

~Space & y::^Insert
~Space & u::PgUp
~Space & i::Up
~Space & o::PgDn
~Space & p::+Insert
~Space & [::#^Left
~Space & ]::#^Right
~Space & \::Insert

~Space & h::Home
~Space & j::Left
~Space & k::Down
~Space & l::Right
~Space & `;::End
~Space & ':: Send "{Ctrl Down}{Left}{Shift Down}{Right}{Shift Up}{Ctrl Up}"
#HotIf GetKeyState("LShift", "P")
~Space & ':: Send "{Home}{Shift Down}{End}{Shift Up}"
#HotIf

~Space & b::`
#HotIf GetKeyState("LShift", "P")
~Space & b::~
#HotIf
~Space & n::Space
~Space & m::AppsKey
~Space & ,::BackSpace
~Space & .::Delete
~Space & /::Escape


; RShiftFN Layer (Special keys, Media keys)
>+BackSpace::Delete
>+\::Insert
<+>+BackSpace::+Delete
<+>+\::+Insert

>+1:: Send "{Media_Prev}"
>+2:: Send "{Media_Play_Pause}"
>+3:: Send "{Media_Next}"
>+4:: Send "{Media_Stop}"

>+0:: Send "{Volume_Mute}"
>+-:: Send "{Volume_Down}"
>+=:: Send "{Volume_Up}"

>+u::CapsLock
>+i::NumLock
>+o:: {
    SetCapsLockState "AlwaysOff"
    SetScrollLockState "AlwaysOff"
    SetNumLockState "AlwaysOff"
}
>+p::PrintScreen
>+[::ScrollLock
>+]::Pause

>+l:: Send "{LButton}"
>+;:: Send "{MButton}"
>+':: Send "{RButton}"

^>+l:: Send "{Ctrl Down}{LButton}{Ctrl Up}"
^>+;:: Send "{Ctrl Down}{MButton}{Ctrl Up}"
^>+':: Send "{Ctrl Down}{RButton}{Ctrl Up}"

<+>+l:: Send "{Shift Down}{LButton}{Shift Up}"
<+>+;:: Send "{Shift Down}{MButton}{Shift Up}"
<+>+':: Send "{Shift Down}{RButton}{Shift Up}"

^<+>+l:: Send "{Ctrl Down}{Shift Down}{LButton}{Shift Up}{Ctrl Up}"
^<+>+;:: Send "{Ctrl Down}{Shift Down}{MButton}{Shift Up}{Ctrl Up}"
^<+>+':: Send "{Ctrl Down}{Shift Down}{RButton}{Shift Up}{Ctrl Up}"