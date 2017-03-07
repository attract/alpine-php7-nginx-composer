FROM php:7.1.2-fpm-alpine

MAINTAINER Amondar

RUN apk --update add nginx wget curl curl-dev openssl && \
    rm -rf /var/cache/apk/*
RUN docker-php-ext-install openssl json phar dom
