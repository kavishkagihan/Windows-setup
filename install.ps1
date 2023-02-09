echo "Downloading GlazeWM from the releases"
curl https://github.com/lars-berger/GlazeWM/releases/download/v1.11.1/GlazeWM_x64_1.11.1.exe  -O glazeWM.exe

echo "Copying the example config"
mkdir ~\.glaze-wm\
copy config.yaml ~\.glaze-wm\

echo "Enabling GlazeWM to run in startup"
copy glazeWM.exe "~\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

echo "Starting Glaze"
.\glazeWM.exe
