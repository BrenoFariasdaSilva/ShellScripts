#!/bin/sh

# Run:
# chmod +x ./RunAll.sh
# sudo ./RunAll.sh

# Grant ShellScripts Execution Permissions
grant_permissions() {
   echo "Granting Execution Permissions..."
   chmod +x ./GrantPermissions.sh # Grant Execution Permission to GrantPermissions.sh
   ./GrantPermissions.sh # Run GrantPermissions.sh
   echo "Execution Permissions Granted!"
   echo ""
}

# Run all ShellScripts
run_main_scripts() {
   echo "Running ShellScripts..."

   echo "Running the Software Installation ShellScripts..."
   ./Software-Installation/RunAll.sh # Run RunAll.sh
   echo "Software Installation ShellScripts Executed!"
   echo ""

   echo "Running the Software Settings ShellScripts..."
   ./Software-Settings/RunAll.sh # Run RunAll.sh
   echo "Software Settings ShellScripts Executed!"
   echo ""

   echo "ShellScripts Executed!"
   echo ""
}

# Run all functions
echo "Running All Functions..."
grant_permissions # Call the grant_permissions function to grant execution permissions
run_main_scripts # Call the run_scripts function to run all ShellScripts
echo "Software Installation and Settings ShellScripts Executed!"
