#!/bin/sh

# Run:
# chmod +x LinuxBasic.sh
# sudo ./LinuxBasic.sh

# Open terminal as root:
# sudo -i
sudo su

# Update commands:
sudo apt update -y

#---Basic Softwares---#

# Curl: 
sudo apt install curl -y

# WGet:
sudo apt install wget -y

# Git:
sudo apt-get install git -y

# DPKG:
sudo apt-get -y install dpkg

# 7Zip
sudo apt-get install p7zip-full -y

# Unzip:
sudo apt-get install unzip -y

# Zip:
sudo apt-get install zip -y

# Brave Browser:
sudo apt install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

# Cron Job:
sudo apt-get install cron
# CronJobs File Location: nano /etc/crontab

# Directory Tree:
sudo apt install tree -y

# Firefox
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa -y
sudo apt update -y
sudo apt install firefox -y

# Google Chrome:
cd ~/Downloads || return
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb

# LibreOffice:
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo apt update -y
sudo apt install libreoffice -y

# Microsoft Edge:
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg
sudo apt update -y
sudo apt install microsoft-edge-stable -y

# QBittorrent:
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo apt update -y
sudo apt install qbittorrent -y

# SpeedTest CLI:
sudo apt-get install curl -y
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest -y
