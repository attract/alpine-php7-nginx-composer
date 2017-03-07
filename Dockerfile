FROM php:7.1.2-fpm-alpine

MAINTAINER Amondar

RUN apk --update add nginx sqlite-dev libmcrypt-dev libxml2-dev && \
    rm -rf /var/cache/apk/*
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install pdo_mysql mcrypt xml pcntl exif gd zip
