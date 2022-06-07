FROM debian:buster

RUN apt update && apt-get upgrade -y && apt-get -y install mariadb-server

COPY ./conf/config.sh /tmp/config.sh

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

CMD ["bash", "/tmp/config.sh"]

# ENTRYPOINT [ "bash", "/tmp/config.sh" ]