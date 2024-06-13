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

RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.2.0/zsh-in-docker.sh)" -- \
    -t robbyrussell \
    -a 'SPACESHIP_PROMPT_ADD_NEWLINE="false"' \
    -a 'SPACESHIP_PROMPT_SEPARATE_LINE="false"' \
    -p git \
    -p ssh-agent \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions

RUN chsh -s $(which zsh)

CMD ["zsh"]
