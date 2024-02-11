#!/bin/bash

echo "Installing the latest version of BitWarden Desktop..."

# Define the GitHub API URL for Bitwarden clients releases
GITHUB_API_URL="https://api.github.com/repos/bitwarden/clients/releases"

# Navigate to the Downloads directory
cd ~/Downloads || exit

# Fetch the latest desktop release URL for Bitwarden
DOWNLOAD_URL=$(curl -s "$GITHUB_API_URL" | grep "browser_download_url.*-x86_64.AppImage\"" | head -n 1 | cut -d '"' -f 4)

if [ -z "$DOWNLOAD_URL" ]; then
	echo "Failed to find a download URL for Bitwarden Desktop AppImage. Exiting."
	exit 1
fi

echo "Download URL found: $DOWNLOAD_URL"

FILENAME=$(basename "$DOWNLOAD_URL")

# Download the AppImage
echo "Downloading Bitwarden Desktop AppImage..."
wget -O "$FILENAME" "$DOWNLOAD_URL"
if [ $? -ne 0 ]; then
	echo "Failed to download Bitwarden Desktop. Exiting."
	exit 1
fi

echo "Bitwarden Desktop downloaded: $FILENAME"

# Make the AppImage executable
chmod +x "$FILENAME"

# Integration with AppImageLauncher if available
if command -v AppImageLauncher &>/dev/null; then
	echo "Integrating Bitwarden Desktop with AppImageLauncher..."
	AppImageLauncher "$FILENAME"
else
	echo "AppImageLauncher is not installed. Manual integration is required."
fi

rm "$FILENAME" # Remove the AppImage

echo "BitWarden Desktop installation complete."
