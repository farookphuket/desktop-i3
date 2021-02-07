 #!/bin/bash



 
pacman -S tmux powerline gvim base-devel krusader composer --noconfirm
pacman -S brave chromium rofi filezilla obs-studio xxkb morc_menu --noconfirm
pacman -S bmenu cmake feh picom conky-i3 nautilus youtube-dl go w3m --noconfirm
pacman -S lxsession i3-gaps i3status-manjaro i3lock i3exit clipit --noconfirm
pacman -S networkmanager network-manager-applet kdenlive --noconfirm
pacman -S audacity audacious sqlitebrowser dbeaver --noconfirm
pacman -S blueman pulseaudio pavucontrol  nitrogen --noconfirm
pacman -S pa-applet  lxappearance nodejs npm polkit-gnome  --noconfirm
pacman -S xdotool xfce4-power-manager xfce4-terminal    --noconfirm
pacman -S flameshot arandr apache php php-apache php-sqlite  --noconfirm


#   date 7 Feb 2021 
pacman -S aegisub gthumb  --noconfirm
    


echo "pacman has done it's operation now will install puddletag from snap"


sleep 5s

# note that you still have to run sudo pacman -S mysqld 
# follow the website  
# https://forum.manjaro.org/t/howto-install-apache-mariadb-mysql-php-lamp/13000 
# to setup lamp server  
     

#   this program cannot find in store(or whatever you call) but 
#   it's can install throught snap and I have to use it 
snap install puddletag-snap 


echo "run bmenu again to fix if there are some conflic installer"

