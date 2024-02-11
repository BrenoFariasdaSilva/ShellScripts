#!/bin/sh

# Run:
# chmod +x RunAll.sh
# sudo ./RunAll.sh

# Update system
full_system_update() {
   echo "Upgrading System..."
   sudo apt dist-upgrade -y # Install updates
   sudo apt full-upgrade -y # Full upgrade
   echo "System Fully Upgraded!"
}

# Update package list
update_package_list() {
   echo "Updating System Package List..."
   sudo apt update -y
   echo "System Package List Updated!"
   echo ""
}

# Grant ShellScripts Execution Permissions
grant_permissions() {
   echo "Granting Execution Permissions..."
   chmod +x ./*.sh          # Grant Execution Permission to all ShellScripts
   chmod +x SubScripts/*.sh # Grant Execution Permission to all ShellScripts inside SubScripts folder
   echo "Execution Permissions Granted!"
   echo ""
}

# Run all ShellScripts
run_scripts() {
   echo "Running ShellScripts..."
   echo "Running the LinuxBasic ShellScript..."
   ./LinuxBasic.sh  # Run LinuxBasic.sh
   echo "LinuxBasic ShellScript Run!"
   echo ""

   echo "Running the LinuxMedia ShellScript..."
   ./LinuxMedia.sh  # Run LinuxMedia.sh
   echo "LinuxMedia ShellScript Run!"
   echo ""

   echo "Running the LinuxTools ShellScript..."
   ./LinuxTools.sh  # Run LinuxTools.sh
   echo "LinuxTools ShellScript Run!"
   echo ""

   echo "Running the LinuxCoding ShellScript..."
   ./LinuxCoding.sh # Run LinuxCoding.sh
   echo "LinuxCoding ShellScript Run!"
   echo ""

   echo "Running the LinuxGames ShellScript..."
   ./LinuxGames.sh  # Run LinuxGames.sh
   echo "LinuxGames ShellScript Run!"
   echo ""

   echo "Running the LinuxSnap ShellScript..."
   ./LinuxSnap.sh   # Run LinuxSnap.sh
   echo "LinuxSnap ShellScript Run!"
   echo ""

   echo "ShellScripts Run!"
   echo ""
}

# Run all ShellScript SubScripts
run_sub_scripts() {
   echo "Running SubScripts..."
   ./SubScripts/BetterDiscord.sh   # Run BetterDiscord.sh
   ./SubScripts/GnomeExtensions.sh # Run LinuxAndroidStudio.sh
   ./SubScripts/LinuxAnaconda.sh   # Run LinuxAnaconda.sh
}

# Run all functions
echo "Running All Functions..."
update_package_list # Call the update_package_list function to update the package list
# full_system_update # Call the full_system_update function to update the system
grant_permissions # Call the grant_permissions function to grant execution permissions
run_scripts # Call the run_scripts function to run all ShellScripts
run_sub_scripts # Call the run_sub_scripts function to run all SubScripts
update_package_list # Call the update_package_list function to update the package list
echo "System Updated and ShellScripts Run!"
