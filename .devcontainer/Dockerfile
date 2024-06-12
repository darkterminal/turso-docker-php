FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    nano \
    git \
    zip \
    sqlite3 \
    libsqlite3-dev \
    && docker-php-ext-install pdo_sqlite
