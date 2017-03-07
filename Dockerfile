FROM php:7.1.2-alpine

MAINTAINER Amondar

RUN docker-php-ext-install curl openssl json phar dom && \
    apk upgrade --update && apk add nginx wget curl && \
    rm -rf /var/cache/apk/*
#php7-curl php7-openssl php7-json php7-phar php7-dom && \
