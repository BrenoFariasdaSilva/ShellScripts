#!/bin/sh

# Run:
# chmod +x ./WSL.sh
# sudo ./WSL.sh

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

#---Coding Softwares---#
echo "Installing Linux Coding Softwares..."
echo ""

# ASDF:
echo "Installing ASDF..."
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
"$HOME/.asdf/asdf.sh"
"$HOME/.asdf/completions/asdf.bash"
echo "ASDF Installed!"
echo ""

# SDKMAN:
echo "Installing SDKMAN..."
if [ -d "$HOME/.sdkman" ]; then
   echo "SDKMAN is already installed"
else
   curl -s "https://get.sdkman.io" | bash
   # Ensure SDKMAN is initialized for this script's execution
   source "$HOME/.sdkman/bin/sdkman-init.sh"
   # It's also a good practice to ensure the shell profile sources SDKMAN for future sessions
   # This step is usually done by the SDKMAN installer, but we're making sure it's handled
   echo "Attempting to automatically source SDKMAN in shell profile..."
   if ! grep -qs "sdkman-init.sh" "$HOME/.bashrc"; then
      echo -e "\n#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!" >>"$HOME/.bashrc"
      echo "source \"$HOME/.sdkman/bin/sdkman-init.sh\"" >>"$HOME/.bashrc"
      echo "Added SDKMAN source to .bashrc"
   else
      echo "SDKMAN already sourced in .bashrc"
   fi

   if ! grep -qs "sdkman-init.sh" "$HOME/.zshrc"; then
      echo -e "\n#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!" >>"$HOME/.zshrc"
      echo "source \"$HOME/.sdkman/bin/sdkman-init.sh\"" >>"$HOME/.zshrc"
      echo "Added SDKMAN source to .zshrc"
   else
      echo "SDKMAN already sourced in .zshrc"
   fi

   echo "SDKMAN Installed!"
fi

sdk version
echo "SDKMAN Installed!"
echo ""

# C/C++:
echo "Installing C/C++..."
sudo apt install build-essential -y
sudo apt install manpages-dev -y
echo "C/C++ Installed!"
echo ""

# C#:
echo "Installing C#..."
wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt install -y gpg
wget -O - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o microsoft.asc.gpg
sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
wget https://packages.microsoft.com/config/ubuntu/22.04/prod.list
sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list
sudo apt update -y
sudo apt install -y apt-transport-https &&
   sudo apt update &&
   sudo apt install -y dotnet-sdk-6.0
rm packages-microsoft-prod.deb
echo "C# Installed!"
echo ""

# CLang:
echo "Installing CLang..."
sudo apt install clang-12 -y
echo "CLang Installed!"
echo ""

# Codon:
echo "Installing Codon..."
# Script with expect to handle the prompt automatically
/usr/bin/expect <<EOD
set timeout -1
spawn /bin/bash -c "$(curl -fsSL https://exaloop.io/install.sh)"

# Look for the prompt and respond with 'y'
expect "Update PATH in /home/$USER/.profile? [y/n]"
send -- "y\r"

expect eof
EOD

# Update the PATH directly assuming the installation script completes successfully
export PATH="/home/$USER/.codon/bin:$PATH"
echo "export PATH=/home/$USER/.codon/bin:\$PATH" >>~/.bashrc
echo "export PATH=/home/$USER/.codon/bin:\$PATH" >>~/.zshrc
echo "Codon Installed!"
echo ""

# Docker:
echo "Installing Docker..."
sudo apt update -y # Update package lists
# Install prerequisites
sudo apt install -y \
   apt-transport-https \
   ca-certificates \
   curl \
   gnupg \
   lsb-release
# Remove existing GPG key file if it exists to prevent the overwrite prompt
GPG_KEY_FILE='/usr/share/keyrings/docker-archive-keyring.gpg'
if [ -f "$GPG_KEY_FILE" ]; then
   echo "Removing existing GPG key file: $GPG_KEY_FILE"
   sudo rm -f "$GPG_KEY_FILE"
fi
# Download and save the GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o "$GPG_KEY_FILE"
# Add Docker repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=$GPG_KEY_FILE] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
# Update package lists to include Docker's repo
sudo apt update -y
# Install Docker Engine, CLI, and Containerd
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
# Optionally, add your user to the docker group to run docker commands without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
sudo apt get install docker -y
sudo apt install docker.io -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo systemctl enable docker.service     # Start Docker on boot
sudo systemctl enable containerd.service # Start Containerd on boot
sudo docker run --rm hello-world
sudo docker rmi hello-world
echo "Docker Installed!"
echo ""

