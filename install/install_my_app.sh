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
pacman -S  gthumb --noconfirm

#   download video from youtube
pacman -S   youtube-dl   --noconfirm


#   Date 17 Feb 2021 KTouch learn touch typing
pacman -S ktouch --noconfirm

#   video editing tool
pacman -S aegisub kdenlive --noconfirm

#   play sound | edit sound | show keypress on screen
pacman -S audacity audacious  screenkey  --noconfirm


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
echo "------------- All done -------"
echo "------------- setup will be exit now ----------------------"


