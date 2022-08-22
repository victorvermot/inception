FROM debian:buster

# RUN apt-get update && apt-get -y install php7.3-mysql php7.3 php-fpm wget
RUN apt-get update && apt-get -y install php7.3 php-mysqli php7.3-fpm wget mariadb-client

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar

RUN cp wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/wordpress

COPY ./conf/conf.sh /tmp/conf.sh
COPY ./conf/www.conf /etc/php/7.3/www.conf

ENTRYPOINT [ "bash", "/tmp/conf.sh" ]