FROM mysql:8.0
MAINTAINER UNB Libraries <libsupport@unb.ca>

ENV TZ America/Moncton

COPY ./conf.d /etc/mysql/conf.d
