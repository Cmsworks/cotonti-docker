FROM php:7.3-fpm

COPY --from=composer:2.2 /usr/bin/composer /usr/local/bin/
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions gd hash mbstring pcre session zlib

RUN apt-get update && docker-php-ext-install pdo pdo_mysql

COPY ./php.ini ${PHP_INI_DIR}

WORKDIR /app
