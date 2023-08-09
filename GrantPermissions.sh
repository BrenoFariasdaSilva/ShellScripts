#!/bin/sh

# Run:
# chmod +x GrantPermissions.sh
# sudo ./GrantPermissions.sh

# Grant ShellScripts Execution Permissions
grant_permissions() {
  chmod +x GitHub/*.sh # Grant Execution Permission to all ShellScripts
  chmod +x Software-Installation/*.sh # Grant Execution Permission to all ShellScripts
  chmod +x Software-Installation/SubScripts/*.sh # Grant Execution Permission to all ShellScripts inside SubScripts folder
  chmod +x Software-Settings/*.sh # Grant Execution Permission to all ShellScripts
}

# Run all functions
grant_permissions
