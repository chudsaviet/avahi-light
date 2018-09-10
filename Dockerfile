FROM alpine:latest

RUN apk add --no-cache avahi \
    && rm -r /etc/avahi/services/* \
    && sed -i -- 's/enable-dbus=yes/enable-dbus=no/g' /etc/avahi/avahi-daemon.conf

ENTRYPOINT [ "avahi-daemon" ]