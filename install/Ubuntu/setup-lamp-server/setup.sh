#!/bin/bash 




echo "====== this will setup lamp server for Ubuntu ========"


sudo ./sudo-install.sh


firefox -- ./files/info.html
 

./file_manager.sh 


sudo ./file_manager_root.sh


firefox -- "http://lav8.x1"

firefox -- "phpmyadmin:9000"

firefox -- "https://www.farookphuket.com"


