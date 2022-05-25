FROM debian:buster

RUN apt-get update && apt-get -y install nginx

COPY site.conf /tmp/site.conf

ENTRYPOINT [ "bash" ]