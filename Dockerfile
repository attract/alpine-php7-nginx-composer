FROM php:7.1-fpm-alpine

MAINTAINER Amondar

RUN apk upgrade --update
RUN apk add nginx wget libcurl curl
RUN docker-php-ext-install curl openssl json phar dom
RUN rm -rf /var/cache/apk/*
#php7-curl php7-openssl php7-json php7-phar php7-dom && \
