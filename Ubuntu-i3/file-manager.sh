#!/bin/bash 



# check if the Wallpapers dir is exited
if [[ -d ~/Pictures/Wallpapers ]] && [[ -n `ls -A ~/Pictures/Wallpapers `  ]]; then

    pushd ~/Pictures/Wallpapers
    git clone https://gitlab.com/farookphuket/wallpapers.git .
    sleep 5s
    popd 

fi

mkdir ~/Pictures/Wallpapers
pushd ~/Pictures/Wallpapers 
git clone https://gitlab.com/farookphuket/wallpapers.git .
sleep 5s
popd

# copy the config for xxkeyboard 
cp i3/.xxkbrc ~/ 
