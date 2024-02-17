#!/bin/sh

# Run:
# chmod +x ./LinuxBasics.sh
# sudo ./LinuxBasics.sh

# Update Commands:
echo "Updating System..."
sudo apt update -y
echo "System Updated!"
echo ""

#---Basic Softwares---#
echo "Installing Linux Basic Softwares..."
echo ""

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

# Cron Job:
echo "Installing Cron Job..."
sudo apt install cron -y
# CronJobs File Location: nano /etc/crontab
echo "Cron Job Installed!"
echo ""

# Expect:
echo "Installing Expect..."
sudo apt install expect -y
echo "Expect Installed!"
echo ""

# HTop:
echo "Installing HTop..."
sudo apt install htop -y
echo "HTop Installed!"
echo ""

# SpeedTest CLI:
echo "Installing SpeedTest CLI..."
sudo apt install curl -y
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt install speedtest -y
echo "SpeedTest CLI Installed!"
echo ""

echo "Linux Basic Softwares Installed!"
echo ""