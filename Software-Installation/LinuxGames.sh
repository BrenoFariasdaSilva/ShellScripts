#!/bin/sh

# Run:
# chmod +x LinuxGames.sh
# sudo ./LinuxGames.sh

# Update Commands:
echo "Updating System..."
sudo apt update -y
echo "System Updated!"
echo ""

#---Games Softwares---#

# Steam:
echo "Installing Steam..."
sudo add-apt-repository multiverse -y
sudo apt update -y
sudo apt install steam -y
echo "Steam Installed!"

echo "Games Softwares Installed!"
echo ""
