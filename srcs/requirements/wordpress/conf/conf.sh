#!/bin/bash
# service php7.3-fpm start
# pwd
sleep 3
# if [ ! -f "/var/www/html/wordpress/wp-config.php" ]; then

wp core download  --allow-root
# echo "Creating the config file ..."
# wp config create --dbname=mysql --dbuser=root --dbpass=nothing --allow-root # --dbhost='127.0.0.1'
echo "Installing main wordpress"
wp core install --url=localhost --title=Inception --admin_name=yoda --admin_password=bg --admin_email=you@example.com --allow-root
# wp config create --dbname=wordpress --dbuser=vvermot- --dbpass=yoloswag --dbhost=localhost --allow-root
wp user create adrien adrien@example.com --role=contributor --allow-root
echo "Installing theme"
wp theme install twentynineteen --allow-root
echo "Installing plugins"
wp plugin install woocommerce --allow-root
wp plugin activate woocommerce --allow-root
# fi

# tail -f
# php-fpm7.3 -R -F
# tail -f
# cd ../..
# cd wp-content
# mkdir uploads
# chgrp web uploads/
# chmod 775 uploads/

/usr/bin/php7.3 -R -F
# tail -f