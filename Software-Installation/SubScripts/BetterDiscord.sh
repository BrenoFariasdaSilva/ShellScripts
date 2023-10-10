#!/bin/sh

# Run:
# chmod +x BetterDiscord.sh
# sudo ./BetterDiscord.sh

# BetterDiscord:
# Change to the Downloads directory or return if it fails
cd ~/Downloads || exit

# Download betterdiscordctl
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl

# Make it executable
chmod +x betterdiscordctl

# Move it to /usr/local/bin
sudo mv betterdiscordctl /usr/local/bin

# Self-upgrade betterdiscordctl
sudo betterdiscordctl self-upgrade

# Install BetterDiscord
betterdiscordctl install
