FROM debian:buster

RUN apt update && apt-get -y install mariadb-server

COPY ./conf/config.sh /tmp/config.sh

ENTRYPOINT [ "bash", "/tmp/config.sh" ]