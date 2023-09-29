# Keyboard-Remapper

> Quick responsive, lightweight, reliable keyboard remapper for Windows power users.\
> Maximize your work efficiency.

> 내가 쓰려고 만든 키보드 리매퍼\
> 가볍고, 안정적이고, 입력에 즉각적으로 반응합니다.\
> 작업 효율을 최대화하세요.

[App Version] v3.2.4\
[AHK Version] v2.0.4\
[Inspired by] LEOPOLD 660 model, Thinkpad trackpoint, Pok3r 60% layout, HHKB\
[Target layout] QWERTY & 표준 두벌식

## Features

* All shortcuts can be used with the modifier keys. (Ctrl, Alt, Shift, Win)
  * 모든 단축키는 수정자와 함께 조합해서 사용할 수 있습니다.
  
* Built with [AutoHotkey v2](https://github.com/AutoHotkey/AutoHotkey), it responds immediately and accurately to your keystrokes.
  * 오토핫키 v2로 컴파일하여 키보드 입력에 즉각적이고 정확하게 반응합니다.
  
* Remapping is fully compatible with not only full-sized keyboards, but also mini-keyboards with a 60% layout.
  * 방향키나 펑션키가 없는 미니 레이아웃 키보드에서 특히 유용합니다. 물론 풀사이즈 키보드에서도 사용 가능합니다.
  
* With the exception of a few shortcuts from JetBrains' IntelliJ IDEA, most development tools and Windows built-in shortcuts have been verified that this keymap does not conflict.
  * IntelliJ 계열 IDE의 사용 빈도가 낮은 몇몇 단축키를 제외하고, 대부분의 개발 툴 및 윈도우 기본 단축키와 충돌하지 않도록 설계되었습니다.

## Manual

### Key remapped

CapsLock ⇛ Control

### Suspend

| Key     | Action                                        |
| ------- | --------------------------------------------- |
| Alt + b | Suspend (on/off toggle) all hotkeys ('b'reak) |

### Shortcut sequences

| Key             | Action                                        |
| --------------- | --------------------------------------------- |
| Alt + '         | Select current word (커서가 위치한 단어 선택) |
| Alt + Shift + ' | Select current line (커서가 위치한 라인 선택) |

### _ALT_ action

If you want to use key combinations with `Alt`, append `RShift`.\
For example, to input `Alt + Home`, press `Alt + RShift + h`.

`Alt`키 자체를 단축키의 조합으로 사용하려면 `RShift`를 사용하세요.\
예를 들어, `Alt + Home`을 입력하려면, 키보드에서 `Alt + RShift + h` 를 누릅니다.

`LShift` operates as usual.

`LShift`는 기존과 같이 작동합니다.\
예를 들어, `Alt + Shift + Home`을 입력하려면, 키보드에서 `Alt + LShift + RShift + h` 를 누릅니다.


| Key     | Action                                |
| ------- | ------------------------------------- |
| Alt + h | Home                                  |
| Alt + ; | End                                   |
| Alt + i | Up ↑                                  |
| Alt + k | Down ↓                                |
| Alt + j | Left ←                                |
| Alt + l | Right →                               |
| Alt + u | Page Up                               |
| Alt + o | Page Down                             |
| Alt + y | Ctrl + Insert (*yank* in VIM)         |
| Alt + p | Shift + Insert (*put* in VIM)         |
| Alt + n | Toggle Numeric Keypad (numpad)        |
| Alt + m | AppsKey (call mouse right click menu) |
| Alt + , | Backspace (⇍)                         |
| Alt + . | Delete (⇏)                            |
| Alt + / | Escape                                |

### _SHIFT_ action

| Key        | Action         |
| ---------- | -------------- |
| RShift + 1 | F1             |
| RShift + 2 | F2             |
| RShift + 3 | F3             |
| RShift + 4 | F4             |
| RShift + 5 | F5             |
| RShift + 6 | F6             |
| RShift + 7 | F7             |
| RShift + 8 | F8             |
| RShift + 9 | F9             |
| RShift + 0 | F10            |
| RShift + - | F11            |
| RShift + = | F12            |
| RShift + p | middle dot (·) |
| RShift + [ | backtick (`)   |
| RShift + ] | tilde (~)      |
| RShift + \ | Insert         |

### _Backslash_ for util

Backslash single key input is triggered at the moment you press and 'release' the key.\
백슬래시 단일키 입력('\\')은 키를 누르고 '뗄 때' 트리거됩니다.

| Key   | Action                                                              |
| ----- | ------------------------------------------------------------------- |
| \ + [ | LButton (mouse left click)                                          |
| \ + ] | RButton (mouse right click)                                         |
| \ + , | XButton1 (Typically performs the same function as Browser_Back.)    |
| \ + . | XButton2 (Typically performs the same function as Browser_Forward.) |
| \ + m | MButton (mouse middle click)                                        |
| \ + c | CapsLock toggle ('c'apslock)                                        |
| \ + s | ScrollLock toggle ('s'crolllock)                                    |
| \ + o | 'OFF' every *lock* keys (capslock, scrolllock, numlock)             |
| \ + / | AppsKey(Menu) ('?')                                                 |
| \ + p | PrintScreen ('p'rintscreen)                                         |
| \ + b | CtrlBreak ('b'reak)                                                 |
| \ + h | Pause ('h'alt)                                                      |
| \ + = | Volume_Up (소리 크게 '+' 🔊)                                         |
| \ + - | Volume_Down (소리 작게 '-' 🔉)                                       |
| \ + 0 | Volume_Mute (음소거 '0' 🔈)                                          |
| \ + k | Media_Prev (이전 컨텐츠 ⏪)                                          |
| \ + l | Media_Next (다음 컨텐츠 ⏩)                                          |
| \ + ; | Media_Stop (미디어 정지 ⏹)                                          |
| \ + ' | Media_Play_Pause (미디어 일시정지·재생 ⏯)                           |

### Numpad

|     |     |     |     |     |
| --- | --- | --- | --- | --- |
| 7   | 8   | 9   | 0   | -   |
| u   | i   | o   | p   |     |
| j   | k   | l   | ;   |     |
| m   | ,   | .   | /   |     |

|     |     |     |     |     |
| --- | --- | --- | --- | --- |
| 7   | 8   | 9   | 0   | -   |
| 4   | 5   | 6   | +   |     |
| 1   | 2   | 3   | *   |     |
| 0   | ,   | .   | /   |     |

## FAQ

* Q: How can I turn off Capslock? 캡스락 어떻게 끄나요?
  * A: Use the `\ + c` shortcut to toggle Capslock. `\ + o` turns off every 'lock'. `\ + c` 단축키로 캡스락을 토글할 수 있습니다. `\ + o`은 모든 '락'을 끕니다.
  
* Q. Control key acts as if it is stuck periodically. 컨트롤 키가 가끔 눌린 상태로 고정된 것처럼 작동합니다.
  * A. Most of the time, `Ctrl + Alt + Del` and escape resets key status to normal. 대부분의 경우, `Ctrl + Alt + Del` 로 작업관리자에 진입했다 나오면 정상 상태로 돌아옵니다.

* Q. Does the keyboard remapper work on the shell? 쉘에서도 작동하나요?
  * A. Yes. It works on the shell, like PowerShell, CMD, and Git Bash. 네. PowerShell, CMD, Git Bash 등 쉘 환경에서도 사용할 수 있습니다.

* Q. How can I suspend the remapper? 리매퍼를 비활성화할 수 있나요?
  * A. Use the `Alt + b` shortcut to toggle the remapper. `Alt + b` 단축키로 리매퍼를 활성화/비활성화 할 수 있습니다.
  
* Q. Why is the arrow key mapping _IJKL_, not _HJKL_? 왜 방향키가 _HJKL_ 이 아니라 _IJKL_ 이죠?
  * A. Because this key mapping is inspired by Thinkpad Trackpoint layout. Also, HJKL is not ergonomic. 기존 표준 방향키의 레이아웃과 사용감을 그대로 살렸습니다.

* Q. I want to have the remapper run automatically when the computer turns on. 컴퓨터가 켜질 때 리매퍼가 자동으로 실행되도록 하고 싶어요.
  * A. `Win + r` → `shell:startup` → add _.exe_ file to the startup folder. `Win + r` → `shell:startup` → '시작 프로그램' 폴더에 _.exe_ 파일을 추가하세요.
