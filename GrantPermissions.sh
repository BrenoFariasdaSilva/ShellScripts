#!/bin/sh

# Run:
# chmod +x ./GrantPermissions.sh
# sudo ./GrantPermissions.sh

# Grant ShellScripts Execution Permissions
grant_permissions() {
  chmod +x Software-Installation/Linux/*.sh # Grant Execution Permission to the Linux ShellScripts
  chmod +x Software-Installation/Linux/SubScripts/*.sh # Grant Execution Permission to all ShellScripts inside SubScripts folder
  chmod +x Software-Installation/Linux/SubScripts/Manual/*.sh # Grant Execution Permission to all ShellScripts inside SubScripts/Manual folder
  chmod +x Software-Installation/WSL/*.sh # Grant Execution Permission to the WSL ShellScripts
  chmod +x Software-Settings/Linux/*.sh # Grant Execution Permission to all ShellScripts
}

# Run all functions
grant_permissions
