#!/bin/sh

# Run:
# chmod +x LinuxGames.sh
# sudo ./LinuxGames.sh

# Open terminal as root:
# sudo -i
sudo su

# Update commands:
sudo apt update -y

#---Games Softwares---#

# Steam:
sudo add-apt-repository multiverse -y
sudo apt update -y
sudo apt install steam -y
