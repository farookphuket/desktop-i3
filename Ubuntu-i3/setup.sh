#!/bin/bash 



echo "================= Install and setup I3Wm by farook =============="

./file-manager.sh



# install dbeaver
./install_dbeaver.sh



# install the require program 
sudo ./sudo-install.sh 

#gnome-terminal -- cmus

sleep 5s 

cp i3/update-cmus-library.sh ~/.config/cmus


cp i3/config ~/.config/i3/ 

cp -r i3/command ~/.config/i3/



chsh -s /bin/zsh 



echo "================= your process has Done ! $USER  ============"
echo " please logout and log back in using i3 session "
echo " if you don't know how please watch my video "
echo "============================================================="


sleep 5s 




firefox -- "https://www.youtube.com/watch?v=q3Sanjl93dQ&list=PLWv3Eu4jXcQiwpZTKMZaFXB5L3dogTuCT&index=2"
#reboot
