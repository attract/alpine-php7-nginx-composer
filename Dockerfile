FROM php:7.1.1-fpm-alpine

MAINTAINER Amondar

#nginx and common extensions for php
RUN apk --update add nginx sqlite-dev libmcrypt-dev libxml2-dev \
    freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
    rm -rf /var/cache/apk/* && \
    apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \

    #php extencions
    docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ && \
    NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) && \
    docker-php-ext-install -j${NPROC} pdo_mysql mcrypt xml pcntl exif gd zip opcache && \
    apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev && \

    #composer
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

