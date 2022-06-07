FROM debian:buster

RUN apt update && apt-get upgrade -y && apt-get -y install mariadb-server

COPY ./conf/config.sh /tmp/config.sh

EXPOSE 3306

# COPY ./conf/wp.sql ./wp.sql

CMD ["bash", "/tmp/config.sh"]

# ENTRYPOINT [ "bash", "/tmp/config.sh" ]