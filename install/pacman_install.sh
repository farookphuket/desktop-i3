 #!/bin/bash


 #  please note that if any of the program you're not using just comment it
 #  with (put the # sign before pacman)



# copy the locale.gen to the system 
cp ../locale.gen /etc/

#   need this to complie
pacman -S  cmake base-devel go nodejs npm --noconfirm

#   file browser 
pacman -S  krusader nautilus mc  --noconfirm

#   web browser 
pacman -S brave chromium  --noconfirm



# terminal 
pacman -S gnome-terminal konsole xfce4-terminal --noconfirm 

#   screen capture 
pacman -S  obs-studio  flameshot   --noconfirm

#   background setting and image 
pacman -S  gthumb  gimp --noconfirm

#   system info 
pacman -S neofetch --noconfirm 

# iso image writer openSUSE
pacman -S imagewriter --noconfirm

#   download video from youtube
pacman -S   youtube-dl   --noconfirm

#   clipboard 
pacman -S xclip --noconfirm

#   Date 17 Feb 2021 KTouch learn touch typing
pacman -S ktouch --noconfirm

#  subtitle editor , video editing tool
pacman -S aegisub kdenlive --noconfirm

#   play sound | edit sound | show keypress on screen
pacman -S audacity audacious  screenkey  --noconfirm

#   mlocate on 24 Feb 2021
pacman -S mlocate --noconfirm 


# snap by default will not enable so make sure that we have snap enable 
# before we start to install any of program from the snap store
# this line has added on 31 Mar 2021
pacman -S snapd --noconfirm 
systemctl enable --now snapd.socket
ln -s /var/lib/snapd/snap /snap




echo "----------------- Pacman Install Has Done-----------------------"
echo "pacman has done it's operation "
echo "now will install puddletag from snap"
echo "----------------------------------------------------------------"


sleep 5s

#   updatedb 
updatedb

# note that you still have to run sudo pacman -S mysqld 
# follow the website  
# https://forum.manjaro.org/t/howto-install-apache-mariadb-mysql-php-lamp/13000 
# to setup lamp server  
     

#   this program cannot find in store(or whatever you call) but 
#   it's can install throught snap and I have to use it 
# this program will be take the whole day if you not enable snap from your pamac so i 
# just comment this by default 
snap install puddletag-snap 


sleep 5s
echo "------------- All done -------"
echo "------------- setup will be exit now ----------------------"


