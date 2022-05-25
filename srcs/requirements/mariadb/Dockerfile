FROM debian:buster

RUN apt update && apt-get -y install mariadb-server

COPY ./conf/config.sh /tmp/config.sh

RUN bash /tmp/config.sh

ENTRYPOINT [ "sh", "/tmp/config.sh" ]