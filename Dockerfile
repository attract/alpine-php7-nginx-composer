FROM php:7.1.2-fpm-alpine

MAINTAINER Amondar

RUN docker-php-ext-install mysql pdo pdo_mysql
RUN apk --update add nginx && \
    rm -rf /var/cache/apk/*
