FROM debian:buster

RUN apt-get update && apt-get -y install php7.3-fpm php7.3-common php7.3-mysql php wget

WORKDIR /var/www/html

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/wordpress

COPY conf/conf.sh /tmp/conf.sh

COPY conf/www.conf /etc/php/7.3/fpm/
# COPY conf/php-fpm.conf /etc/php/7.3/fpm/

COPY conf/wp-config.php /var/www/html/wordpress/

# EXPOSE 9000

ENTRYPOINT [ "bash", "/tmp/conf.sh" ]
# ENTRYPOINT [ "bash" ]