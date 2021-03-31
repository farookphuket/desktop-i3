#!/bin/bash 




pacman -S mysql --noconfirm

sleep 3s

mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

systemctl enable mysqld
systemctl start mysqld


mysql_secure_installation


#     create new group call www-data 
groupadd www-data


#  set permission for current user to www-data 
usermod -a -G www-data $USER 


#   create the dir for phpmyadmin in /var/lib 
mkdir -p /var/lib/phpmyadmin 

#   change the permission to 777 
chmod 777 -R /var/lib/phpmyadmin 



pacman -S phpmyadmin --noconfirm
sleep 5s

#   copy the config file into /phpmyadmin 
cp files_inc/config.inc.php /etc/webapps/phpmyadmin 

#   change the ownership for www-data 
chown -R $USER:www-data /etc/webapps/phpmyadmin 

chmod 775 -R /etc/webapps/phpmyadmin 




echo "phpmyadmin installed and config "

#   we going to create new web project for the testing
#   the 2 lines will create new folder and 1 sub folder in lav8.lap  
#mkdir /srv/http/lav8.lap 
mkdir -p /srv/http/lav8.lap/public 
mkdir -p /srv/http/article.me 

#   change permission to 777 (read,write,execute)
chmod 777 -R /srv/http/lav8.lap 
chmod 777 -R /srv/http/article.me

cp files_inc/index.php /srv/http/lav8.lap/public
cp files_inc/index.html /srv/http/article.me

echo "create folder lav8.lap article.me in /srv/http "


#   enable apache service to run on start-up
systemctl enable httpd




sleep 5s


systemctl restart httpd
