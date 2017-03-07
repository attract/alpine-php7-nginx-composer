FROM php:7.1.2-fpm-alpine

MAINTAINER Amondar

RUN apk upgrade --update && apk add nginx wget curl
RUN docker-php-ext-install json phar dom && \
rm -rf /var/cache/apk/*