#!/bin/bash 


#   copy user program's list into file 
#   just incase somthing goes wrong
pacman -Q > ~/Desktop/$USER-computer-before.txt 


TODAY=$(date +"%Y-%m-%d_at_%H:%M:%S")
mkdir ~/Documents/backup_conf
BACKUP_PATH=~/Documents/backup_conf

#   copy the xxkb config to home directory
cp .xxkbrc ~/

#   make xxkb directory
mkdir ~/xxkb 

#   make directory before clone the wallpaper file 
mkdir ~/Desktop/Wallpapers


if [[ -d ~/Pictures/Wallpapers ]] && [[ -n `ls -A ~/Pictures/Wallpapers` ]]; then
    # found wallpapers skip this step 
    pushd ~/Pictures/Wallpapers
    git clone https://gitlab.com/farookphuket/wallpapers.git .
    echo "Wallpapers has been appended"
    popd
fi
#   clone the wallpaper file 
git clone https://gitlab.com/farookphuket/wallpapers.git ~/Desktop/Wallpapers

#   change the folder name to match with in the config i3 file
mv ~/Desktop/Wallpapers ~/Pictures/



sudo -s ./run_as_root.sh



# run cmus 
xfce4-terminal -e "cmus"

sleep 5s

pacman -Q > ~/Desktop/program_on-$USER-computer_after.txt

if [[ -d ~/.config/cmus ]]; then
    # copy the script for update cmus
    cp update-cmus-library.sh ~/.config/cmus 
fi

# .zshrc
if [[ -f ~/.zshrc ]]; then
    # make a backup if exited
    mv ~/.zshrc $BACKUP_PATH/.zshrc.old_$TODAY
fi
# copy the new .zsh file
cp ../zsh/.zshrc ~/

# cop the i3 config 
if [[ -d ~/.config/i3 ]] && [[ -f ~/.config/i3/config ]]; then
    # make backup if there is an old one
    mv ~/.config/i3/config $BACKUP_PATH/i3_config.old_$TODAY
    cp config ~/.config/i3 
else
    # if the config doesn't exit then create one now
    mkdir ~/.config/i3 
    cp config ~/.config/i3
fi

# check if there is any autorun program 
# if anything so we make a backup then remove it content
if [[ -d ~/.config/autostart ]] && [[ -n `ls -A ~/.config/autostart` ]]; then
    cp -r ~/.config/autostart $BACKUP_PATH/autostart.old_$TODAY 
    rm -rf ~/.config/autostart/*
fi


# change SHELL 
chsh -s /bin/zsh

# enable pulseaudio 
systemctl --user enable pulseaudio 


echo "--------------- Success   ---------------------------"
echo "the config file has been copied!"
echo " please logout then log back in with i3 session "
echo " your configuration now has been done please enjoy"
echo " ------------- Program terminated --------------------"

sleep 5s

exit
