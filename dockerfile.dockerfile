FROM php:apache

RUN docker-php-ext-install mysqli
RUN apt-get update -y && apt-get install -y sendmail libpng-dev
RUN apt-get install openssl
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libonig-dev \
    libwebp-dev \
    libxpm-dev \
    && docker-php-ext-configure gd \
        --with-freetype \
        --with-jpeg \
        --with-webp \
    && docker-php-ext-install -j$(nproc) \
        gd \
        mbstring

CMD ["apache2ctl", "-D", "FOREGROUND"]
