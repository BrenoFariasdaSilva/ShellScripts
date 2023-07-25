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

grant_permissions() {
  chmod +x ./*.sh
}

run_scripts() {
  ./LinuxBasic.sh
  ./LinuxMedia.sh
  ./LinuxTools.sh
  ./LinuxCoding.sh
  ./LinuxGames.sh
  ./LinuxSnap.sh
}

grant_permissions
run_scripts
