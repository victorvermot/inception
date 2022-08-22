#!/bin/bash

# Pour être sûr que la base de donnée mariadb soit bien démarrée.
sleep 5

if [ ! -f "/var/www/html/index.html" ]; then

    sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf";
    chown -R www-data:www-data /var/www/*;
    chown -R 755 /var/www/*;
    mkdir -p /run/php/;
    touch /run/php/php7.3-fpm.pid;

    wp core download  --allow-root
    echo "Installing main wordpress"
    wp config create --dbname=$WP_DATABASE_NAME --dbuser=$WP_DATABASE_USR --dbpass=$WP_DATABASE_PWD --dbhost=$MYSQL_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
    wp core install --url=$DOMAIN_NAME/wordpress --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
    wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root
    wp theme install inspiro --activate --allow-root
fi

/usr/sbin/php-fpm7.3 -F -R
