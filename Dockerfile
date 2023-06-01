FROM php:7.4-apache

RUN docker-php-ext-install mysqli


RUN apt-get update && apt-get install -y --no-install-recommends \
    libpq-dev \
 && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_pgsql
