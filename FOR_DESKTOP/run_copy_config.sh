#!/bin/bash 

 
#   backup the old file 
mv ~/.config/i3/config ~/.config/i3/config.old 

#   copy the config file 
cp config ~/.config/i3/ 

# only if the user has run cmus the first time 
if [[ -d ~/.config/cmus ]] && [[ -n `ls -A ~/.config/cmus ` ]]; then 
    cp update-cmus-library.sh ~/.config/cmus 
fi

pacman -Q > ~/Desktop/program_on-$USER-computer_after.txt

sleep 5s


echo "----------Success ----------"
echo " the config file has been copied to "
echo " $HOME/.config/i3 "
echo "please update the music library in the file update_cmus_library.sh"
echo "$HOME/.config/cmus/update-cmus-library.sh"
echo "to make it work for your system"
echo "----------------------------------------"
echo " ---          operation complete -------"
echo "------------- exit program now ---------"

sleep 5s 

exit 
