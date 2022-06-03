#!/bin/bash

# echo $MYSQL_USER
# echo "USE mysql;" | mysql -u root
# systemctl start mysql
service mysql start
# service enable mysql
# ALTER USER 'root'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('root');
mysql -u root << EOF
CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER IF NOT EXISTS 'vvermot-'@'localhost' IDENTIFIED BY 'yoloswag';
GRANT ALL PRIVILEGES ON wordpress.* TO 'vvermot-'@'localhost';
FLUSH PRIVILEGES;
EOF

tail -f
# exec /usr/bin/mysql #--user=vvermot-