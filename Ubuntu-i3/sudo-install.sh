#!/bin/bash




apt install feh fonts-font-awesome rofi pulseaudio-utils xbacklight -yy 

apt install alsa-tools  -yy


# keyboard indicator wallpaper 
apt install xxkb nitrogen pavucontrol blueman cmus -yy

apt install i3-wm i3lock i3status lxsession lxappearance zsh -yy



apt install clipit gcc git terminator locate pcmanfm acpi libnotify-bin -yy


# I'm not using shutter now I use flameshot
add-apt-repository -y -u ppa:linuxuprising/shutter


apt install shutter -yy

# install by snap 
snap install pa-applet 

apt install flameshot -yy

apt install mlocate -yy 

updatedb

# sleep 5
sleep 5s



# zsh theme
cp -r ../zsh/zsh /usr/share/ 

cp -r ../zsh/zsh-theme-powerlevel10k /usr/share 


# copy the icons 
./file_manager_root.sh 



