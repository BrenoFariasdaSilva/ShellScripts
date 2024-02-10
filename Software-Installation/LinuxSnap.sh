#!/bin/sh

# Run:
# chmod +x LinuxSnap.sh
# sudo ./LinuxSnap.sh
# sudo -i

# Update Commands:
sudo apt update -y

#---Snap Softwares---#

# Snapd:
sudo apt install snapd -y
sudo snap install core -y
sudo snap install snap-store -y

# Snap Softwares:
sudo snap install authy
sudo snap install discographer
sudo snap install fast
sudo snap install gnome-twitch
sudo snap install mojave-themes
sudo snap install netflix-web
sudo snap install notepad-plus-plus
sudo snap install notion-snap
sudo snap install oxygen-cursors
sudo snap install postman
sudo snap install sc-controller
sudo snap install spotify
sudo snap install teams-for-linux
sudo snap install whatsapp-for-linux
sudo snap install yuzu
