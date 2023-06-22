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
[Update] 2023.04.20
[App Version] v3.1.4
[AHK Version] v2.0.2
[Inspired by] LEOPOLD 660 model, Thinkpad trackpoint keyboard, Pok3r 60% layout keyboard
#: Win
!: Alt
^: Ctrl
+: Shift
*/

#SuspendExempt
!x:: Suspend
#SuspendExempt False


; Keys swap
CapsLock::Control


; shortcut sequence
!':: SendInput "{Ctrl down}{Left}{Shift down}{Right}{Shift up}{Ctrl up}"
!+':: SendInput "{Home}{Shift down}{End}{Shift up}"


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
!n::!Up
!m::!Down
!,::!Left
!.::!Right
!/::AppsKey
!\::Delete
!Backspace::Backspace


; SHIFT action
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
>+`::Escape

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
<+>+`::+Escape

+Backspace::Delete


; \(BackSlash) + Keys
SetCapsLockState "AlwaysOff"
SetScrollLockState "AlwaysOff"
\::\
\ & /:: SendInput "{AppsKey}"
\ & p:: SendInput "{PrintScreen}"
\ & b:: SendInput "{CtrlBreak}"
\ & h:: SendInput "{Pause}"
\ & c::
{
    SetCapsLockState !GetKeyState("CapsLock", "T")
}
\ & s::
{
    SetScrollLockState !GetKeyState("ScrollLock", "T")
}
\ & m:: SendInput "{Volume_Mute}"
\ & ,:: SendInput "{Volume_Down}"
\ & .:: SendInput "{Volume_Up}"
\ & [:: SendInput "{Media_Prev}"
\ & ]:: SendInput "{Media_Next}"
\ & ':: SendInput "{Media_Play_Pause}"
\ & `;:: SendInput "{Media_Stop}"