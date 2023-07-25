#!/bin/sh

# Run:
# chmod +x Nautilus.sh
# sudo ./Nautilus.sh

# Settings:
# Always show hidden files and folders in Nautilus
dconf write /org/gtk/settings/file-chooser/show-hidden true
gsettings set org.gtk.Settings.FileChooser show-hidden true
