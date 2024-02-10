#!/bin/sh

# Run:
# chmod +x LinuxBasic.sh
# sudo ./LinuxBasic.sh

# Update Commands:
echo "Updating System..."
sudo apt update -y
echo "System Updated!"
echo ""

#---Basic Softwares---#

# Curl:
echo "Installing Curl..."
sudo apt install curl -y
echo "Curl Installed!"
echo ""

# WGet:
echo "Installing WGet..."
sudo apt install wget -y
echo "WGet Installed!"
echo ""

# Git:
echo "Installing Git..."
sudo apt install git -y
echo "Git Installed!"
echo ""

# DPKG:
echo "Installing DPKG..."
sudo apt install dpkg -y
echo "DPKG Installed!"
echo ""

# 7Zip:
echo "Installing 7Zip..."
sudo apt install p7zip-full -y
echo "7Zip Installed!"
echo ""

# Unzip:
echo "Installing Unzip..."
sudo apt install unzip -y
echo "Unzip Installed!"
echo ""

# Zip:
echo "Installing Zip..."
sudo apt install zip -y
echo "Zip Installed!"
echo ""

# Brave Browser:
echo "Installing Brave Browser..."
sudo apt install apt-transport-https curl gnupg -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y
echo "Brave Browser Installed!"
echo ""

# Cron Job:
echo "Installing Cron Job..."
sudo apt install cron -y
# CronJobs File Location: nano /etc/crontab
echo "Cron Job Installed!"
echo ""

# Directory Tree:
echo "Installing Directory Tree..."
sudo apt install tree -y
echo "Directory Tree Installed!"
echo ""

# Expect:
echo "Installing Expect..."
sudo apt install expect -y
echo "Expect Installed!"
echo ""

# Firefox:
echo "Removing Old Firefox (Ubuntu Snap)..."
sudo snap remove --purge firefox
echo "Old Firefox (Ubuntu Snap) Removed!"
echo "Installing Firefox..."
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa -y
sudo apt update -y
sudo apt install firefox -y
echo "Firefox Installed!"
echo ""

# Google Chrome:
echo "Installing Google Chrome..."
cd ~/Downloads || return
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb
echo "Google Chrome Installed!"
echo ""

# HTop:
echo "Installing HTop..."
sudo apt install htop -y
echo "HTop Installed!"
echo ""

# LibreOffice:
echo "Installing LibreOffice..."
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo apt update -y
sudo apt install libreoffice -y
echo "LibreOffice Installed!"
echo ""

# Microsoft Edge:
echo "Installing Microsoft Edge..."
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg
sudo apt update -y
sudo apt install microsoft-edge-stable -y
echo "Microsoft Edge Installed!"
echo ""

# QBittorrent:
echo "Installing QBittorrent..."
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo apt update -y
sudo apt install qbittorrent -y
echo "QBittorrent Installed!"
echo ""

# SpeedTest CLI:
echo "Installing SpeedTest CLI..."
sudo apt install curl -y
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt install speedtest -y
echo "SpeedTest CLI Installed!"
echo ""

echo "All Basic Softwares Installed!"
echo ""
