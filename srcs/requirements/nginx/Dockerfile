FROM alpine:3.14

RUN apk update && apk add --no-cache nginx

COPY install.sh /tmp/install.sh

ENTRYPOINT [ "sh", "/tmp/install.sh" ]