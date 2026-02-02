#!/bin/bash
set -e

echo "================================="
echo "Starting SIMPAN Frontend..."
echo "================================="

cd /var/www/html

# Install dependencies if vendor not exists
if [ ! -d "vendor" ]; then
    echo "Installing Composer dependencies..."
    composer install --no-interaction --prefer-dist --optimize-autoloader
fi

# Wait for backend API
echo "Waiting for backend API..."
counter=0
until curl -f http://backend 2>/dev/null || [ $counter -gt 30 ]; do
    echo "Backend not ready, waiting... ($counter/30)"
    counter=$((counter+1))
    sleep 2
done

# Generate APP_KEY if not exists
if [ -f ".env" ]; then
    if ! grep -q "APP_KEY=base64:" .env 2>/dev/null; then
        echo "Generating APP_KEY..."
        php artisan key:generate --force
    fi
else
    echo "WARNING: .env file not found!"
fi

# Create storage link
echo "Creating storage link..."
php artisan storage:link 2>/dev/null || true

# Set proper permissions
echo "Setting permissions..."
chown -R www-data:www-data storage bootstrap/cache 2>/dev/null || true
chmod -R 775 storage bootstrap/cache 2>/dev/null || true

echo "================================="
echo "Frontend started successfully!"
echo "Public Website: http://localhost:8000"
echo "================================="

# Start Apache
exec apache2-foreground
