FROM debian:buster

RUN apt-get update && apt-get -y install nginx

COPY default.conf /etc/nginx/nginx/conf.d/

# COPY test.sh /home/test.sh

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]