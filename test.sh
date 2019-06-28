#!/bin/bash

rm -rf /var/www/html/*
echo "<?php phpinfo(); ?>" > /var/www/html/index.php
sed -i "s/post_max_size = 8M/post_max_size = 128M/" /etc/php/7.2/apache2/php.ini
sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 128M/" /etc/php/7.2/apache2/php.ini
sed -i '13 a <Directory /var/www/html>' /etc/apache2/sites-available/000-default.conf
sed -i '14 a Options Indexes FollowSymLinks MultiViews' /etc/apache2/sites-available/000-default.conf
sed -i '15 a AllowOverride All' /etc/apache2/sites-available/000-default.conf
sed -i '16 a Require all granted' /etc/apache2/sites-available/000-default.conf
sed -i '17 a </Directory>' /etc/apache2/sites-available/000-default.conf
