#!/bin/bash

# created this file on 31 Jan 2021 via virtualbox using manjaro xfce 
# to run this file without the root permission 
# you can feel free to edit the file farook_use_app.sh just to install only 
# the program that you need to use 




sudo -s ./pacman_install.sh


# install with yay before snap because yay take 
sudo -s ./yay_install.sh


echo "-----------------------------------------------------------"
echo " Puddletah has been remove from auto install as it took"
echo " too long to finish the process "
echo " remove from auto install 1 Apr 2021"
echo "-----------------------------------------------------------"
# install from snap store 
sudo -s ./snap_install.sh

