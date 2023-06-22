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
[Date] 2023.01.22
[App Version] v2.7.2
[AHK Version] v2.0.2
[based] LEOPOLD 660 model, Thinkpad trackpoint keyboard, Pok3r 60% layout keyboard
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
!p:: SendInput "^!{Tab}"

; Alt + Keys
!h:: SendInput "{Home}"
!;:: SendInput "{End}"
!i:: SendInput "{Up}"
!k:: SendInput "{Down}"
!j:: SendInput "{Left}"
!l:: SendInput "{Right}"
!u:: SendInput "{PgUp}"
!o:: SendInput "{PgDn}"
!n:: SendInput "!{Up}"
!m:: SendInput "!{Down}"
!,:: SendInput "!{Left}"
!.:: SendInput "!{Right}"
!\:: SendEvent "{Delete}"
!/:: SendEvent "{AppsKey}"
!Backspace:: SendEvent "{Backspace}"
!Delete:: SendEvent "{Delete}"

; Alt + Ctrl + Keys
!^h:: SendInput "^{Home}"
!^;:: SendInput "^{End}"
!^i:: SendInput "^{Up}"
!^k:: SendInput "^{Down}"
!^j:: SendInput "^{Left}"
!^l:: SendInput "^{Right}"
!^u:: SendInput "^{PgUp}"
!^o:: SendInput "^{PgDn}"
!^n:: SendInput "^!{Up}"
!^m:: SendInput "^!{Down}"
!^,:: SendInput "^!{Left}"
!^.:: SendInput "^!{Right}"
!^\:: SendEvent "^{Delete}"
!^/:: SendEvent "^{AppsKey}"
!^Backspace:: SendEvent "^{Backspace}"
!^Delete:: SendEvent "^{Delete}"

; Alt + Shift + Keys
!+h:: SendInput "+{Home}"
!+;:: SendInput "+{End}"
!+i:: SendInput "+{Up}"
!+k:: SendInput "+{Down}"
!+j:: SendInput "+{Left}"
!+l:: SendInput "+{Right}"
!+u:: SendInput "+{PgUp}"
!+o:: SendInput "+{PgDn}"
!+n:: SendInput "+!{Up}"
!+m:: SendInput "+!{Down}"
!+,:: SendInput "+!{Left}"
!+.:: SendInput "+!{Right}"
!+\:: SendEvent "+{Delete}"
!+/:: SendEvent "+{AppsKey}"
!+Backspace:: SendEvent "+{Backspace}"
!+Delete:: SendEvent "+{Delete}"

; Alt + Ctrl + Shift + Keys
!^+h:: SendInput "^+{Home}"
!^+;:: SendInput "^+{End}"
!^+i:: SendInput "^+{Up}"
!^+k:: SendInput "^+{Down}"
!^+j:: SendInput "^+{Left}"
!^+l:: SendInput "^+{Right}"
!^+u:: SendInput "^+{PgUp}"
!^+o:: SendInput "^+{PgDn}"
!^+n:: SendInput "^+!{Up}"
!^+m:: SendInput "^+!{Down}"
!^+,:: SendInput "^+!{Left}"
!^+.:: SendInput "^+!{Right}"
!^+\:: SendEvent "^+{Delete}"
!^+/:: SendEvent "^+{AppsKey}"
!^+Backspace:: SendEvent "^+{Backspace}"
!^+Delete:: SendEvent "^+{Delete}"


; RShift + Number key == Function key
>+1:: SendEvent "{F1}"
>+2:: SendEvent "{F2}"
>+3:: SendEvent "{F3}"
>+4:: SendEvent "{F4}"
>+5:: SendEvent "{F5}"
>+6:: SendEvent "{F6}"
>+7:: SendEvent "{F7}"
>+8:: SendEvent "{F8}"
>+9:: SendEvent "{F9}"
>+0:: SendEvent "{F10}"
>+-:: SendEvent "{F11}"
>+=:: SendEvent "{F12}"
>+\:: SendEvent "{Insert}"

; Ctrl + Function key
^>+1:: SendEvent "^{F1}"
^>+2:: SendEvent "^{F2}"
^>+3:: SendEvent "^{F3}"
^>+4:: SendEvent "^{F4}"
^>+5:: SendEvent "^{F5}"
^>+6:: SendEvent "^{F6}"
^>+7:: SendEvent "^{F7}"
^>+8:: SendEvent "^{F8}"
^>+9:: SendEvent "^{F9}"
^>+0:: SendEvent "^{F10}"
^>+-:: SendEvent "^{F11}"
^>+=:: SendEvent "^{F12}"
^>+\:: SendEvent "^{Insert}"

