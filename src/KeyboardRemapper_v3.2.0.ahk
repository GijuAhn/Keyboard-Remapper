#Requires AutoHotkey v2.0
#SingleInstance Force
ProcessSetPriority "High"
KeyHistory 0
ListLines False
SetKeyDelay 0
SetMouseDelay 0
SetWinDelay 0
SetControlDelay 0

/*
<Ultimate Keyboard Remapper>
[Author] Ahn Giju
[Update] 2023.05.07
[App Version] v3.2.0
[AHK Version] v2.0.2
[Inspired by] LEOPOLD 660 model, Thinkpad trackpoint, Pok3r 60% layout, HHKB
#: Win
!: Alt
^: Ctrl
+: Shift
*/

; Toggle suspending this script
#SuspendExempt
!b:: Suspend
#SuspendExempt False

; Keys swap
CapsLock::Control

; Shortcuts
!':: Send "{Ctrl down}{Left}{Shift down}{Right}{Shift up}{Ctrl up}"
!+':: Send "{Home}{Shift down}{End}{Shift up}"

; ALT action
!h::Home
!;::End
!i::Up
!k::Down
!j::Left
!l::Right
!u::PgUp
!o::PgDn
!y::^Insert
!p::+Insert
!m::AppsKey
!,::Backspace
!.::Delete
!/::Escape

; ALT + RSHIFT action
!>+h::!Home
!>+;::!End
!>+i::!Up
!>+k::!Down
!>+j::!Left
!>+l::!Right
!>+u::!PgUp
!>+o::!PgDn
!>+m::!AppsKey
!>+,::!Backspace
!>+.::!Delete
!>+/::!Escape

; ALT + LSHIFT + RSHIFT action
!<+>+h::!+Home
!<+>+;::!+End
!<+>+i::!+Up
!<+>+k::!+Down
!<+>+j::!+Left
!<+>+l::!+Right
!<+>+u::!+PgUp
!<+>+o::!+PgDn
!<+>+m::!+AppsKey
!<+>+,::!+Backspace
!<+>+.::!+Delete
!<+>+/::!+Escape

; RSHIFT action
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
>+\::Insert

; LSHIFT + RSHIFT action
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
<+>+\::+Insert

; \(BackSlash) action
\::\
SetCapsLockState "AlwaysOff"
SetScrollLockState "AlwaysOff"
SetNumLockState "AlwaysOff"
\ & 0:: Send "{LButton}"
\ & -:: Send "{MButton}"
\ & =:: Send "{RButton}"
\ & c::
{
    SetCapsLockState !GetKeyState("CapsLock", "T")
}
\ & s::
{
    SetScrollLockState !GetKeyState("ScrollLock", "T")
}
\ & l::
{
    SetCapsLockState "AlwaysOff"
    SetScrollLockState "AlwaysOff"
    SetNumLockState "AlwaysOff"
}
\ & /:: Send "{AppsKey}"
\ & p:: Send "{PrintScreen}"
\ & b:: Send "{CtrlBreak}"
\ & h:: Send "{Pause}"
\ & m:: Send "{Volume_Mute}"
\ & ,:: Send "{Volume_Down}"
\ & .:: Send "{Volume_Up}"
\ & [:: Send "{Media_Prev}"
\ & ]:: Send "{Media_Next}"
\ & ':: Send "{Media_Play_Pause}"
\ & `;:: Send "{Media_Stop}"

; Numpad action
!n::
{
    SetNumLockState !GetKeyState("NumLock", "T")
}
#HotIf GetKeyState("NumLock", "T")
m::Numpad0
,:: Send "000"
.::NumpadDot
j::Numpad1
k::Numpad2
l::Numpad3
u::Numpad4
i::Numpad5
o::Numpad6
7::Numpad7
8::Numpad8
9::Numpad9
p::NumpadAdd
`;::NumpadSub
0::NumpadMult
/::NumpadDiv
#HotIf