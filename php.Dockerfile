FROM php:7.4-fpm-alpine as php

RUN apk add --no-cache --update --virtual .build-deps $PHPIZE_DEPS
COPY php.ini /usr/local/etc/php/conf.d/php.override.ini
COPY fpm.conf /usr/local/etc/php-fpm.d/fpm.conf

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

RUN apk del -f .build-deps
