#!/bin/bash

echo "********************************************************"
echo "Updating, Upgrading & Autoremove"
echo "********************************************************"
sudo apt update && sudo apt upgrade && sudo apt autoremove

echo "********************************************************"
echo "Installing i3-wm and others..."
echo "********************************************************"
sudo apt install i3 rofi alacritty polybar

echo "********************************************************"
echo "Setting number lines in VIM"
echo "********************************************************"
echo ":set number" > ~/.vimrc

echo "********************************************************"
echo "Clonning SecLists"
echo "********************************************************"
git clone https://github.com/danielmiessler/SecLists.git ~/Documents/SecLists
tar -xf ~/SecLists/Passwords/Leaked-Databases/rockyou.txt.tar.gz ~/Documents/rockyou.txt

echo "********************************************************"
echo "Deleting original conf files"
echo "********************************************************"
rm ~/.config/i3/config
rm ~/.config/polybar/forest/config.ini
rm ~/.config/polybar/forest/modules.ini

echo "********************************************************"
echo "Creating symbolic links"
echo "********************************************************"
ln -s ~/dot_Files/i3_config ~/.config/i3/config
ln -s ~/dot_Files/polybar_forest_conf ~/.config/polybar/forest/config.ini
ln -s ~/dot_Files/polybar_forest_modules ~/.config/polybar/forest/modules.ini

#edited files:
#./config/polybar/forest/modules.ini
#module network
#lines 379, 763, 821

#./config/polybar/forest/config.ini
#lines 143, 145

#./config/i3/config
