#!/bin/bash 





# copy php myadmin config file to apache 
cp files/phpmyadmin.conf /etc/apache2/sites-available/

# copy the file config for phpmyadmin
cp files/config.inc.php /opt/phpmyadmin/

# hosts file
cp files/hosts /etc 


# replace config file 
cp files/lav8.x1.conf /etc/apache2/sites-available/
cp files/ports.conf /etc/apache2/ 
cp files/apache2.conf /etc/apache2/

a2dissite 000-default.conf 


a2ensite lav8.x1.conf


a2ensite phpmyadmin.conf


a2enmod rewrite 

systemctl restart apache2
# copy config for apache 
#cp lav8.x1.conf /etc/apache2/sites-avilable/
