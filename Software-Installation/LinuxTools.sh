#!/bin/sh

# Run:
# chmod +x LinuxTools.sh
# sudo ./LinuxTools.sh

# Update Commands:
echo "Updating System..."
sudo apt update -y
echo "System Updated!"
echo ""

#---Tools Softwares---#
echo "Installing Tools Softwares..."
echo ""

# Alien - Convert .rpm to .deb:
echo "Installing Alien RPM to DEB Converter..."
sudo add-apt-repository universe -y
sudo apt-get update -y
sudo apt-get install alien -y
echo "Alien RPM to DEB Converter Installed!"
echo ""

# Apitude:
echo "Installing Aptitude..."
sudo apt-get install aptitude -y
echo "Aptitude Installed!"
echo ""

# Atom:
echo "Installing Atom..."
cd ~/Downloads || return
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt update -y
sudo apt install atom -y
echo "Atom Installed!"
echo ""

# CPU-X:
echo "Installing CPU-X..."
sudo apt install cpu-x -y
echo "CPU-X Installed!"
echo ""

# Chrome Gnome Shell:
echo "Installing Chrome Gnome Shell..."
sudo apt install chrome-gnome-shell -y
echo "Chrome Gnome Shell Installed!"
echo ""

# Cloc - Count lines of Code:
echo "Installing Cloc..."
sudo apt install cloc -y
echo "Cloc Installed!"
echo ""

# DrawIO:
echo "Installing DrawIO..."
cd ~/Downloads || return
# Fetch the latest release data from DrawIO GitHub repository
LATEST_RELEASE_INFO=$(curl -s https://api.github.com/repos/jgraph/drawio-desktop/releases/latest)
# Extract the download URL for the latest .deb package
DOWNLOAD_URL=$(echo "$LATEST_RELEASE_INFO" | grep "browser_download_url.*draw.io-amd64.*\.deb" | cut -d '"' -f 4)
wget "$DOWNLOAD_URL" # Download the latest .deb package
DEB_FILE=$(basename "$DOWNLOAD_URL") # Extract the file name from the download URL
sudo dpkg -i "$DEB_FILE" # Install the downloaded package
rm "$DEB_FILE" # Remove the .deb package after installation
echo "DrawIO Installed!"
echo ""

# GDebi:
echo "Installing GDebi..."
sudo apt-get install gdebi -y
echo "GDebi Installed!"
echo ""

# Gnome Tweaks:
echo "Installing Gnome Tweaks..."
sudo add-apt-repository universe -y
sudo apt install gnome-tweaks -y
sudo apt install gnome-tweaks-tool -y
echo "Gnome Tweaks Installed!"
echo ""

# Gnome Shell Extensions:
echo "Installing Gnome Shell Extensions..."
sudo apt update -y
sudo apt install gnome-shell-extensions -y
echo "Gnome Shell Extensions Installed!"
echo ""

# Gnome Shell Extension Manager:
echo "Installing Gnome Shell Extension Manager..."
sudo apt install gnome-shell-extension-manager -y
echo "Gnome Shell Extension Manager Installed!"
echo ""

# Gnome Extensions CLI:
echo "Installing Gnome Extensions CLI..."
sudo apt-get install python3 python3-venv python3-pip -y
pip3 install --upgrade gnome-extensions-cli
echo "Gnome Extensions CLI Installed!"
echo ""

# GParted:
echo "Installing GParted..."
sudo apt install gparted -y
echo "GParted Installed!"
echo ""

# JabRef:
echo "Installing JabRef..."
sudo apt install jabref -y
echo "JabRef Installed!"
echo ""

# LM-Sensors:
echo "Installing LM-Sensors..."
sudo apt install lm-sensors -y
echo "LM-Sensors Installed!"
echo ""

# LibFuse2 AppImage Runner:
echo "Installing LibFuse2 AppImage Runner..."
sudo apt install libfuse2 -y
echo "LibFuse2 AppImage Runner Installed!"
echo ""

# Net-Tools:
echo "Installing Net-Tools..."
sudo apt install net-tools -y
echo "Net-Tools Installed!"
echo ""

# OCR Tesseract:
echo "Installing OCR Tesseract..."
sudo apt-get install tesseract-ocr-all -y
echo "OCR Tesseract Installed!"
echo ""

# OpenRGB:
echo "Installing OpenRGB..."
sudo add-apt-repository ppa:thopiekar/openrgb -y
sudo apt update -y
sudo apt install openrgb -y
echo "OpenRGB Installed!"
echo ""

# PulseEffects:
echo "Installing PulseEffects..."
sudo apt install pulseeffects -y
echo "PulseEffects Installed!"
echo ""

# Signal:
echo "Installing Signal..."
cd ~/Downloads || return
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor >signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg >/dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update -y
sudo apt install signal-desktop -y
echo "Signal Installed!"
echo ""

# Sublime:
echo "Installing Sublime..."
sudo apt-get install apt-transport-https -y
cd ~/Downloads || return
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update -y
sudo apt-get install sublime-text -y
echo "Sublime Installed!"
echo ""

# Telegram Desktop:
echo "Installing Telegram Desktop..."
sudo apt install telegram-desktop -y
echo "Telegram Desktop Installed!"
echo ""

# Vim:
echo "Installing Vim..."
sudo apt-get install vim -y
echo "Vim Installed!"
echo ""

# VirtualBox:
echo "Installing VirtualBox..."
sudo apt install virtualbox -y
sudo apt-get install virtualbox-guest-additions-iso -y
sudo apt install build-essential dkms "linux-headers-$(uname -r)" -y
echo "VirtualBox Installed!"
echo ""

echo "Tools Softwares Installed!"
echo ""