# Fly.IO:
echo "Installing Fly.IO..."
curl -L https://fly.io/install.sh | sh
echo "export FLYCTL_INSTALL=\"/home/$(whoami)/.fly\"" >>~/.bashrc
echo "export FLYCTL_INSTALL=\"/home/$(whoami)/.fly\"" >>~/.zshrc
echo "export PATH=\"\$FLYCTL_INSTALL/bin:\$PATH\"" >>~/.bashrc
echo "export PATH=\"\$FLYCTL_INSTALL/bin:\$PATH\"" >>~/.zshrc
echo "Fly.IO Installed!"
echo ""

# Java:
echo "Installing Java..."
bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install java"
java -version
echo "Java Installed!"
echo ""

# Python:
echo "Installing Python..."
sudo apt install python3 python3-venv python3-pip -y
sudo apt install python-is-python3
python3 --version
echo "Python Installed!"
echo ""

# Kotlin:
echo "Installing Kotlin..."
bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install kotlin"
kotlin -version
echo "Kotlin Installed!"
echo ""

# MakeFile:
echo "Installing MakeFile..."
sudo apt install make -y
echo "MakeFile Installed!"
echo ""

# Maven:
echo "Installing Maven..."
sudo apt install maven -y
echo "Maven Installed!"
echo ""

# Mono CSharp:
echo "Installing Mono CSharp..."
sudo apt install -y mono-mcs
echo "Mono CSharp Installed!"
echo ""

# NodeJS:
echo "Installing NodeJS..."
sudo apt install nodejs -y
echo "NodeJS Installed!"
echo ""

# NPM
echo "Installing NPM..."
sudo apt install npm -y
echo "NPM Installed!"
echo ""

# NestJS:
echo "Installing NestJS..."
sudo npm install -g @nestjs/cli
echo "NestJS Installed!"
echo ""

# OpenGL:
echo "Installing OpenGL..."
sudo apt install freeglut3 freeglut3-dev libglew-dev -y
sudo apt install mesa-utils -y
echo "OpenGL Installed!"
echo ""

# PyPy:
echo "Installing PyPy..."
sudo apt install pypy -y
sudo apt install pypy3 -y
echo "PyPy Installed!"
echo ""

# React:
echo "Installing React..."
sudo npm install -g create-react-app
echo "React Installed!"
echo ""

# Ruby:
echo "Installing Ruby..."
sudo apt install ruby -y
sudo apt install git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev -y
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
rbenv -v
echo "Ruby Installed!"
echo ""

# Scala:
echo "Installing Scala..."
curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d >cs && chmod +x cs && ./cs setup
echo "export PATH=\"\$PATH\":~/.local/share/coursier/bin" >>~/.bashrc
echo "Scala Installed!"
echo ""

# ShellCheck:
echo "Installing ShellCheck..."
sudo apt install shellcheck -y
echo "ShellCheck Installed!"
echo ""

# Visual Studio Code
echo "Installing Visual Studio Code..."
sudo apt update -y
code .
sudo apt install software-properties-common apt-transport-https -y
cd ~/Downloads || return
wget -y
cd ~/Downloads || return
wget -O- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update -y
sudo apt install code -y
wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh | bash
echo "Visual Studio Code Installed!"
echo ""

# Yarn:
echo "Installing Yarn..."
sudo apt install curl
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install yarn -y
echo "Yarn Installed!"
echo ""

# ZSH:
echo "Installing ZSH..."
sudo apt install zsh -y
echo "Setting ZSH as the default shell..."
chsh -s $(which zsh) # Change the default shell to ZSH
echo "Installing Oh My ZSH..."
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"                                                   # Install Oh My ZSH
echo "Installing ZSH Plugins..."
echo "Installing ZSH Autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions             # Install ZSH Autosuggestions
echo "Installing ZSH Syntax Highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting # Install ZSH Syntax Highlighting
echo "Installing ZSH Themes..."
echo "Installing PowerLevel10K..."
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k                                               # Install PowerLevel10K ZSH Theme                                            # Install Powerlevel10k
echo "Restarting ZSH..."
exec zsh             
echo "ZSH Installed!"

echo "Coding Softwares Installed!"
echo ""
