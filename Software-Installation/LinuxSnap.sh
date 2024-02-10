#!/bin/sh

# Run:
# chmod +x LinuxSnap.sh
# sudo ./LinuxSnap.sh
# sudo -i

# Update Commands:
echo "Updating System..."
sudo apt update -y
echo "System Updated!"
echo ""

#---Snap Softwares---#

# Snapd:
echo "Installing Snapd..."
sudo apt install snapd -y
sudo snap install core -y
sudo snap install snapd -y
sudo snap install snap-store -y
echo "Snapd Installed!"
echo ""

# Snap Softwares:
echo "Installing Snap Softwares..."
echo ""

echo "Installing Authy..."
sudo snap install authy
echo "Authy Installed!"
echo ""

echo "Installing Discographer..."
sudo snap install discographer
echo "Discographer Installed!"
echo ""

echo "Installing Fast..."
sudo snap install fast
echo "Fast Installed!"
echo ""

echo "Installing Gnome Twitch..."
sudo snap install gnome-twitch
echo "Gnome Twitch Installed!"
echo ""

echo "Installing Mojave Themes..."
sudo snap install mojave-themes
echo "Mojave Themes Installed!"
echo ""

echo "Installing Netflix Web..."
sudo snap install netflix-web
echo "Netflix Web Installed!"
echo ""

echo "Installing Notepad++..."
sudo snap install notepad-plus-plus
echo "Notepad++ Installed!"
echo ""

echo "Installing Notion Snap..."
sudo snap install notion-snap
echo "Notion Snap Installed!"
echo ""

echo "Installing Oxygen Cursors..."
sudo snap install oxygen-cursors
echo "Oxygen Cursors Installed!"
echo ""

echo "Installing Postman..."
sudo snap install postman
echo "Postman Installed!"
echo ""

echo "Installing SC Controller..."
sudo snap install sc-controller
echo "SC Controller Installed!"
echo ""

echo "Installing Spotify..."
sudo snap install spotify
echo "Spotify Installed!"
echo ""

echo "Installing Teams for Linux..."
sudo snap install teams-for-linux
echo "Teams for Linux Installed!"
echo ""

echo "Installing WhatsApp for Linux..."
sudo snap install whatsapp-for-linux
echo "WhatsApp for Linux Installed!"
echo ""

echo "Installing Yuzu..."
sudo snap install yuzu
echo "Yuzu Installed!"
echo ""

echo "Snap Softwares Installed!"
echo ""
