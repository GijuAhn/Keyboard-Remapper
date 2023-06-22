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
[Update] 2023.04.22
[App Version] v4.0.0
[AHK Version] v2.0.2
[Inspired by] LEOPOLD 660 model, Thinkpad trackpoint keyboard, Pok3r 60% layout keyboard, HHKB
#: Win
!: Alt
^: Ctrl
+: Shift
*/

#SuspendExempt
!x:: Suspend
#SuspendExempt False


; Keys swap
CapsLock::LControl

; R-Shift toggle CapsLock
RShift::
{
    SetCapsLockState !GetKeyState("CapsLock", "T")
}

; Shift + BS => Delete
+Backspace::Delete

; mouse navigation
hori := SysGet(78) // 40
verti := SysGet(79) // 40


#HotIf GetKeyState("CapsLock", "T")
`::Escape
1::F1
2::F2
3::F3
4::F4
5::F5
6::F6
7::F7
8::F8
9::F9
0::F10
-::F11
=::F12
\::Insert
q::return
w::^Left
e:: SendInput "{Up 15}"
r::^Right
t::return
y::^Insert
u::PgUp
i::Up
o::PgDn
p::+Insert
[:: MouseClick "left"
]:: MouseClick "right"
a:: SendInput "{Ctrl Down}{Home}{Ctrl Up}"
s:: SendInput "{Left 15}"
d:: SendInput "{Down 15}"
f:: SendInput "{Right 15}"
g:: SendInput "{Ctrl Down}{End}{Ctrl Up}"
h::Home
j::Left
k::Down
l::Right
`;::End
':: SendInput "{Ctrl down}{Left}{Shift down}{Right}{Shift up}{Ctrl up}"
":: SendInput "{Home}{Shift down}{End}{Shift up}"
z::return
x::return
c::return
v::return
b::return
n::return
m::return
,::return
.::return
/::AppsKey ; !Warning!  'RShift + /' may conflicts in some games.
Up:: MouseMove 0, -verti, 0, "R"
Down:: MouseMove 0, verti, 0, "R"
Left:: MouseMove -hori, 0, 0, "R"
Right:: MouseMove hori, 0, 0, "R"
#HotIf


; \(BackSlash) + Keys
SetCapsLockState "AlwaysOff"
SetScrollLockState "AlwaysOff"
\::\
\ & /:: SendInput "{AppsKey}"
\ & p:: SendInput "{PrintScreen}"
\ & b:: SendInput "{CtrlBreak}"
\ & h:: SendInput "{Pause}"
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