FROM alpine:3.5

MAINTAINER Amondar

RUN apk upgrade --update && apk add nginx wget curl php7 \
php7-curl php7-openssl php7-json php7-phar php7-dom && \
rm -rf /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
