#NoEnv

Gui,Add,Progress, x52 y30 w200 h60 Disabled Background3D3D3D
Gui,Add,Text,yp wp hp cwhite BackgroundTrans Center 0x200 ginstall , Install SmartTV.online
Gui, Add, Progress, x53 y100 w200 cgreen vMyProgress
Gui, Color, 282828, 282828
Gui, Show, w308 h125, SmartTV.online Installer
return

GuiClose:
ExitApp
install:
FileCreateDir, C:/SmartTV.online
GuiControl,, MyProgress, +10
FileMove, %A_ScriptDir%/background.jpg, C:/SmartTV.online/background.jpg
GuiControl,, MyProgress, +10
FileMove, %A_ScriptDir%/Banner.png, C:/SmartTV.online/Banner.jpg
GuiControl,, MyProgress, +10
FileMove, %A_ScriptDir%/index.html, C:/SmartTV.online/index.html
GuiControl,, MyProgress, +10
FileMove, %A_ScriptDir%/style.css, C:/SmartTV.online/style.css
GuiControl,, MyProgress, +10
FileMoveDir, %A_ScriptDir%/Fonts, C:/SmartTV.online/Fonts
GuiControl,, MyProgress, +10
FileMove, %A_ScriptDir%/START.bat, C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
GuiControl,, MyProgress, +40
MsgBox, 0, Done, Installation Done