#!/bin/sh

# Run:
# chmod +x GnomeExtensions.sh
# sudo ./GnomeExtensions.sh

# Open terminal as root:
# sudo -i
sudo su

# Update Commands:
sudo apt update -y

# Gnome Tweak Tool:
sudo apt install gnome-tweaks -y

# Gnome Shell Extensions:
sudo apt update -y
sudo apt install gnome-shell-extensions -y

# Gnome Shell Extension Manager:
sudo apt install gnome-shell-extension-manager -y

# Chrome Gnome Shell:
sudo apt install chrome-gnome-shell -y

# Gnome Extensions CLI:
sudo apt-get install python3 python3-venv python3-pip -y
pip3 install --upgrade gnome-extensions-cli

# List Gnome Extensions:
gext list

# Update all the Gnome Extensions:
gext update -y

# Gnome Extensions:
gext install 1085 # Simple Net Speed
gext install 1283 # DualShock/DualSense Battery Percentage -> On.
gext install 1300 # Ubuntu Dock -> On.
gext install 1301 # Ubuntu AppIndicators -> On.
gext install 1401 # Bluetooth Quick Connect -> On.
gext install 16 # Auto Move Windows -> On.
gext install 19 # User Themes
gext install 2087 # Desktop Icons NG (DING) -> On.
gext install 3240 # Add to Desktop Menu -> On.
gext install 3795 # Notification Timeout -> On.
gext install 4269 # Alphabetical App Grid -> On.
gext install 4485 # Favourites in AppGrid -> On.
gext install 4506 # Simple System Monitor -> On.
gext install 6 # Applications Menu -> On.
gext install 7 # Removable Drive Menu -> On.
gext install 744 # Hide Activities Button -> On.
gext install 751 # Audio Output Switcher -> On.

# List Gnome Extensions:
gext list

# Unistall Gnome Extensions:
gext uninstall extension-id1 extension-id2 extension-id3

# Open Tweak Tool
# Top Bar -> Disable Hot Corner and Enable Everything else
# Windows Titlebars -> Enable Minimizing and Maximize.