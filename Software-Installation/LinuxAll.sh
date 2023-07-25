#!/bin/sh

# Run:
# chmod +x LinuxAll.sh
# sudo ./LinuxAll.sh

# Open terminal as root:
# sudo -i
sudo su

# Update commands:
sudo apt update -y
sudo apt dist-upgrade -y
apt-get full-upgrade -y

#---Basic Softwares---#

# 7Zip
sudo apt-get install p7zip-full -y

# Curl: 
sudo apt install curl -y

# WGet:
sudo apt install wget -y

# Brave Browser:
sudo apt install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

# Cron Job:
sudo apt-get install cron
# nano /etc/crontab

# Directory Tree:
sudo apt install tree -y

# Firefox
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa -y
sudo apt update -y
sudo apt install firefox -y

# Google Chrome:
cd ~/Downloads
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

# Unzip:
sudo apt-get install unzip -y

# Zip:
sudo apt-get install zip -y

# Update System:
sudo apt update -y

#---Media Softwares---#

# Audacity:
sudo apt install audacity -y

# Blender:
sudo apt install blender -y

# Franz - Messenger:
cd ~/Downloads
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
cd ~/Downloads
wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb
sudo apt install ./megasync-xUbuntu_22.04_amd64.deb
rm ./megasync-xUbuntu_22.04_amd64.deb

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
cd ~/Downloads
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb -y
rm ./skypeforlinux-64.deb

# VLC:
sudo apt install vlc -y

# Update System:
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

# DPKG:
sudo apt-get -y install dpkg

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

# LM-Sensors:
sudo apt install lm-sensors

# LibFuse2 AppImage Runner
sudo apt install libfuse2 -y

# Net-Tools:
sudo apt install net-tools

# OCR Tesseract
sudo apt-get install tesseract-ocr-all -y

# PortMaster:
sudo apt install libnetfilter-queue1 libappindicator3-1 -y

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

# Update System:
sudo apt update -y

#---Coding Softwares---#

# Git:
sudo apt-get install git -y

# ASDF:
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
$HOME/.asdf/asdf.sh
$HOME/.asdf/completions/asdf.bash

# SDKMAN:
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# C:
sudo apt install build-essential -y
sudo apt-get install manpages-dev -y

# C#:
wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install -y gpg
wget -O - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o microsoft.asc.gpg
sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
wget https://packages.microsoft.com/config/ubuntu/22.04/prod.list
sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list
sudo apt-get update; \
sudo apt-get install -y apt-transport-https && \
sudo apt-get update && \
sudo apt-get install -y dotnet-sdk-6.0
rm packages-microsoft-prod.deb

# Clang:
sudo apt install clang-12 -y

# Codon:
/bin/bash -c "$(curl -fsSL https://exaloop.io/install.sh)"
export PATH=/home/brenofarias/.codon/bin:$PATH
echo 'export PATH=/home/brenofarias/.codon/bin:$PATH' >> ~/.bashrc 
echo 'export PATH=/home/brenofarias/.codon/bin:$PATH' >> ~/.zshrc 

# Docker:
sudo apt update -y
sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo apt update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
sudo groupadd docker
sudo usermod -aG docker $USER
sudo apt get install docker -y
sudo apt install docker.io -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo docker run --name hello-world-container hello-world
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo docker rm hello-world-container

# Fly.io:
curl -L https://fly.io/install.sh | sh
echo 'export FLYCTL_INSTALL="/home/$(whoami)/.fly"' >> ~/.bashrc
echo 'export FLYCTL_INSTALL="/home/$(whoami)/.fly"' >> ~/.zshrc
echo 'export PATH="$FLYCTL_INSTALL/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$FLYCTL_INSTALL/bin:$PATH"' >> ~/.zshrc

# Insomnia:
echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" |
sudo tee -a /etc/apt/sources.list.d/insomnia.list
sudo apt update && sudo apt upgrade
sudo apt-get install insomnia -y

# Java:
sdk install java
java -version

# Python:
sudo apt-get install python3 python3-venv python3-pip -y

# Jupyter using Pip
pip install jupyterlab
pip install notebook
# Launch: jupyter-lab or jupyter notebook in terminal

# Kotlin:
sdk install kotlin
kotlin -version

# MakeFile:
sudo apt install make -y

# Maven:
sudo apt install maven -y

# MongoDB:
sudo apt install wget curl gnupg2 software-properties-common apt-transport-https ca-certificates lsb-release -y
curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-6.gpg
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
cd ~/Downloads
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
sudo dpkg -i ./libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
sudo apt update && sudo apt upgrade
sudo apt install mongodb-org -y
rm ./libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb

# Mono CSharp:
sudo apt-get install -y mono-mcs

# NodeJS:
sudo apt install nodejs -y

# NPM
sudo apt install npm -y

# NestJS:
sudo npm install -g @nestjs/cli

# OpenGL:
sudo apt-get install freeglut3 freeglut3-dev libglew-dev -y
sudo apt-get install mesa-utils -y

# PgAdmin:
curl -fsSL https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/pgadmin.gpg
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'
sudo apt update && sudo apt upgrade
sudo apt install pgadmin4-desktop -y
sudo apt install pgadmin4-web -y
sudo apt install pgadmin4 -y

# Postgres:
sudo apt install postgresql postgresql-contrib -y
sudo systemctl start postgresql.service

# Pypy:
sudo apt install pypy -y
sudo apt install pypy3 -y

# React:
sudo npm install -g create-react-app

# Ruby:
sudo apt install ruby -y

# Scala:
curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup

# Visual Studio Code
sudo apt update -y
sudo apt install software-properties-common apt-transport-https cd ~/Downloads
wget -y
cd ~/Downloads
wget -O- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update -y
sudo apt install code -y
wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh | bash

# Yarn:
sudo apt install curl
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install yarn -y

# Update System:
sudo apt update -y

#---Games Softwares---#

# Steam:
sudo add-apt-repository multiverse -y
sudo apt update -y
sudo apt install steam -y

# Update System:
sudo apt update -y

#---Snap Softwares---#

# Snapd:
sudo apt install snapd -y
sudo snap install core -y
sudo snap install snap-store

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

# Update System:
sudo apt update -y
