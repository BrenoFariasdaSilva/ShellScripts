#!/bin/bash

# Run:
# chmod +x ./TerminalDraculaTheme.sh
# sudo ./TerminalDraculaTheme.sh

echo "Installing the Dracula Theme for GNOME Terminal..."

# Check if GNOME Terminal is installed
if ! command -v gnome-terminal &> /dev/null; then
	echo "GNOME Terminal is not installed on your system."
	echo "Installing GNOME Terminal..."
	sudo apt install gnome-terminal -y
	echo "GNOME Terminal has been installed."
fi

echo "Cloning the Dracula theme for GNOME Terminal..."
# Clone the Dracula theme for GNOME Terminal
git clone https://github.com/dracula/gnome-terminal.git ~/dracula-gnome-terminal

# Navigate to the cloned directory
cd ~/dracula-gnome-terminal

# Run the install script - it will prompt for confirmation to create a new profile
# If you want to automate without creating a new profile, modifications are needed
echo "Running the Dracula Theme Installation Script..."
./install.sh
echo "Dracula theme has been installed for GNOME Terminal."

# Instructions for setting Dracula as the default profile manually:
# You would typically do this through the GNOME Terminal UI, or use gsettings as follows:

# First, get the list of profiles
PROFILES=$(gsettings get org.gnome.Terminal.ProfilesList list)

# Extract the UUID of the Dracula profile (Assuming Dracula is the latest added profile)
# This method is a bit of a hack and assumes the last profile is the one you want to set as default.
# A more reliable method would involve searching the profile list by name or knowing the UUID beforehand.
DRACULA_PROFILE_UUID=$(echo $PROFILES | tr -d "[]\', " | awk -F: '{print $(NF)}')

# Set the Dracula profile as the default
echo "Setting the Dracula Profile as the Default Profile..."
gsettings set org.gnome.Terminal.ProfilesList default "$DRACULA_PROFILE_UUID"
echo "Dracula Theme Set as the Default Profile!"

echo "Dracula theme is installed and set as the default profile."
echo ""