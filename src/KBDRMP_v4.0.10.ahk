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
[Update] 2023.09.30
[Inspired by] LEOPOLD 660, Thinkpad, Pok3r 60%, HHKB, SpaceFN.
#: Win
!: Alt
^: Ctrl
+: Shift
*/

; Key Remapping
CapsLock::Control

; SpaceFN
Space::Space

#SuspendExempt
Space & Escape:: Suspend ;Suspend/Resume
#SuspendExempt False

Space & 1::F1
Space & 2::F2
Space & 3::F3
Space & 4::F4
Space & 5::F5
Space & 6::F6
Space & 7::F7
Space & 8::F8
Space & 9::F9
Space & 0::F10
Space & -::F11
Space & =::F12

Space & q::
{
    SetCapsLockState "AlwaysOff"
    SetScrollLockState "AlwaysOff"
    SetNumLockState "AlwaysOff"
}
Space & w:: Send "{Volume_Mute}"
Space & e:: Send "{Volume_Down}"
Space & r:: Send "{Volume_Up}"
Space & t::PrintScreen ;Take a screenshot
Space & y::^Insert ;Yank
Space & u::PgUp
Space & i::Up
Space & o::PgDn
Space & p::+Insert ;Put
Space & [::` ;Backtick(U+0060)
Space & ]::~ ;Tilde(U+007E)
Space & \::Insert

Space & s::#^Left ;Switch to Left virtual desktop
Space & d::#Tab ;Show Desktop (Task View)
Space & f::#^Right ;Switch to Right virtual desktop
Space & g:: Send "{LButton}" ;Get focus, mouse left click
Space & h::Home
Space & j::Left
Space & k::Down
Space & l::Right
Space & `;::End
Space & ':: Send "{Ctrl down}{Left}{Shift down}{Right}{Shift up}{Ctrl up}" ;Select current word

Space & c::CapsLock
Space & v::#^d ;Virtual Desktop
Space & b::Pause ;Break==Ctrl+Pause
Space & n::Space ;auto-repeat spacebar
Space & m::AppsKey ;Menu
Space & ,::Backspace ;Remove << char
Space & .::Delete ;Remove >> char
Space & /::Escape