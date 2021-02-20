

#!/bin/bash 



# copy from https://opentechy.com/how-to-fix-gdbus-errororg-freedesktop-policykit1-error-failed/
# and https://github.com/meefik/linuxdeploy/issues/978 
# Date 20 Feb 2021




usermod -a -G nohidproc polkitd
groupadd -g 23 nohidproc
mount -o remount,rw,hidepid=2,gid=nohidproc /proc
systemctl restart polkit

sleep 5s

echo "proc /proc proc defaults,hidepid=2,gid=nohidproc 0 0" >> /etc/fstab

sleep 5s
mount -a
systemctl restart polkit

mv /usr/bin/lxpolkit /usr/bin/lxpolkit.ORIG
