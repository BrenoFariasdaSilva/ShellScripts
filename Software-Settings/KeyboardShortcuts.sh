#!/bin/sh

# Run:
# chmod +x KeyboardShortcuts.sh
# sudo ./KeyboardShortcuts.sh

echo "Setting Keyboard Shortcuts..."

# 1. Set the "Activities" Keyboard Shortcut to "Super/Windows"
gsettings set org.gnome.mutter overlay-key "'Super_L'"

# 2. Set the "Show Applications" Keyboard Shortcut to "Super/Windows + S"
gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>s']"

# 3. Set the "Show Desktop" Keyboard Shortcut to "Super/Windows + D"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"

# 4. Set the "Home Folder" Keyboard Shortcut to "Super/Windows + E"
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>e']"

# 5. Set the "Terminal" Keyboard Shortcut to "Super/Windows + T"
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>t']"

# 6. Set the "Close Window" Keyboard Shortcut to "Alt + F4"
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4']"

# If any of this doesn't work, add the failed ones manually:
# Open Keyboard Shortcuts in System Preferences: Settings -> Keyboard Shortcuts
# Scroll down to the bottom and click the + button and add the following:
# Name: AppName -> Example: Terminal
# Command: gnome-AppCommand -> Example: gnome-terminal
# Shortcut: Super/Windows + Key -> Example: Super + T
