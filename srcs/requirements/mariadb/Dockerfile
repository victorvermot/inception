FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get -y install mariadb-server

COPY ./conf/config.sh /tmp/config.sh

# ajouter le fichier 50-server.cnf manuel sinon il fait chier sa mere sur debian
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

ENTRYPOINT ["bash", "/tmp/config.sh"]
