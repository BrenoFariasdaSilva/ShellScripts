#!/bin/sh

# Run:
# chmod +x ./RunAll.sh
# sudo ./RunAll.sh

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

   echo "Running the Nautilus Keyboard Shortcuts Script..."
   sudo ./NautilusKeyboardShortcuts.sh
   echo "Nautilus Keyboard Shortcuts Set!"

   echo "Running the Nautilus Settings Script..."
   sudo ./NautilusSettings.sh
   echo "Nautilus Settings Set!"

   echo "Running the Terminal Dracula Theme Script..."
   sudo ./TerminalDraculaTheme.sh
   echo "Terminal Dracula Theme Set!"

   echo "Running the Terminal Keyboard Shortcuts Script..."
   sudo ./TerminalKeyboardShortcuts.sh
   echo "Terminal Keyboard Shortcuts Set!"

   echo "Software Settings Scripts Executed!"
   echo ""
}

# Run all functions
echo "Running All Functions..."
grant_permissions # Call the grant_permissions function to grant execution permissions
run_main_scripts # Call the run_scripts function to run all ShellScripts
echo "System Updated and Software Settings Scripts Executed!"
