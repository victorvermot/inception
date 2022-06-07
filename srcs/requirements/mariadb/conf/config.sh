#!/bin/bash

# echo $MYSQL_USER
# echo "USE mysql;" | mysql -u root
# sed -i "s/127\.0\.0\.1/0\.0\.0\.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf
# systemctl start mysql
service mysql start
# service enable mysql
# ALTER USER 'root'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('root');
# ALTER USER 'root'@'localhost' IDENTIFIED BY 'abc';
mysql -u root << EOF
CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER IF NOT EXISTS 'vvermot'@'%' IDENTIFIED BY 'yoloswag';
GRANT ALL PRIVILEGES ON wordpress.* TO 'vvermot'@'%' IDENTIFIED BY 'yoloswag';
FLUSH PRIVILEGES;
EOF

# service mysql restart
# mysqld_safe
# exec $@
# tail -f
# ufw allow from remote_ip_address to any port 3306
exec mysql --user=vvermot --password=yoloswag

# mysql -u vvermot