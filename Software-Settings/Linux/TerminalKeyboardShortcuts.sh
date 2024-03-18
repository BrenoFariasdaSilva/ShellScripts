#!/bin/sh

# Run:
# chmod +x ./TerminalKeyboardShortcuts.sh
# sudo ./TerminalKeyboardShortcuts.sh

echo "Running the Terminal Keyboard Shortcuts Script..."

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
dconf write /org/gnome/terminal/legacy/keybindings/copy "'<Primary>c'"

echo "Paste Text using 'Ctrl+V'"
# Set the "Paste" shortcut to "Ctrl+V"
dconf write /org/gnome/terminal/legacy/keybindings/paste "'<Primary>v'"

echo "Find Text using 'Ctrl+F'"
# Set the "Find" shortcut to "Ctrl+F"
dconf write /org/gnome/terminal/legacy/keybindings/find "'<Primary>f'"

echo "Select All Text using 'Ctrl+A'"
# Set the "Select All" shortcut to "Ctrl+A"
dconf write /org/gnome/terminal/legacy/keybindings/select-all "'<Primary>a'"

echo "Clear terminal using 'Ctrl+L'"
# Set the "Clear" shortcut to "Ctrl+L"
dconf write /org/gnome/terminal/legacy/keybindings/reset-and-clear "'<Primary>l'"

echo "Disable the F1 Help Shortcut"
# Disable the "F1" shortcut for Help
xmodmap -e "keycode 67 ="

echo "Terminal Keyboard Shortcuts Set!"
echo ""
