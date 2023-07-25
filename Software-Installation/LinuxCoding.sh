#!/bin/sh

# Run:
# chmod +x LinuxCoding.sh
# sudo ./LinuxCoding.sh

# Open terminal as root:
# sudo -i
sudo su

# Update commands:
sudo apt update -y

#---Coding Softwares---#

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
