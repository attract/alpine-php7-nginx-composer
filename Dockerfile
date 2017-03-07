FROM php:7.1.2-fpm-alpine

MAINTAINER Amondar

RUN /usr/local/bin/phpize -v
RUN docker-php-ext-install openssl json phar dom
RUN apk --update add nginx && \
    rm -rf /var/cache/apk/*
