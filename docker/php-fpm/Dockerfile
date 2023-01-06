FROM php:8.1.1-fpm

WORKDIR "/var/www"

RUN apt-get update; \
    apt-get -y --no-install-recommends install \
        git \ 
        nano \
        curl \ 
        php8.1-common \ 
        php8.1-cli \ 
        php8.1-dev \ 
        php8.1-imap \ 
        php8.1-mbstring \ 
        php8.1-opcache \
        php8.1-soap \
        php8.1-zip \
        php8.1-curl \ 
        php8.1-gd \ 
        php8.1-amqp \ 
        php8.1-mcrypt \ 
        php8.1-mysql \ 
        php8.1-oauth \ 
        php8.1-psr \ 
        php8.1-redis \ 
        php8.1-swoole \ 
        php8.1-xdebug; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# RUN pecl install xdebug-2.5.0 \
#     && docker-php-ext-enable xdebug

# Install extensions
RUN docker-php-ext-install pdo pdo_mysql

RUN apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Install nodejs
RUN apt-get update && apt-get install -y nodejs npm

# Get latest Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
