FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    nano \
    git \
    zip \
    sqlite3 \
    libsqlite3-dev \
    curl \
    gnupg \
    locales \
    zsh \
    wget \
    fonts-powerline \
    && docker-php-ext-install pdo_sqlite

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer global require darkterminal/turso-php-installer

RUN export PATH="$(composer config -g home)/vendor/bin:$PATH" && turso-php-installer install --yes --php-version=8.3
