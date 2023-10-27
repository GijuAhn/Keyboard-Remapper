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
[Update] 2023.10.09
[Inspired by] LEOPOLD 660, Thinkpad, Pok3r 60%, HHKB, SpaceFN.
#: Win
!: Alt
^: Ctrl
+: Shift
*/


; Key Remapping
CapsLock::Control


; Toggle suspending this script (Halt)
#SuspendExempt
>+h:: Suspend
#SuspendExempt False


; SpaceFN Layer (Navigation keys & Editing keys)
~Space & u::PgUp
~Space & i::Up
~Space & o::PgDn
~Space & p::PrintScreen
~Space & [::ScrollLock
~Space & ]::Pause
~Space & \::Insert

~Space & h::Home
~Space & j::Left
~Space & k::Down
~Space & l::Right
~Space & `;::End
~Space & ':: Send "{Ctrl down}{Left}{Shift down}{Right}{Shift up}{Ctrl up}"

~Space & n::Space
~Space & m::AppsKey
~Space & ,::BackSpace
~Space & .::Delete
~Space & /::Escape


; RShift Layer (Function keys & Media keys)
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
>+b::Pause

>+p:: Send "{U+00B7}"
>+[::`
>+]::~

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
<+>+b::+Pause

>+m:: Send "{Volume_Mute}"
>+,:: Send "{Volume_Down}"
>+.:: Send "{Volume_Up}"

>+c::CapsLock
>+s::ScrollLock
>+q:: {
    SetCapsLockState "AlwaysOff"
    SetScrollLockState "AlwaysOff"
    SetNumLockState "AlwaysOff"
}