# Windows-setup
My Windows setup with GlazeWM and some other automated stuff with AutoHotKeys

## Full Setup

![image](https://user-images.githubusercontent.com/85458014/217857805-f424a5ed-e2ef-4454-a8cd-eb1418fad488.png)

# Installation

> If you need full setup exactly like mine, you will have to install AutoHotKeys in your system. But this is not required to get GlazeWM to work.

### GlazeWM setup

1. Clone or Download the repository
```powershell
git clone https://github.com/kavishkagihan/Windows-setup.git
cd Windows-setup
```
2. Run the installer
```powershell
.\install.ps1
```

### Full setup

1. Install [AutoHotKeys](https://www.autohotkey.com/download/)
2. Clone or Download the repository
```powershell
git clone https://github.com/kavishkagihan/Windows-setup.git
cd Windows-setup
```
3. Run the installer (as administrator )
```powershell
.\full-install.ps1
```

### Additional features in the full setup

1. Setting the wallpaper
2. Disabling the Desktop icons
3. Hiding the taskbar with [nircmd](https://www.nirsoft.net/utils/nircmd.html) (`Win+T`/`Win=Shift+T`)
4. Changing the transperancy of windows (transperancy.ahk) (`Ctrl+Shift+WheelUp`/`Ctrl+Shift+WheelDown`)
5. Remaping the windows key to be able to change workspaces with `Win+<num>`
