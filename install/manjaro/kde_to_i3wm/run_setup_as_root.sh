#!/bin/bash 


#   this will setup manjaro kde to using i3wm 

echo "setup i3wm for manjaro-kde for "$USER

#   
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


echo "i3wm app has been installed"
sleep 5s

#   ---------   End of i3wm section ---------------




#   if you're on xfce you have to comment this below line 
#   other wise this will be conflic to your system please beware
pacman -S xfce4-power-manager xfce4-terminal polkit-gnome  --noconfirm


sleep 5s


echo "----------setup NOT done yet ---------- \nplease watch the video \n"
echo "please logout and login back again and run the script copy_config.sh \n"
echo "to complete this installation "
echo "----------exiting........"

exit


