#!/bin/sh

# Run:
# chmod +x ./NautilusSettings.sh
# sudo ./NautilusSettings.sh

echo "Setting Nautilus Settings..."

# Settings:
# Always show hidden files and folders in Nautilus
echo "Always show hidden files and folders in Nautilus..."
dconf write /org/gtk/settings/file-chooser/show-hidden true
gsettings set org.gtk.Settings.FileChooser show-hidden true
echo "Hidden files and folders will always be shown in Nautilus."

echo "Nautilus Settings Set!"
echo ""