FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server && apt-get -y install php libapache2-mod-php php-mysql && apt-get -y install wget

WORKDIR /var/www/html

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/wordpress

COPY conf/conf.sh /tmp/conf.sh

ENTRYPOINT [ "bash", "/tmp/conf.sh" ]