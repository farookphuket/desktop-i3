#!/bin/bash 




pushd ~/Downloads 

wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.zip 

sudo unzip phpMyAdmin-5.1.0-all-languages.zip -d /opt 

pushd /opt 

sudo mv phpMyAdmin-5.1.0-all-languages phpmyadmin

pushd phpmyadmin 

sudo mkdir tmp 

sudo chmod 777 -R /opt/phpmyadmin/tmp

sudo chown -Rfv www-data:www-data /opt/phpmyadmin

# back to run script 
popd
