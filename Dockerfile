FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    sqlite3 \
    libsqlite3-dev \
    && docker-php-ext-install pdo_sqlite

RUN apt-get install -y nginx

COPY ./config/web/nginx.conf /etc/nginx/nginx.conf

COPY ./config/php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/html

EXPOSE 80

CMD ["sh", "-c", "php-fpm & nginx -g 'daemon off;'"]
