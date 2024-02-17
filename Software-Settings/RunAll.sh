#!/bin/sh

# Run:
# chmod +x ./RunAll.sh
# sudo ./RunAll.sh

# Update the package list
update_package_list() {
   echo "Updating System Package List..."
   sudo apt update -y # Update package list
   echo "System Package List Updated!"
   echo ""
}

# Grant ShellScripts Execution Permissions
grant_permissions() {
   echo "Granting Execution Permissions..."
   chmod +x ./*.sh # Grant Execution Permission to all ShellScripts
   echo "Execution Permissions Granted!"
   echo ""
}

# Run all ShellScripts
run_main_scripts() {
   echo "Running Software Settings Scripts..."

   echo "Running the Bash ShellScript..."
   ./Bash.sh # Run Bash.sh
   echo "Bash ShellScript Executed!"
   echo ""

   echo "Running the Dracula Terminal Theme ShellScript..."
   ./DraculaTerminalTheme.sh # Run DraculaTerminalTheme.sh
   echo "Dracula Terminal Theme ShellScript Executed!"
   echo ""

   echo "Running the Keyboard Shortcuts ShellScript..."
   ./KeyboardShortcuts.sh # Run KeyboardShortcuts.sh
   echo "Keyboard Shortcuts ShellScript Executed!"
   echo ""

   echo "Running the Nautilus Settings ShellScript..."
   ./NautilusSettings.sh # Run NautilusSettings.sh
   echo "Nautilus Settings ShellScript Executed!"
   echo ""

   echo "Software Settings Scripts Executed!"
   echo ""
}

# Run all functions
echo "Running All Functions..."
update_package_list # Call the update_package_list function to update the package list
grant_permissions # Call the grant_permissions function to grant execution permissions
run_main_scripts # Call the run_scripts function to run all ShellScripts
update_package_list # Call the update_package_list function to update the package list
echo "System Updated and Software Settings Scripts Executed!"
