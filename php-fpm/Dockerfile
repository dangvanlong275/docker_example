FROM php:7.4-fpm

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
    curl \
    libpng-dev \
    libonig-dev \ 
    libxml2-dev \
    libzip-dev \
    libcurl4-gnutls-dev \
    zip \
    unzip \
    imagemagick libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick
# Install PHP extensions

RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd xml zip curl

#Intall composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 9000 9001