#!/bin/bash

# echo $MYSQL_USER
# echo "USE mysql;" | mysql -u root
# systemctl start mysql
service mysql start
# service enable mysql
mysql << EOF
CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER IF NOT EXISTS 'vvermot-'@'localhost' IDENTIFIED BY 'yoloswag';
GRANT ALL PRIVILEGES ON wordpress.* TO 'vvermot-'@'localhost';
FLUSH PRIVILEGES;
EOF

exec /usr/bin/mysql --user=mysql