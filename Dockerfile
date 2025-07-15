# Gunakan image resmi FOSSBilling sebagai dasar
FROM fossbilling/fossbilling:latest

# Install dependensi dan ekstensi imagick
RUN apt-get update && apt-get install -y \
    libmagickwand-dev --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && pecl install imagick \
    && docker-php-ext-enable imagick
