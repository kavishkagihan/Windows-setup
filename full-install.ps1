echo "Downloading GlazeWM from the releases"
curl https://github.com/lars-berger/GlazeWM/releases/download/v1.11.1/GlazeWM_x64_1.11.1.exe  -O glazeWM.exe

echo "Copying the example config"
mkdir ~\.glaze-wm\
copy config.yaml ~\.glaze-wm\

echo "Enabling GlazeWM and AutoHotKeys to run in startup"
copy glazeWM.exe "~\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
copy AutoHotKey-Scripts\* "~\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

echo "Setting the Wallpaper"
$img = (Get-ChildItem -Path .\wallpaper.jpeg -Recurse | %{$_.FullName})
$key = "HKCU:\Control Panel\Desktop"
Set-ItemProperty -Path $key -Name "Wallpaper" -Value $img
Rundll32.exe user32.dll, UpdatePerUserSystemParameters

echo "Disabling Desktop icons"
$Path="HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty -Path $Path -Name "HideIcons" -Value 1
Get-Process "explorer"| Stop-Process

echo "Downloading and setting up nircmd"
mkdir C:\tools # requires administrative privs
curl https://www.nirsoft.net/utils/nircmd-x64.zip -O nircmd.zip
Start-Sleep -Seconds 5
Expand-Archive -Path nircmd.zip -DestinationPath C:\tools\nircmd-x64

echo "Starting Glaze"
.\glazeWM.exe
