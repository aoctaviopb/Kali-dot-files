#!/bin/bash

echo "********************************************************"
echo "Updating, Upgrading & Autoremove"
echo "********************************************************"
sudo apt update && sudo apt upgrade -y && sudo apt autoremove

echo "********************************************************"
echo "Installing i3-wm and others..."
echo "********************************************************"
sudo apt install i3 rofi polybar

echo "********************************************************"
echo "Installing Polybar themes"
echo "********************************************************"
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git ~/Documents/polybar-themes
cd ~/Documents/polybar-themes
chmod +x setup.sh
./setup.sh

echo "********************************************************"
echo "Setting number lines in VIM"
echo "********************************************************"
echo ":set number" > ~/.vimrc

#echo "********************************************************"
#echo "Clonning SecLists"
#echo "********************************************************"
#git clone https://github.com/danielmiessler/SecLists.git ~/Documents/SecLists
#tar -xf ~/Documents/SecLists/Passwords/Leaked-Databases/rockyou.txt.tar.gz -C ~/Documents/

echo "********************************************************"
echo "Deleting original conf files if exist"
echo "********************************************************"
rm -rf ~/.config/i3
rm ~/.config/polybar/forest/config.ini
rm ~/.config/polybar/forest/modules.ini

echo "********************************************************"
echo "Creating symbolic links"
echo "********************************************************"
mkdir ~/.config/i3
ln -s ~/Kali-dot-files/i3_config ~/.config/i3/config
ln -s ~/Kali-dot-files/polybar_forest_conf ~/.config/polybar/forest/config.ini
ln -s ~/Kali-dot-files/polybar_forest_modules ~/.config/polybar/forest/modules.ini

#edited files:
#./config/polybar/forest/modules.ini
#module network
#lines 379, 763, 821

#./config/polybar/forest/config.ini
#lines 143, 145

#./config/i3/config
#line 52
