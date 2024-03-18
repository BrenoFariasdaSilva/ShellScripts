#!/bin/bash

# Run:
# chmod +x ./Vencord.sh
# sudo ./Vencord.sh

# This script downloads and runs the VencordInstaller script

echo "Downloading and running the VencordInstaller script..."

# Execute the command
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"

echo "Installation process has been completed."
