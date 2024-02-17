#!/bin/sh

# Run:
# chmod +x ./Bash.sh
# sudo ./Bash.sh

echo "Running the Bash ShellScript..."

# Check if GNOME Terminal is installed
if ! command -v gnome-terminal &> /dev/null; then
	echo "GNOME Terminal is not installed on your system."
	echo "Installing GNOME Terminal..."
	sudo apt install gnome-terminal -y
	echo "GNOME Terminal has been installed."
fi

echo "Setting the GNOME Terminal Keyboard Shortcuts..."
# Define the custom keyboard shortcuts for GNOME Terminal

echo "Open New Terminal Tab using 'Ctrl+T'"
# Set the "New Tab" shortcut to "Ctrl+T"
dconf write /org/gnome/terminal/legacy/keybindings/new-tab "'<Primary>t'" 

echo "Open New Terminal Window using 'Ctrl+N'"
# Set the "New Window" shortcut to "Ctrl+N"
dconf write /org/gnome/terminal/legacy/keybindings/new-window "'<Primary>n'"

echo "Close Terminal Tab using 'Ctrl+W'"
# Set the "Close Tab" shortcut to "Ctrl+W"
dconf write /org/gnome/terminal/legacy/keybindings/close-tab "'<Primary>w'"

echo "Close Terminal Window using 'Alt+F4'"
# Set the "Close Window" shortcut to "Alt+F4"
dconf write /org/gnome/terminal/legacy/keybindings/close-window "'<Alt>F4'"

echo "Copy Text using 'Ctrl+C'"
# Set the "Copy" shortcut to "Ctrl+C"
dconf write /org/gnome/terminal/legacy/keybindings/select-all "'<Primary>a'"

echo "Paste Text using 'Ctrl+V'"
# Set the "Paste" shortcut to "Ctrl+V"
dconf write /org/gnome/terminal/legacy/keybindings/paste "'<Primary>v'"

echo "Terminal Keyboard Shortcuts Set!"
echo ""
