#!/bin/sh

# Run:
# chmod +x ./GnomeExtensions.sh
# sudo ./GnomeExtensions.sh

echo "Installing Gnome Extensions..."

# Update Commands:
sudo apt update -y

# Gnome Tweak Tool:
sudo apt install gnome-tweaks -y

# Gnome Shell Extensions:
sudo apt install gnome-shell-extensions -y

# Gnome Shell Extension Manager:
sudo apt install gnome-shell-extension-manager -y

# Chrome Gnome Shell:
sudo apt install chrome-gnome-shell -y

# Gnome Extensions CLI (This part is corrected to remove the gext part):
sudo apt install python3 python3-venv python3-pip -y

# List Gnome Extensions:
gnome-extensions list

# Gnome Extensions:
echo "Installing Simple Net Speed Gnome Extension..."
gnome-extension enable s
echo "Installing DualShock/DualSense Battery Percentage Gnome Extension..."
gext install 1283 # DualShock/DualSense Battery Percentage -> On.
echo "Installing Ubuntu Dock Gnome Extension..."
gext install 1300 # Ubuntu Dock -> On.
echo "Installing Ubuntu AppIndicators Gnome Extension..."
gext install 1301 # Ubuntu AppIndicators -> On.
echo "Installing Bluetooth Quick Connect Gnome Extension..."
gext install 1401 # Bluetooth Quick Connect -> On.
echo "Installing Auto Move Windows Gnome Extension..."
gext install 16 # Auto Move Windows -> On.
echo "Installing User Themes Gnome Extension..."
gext install 19 # User Themes
echo "Installing Desktop Icons NG (DING) Gnome Extension..."
gext install 2087 # Desktop Icons NG (DING) -> On.
echo "Installing Desktop Icons Gnome Extension..."
gext install 3240 # Add to Desktop Menu -> On.
echo "Installing Notification Timeout Gnome Extension..."
gext install 3795 # Notification Timeout -> On.
echo "Installing Alphabetic App Grid Gnome Extension..."
gext install 4269 # Alphabetical App Grid -> On.
echo "Installing Favourites in AppGrid Gnome Extension..."
gext install 4485 # Favourites in AppGrid -> On.
echo "Installing Simple System Monitor Gnome Extension..."
gext install 4506 # Simple System Monitor -> On.
echo "Installing Applications Menu Gnome Extension..."
gext install 6 # Applications Menu -> On.
echo "Installing Removable Drive Menu Gnome Extension..."
gext install 7 # Removable Drive Menu -> On.
echo "Installing Hide Activities Button Gnome Extension..."
gext install 744 # Hide Activities Button -> On.
echo "Installing Audio Output Switcher Gnome Extension..."
gext install 751 # Audio Output Switcher -> On.

# List Gnome Extensions:
gext list

# Unistall Gnome Extensions:
# gext uninstall extension-id1 extension-id2 extension-id3

# Open Tweak Tool
# Top Bar -> Disable Hot Corner and Enable Everything else
# Windows Titlebars -> Enable Minimizing and Maximize.

echo "Gnome Extensions Installed!"
