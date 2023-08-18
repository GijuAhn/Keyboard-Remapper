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
<Ultimate Keyboard Remapper>
[Author] Ahn Giju
[Update] 2023.08.19
[App Version] v3.2.5
[AHK Version] v2.0.5
[Inspired by] LEOPOLD 660 model, Thinkpad trackpoint, Pok3r 60% layout, HHKB
#: Win
!: Alt
^: Ctrl
+: Shift
*/

; Toggle suspending (break) this script
#SuspendExempt
!b:: Suspend
#SuspendExempt False

; Key Remapping
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
>+p:: Send "{U+00B7}"
>+[::`
>+]::~
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
\ & [:: Send "{LButton}"
\ & ]:: Send "{RButton}"
\ & ,:: Send "{Xbutton1}"
\ & .:: Send "{Xbutton2}"
\ & m:: Send "{MButton}"
\ & c::
{
    SetCapsLockState !GetKeyState("CapsLock", "T")
}
\ & s::
{
    SetScrollLockState !GetKeyState("ScrollLock", "T")
}
\ & o::
{
    SetCapsLockState "AlwaysOff"
    SetScrollLockState "AlwaysOff"
    SetNumLockState "AlwaysOff"
}
\ & /:: Send "{AppsKey}"
\ & p:: Send "{PrintScreen}"
\ & b:: Send "{CtrlBreak}"
\ & h:: Send "{Pause}"
\ & =:: Send "{Volume_Up}"
\ & -:: Send "{Volume_Down}"
\ & 0:: Send "{Volume_Mute}"
\ & k:: Send "{Media_Prev}"
\ & l:: Send "{Media_Next}"
\ & `;:: Send "{Media_Stop}"
\ & ':: Send "{Media_Play_Pause}"

; Numpad action
!n::
{
    SetNumLockState !GetKeyState("NumLock", "T")
}
#HotIf GetKeyState("NumLock", "T")
m::Numpad0
,::,
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
0::Numpad0
-::NumpadSub
p::NumpadAdd
`;::NumpadMult
/::NumpadDiv
#HotIf