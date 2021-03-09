#!/bin/bash


#   copy user program's list into file
#   just incase somthing goes wrong
pacman -Q > ~/Desktop/$USER-computer-before.txt


#   copy the xxkb config to home directory
cp .xxkbrc ~/

#   make xxkb directory
mkdir ~/xxkb

#   make directory before clone the wallpaper file
mkdir ~/Desktop/Wallpapers




if [[ -d ~/Pictures/Wallpapers ]] && [[ -n `ls -A ~/Pictures/Wallpapers` ]]; then
    # found the wallpapers 
    echo "Wallpapers dir exited "
    pushd ~/Pictures/Wallpapers
    git clone https://gitlab.com/farookphuket/wallpapers.git .
    sleep 5s
    popd 
fi
#   clone the wallpaper file
git clone https://gitlab.com/farookphuket/wallpapers.git ~/Desktop/Wallpapers

#   change the folder name to match with in the config i3 file
mv ~/Desktop/Wallpapers ~/Pictures/

echo "----Success! your wallpapers has been copied to $HOME/Pictures/Wallpapers"

echo "------------------------------------------"
echo "---------Start setup of i3-wm ------------"
echo "setup i3wm for manjaro-kde"
echo "this may ask for the password of $USER"
echo "------------------------------------------"



sudo -s ./run_as_root.sh

xfce4-terminal -e "cmus"

if [[ -d ~/.config/cmus ]]; then
    # copy the cmus reload playlist file 
    cp update-cmus-library.sh ~/.config/cmus  
fi

mkdir ~/.config/i3
cp config ~/.config/i3

pacman -Q > ~/Desktop/$USER-computer_after.txt

echo "----------------------------------"
echo "the config file has been copied "
echo "please logout and log back in to run "
echo " ./run_copy_config.sh " 
echo "in order to finish with this operation"
