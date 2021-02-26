#!/bin/bash 


#   backup the old file 
mv ~/.config/i3/config ~/.config/i3/config.old 

#   copy the config file 
cp config ~/.config/i3/ 

cp update-cmus-library.sh ~/.config/cmus 


sleep 5s


echo "----------Success ----------"
echo " the config file has been copied to "
echo " $HOME/.config/i3 "
echo "please update the music library in the file "
echo "$HOME/.config/cmus/update-cmus-library.sh"
echo "------------------------------------"
echo " --- operation complete ----- "
echo " exit program now ------"

sleep 5s 

exit 
