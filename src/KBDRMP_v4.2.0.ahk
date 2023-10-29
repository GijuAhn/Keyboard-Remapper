#Requires AutoHotkey v2.0
#SingleInstance Force
ProcessSetPriority "High"
KeyHistory 0
ListLines False
SetKeyDelay 0
SetMouseDelay 0
SetWinDelay 0
SetControlDelay 0
SetCapsLockState "AlwaysOff"
SetScrollLockState "AlwaysOff"
SetNumLockState "AlwaysOff"


/*
[Author] Ahn Giju
[Update] 2023-10-30
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


; SpaceFN Layer (Navigation keys & Editing keys)
~Space & y::^Insert
~Space & u::PgUp
~Space & i::Up
~Space & o::PgDn
~Space & p::+Insert
~Space & [::`
~Space & ]::~
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

~Space & n::Space
~Space & m::AppsKey
~Space & ,::BackSpace
~Space & .::Delete
~Space & /::Escape


; RShiftFN Layer (Function keys & Media keys)
; blue & green (F1 ~ F12, Delete, Insert)
>+1::F1
>+2::F2
>+3::F3
>+4::F4
>+5::F5
>+6::F6
>+7::F7
>+8::F8
>+9::F9
>+0::F10
>+-::F11
>+=::F12
>+BackSpace::Delete
>+\::Insert
; red (PrtSc, Pause/Break, Locks)
>+x::PrintScreen
>+c::CapsLock
>+v::ScrollLock
>+b::Pause
>+n::NumLock

; blue & green (F1 ~ F12, Delete, Insert)
<+>+1::+F1
<+>+2::+F2
<+>+3::+F3
<+>+4::+F4
<+>+5::+F5
<+>+6::+F6
<+>+7::+F7
<+>+8::+F8
<+>+9::+F9
<+>+0::+F10
<+>+-::+F11
<+>+=::+F12
<+>+BackSpace::+Delete
<+>+\::+Insert
; red (PrtSc, Pause/Break, Locks)
<+>+x::+PrintScreen
<+>+c::+CapsLock
<+>+v::+ScrollLock
<+>+b::+Pause
<+>+n::+NumLock

>+z:: {
    SetCapsLockState "AlwaysOff"
    SetScrollLockState "AlwaysOff"
    SetNumLockState "AlwaysOff"
}

; white (Mouse actions)
>+o:: Send "{XButton1}"
>+p:: Send "{WheelUp}"
>+[:: Send "{XButton2}"
>+l:: Send "{LButton}"
>+;:: Send "{MButton}"
>+':: Send "{RButton}"
>+/:: Send "{WheelDown}"

^>+o:: Send "{Ctrl Down}{XButton1}{Ctrl Up}"
^>+p:: Send "{Ctrl Down}{WheelUp}{Ctrl Up}"
^>+[:: Send "{Ctrl Down}{XButton2}{Ctrl Up}"
^>+l:: Send "{Ctrl Down}{LButton}{Ctrl Up}"
^>+;:: Send "{Ctrl Down}{MButton}{Ctrl Up}"
^>+':: Send "{Ctrl Down}{RButton}{Ctrl Up}"
^>+/:: Send "{Ctrl Down}{WheelDown}{Ctrl Up}"

<+>+o:: Send "{Shift Down}{XButton1}{Shift Up}"
<+>+p:: Send "{Shift Down}{WheelUp}{Shift Up}"
<+>+[:: Send "{Shift Down}{XButton2}{Shift Up}"
<+>+l:: Send "{Shift Down}{LButton}{Shift Up}"
<+>+;:: Send "{Shift Down}{MButton}{Shift Up}"
<+>+':: Send "{Shift Down}{RButton}{Shift Up}"
<+>+/:: Send "{Shift Down}{WheelDown}{Shift Up}"

^<+>+o:: Send "{Ctrl Down}{Shift Down}{XButton1}{Shift Up}{Ctrl Up}"
^<+>+p:: Send "{Ctrl Down}{Shift Down}{WheelUp}{Shift Up}{Ctrl Up}"
^<+>+[:: Send "{Ctrl Down}{Shift Down}{XButton2}{Shift Up}{Ctrl Up}"
^<+>+l:: Send "{Ctrl Down}{Shift Down}{LButton}{Shift Up}{Ctrl Up}"
^<+>+;:: Send "{Ctrl Down}{Shift Down}{MButton}{Shift Up}{Ctrl Up}"
^<+>+':: Send "{Ctrl Down}{Shift Down}{RButton}{Shift Up}{Ctrl Up}"
^<+>+/:: Send "{Ctrl Down}{Shift Down}{WheelDown}{Shift Up}{Ctrl Up}"


; purple (Media control)
>+q:: Send "{Media_Stop}"
>+w:: Send "{Media_Prev}"
>+e:: Send "{Media_Play_Pause}"
>+r:: Send "{Media_Next}"

>+m:: Send "{Volume_Mute}"
>+,:: Send "{Volume_Down}"
>+.:: Send "{Volume_Up}"


; yellow (Task view, Virtual desktops)
>+s::#^Left
>+d::#^d
>+f::#^Right