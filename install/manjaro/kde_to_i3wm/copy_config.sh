#!/bin/bash 

#   copy the config file

mv /etc/i3status.conf /etc/i3status.conf.old 
cp i3status.conf /etc

mv /usr/share/conky/conky_maia /usr/share/conky/conky_maia.old
cp conky_maia /usr/share/conky


mv ~/.config/i3/config ~/.config/i3/config.old 
cp config ~/.config/i3/ 

cp .xxkbrc ~/
chown $USER ~/.xxkbrc 
chown -R $USER:$USER ~/.config/i3  

sleep 5s 
echo "-------all done please press Mod+Shift+r to reload i3 config  -------"
echo "\n or logout re-login again to take an effect"

exit 

