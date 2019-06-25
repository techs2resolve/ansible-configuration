#!/bin/bash

sudo service mysql start
sudo mysqladmin -u root password 'root'
mysql -uroot -proot << EOF
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
FLUSH PRIVILEGES;
EOF
