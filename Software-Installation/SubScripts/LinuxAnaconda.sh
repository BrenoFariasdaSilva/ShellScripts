#!/bin/bash

# Run:
# chmod +x ./LinuxAnaconda.sh
# ./LinuxAnaconda.sh

# Define Anaconda version and download URL
# You can update the version to the newest here: https://repo.anaconda.com/archive/
ANACONDA_VERSION="2023.07-2"
ANACONDA_INSTALLER="Anaconda3-${ANACONDA_VERSION}-Linux-x86_64.sh"
ANACONDA_URL="https://repo.anaconda.com/archive/${ANACONDA_INSTALLER}"

# sudo apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 -y

# Download Anaconda installer to Downloads folder
wget -P ~/Downloads $ANACONDA_URL

# Install Anaconda
bash ~/Downloads/${ANACONDA_INSTALLER} -b -p ~/anaconda3

# Clean up the downloaded files
rm ~/Downloads/${ANACONDA_INSTALLER}

# # Add Anaconda to PATH (if not already added)
# if [[ ! "$PATH" == *"$HOME/anaconda3/bin"* ]]; then
# 	echo "export PATH='$HOME/anaconda3/bin:$PATH'" >> ~/.bashrc
# 	source ~/.bashrc
# 	# do the same for .zshrc if you use zsh
# 	echo "export PATH='$HOME/anaconda3/bin:$PATH'" >> ~/.zshrc
# 	source ~/.zshrc
# fi

# echo "Anaconda installation completed. Close and reopen your terminal to start using Anaconda."

# # Install Anaconda Navigator
# conda install anaconda-navigator -y

# # Create a Desktop Entry File
# DESKTOP_ENTRY_FILE_ANACONDA="$HOME/.local/share/applications/anaconda-navigator.desktop"
# echo "[Desktop Entry]" > $DESKTOP_ENTRY_FILE_ANACONDA
# echo "Version=1.0" >> $DESKTOP_ENTRY_FILE_ANACONDA
# echo "Type=Application" >> $DESKTOP_ENTRY_FILE_ANACONDA
# echo "Name=Anaconda Navigator" >> $DESKTOP_ENTRY_FILE_ANACONDA
# echo 'Exec=bash -ic "anaconda-navigator"' >> $DESKTOP_ENTRY_FILE_ANACONDA
# echo "Icon=anaconda-navigator-icon" >> $DESKTOP_ENTRY_FILE_ANACONDA
# echo "Categories=Development;Science;IDE;" >> $DESKTOP_ENTRY_FILE_ANACONDA

# # Find and Copy Icon to User Directory
# ICON_SOURCE_ANACONDA_NAVIGATOR=$(find ~/anaconda3/ -name "anaconda.png" -print -quit)
# ICON_DEST_ANACONDA_NAVIGATOR="$HOME/.local/share/icons/anaconda.png"
# mkdir -p ~/.local/share/icons
# cp "$ICON_SOURCE_ANACONDA_NAVIGATOR" "$ICON_DEST_ANACONDA_NAVIGATOR"

# # Update Desktop Entry Icon Path
# sed -i "s|Icon=anaconda-navigator-icon|Icon=$ICON_DEST_ANACONDA_NAVIGATOR|" $DESKTOP_ENTRY_FILE_ANACONDA

# echo "Desktop entry created and icon added for Anaconda Navigator."

# # Install Spyder and Jupyter
# conda install spyder jupyter -y

# echo "Spyder and Jupyter installation completed."

# # Create a Desktop Entry File for Spyder
# DESKTOP_ENTRY_FILE_SPYDER="$HOME/.local/share/applications/spyder.desktop"
# echo "[Desktop Entry]" > $DESKTOP_ENTRY_FILE_SPYDER
# echo "Version=1.0" >> $DESKTOP_ENTRY_FILE_SPYDER
# echo "Type=Application" >> $DESKTOP_ENTRY_FILE_SPYDER
# echo "Name=Spyder" >> $DESKTOP_ENTRY_FILE_SPYDER
# echo 'Exec=bash -ic "spyder"' >> $DESKTOP_ENTRY_FILE_SPYDER
# echo "Icon=spyder" >> $DESKTOP_ENTRY_FILE_SPYDER
# echo "Categories=Development;Science;IDE;" >> $DESKTOP_ENTRY_FILE_SPYDER

# # Find and Copy Icon to User Directory
# ICON_SOURCE_SPYDER=$(find ~/anaconda3/ -name "spyder.png" -print -quit)
# ICON_DEST_SPYDER="$HOME/.local/share/icons/spyder.png"
# mkdir -p ~/.local/share/icons
# cp "$ICON_SOURCE_SPYDER" "$ICON_DEST_SPYDER"

# # Update Desktop Entry Icon Path
# sed -i "s|Icon=spyder|Icon=$ICON_DEST_SPYDER|" $DESKTOP_ENTRY_FILE_SPYDER

# echo "Desktop entry created and icon added for Spyder."
