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

/* [Deprecated]
    {alt}+{=} : 전각/반각 전환 기능(시스템 할당), F12로 동작하지 않음.
*/

/*
[Author] Ahn Giju
[Update] 2023-12-17
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
!1::F1
!2::F2
!3::F3
!4::F4
!5::F5
!6::F6
!7::F7
!8::F8
!9::F9
!0::F10
!-::F11
!=::F12

!y::^Insert
!u::PgUp
!i::Up
!o::PgDn
!p::+Insert
![::#^Left
!]::#^Right
!\::Insert

!h::Home
!j::Left
!k::Down
!l::Right
!;::End
!':: Send "{Ctrl Down}{Left}{Shift Down}{Right}{Shift Up}{Ctrl Up}"
#HotIf GetKeyState("LShift", "P")
!':: Send "{Home}{Shift Down}{End}{Shift Up}"
#HotIf

!b::`
#HotIf GetKeyState("LShift", "P")
!b::~
#HotIf
!n::Space
!m::AppsKey
!,::BackSpace
!.::Delete
!/::Escape


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