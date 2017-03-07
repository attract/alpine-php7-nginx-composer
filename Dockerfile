FROM php:7.1.2-fpm-alpine

MAINTAINER Amondar

RUN apk --update add nginx wget curl curl-dev openssl \
php7-curl php7-openssl php7-json php7-phar php7-dom && \
rm -rf /var/cache/apk/*