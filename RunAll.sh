#!/bin/sh

# Run:
# chmod +x ./RunAll.sh
# sudo ./RunAll.sh

# Function to get OS name from user
get_os_name() {
   read -rp "Enter the OS name (Linux / WSL): " os_name

   # If the os_name is different from Linux or WSL, then print an error message and exit
   if [ "$os_name" != "Linux" ] && [ "$os_name" != "WSL" ]; then
      echo "Invalid OS name! Please enter 'Linux' or 'WSL'."
      exit 1
   fi

   echo "$os_name"
}

# Run different functions based on OS
run_os_functions() {
   local os_name="$1"

   if [ "$os_name" == "Linux" ]; then
      echo "Running the Linux Functions..."
      run_linux_scripts # Call the run_linux_scripts function
      echo "Linux Functions Executed!"
      echo ""
   elif [ "$os_name" == "WSL" ]; then
      echo "Running the WSL Functions..."
      run_wsl_scripts # Call the run_wsl_scripts function
      echo "WSL Functions Executed!"
      echo ""
   fi
}

# Grant ShellScripts Execution Permissions
grant_permissions() {
   echo "Granting Execution Permissions..."
   chmod +x ./GrantPermissions.sh # Grant Execution Permission to GrantPermissions.sh
   ./GrantPermissions.sh # Run GrantPermissions.sh
   echo "Execution Permissions Granted!"
   echo ""
}

# Run linux ShellScripts
run_linux_scripts() {
   echo "Running Linux ShellScripts..."

   echo "Running the Software Installation ShellScripts..."
   ./Software-Installation/Linux/RunAll.sh # Run RunAll.sh
   echo "Software Installation ShellScripts Executed!"
   echo ""

   echo "Running the Software Settings ShellScripts..."
   ./Software-Settings/Linux/RunAll.sh # Run RunAll.sh
   echo "Software Settings ShellScripts Executed!"
   echo ""

   echo "Linux ShellScripts Executed!"
   echo ""
}

# Run WSL ShellScripts
run_wsl_scripts() {
   echo "Running WSL ShellScripts..."

   echo "Running the Software Installation ShellScripts..."
   ./Software-Installation/WSL/RunAll.sh # Run RunAll.sh
   echo "Software Installation ShellScripts Executed!"
   echo ""

   echo "WSL ShellScripts Executed!"
   echo ""
}

# Run all functions
grant_permissions # Call the grant_permissions function
os_name=$(get_os_name) # Call the get_os_name function to get the OS name from the user
run_os_functions "$os_name" # Call the run_os_functions function to run different functions based on OS
echo "Software Installation and Settings ShellScripts Executed!"
