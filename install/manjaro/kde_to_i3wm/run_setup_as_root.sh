#!/bin/bash 


#   this will setup manjaro kde to using i3wm 

pacman -S rofi feh nitrogen xxkb morc_menu --noconfirm

pacman -S arandr networkmanager network-manager-applet --noconfirm

pacman -S xdotool clipit xsel   --noconfirm

pacman -S blueman pulseaudio pavucontrol pa-applet  --noconfirm

pacman -S bmenu picom conky-i3 w3m --noconfirm

pacman -S lxsession lxappearance --noconfirm

pacman -S i3-gaps i3status-manjaro i3lock i3exit  --noconfirm

pacman -S xfce4-power-manager xfce4-terminal polkit-gnome  --noconfirm

sleep 5s 

mv /etc/i3status.conf /etc/i3status.conf.old 
cp i3status.conf /etc/

mv /usr/share/conky/conky_maia /usr/share/conky/conky_maia.old 
cp conky_maia /usr/share/conky/ 





sleep 5s
echo "----------setup NOT done yet please watch the video --------"
echo "please logout and login back again and run the script copy_config.sh "
echo "to complete this installation "
echo "----------exiting........"

sleep 5s 

exit


