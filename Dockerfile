FROM php:7.1.2-fpm-alpine

MAINTAINER Amondar

RUN apk --update add nginx sqlite-dev libmcrypt-dev libxml2-dev \
    freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev&& \
    rm -rf /var/cache/apk/*

RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
  docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ && \
  NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) && \
  docker-php-ext-install -j${NPROC} pdo_mysql mcrypt xml pcntl exif gd zip && \
  apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev
