#!/bin/sh

# Run:
# chmod +x KeyboardShortcuts.sh
# sudo ./KeyboardShortcuts.sh

# Open Keyboard Shortcuts in System Preferences: Settings -> Keyboard Shortcuts

# Set "Show Applications" to "Super/Windows + S"
gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>s']"

# Set "Show Desktop" to "Super/Windows + D"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"s

# 1. Change the "Home Folder" shortcut to "Super/Windows + E"
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>e']"

# 2. Change the "Terminal" shortcut to "Super/Windows + T"
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>t']"

# 3. Change the "Close Window" shortcut to "Alt + F4"
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4']"

# If any of this doesn't work, add the failed ones manually:
# Scroll down to the bottom and click the + button and add the following:
# Name: AppName -> Example: Terminal
# Command: gnome-AppCommand -> Example: gnome-terminal
# Shortcut: Super/Windows + Key -> Example: Super + T
