FROM alpine:latest

RUN apk add --no-cache avahi \
    && rm -r /etc/avahi/services/*

ENTRYPOINT [ "avahi-daemon" ]