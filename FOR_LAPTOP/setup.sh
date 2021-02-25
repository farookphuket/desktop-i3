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


sleep 5s 

konsole -e "cmus"

sleep 10s

cp update-cmus-library.sh ~/.config/cmus 

TODAY=$(date +"%Y-%m-%d_at_%H:%M:%S")

echo "-------------Success ----------------"
echo "the config file has been copied!"
echo "----------- please logout to run  ------"
echo "./run_copy_config.sh "
echo "to finish the installation $TODAY "

sleep 5s

exit
