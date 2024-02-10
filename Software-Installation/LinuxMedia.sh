#!/bin/sh

# Run:
# chmod +x LinuxMedia.sh
# sudo ./LinuxMedia.sh

# Update Commands:
echo "Updating System..."
sudo apt update -y
echo "System Updated!"
echo ""

#---Media Softwares---#

# Audacity:
echo "Installing Audacity..."
sudo apt install audacity -y
echo "Audacity Installed!"

# Blender:
echo "Installing Blender..."
sudo apt install blender -y
echo "Blender Installed!"

# Franz - Messenger:
echo "Installing Franz..."
cd ~/Downloads || return
wget https://github.com/meetfranz/franz/releases/download/v5.9.2/franz_5.9.2_amd64.deb
sudo apt install ./franz_5.9.2_amd64.deb -y
rm ./franz_5.9.2_amd64.deb
echo "Franz Installed!"

# Gimp:
echo "Installing Gimp..."
sudo apt install gimp -y
echo "Gimp Installed!"

# KDenLive Video Editor:
echo "Installing KDenLive..."
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
sudo apt update -y
sudo apt-get install kdenlive -y
echo "KDenLive Installed!"

# MegaSync:
echo "Installing MegaSync..."
cd ~/Downloads || return
wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb
sudo apt install ./megasync-xUbuntu_22.04_amd64.deb -y
rm ./megasync-xUbuntu_22.04_amd64.deb
echo "MegaSync Installed!"

# MPV:
echo "Installing MPV..."
sudo apt install mpv -y
echo "MPV Installed!"

# OBS Studio:
echo "Installing OBS Studio..."
sudo apt install obs-studio -y
echo "OBS Studio Installed!"

# OpenShot Video Editor:
echo "Installing OpenShot..."
sudo apt-add-repository ppa:openshot.developers/libopenshot-daily -y
sudo apt update -y
sudo apt-get install openshot-qt -y
echo "OpenShot Installed!"

# Pinta:
echo "Installing Pinta..."
sudo add-apt-repository ppa:pinta-maintainers/pinta-stable -y
sudo apt update -y
sudo apt-get install pinta -y
echo "Pinta Installed!"

# Skype:
echo "Installing Skype..."
cd ~/Downloads || return
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb -y
rm ./skypeforlinux-64.deb
echo "Skype Installed!"

# VLC:
echo "Installing VLC..."
sudo apt install vlc -y
echo "VLC Installed!"

echo "Media Softwares Installed!"
echo ""
