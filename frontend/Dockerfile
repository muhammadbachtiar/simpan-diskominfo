FROM php:8.1-apache

LABEL maintainer="SIMPAN Project"
LABEL description="Frontend Laravel Public Website"

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

# Install PHP extensions
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

# Configure PHP
RUN cp "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini" \
    && echo "upload_max_filesize = 50M" >> "$PHP_INI_DIR/php.ini" \
    && echo "post_max_size = 50M" >> "$PHP_INI_DIR/php.ini" \
    && echo "max_execution_time = 180" >> "$PHP_INI_DIR/php.ini" \
    && echo "memory_limit = 256M" >> "$PHP_INI_DIR/php.ini"

# Enable Apache modules
RUN a2enmod rewrite headers

# Configure Apache DocumentRoot
ENV APACHE_DOCUMENT_ROOT /var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf \
    && sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html

# Create startup script
RUN echo '#!/bin/bash\n\
    \n\
    echo "================================="\n\
    echo "Starting SIMPAN Frontend..."\n\
    echo "================================="\n\
    \n\
    # Wait for backend API\n\
    echo "Waiting for backend API..."\n\
    counter=0\n\
    until curl -f http://backend 2>/dev/null || [ $counter -gt 30 ]; do\n\
    echo "Backend not ready, waiting... ($counter/30)"\n\
    counter=$((counter+1))\n\
    sleep 2\n\
    done\n\
    \n\
    # Install dependencies if vendor not exists\n\
    if [ ! -d "vendor" ]; then\n\
    echo "Installing Composer dependencies..."\n\
    composer install --no-interaction --prefer-dist --optimize-autoloader\n\
    fi\n\
    \n\
    # Generate APP_KEY if not exists\n\
    if ! grep -q "APP_KEY=base64:" .env 2>/dev/null; then\n\
    echo "Generating APP_KEY..."\n\
    php artisan key:generate --force\n\
    fi\n\
    \n\
    # Create storage link\n\
    echo "Creating storage link..."\n\
    php artisan storage:link\n\
    \n\
    # Set proper permissions\n\
    echo "Setting permissions..."\n\
    chown -R www-data:www-data storage bootstrap/cache\n\
    chmod -R 775 storage bootstrap/cache\n\
    \n\
    echo "================================="\n\
    echo "Frontend started successfully!"\n\
    echo "Public Website: http://localhost"\n\
    echo "================================="\n\
    \n\
    # Start Apache\n\
    apache2-foreground\n\
    ' > /usr/local/bin/docker-entrypoint.sh \
    && chmod +x /usr/local/bin/docker-entrypoint.sh

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
    CMD curl -f http://localhost/ || exit 1

# Expose port
EXPOSE 80

# Start with custom entrypoint
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
