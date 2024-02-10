#!/bin/sh

# Run:
# chmod +x RunAll.sh
# sudo ./RunAll.sh

# Update system
full_system_update() {
  update_package_list      # Call the update_package_list function to update the package list
  sudo apt dist-upgrade -y # Install updates
  apt full-upgrade -y      # Full upgrade
}

# Update package list
update_package_list() {
  sudo apt update -y
}

# Grant ShellScripts Execution Permissions
grant_permissions() {
  chmod +x ./*.sh          # Grant Execution Permission to all ShellScripts
  chmod +x SubScripts/*.sh # Grant Execution Permission to all ShellScripts inside SubScripts folder
}

# Run all ShellScripts
run_scripts() {
  ./LinuxBasic.sh  # Run LinuxBasic.sh
  ./LinuxMedia.sh  # Run LinuxMedia.sh
  ./LinuxTools.sh  # Run LinuxTools.sh
  ./LinuxCoding.sh # Run LinuxCoding.sh
  ./LinuxGames.sh  # Run LinuxGames.sh
  ./LinuxSnap.sh   # Run LinuxSnap.sh
}

# Run all SubScripts
run_sub_scripts() {
  ./SubScripts/BetterDiscord.sh   # Run BetterDiscord.sh
  ./SubScripts/GnomeExtensions.sh # Run LinuxAndroidStudio.sh
  ./SubScripts/LinuxAnaconda.sh   # Run LinuxAnaconda.sh
}

# Run all functions
full_system_update
grant_permissions
run_scripts
run_sub_scripts
update_package_list
