FROM php:8.1-apache

LABEL maintainer="SIMPAN Project"
LABEL description="Backend Laravel + Filament Admin Panel"

# Set working directory
WORKDIR /var/www/html

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    zip \
    unzip \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libicu-dev \
    mariadb-client \
    vim \
    nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install PHP extensions required by Laravel & Filament
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install \
    pdo_mysql \
    mbstring \
    exif \
    pcntl \
    bcmath \
    gd \
    zip \
    intl \
    opcache

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Configure PHP for production
RUN cp "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini" \
    && echo "upload_max_filesize = 100M" >> "$PHP_INI_DIR/php.ini" \
    && echo "post_max_size = 100M" >> "$PHP_INI_DIR/php.ini" \
    && echo "max_execution_time = 300" >> "$PHP_INI_DIR/php.ini" \
    && echo "memory_limit = 512M" >> "$PHP_INI_DIR/php.ini"

# Enable Apache modules
RUN a2enmod rewrite headers

# Configure Apache DocumentRoot to public folder
ENV APACHE_DOCUMENT_ROOT /var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf \
    && sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Copy application files first
COPY . /var/www/html

# Install Composer dependencies during build
RUN composer install --no-interaction --prefer-dist --optimize-autoloader --no-dev

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Create entrypoint script using printf (avoids CRLF issues)
RUN printf '#!/bin/bash\n\
    set -e\n\
    echo "================================="\n\
    echo "Starting SIMPAN Backend..."\n\
    echo "================================="\n\
    cd /var/www/html\n\
    \n\
    # Re-install dependencies if vendor was overwritten by volume mount\n\
    if [ ! -f "vendor/autoload.php" ]; then\n\
    echo "Installing Composer dependencies..."\n\
    composer install --no-interaction --prefer-dist --optimize-autoloader --no-dev\n\
    fi\n\
    \n\
    # Generate APP_KEY if not exists\n\
    if [ -f ".env" ] && ! grep -q "APP_KEY=base64:" .env 2>/dev/null; then\n\
    echo "Generating APP_KEY..."\n\
    php artisan key:generate --force\n\
    fi\n\
    \n\
    # Create storage link\n\
    php artisan storage:link 2>/dev/null || true\n\
    \n\
    # Run migrations\n\
    echo "Running migrations..."\n\
    php artisan migrate --force 2>/dev/null || echo "Migration skipped"\n\
    \n\
    # Set permissions\n\
    chown -R www-data:www-data storage bootstrap/cache 2>/dev/null || true\n\
    chmod -R 775 storage bootstrap/cache 2>/dev/null || true\n\
    \n\
    echo "Backend started successfully!"\n\
    exec apache2-foreground\n\
    ' > /usr/local/bin/docker-entrypoint.sh \
    && chmod +x /usr/local/bin/docker-entrypoint.sh

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
    CMD curl -f http://localhost/ || exit 1

# Expose port
EXPOSE 80

# Start with custom entrypoint
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