; Shift + Function key
<+>+1:: SendEvent "+{F1}"
<+>+2:: SendEvent "+{F2}"
<+>+3:: SendEvent "+{F3}"
<+>+4:: SendEvent "+{F4}"
<+>+5:: SendEvent "+{F5}"
<+>+6:: SendEvent "+{F6}"
<+>+7:: SendEvent "+{F7}"
<+>+8:: SendEvent "+{F8}"
<+>+9:: SendEvent "+{F9}"
<+>+0:: SendEvent "+{F10}"
<+>+-:: SendEvent "+{F11}"
<+>+=:: SendEvent "+{F12}"
<+>+\:: SendEvent "+{Insert}"

; Alt + Function key
!>+1:: SendEvent "!{F1}"
!>+2:: SendEvent "!{F2}"
!>+3:: SendEvent "!{F3}"
!>+4:: SendEvent "!{F4}"
!>+5:: SendEvent "!{F5}"
!>+6:: SendEvent "!{F6}"
!>+7:: SendEvent "!{F7}"
!>+8:: SendEvent "!{F8}"
!>+9:: SendEvent "!{F9}"
!>+0:: SendEvent "!{F10}"
!>+-:: SendEvent "!{F11}"
!>+=:: SendEvent "!{F12}"
!>+\:: SendEvent "!{Insert}"

; Ctrl + Shift + Function key
^<+>+1:: SendEvent "^+{F1}"
^<+>+2:: SendEvent "^+{F2}"
^<+>+3:: SendEvent "^+{F3}"
^<+>+4:: SendEvent "^+{F4}"
^<+>+5:: SendEvent "^+{F5}"
^<+>+6:: SendEvent "^+{F6}"
^<+>+7:: SendEvent "^+{F7}"
^<+>+8:: SendEvent "^+{F8}"
^<+>+9:: SendEvent "^+{F9}"
^<+>+0:: SendEvent "^+{F10}"
^<+>+-:: SendEvent "^+{F11}"
^<+>+=:: SendEvent "^+{F12}"
^<+>+\:: SendEvent "^+{Insert}"

; Ctrl + Alt + Function key
^!>+1:: SendEvent "^!{F1}"
^!>+2:: SendEvent "^!{F2}"
^!>+3:: SendEvent "^!{F3}"
^!>+4:: SendEvent "^!{F4}"
^!>+5:: SendEvent "^!{F5}"
^!>+6:: SendEvent "^!{F6}"
^!>+7:: SendEvent "^!{F7}"
^!>+8:: SendEvent "^!{F8}"
^!>+9:: SendEvent "^!{F9}"
^!>+0:: SendEvent "^!{F10}"
^!>+-:: SendEvent "^!{F11}"
^!>+=:: SendEvent "^!{F12}"
^!>+\:: SendEvent "^!{Insert}"

; Shift + Alt + Function key
<+!>+1:: SendEvent "+!{F1}"
<+!>+2:: SendEvent "+!{F2}"
<+!>+3:: SendEvent "+!{F3}"
<+!>+4:: SendEvent "+!{F4}"
<+!>+5:: SendEvent "+!{F5}"
<+!>+6:: SendEvent "+!{F6}"
<+!>+7:: SendEvent "+!{F7}"
<+!>+8:: SendEvent "+!{F8}"
<+!>+9:: SendEvent "+!{F9}"
<+!>+0:: SendEvent "+!{F10}"
<+!>+-:: SendEvent "+!{F11}"
<+!>+=:: SendEvent "+!{F12}"
<+!>+\:: SendEvent "+!{Insert}"

; Ctrl + Shift + Alt + Function key
^<+!>+1:: SendEvent "^+!{F1}"
^<+!>+2:: SendEvent "^+!{F2}"
^<+!>+3:: SendEvent "^+!{F3}"
^<+!>+4:: SendEvent "^+!{F4}"
^<+!>+5:: SendEvent "^+!{F5}"
^<+!>+6:: SendEvent "^+!{F6}"
^<+!>+7:: SendEvent "^+!{F7}"
^<+!>+8:: SendEvent "^+!{F8}"
^<+!>+9:: SendEvent "^+!{F9}"
^<+!>+0:: SendEvent "^+!{F10}"
^<+!>+-:: SendEvent "^+!{F11}"
^<+!>+=:: SendEvent "^+!{F12}"
^<+!>+\:: SendEvent "^+!{Insert}"


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