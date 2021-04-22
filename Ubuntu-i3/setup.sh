#!/bin/bash 



echo "================= Install and setup I3Wm by farook =============="

./file-manager.sh

sudo ./sudo-install.sh 

gnome-terminal -- cmus

sleep 5s 

cp i3/update-cmus-library.sh ~/.config/cmus


sudo chsh -s /bin/zsh 



echo "================= Done First ===================="
