#!/bin/bash

# Run:
# chmod +x ./DockStation.sh
# sudo ./DockStation.sh

echo "Installing the latest version of DockStation..."

# Define the GitHub API URL for DockStation releases
GITHUB_API_URL="https://api.github.com/repos/DockStation/dockstation/releases"

# Navigate to the Downloads directory
cd ~/Downloads || exit

# Fetch the latest release URL for DockStation
DOWNLOAD_URL=$(curl -s "$GITHUB_API_URL" | grep "browser_download_url.*x86_64.AppImage\"" | head -n 1 | cut -d '"' -f 4)

if [ -z "$DOWNLOAD_URL" ]; then
	echo "Failed to find a download URL for DockStation. Exiting."
	exit 1
fi

echo "Download URL found: $DOWNLOAD_URL"

FILENAME=$(basename "$DOWNLOAD_URL")

# Download the AppImage
echo "Downloading DockStation..."
wget -O "$FILENAME" "$DOWNLOAD_URL"
if [ $? -ne 0 ]; then
	echo "Failed to download DockStation. Exiting."
	exit 1
fi

echo "DockStation downloaded: $FILENAME"

# Make the AppImage executable
chmod +x "$FILENAME"

# Integration with AppImageLauncher if available
if command -v AppImageLauncher &> /dev/null; then
	echo "Integrating DockStation with AppImageLauncher..."
	AppImageLauncher "$FILENAME"
else
	echo "AppImageLauncher is not installed. Manual execution required."
fi

rm "$FILENAME" # Remove the AppImage

echo "DockStation installation complete."
