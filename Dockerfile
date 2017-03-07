FROM php:7.1.2-fpm-alpine

MAINTAINER Amondar

RUN apk --update add nginx sqlite-dev && \
    rm -rf /var/cache/apk/*
RUN docker-php-ext-install pdo pdo_mysql pdo_sqlite
