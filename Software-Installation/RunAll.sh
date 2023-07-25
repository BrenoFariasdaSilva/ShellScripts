#!/bin/sh

# Run:
# chmod +x RunAll.sh
# sudo ./RunAll.sh

# Open terminal as root:
# sudo -i
sudo su

full_system_update() {
  sudo apt update -y
  sudo apt dist-upgrade -y
  apt-get full-upgrade -y
}

update_package_list() {
  sudo apt update -y
}

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

full_system_update
grant_permissions
run_scripts
update_package_list
