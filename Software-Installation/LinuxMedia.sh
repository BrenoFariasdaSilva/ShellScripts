#!/bin/sh

# Run:
# chmod +x LinuxMedia.sh
# sudo ./LinuxMedia.sh

# Open terminal as root:
# sudo -i
sudo su

# Update commands:
sudo apt update -y

#---Media Softwares---#

# Audacity:
sudo apt install audacity -y

# Blender:
sudo apt install blender -y

# Franz - Messenger:
cd ~/Downloads || return
wget https://github.com/meetfranz/franz/releases/download/v5.9.2/franz_5.9.2_amd64.deb
sudo apt install ./franz_5.9.2_amd64.deb -y
rm ./franz_5.9.2_amd64.deb

# Gimp:
sudo apt install gimp -y

# KDenLive Video Editor
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
sudo apt update -y
sudo apt-get install kdenlive -y

# MegaSync:
cd ~/Downloads || return
wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb
sudo apt install ./megasync-xUbuntu_22.04_amd64.deb
rm ./megasync-xUbuntu_22.04_amd64.deb

# MPV:
sudo apt install mpv -y

# OBS Studio:
sudo apt install obs-studio -y

# OpenShot Video Editor
sudo apt-add-repository ppa:openshot.developers/libopenshot-daily -y
sudo apt update -y 
sudo apt-get install openshot-qt -y

# Pinta:
sudo add-apt-repository ppa:pinta-maintainers/pinta-stable -y
sudo apt update -y
sudo apt-get install pinta -y

# Skype:
cd ~/Downloads || return
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb -y
rm ./skypeforlinux-64.deb

# VLC:
sudo apt install vlc -y
