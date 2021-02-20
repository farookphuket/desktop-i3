 #!/bin/bash


 #  please note that if any of the program you're not using just comment it
 #  with (put the # sign before pacman)


#   need this to complie
pacman -S  cmake base-devel go --noconfirm

#   file browser 
pacman -S  krusader nautilus --noconfirm

#   web browser 
pacman -S brave chromium  --noconfirm


#   screen capture 
pacman -S  obs-studio  flameshot --noconfirm

#   background setting and image 
pacman -S feh nitrogen gthumb --noconfirm

#   download video from youtube
pacman -S   youtube-dl   --noconfirm


#   Date 17 Feb 2021 KTouch learn touch typing
pacman -S ktouch --noconfirm

#   video editing tool
pacman -S aegisub kdenlive --noconfirm

#   play sound | edit sound | show keypress on screen
pacman -S audacity audacious  screenkey  --noconfirm





#   if you're NOT use i3 window manager comment the below line 
pacman -S rofi xxkb morc_menu --noconfirm


pacman -S arandr networkmanager network-manager-applet --noconfirm
pacman -S xdotool clipit xsel   --noconfirm
pacman -S blueman pulseaudio pavucontrol pa-applet  --noconfirm
pacman -S bmenu picom conky-i3 w3m --noconfirm
pacman -S lxsession lxappearance --noconfirm
pacman -S i3-gaps i3status-manjaro i3lock i3exit  --noconfirm


echo "i3wm app has been installed"
sleep 5s

#   ---------   End of i3wm section ---------------



#   if you're NOT editing the code comment the line below
pacman -S vscode atom tmux powerline  --noconfirm
pacman -S gvim neovim python-pynvim vim-clap tree --noconfirm

echo "The code editor has been installed!"
sleep 5s
#   -------- End of code editor ---- program

#   if your're NOT a web developper you can comment the below 3 lines
pacman -S apache php php-apache php-sqlite filezilla composer --noconfirm
pacman -S  sqlitebrowser dbeaver  --noconfirm
pacman -S  nodejs npm --noconfirm

echo "End of web dev install "

sleep 5s


#   ----------------------- End of web dev ------------#

#   if you're on xfce you have to comment this below line 
#   other wise this will be conflic to your system please beware
pacman -S xfce4-power-manager xfce4-terminal polkit-gnome  --noconfirm



echo "pacman has done it's operation now will install puddletag from snap"


sleep 5s

# note that you still have to run sudo pacman -S mysqld 
# follow the website  
# https://forum.manjaro.org/t/howto-install-apache-mariadb-mysql-php-lamp/13000 
# to setup lamp server  
     

#   this program cannot find in store(or whatever you call) but 
#   it's can install throught snap and I have to use it 
snap install puddletag-snap 

sleep 5s 
cp .xxkbrc ~/
mkdir ~/xxkb 
echo "------------- All done -------"
echo "run bmenu again to fix if there are some conflic installer"


