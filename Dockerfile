FROM php:7.1.2-alpine

MAINTAINER Amondar

RUN docker-php-ext-install curl openssl json phar dom
RUN apk upgrade --update
RUN apk add nginx wget curl
RUN rm -rf /var/cache/apk/*
#php7-curl php7-openssl php7-json php7-phar php7-dom && \
