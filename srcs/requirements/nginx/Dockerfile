FROM debian:buster

RUN apt-get update && apt-get -y install nginx

COPY nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT [ "bash" ]