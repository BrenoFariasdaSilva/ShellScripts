#!/bin/sh

# Run:
# chmod +x LinuxTools.sh
# sudo ./LinuxTools.sh

# Open terminal as root:
# sudo -i
sudo su

# Update commands:
sudo apt update -y

#---Tools Softwares---#

# Alien - Convert .rpm to .deb:
sudo add-apt-repository universe -y
sudo apt-get update -y
sudo apt-get install alien -y

# Apitude:
sudo apt-get -y install aptitude

# Atom:
cd ~/Downloads
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt update -y
sudo apt install atom -y

# CPU-X:
sudo apt install cpu-x -y

# Chrome Gnome Shell:
sudo apt install chrome-gnome-shell -y

# Cloc - Count lines of Code:
sudo apt install cloc -y

# DrawIO
cd ~/Downloads
wget https://github.com/jgraph/drawio-desktop/releases/download/v13.0.3/draw.io-amd64-13.0.3.deb
sudo dpkg -i draw.io-amd64-13.0.3.deb
rm ./draw.io-amd64-13.0.3.deb

# GDebi:
sudo apt-get install gdebi -y

# Gnome Tweaks:
sudo add-apt-repository universe -y
sudo apt install gnome-tweaks
sudo apt install gnome-tweaks-tool -y

# Gnome Shell Extensions:
sudo apt update -y
sudo apt install gnome-shell-extensions -y

# Gnome Shell Extension Manager:
sudo apt install gnome-shell-extension-manager -y

# Gnome Extensions CLI:
sudo apt-get install python3 python3-venv python3-pip -y
pip3 install --upgrade gnome-extensions-cli

# LM-Sensors:
sudo apt install lm-sensors

# LibFuse2 AppImage Runner
sudo apt install libfuse2 -y

# Net-Tools:
sudo apt install net-tools

# OCR Tesseract
sudo apt-get install tesseract-ocr-all -y

# Signal:
cd ~/Downloads
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor >signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg >/dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update -y

# Sublime:
sudo apt-get install apt-transport-https
cd ~/Downloads
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update -y
sudo apt-get install sublime-text -y

# Telegram Desktop
sudo apt install telegram-desktop -y

# Vim:
sudo apt-get install vim -y

# VirtualBox
sudo apt install virtualbox -y
sudo apt-get install virtualbox-guest-additions-iso -y
sudo apt install build-essential dkms linux-headers-$(uname -r)
