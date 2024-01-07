#!/bin/bash

echo "********************************************************"
echo "Installing i3-wm and others..."
echo "********************************************************"
sudo apt install i3 rofi alacritty polybar


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
