#!/bin/bash 

# this will copy the file to the specifig 


TODAY=$(date +"%Y-%m-%d_at_%H:%M:%S")
USER_NAME=$USER



# make backup dir
mkdir -p ~/Documents/Old_config 
BACKUP_DIR=~/Documents/Old_config
BACKUP_PATH=$BACKUP_DIR 



# if hosts file will make a backup
if [[ -f /etc/hosts ]]; then
    cp /etc/hosts $BACKUP_PATH/hosts.old_$TODAY
    mv /etc/hosts /etc/hosts.old
fi
cp files_inc/hosts /etc/ 



cp files_inc/phpmyadmin.conf /etc/httpd/conf/extra/ 


if [[ -f /etc/httpd/conf/httpd.conf ]]; then
    cp /etc/httpd/conf/httpd.conf $BACKUP_PATH/httpd.conf.old_$TODAY 
    mv /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.old
fi
cp files_inc/httpd.conf /etc/httpd/conf/ 



if [[ -f /etc/php/php.ini ]]; then 
    cp /etc/php/php.ini $BACKUP_PATH/php.ini.old_$TODAY 
    mv /etc/php/php.ini /etc/php/php.ini.old 
fi
cp files_inc/php.ini /etc/php/


# copy v-host
if [[ -f /etc/httpd/conf/extra/httpd-vhosts.conf ]]; then 
    cp /etc/httpd/conf/extra/ $BACKUP_PATH/httpd-vhosts.conf.old_$TODAY 
    mv /etc/httpd/conf/extra/httpd-vhosts.conf /etc/httpd/conf/extra/httpd-vhosts.conf.old
fi
cp files_inc/httpd-vhosts.conf /etc/httpd/conf/extra/










