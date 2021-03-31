#!/bin/bash 



echo "-------------setup lamp server for Manjaro --------"
echo "this will install the require package "
echo "please enter your password "

sudo -s ./install_app.sh 

sudo -s ./fileman.sh

echo "-----The require package has installed "
sleep 5s 

echo "----- this will setup Database ---------------"
sudo -s ./setup_mysql.sh 

echo "--------------SUCCESS --------------------------"
echo "----- database has been install and config -----"

firefox http://lav8.lap 

firefox http://localhost/phpmyadmin
