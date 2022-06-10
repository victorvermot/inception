FROM debian:buster

RUN apt-get update && apt-get -y install nginx openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
    -out /etc/nginx/ssl/vvermot.crt \
    -keyout /etc/nginx/ssl/vvermot.key \
    -subj '/C=CH/ST=Vaud/L=./CN=localhost'

# RUN mkdir -p /run/nginx
COPY default.conf /etc/nginx/nginx/conf.d/

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]