#!/bin/bash 


#   this will setup lamp server for manjaro 
#   using php 8



#   the php apache php-sqlite has been install 

#   backup file just incase something goes wrong 
mv /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.old

mv /etc/php/php.ini /etc/php/php.ini.old 

mv /etc/httpd/conf/extra/httpd-vhosts.conf /etc/httpd/conf/extra/httpd-dav.conf.old

mv /etc/hosts /etc/hosts.old

#   ---- end backup 

#   copy httpd config file
cp httpd.conf /etc/httpd/conf 

#    copy phpmyadmin config file 
cp phpmyadmin.conf /etc/httpd/conf/extra

cp php.ini /etc/php

cp hosts /etc

cp httpd-vhosts.conf /etc/httpd/conf/extra/ 

pacman -Sy php-intl --noconfirm 

pacman -S mysql --noconfirm

sleep 3s

mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

systemctl enable mysqld
systemctl start mysqld

echo "mysql has start now so need some setup "

sleep 5s

mysql_secure_installation


#     create new group call www-data 
groupadd www-data


#  set permission for current user to www-data 
usermod -a -G www-data $USER 


#   create the dir for phpmyadmin in /var/lib 
mkdir /var/lib/phpmyadmin 

#   change the permission to 777 
chmod 777 -R /var/lib/phpmyadmin 

echo "now install phpmyadmin "


pacman -S phpmyadmin --noconfirm
sleep 5s

#   copy the config file into /phpmyadmin 
cp config.inc.php /etc/webapps/phpmyadmin 

#   change the ownership for www-data 
chown -R $USER:www-data /etc/webapps/phpmyadmin 

chmod 775 -R /etc/webapps/phpmyadmin 
sleep 5s


echo "phpmyadmin still need some config "

mkdir /srv/http/lav8.lap 
mkdir /srv/http/article.me 

chmod 777 -R /srv/http/lav8.lap 
chmod 777 -R /srv/http/article.me

cp index.php /srv/http/lav8.lap/public
cp index.html /srv/http/article.me

echo "create folder lav8.lap article.me in /srv/http "



systemctl enable httpd




sleep 5s
systemctl restart httpd

echo "restart the service"






