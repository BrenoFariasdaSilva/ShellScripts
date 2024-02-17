#!/bin/bash

# Run:
# chmod +x ./Terminal.sh
# sudo ./Terminal.sh

# Clone the Dracula theme for GNOME Terminal
git clone https://github.com/dracula/gnome-terminal.git ~/dracula-gnome-terminal

# Navigate to the cloned directory
cd ~/dracula-gnome-terminal

# Run the install script - it will prompt for confirmation to create a new profile
# If you want to automate without creating a new profile, modifications are needed
./install.sh

# Instructions for setting Dracula as the default profile manually:
# You would typically do this through the GNOME Terminal UI, or use gsettings as follows:

# First, get the list of profiles
PROFILES=$(gsettings get org.gnome.Terminal.ProfilesList list)

# Extract the UUID of the Dracula profile (Assuming Dracula is the latest added profile)
# This method is a bit of a hack and assumes the last profile is the one you want to set as default.
# A more reliable method would involve searching the profile list by name or knowing the UUID beforehand.
DRACULA_PROFILE_UUID=$(echo $PROFILES | tr -d "[]\', " | awk -F: '{print $(NF)}')

# Set the Dracula profile as the default
gsettings set org.gnome.Terminal.ProfilesList default "$DRACULA_PROFILE_UUID"

echo "Dracula theme is installed and set as the default profile."
