#!/bin/sh

# Run:
# chmod +x LinuxGames.sh
# sudo ./LinuxGames.sh

# Update Commands:
sudo apt update -y

#---Games Softwares---#

# Steam:
sudo add-apt-repository multiverse -y
sudo apt update -y
sudo apt install steam -y
