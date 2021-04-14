#!/bin/bash 

# install by using yay 

# before install 
# cd into $HOME 
pushd ~/ 

# clone yay package to $HOME this will make the dir yay-git
git clone https://aur.archlinux.org/yay-git.git 

# cd into yay-git 
pushd ~/yay-git 

# run command to execute 
makepkg -si --noconfirm 



# install the program by using yay 
yay -S google-chrome --noconfirm 
