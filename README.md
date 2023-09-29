# Keyboard-Remapper

> Quick responsive, lightweight, reliable keyboard remapper for Windows power users.\
> Maximize your work efficiency.

> 내가 쓰려고 만든 키보드 리매퍼\
> 가볍고, 안정적이고, 입력에 즉각적으로 반응합니다.\
> 작업 효율을 최대화하세요.

## Features

* All shortcuts can be used with the modifier keys. (Ctrl, Alt, Shift, Win)
  * 모든 단축키는 수정자와 함께 조합해서 사용할 수 있습니다.
  
* Built with [AutoHotkey v2](https://github.com/AutoHotkey/AutoHotkey), it responds immediately and accurately to your keystrokes.
  * 오토핫키 v2로 컴파일하여 키보드 입력에 즉각적이고 정확하게 반응합니다.
  
* This keyboard remapper uses the SpaceFn layer method, which is especially useful for mini layout keyboards that don't have arrow keys or function keys.
  * SpaceFn 레이어 방식을 채택하여, 방향키나 펑션키가 없는 미니 레이아웃 키보드에서 특히 유용합니다.

## Manual
### Base
![base](contents/keyboard-layout(base).png)
### Fn-layer
![layer](contents/keyboard-layout(fn_layer).png)

### Key remapped

CapsLock ⇛ Control

### Suspend

| Key         | Action                              |
| ----------- | ----------------------------------- |
| Space + Esc | Suspend (on/off toggle) all hotkeys |

## FAQ

* Q. Does the keyboard remapper work on the shell? 쉘에서도 작동하나요?
  * A. Yes. It works on the shell, like PowerShell, CMD, and Git Bash. 네. PowerShell, CMD, Git Bash 등 쉘 환경에서도 사용할 수 있습니다.

* Q. How can I suspend the remapper? 리매퍼를 비활성화할 수 있나요?
  * A. Use the `Space + Esc` shortcut to toggle the remapper. `Space + Esc` 단축키로 리매퍼를 활성화/비활성화 할 수 있습니다.
  
* Q. Why is the arrow key mapping _IJKL_, not _HJKL_? 왜 방향키가 _HJKL_ 이 아니라 _IJKL_ 이죠?
  * A. Because this key mapping is inspired by Thinkpad Trackpoint layout. Also, HJKL is not ergonomic. 기존 표준 방향키의 레이아웃과 사용감을 그대로 살렸습니다.

* Q. I want to have the remapper run automatically when the computer turns on. 컴퓨터가 켜질 때 리매퍼가 자동으로 실행되도록 하고 싶어요.
  * A. `Win + r` → `shell:startup` → add _.exe_ file to the startup folder. `Win + r` → `shell:startup` → '시작 프로그램' 폴더에 _KBDRMP.exe_ 파일을 추가하세요.
