#!/bin/sh

# Run:
# chmod +x ./LinuxGames.sh
# sudo ./LinuxGames.sh

# Update Commands:
echo "Updating System..."
sudo apt update -y
echo "System Updated!"
echo ""

#---Games Softwares---#
echo "Installing Linux Games Softwares..."
echo ""

# Lutris:
echo "Installing Lutris..."
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt update -y
sudo apt install lutris -y
echo "Lutris Installed!"
echo ""

# PlayOnLinux:
echo "Installing PlayOnLinux..."
sudo apt install playonlinux -y
echo "PlayOnLinux Installed!"
echo ""

# Steam:
echo "Installing Steam..."
sudo add-apt-repository multiverse -y
sudo apt update -y
sudo apt install steam -y
echo "Steam Installed!"
echo ""

# Wine:
echo "Installing Wine..."
sudo dpkg --add-architecture i386
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ hirsute main' -y
sudo apt update -y
sudo apt install --install-recommends winehq-stable -y
echo "Wine Installed!"
echo ""

echo "Games Softwares Installed!"
echo ""
