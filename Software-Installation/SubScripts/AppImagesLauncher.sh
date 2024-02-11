#!/bin/bash

echo "Installing AppImageLauncher..."

# Navigate to the Downloads directory
cd ~/Downloads || exit

# Fetch the latest release data
GITHUB_API_URL="https://api.github.com/repos/TheAssassin/AppImageLauncher/releases/latest"
DOWNLOAD_URL=$(curl -s "$GITHUB_API_URL" | grep "browser_download_url.*amd64.deb" | cut -d '"' -f 4 | head -n 1)

if [ -z "$DOWNLOAD_URL" ]; then
	echo "Failed to find a download URL. Exiting."
	exit 1
fi

echo "Download URL found: $DOWNLOAD_URL"

FILENAME=$(basename "$DOWNLOAD_URL")

# Download the .deb package
wget -O "$FILENAME" "$DOWNLOAD_URL"
if [ $? -ne 0 ]; then
	echo "Failed to download the file. Exiting."
	exit 1
fi

echo "Package downloaded: $FILENAME"

# Make sure the file is readable by all users
chmod a+r "$FILENAME"

echo "Installing $FILENAME..."
sudo apt install "./$FILENAME" -y
if [ $? -ne 0 ]; then
	echo "Installation failed. Attempting to fix missing dependencies..."
	sudo apt-get install -f -y
fi

# Clean up by removing the downloaded .deb file
rm "$FILENAME"

echo "AppImageLauncher Installed!"
