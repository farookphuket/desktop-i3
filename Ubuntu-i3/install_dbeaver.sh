#!/bin/bash 






sudo apt install openjdk-11-jdk openjdk-11-jre -yy

wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list

sudo apt update && sudo apt upgrade -yy
sudo apt install dbeaver-ce -yy
