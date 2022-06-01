#!/bin/bash
wp core download  --allow-root
wp config create --dbhost=$WORDPRESS_DB_HOST --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --allow-root
wp core install --url=$DOMAIN_NAME.com --title="Inception" --admin_name=admin --admin_password=admin --admin_email=you@example.com --allow-root
cd ../..
ls
# cd wp-content
# mkdir uploads
# chgrp web uploads/
# chmod 775 uploads/

/usr/sbin/php-fpm7 -R -F