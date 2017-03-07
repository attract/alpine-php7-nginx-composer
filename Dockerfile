FROM php:7.1.2-fpm-alpine

MAINTAINER Amondar

RUN docker-php-ext-install pdo pdo_mysql pdo_sqlite
RUN apk --update add nginx && \
    rm -rf /var/cache/apk/*
