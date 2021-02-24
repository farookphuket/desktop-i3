#!/bin/bash 


#   the program we need to install to setup i3wm 
pacman -S rofi feh nitrogen xxkb morc_menu --noconfirm

pacman -S arandr networkmanager network-manager-applet --noconfirm

pacman -S xdotool clipit xsel   --noconfirm

pacman -S blueman pulseaudio pavucontrol pa-applet  --noconfirm

pacman -S bmenu picom conky-i3 w3m --noconfirm

pacman -S lxsession lxappearance --noconfirm

pacman -S i3-gaps i3status-manjaro i3lock i3exit  --noconfirm

sleep 5s 

mv /etc/i3status.conf /etc/i3status.conf.old 
cp i3status.conf /etc/

mv /usr/share/conky/conky_maia /usr/share/conky/conky_maia.old 
cp conky_maia /usr/share/conky/ 


cp i3status.conf /etc/ 
cp conky_maia /usr/share/conky/ 

echo "----------Success --------------"
echo "----The installation was configured -----"
echo "  please logout and log back in again and run command"
echo " run_copy_config.sh or just copy the config file to "
echo " /home/$USER/.config/i3/ "
echo "to finish this setup "
