#!/bin/sh

# Run:
# chmod +x Bash.sh
# sudo ./Bash.sh

# Check if GNOME Terminal is installed
if ! command -v gnome-terminal &> /dev/null; then
	echo "GNOME Terminal is not installed on your system."
	echo "Installing GNOME Terminal..."
	sudo apt install gnome-terminal -y
	echo "GNOME Terminal has been installed."
fi

# Define the custom keyboard shortcuts for GNOME Terminal
# Set the "New Tab" shortcut to "Ctrl+T"
dconf write /org/gnome/terminal/legacy/keybindings/new-tab "'<Primary>t'" 
# Set the "New Window" shortcut to "Ctrl+N"
dconf write /org/gnome/terminal/legacy/keybindings/new-window "'<Primary>n'"
# Set the "Close Tab" shortcut to "Ctrl+W"
dconf write /org/gnome/terminal/legacy/keybindings/close-tab "'<Primary>w'"
# Set the "Close Window" shortcut to "Alt+F4"
dconf write /org/gnome/terminal/legacy/keybindings/close-window "'<Alt>F4'"
# Set the "Copy" shortcut to "Ctrl+C"
dconf write /org/gnome/terminal/legacy/keybindings/select-all "'<Primary>a'"
# Set the "Paste" shortcut to "Ctrl+V"
dconf write /org/gnome/terminal/legacy/keybindings/paste "'<Primary>v'"
