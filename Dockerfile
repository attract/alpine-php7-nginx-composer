FROM php:7.1.2-alpine

MAINTAINER Amondar

RUN apk upgrade --update && apk add nginx wget curl && \
docker-php-ext-install curl openssl json phar dom && \
#php7-curl php7-openssl php7-json php7-phar php7-dom && \
rm -rf /var/cache/apk/*