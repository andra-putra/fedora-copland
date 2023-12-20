#!/bin/bash

# Apply GNOME Settings
echo "Applying GNOME settings..."
dconf load / < ../gnome-settings/gnome-settings.dconf

# Apply Dotfiles Configurations
cp ../.vimrc ~/
cp ../.zshrc ~/
cp ../.p10k.zsh ~/

# You can add more configuration application commands here

echo "Configuration applied."

