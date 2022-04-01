#NoEnv
#NoTrayIcon
Gui, Add, Text, x182 y19 w120 h20 cwhite, SmartTV.online Installer
Gui, Add, Text, x32 y49 w80 h30 cwhite , SmartTV.online
Gui, Add, Text, x122 y49 w210 h30 cwhite , SmartTV.online runs on Startup
Gui,Add,Progress, x342 y49 w110 h30 Disabled Background3D3D3D
Gui,Add,Text,yp wp hp cwhite BackgroundTrans Center 0x200 ginstall , Install
Gui, Add, Text, x32 y89 w80 h30 cwhite, Steam
Gui, Add, Text, x122 y89 w190 h30 cwhite, Required for Controller Support
Gui,Add,Progress, x342 y89 w110 h30 Disabled Background3D3D3D
Gui,Add,Text,yp wp hp cwhite BackgroundTrans Center 0x200 grd1, Redirect
Gui, Add, Text, x32 y129 w100 h30 cwhite, Chrome
Gui, Add, Text, x122 y129 w190 h30 cwhite, You will need Chrome`, otherwise it will not work
Gui,Add,Progress, x342 y129 w110 h30 Disabled Background3D3D3D
Gui,Add,Text,yp wp hp cwhite BackgroundTrans Center 0x200 grd2, Redirect
Gui,Add,Progress, x362 y5 w70 h30 Disabled Background3D3D3D
Gui,Add,Text,yp wp hp cwhite BackgroundTrans Center 0x200 gguide, Guide
Gui, Add, Progress, x139 y170 w200 cgreen vMyProgress
Gui, Add, Groupbox, x25 y35 w435 h130
Gui, Color, 282828, 282828
Gui, Show, w481 h190, SmartTV.online Installer
return

GuiClose:
ExitApp

install:
FileCreateDir, C:/SmartTV.online
GuiControl,, MyProgress, +10
FileMove, %A_ScriptDir%/background.jpg, C:/SmartTV.online/background.jpg
GuiControl,, MyProgress, +10
FileMove, %A_ScriptDir%/Banner.png, C:/SmartTV.online/Banner.png
GuiControl,, MyProgress, +10
FileMove, %A_ScriptDir%/index.html, C:/SmartTV.online/index.html
GuiControl,, MyProgress, +10
FileMove, %A_ScriptDir%/style.css, C:/SmartTV.online/style.css
GuiControl,, MyProgress, +10
FileMoveDir, %A_ScriptDir%/Fonts, C:/SmartTV.online/Fonts
GuiControl,, MyProgress, +10
FileMove, %A_ScriptDir%/code.js, C:/SmartTV.online/code.js
GuiControl,, MyProgress, +20
FileMove, %A_ScriptDir%/START.bat, C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
GuiControl,, MyProgress, +20
MsgBox, 0, Done, Installation Done! Reboot Now!
return

rd1:
Run, https://store.steampowered.com/about/
return
rd2:
Run, https://www.google.com/chrome/
return
guide:
Run, https://github.com/Kaze961/SmartTV.online
return