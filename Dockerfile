FROM php:7.1.2-fpm-alpine

MAINTAINER Amondar

RUN apk upgrade --update && apk add nginx wget curl openssl
RUN docker-php-ext-install openssl json phar dom
RUN rm -rf /var/cache/apk/*