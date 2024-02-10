#!/bin/sh

# Run:
# chmod +x LinuxBasic.sh
# sudo ./LinuxBasic.sh

# Update commands:
sudo apt update -y

#---Basic Softwares---#

# Curl:
echo "Installing Curl..."
sudo apt install curl -y
echo ""

# WGet:
echo "Installing WGet..."
sudo apt install wget -y
echo ""

# Git:
echo "Installing Git..."
sudo apt-get install git -y
echo ""

# DPKG:
echo "Installing DPKG..."
sudo apt-get install dpkg -y
echo ""

# 7Zip:
echo "Installing 7Zip..."
sudo apt-get install p7zip-full -y
echo ""

# Unzip:
echo "Installing Unzip..."
sudo apt-get install unzip -y
echo ""

# Zip:
echo "Installing Zip..."
sudo apt-get install zip -y
echo ""

# Brave Browser:
echo "Installing Brave Browser..."
sudo apt install apt-transport-https curl gnupg -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y
echo ""

# Cron Job:
echo "Installing Cron Job..."
sudo apt-get install cron -y
# CronJobs File Location: nano /etc/crontab
echo ""

# Directory Tree:
echo "Installing Directory Tree..."
sudo apt install tree -y
echo ""

# Firefox:
echo "Installing Firefox..."
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa -y
sudo apt update -y
sudo apt install firefox -y
echo ""

# Google Chrome:
echo "Installing Google Chrome..."
cd ~/Downloads || return
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb
echo ""

# HTop:
echo "Installing HTop..."
sudo apt install htop -y
echo ""

# LibreOffice:
echo "Installing LibreOffice..."
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo apt update -y
sudo apt install libreoffice -y
echo ""

# Microsoft Edge:
echo "Installing Microsoft Edge..."
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg
sudo apt update -y
sudo apt install microsoft-edge-stable -y
echo ""

# QBittorrent:
echo "Installing QBittorrent..."
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo apt update -y
sudo apt install qbittorrent -y
echo ""

# SpeedTest CLI:
echo "Installing SpeedTest CLI..."
sudo apt-get install curl -y
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest -y
echo ""
