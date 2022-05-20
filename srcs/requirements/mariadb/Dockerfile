FROM alpine:3.14

RUN apk update && apk upgrade && apk add --no-cache mariadb mariadb-client

COPY ./conf/config.sh /tmp/config.sh

ENTRYPOINT [ "sh", "/tmp/config.sh" ]