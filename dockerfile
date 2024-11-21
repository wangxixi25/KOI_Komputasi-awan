# Gunakan base image PHP dengan ekstensi yang dibutuhkan Laravel
FROM php:8.1-fpm

# Instal dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && docker-php-ext-install pdo_mysql zip

# Instal Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www

# Copy aplikasi Laravel ke dalam Docker container
COPY . /var/www

# Install dependencies dengan Composer
RUN composer install --no-dev --optimize-autoloader

# Set permissions untuk Laravel storage dan cache
RUN chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache

# Expose port yang digunakan oleh Laravel
EXPOSE 8000

# Jalankan server Laravel
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
