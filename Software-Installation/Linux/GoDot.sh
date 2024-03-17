#!/bin/sh

# Run:
# chmod +x LinuxCoding.sh
# sudo ./LinuxCoding.sh

# GoDot:
# Define where to install the Godot binary
INSTALL_DIR="/usr/local/bin"
GODOT_ZIP="godot_linux.zip"
echo "Fetching latest Godot 4 stable release for Linux..."
# Use GitHub API to find the download URL for the Linux 64-bit version
GODOT_LINUX_URL=$(curl -s https://api.github.com/repos/godotengine/godot/releases/latest | jq -r '.assets[] | select(.name | test("Linux.64")) | .browser_download_url')
if [ -z "$GODOT_LINUX_URL" ]; then
   echo "Failed to find a download URL. Please check your internet connection and try again."
   exit 1
fi
# Download the Godot ZIP file
echo "Downloading Godot from $GODOT_LINUX_URL..."
curl -L "$GODOT_LINUX_URL" -o "$GODOT_ZIP"
# Ensure the INSTALL_DIR exists
if [ ! -d "$INSTALL_DIR" ]; then
    echo "Creating installation directory at $INSTALL_DIR"
    mkdir -p "$INSTALL_DIR"
fi
# Unzip the downloaded file
echo "Installing Godot to $INSTALL_DIR..."
unzip -o "$GODOT_ZIP" -d "$INSTALL_DIR"
chmod +x "$INSTALL_DIR"/Godot*
# Clean up the ZIP file
rm "$GODOT_ZIP"
echo "Godot Installed!"
