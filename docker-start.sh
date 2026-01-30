#!/bin/bash

echo "=================================="
echo "SIMPAN Docker - Quick Start"
echo "=================================="

# Check if .env exists
if [ ! -f .env ]; then
    echo "❌ File .env tidak ditemukan!"
    echo "📝 Copy .env.example ke .env dan sesuaikan konfigurasi database"
    echo ""
    echo "Menjalankan: cp .env.example .env"
    cp .env.example .env
    echo "✅ File .env sudah dibuat"
    echo ""
    echo "⚠️  PENTING: Edit file .env dan sesuaikan DB_PASSWORD dengan password MySQL Anda!"
    echo ""
    read -p "Tekan Enter setelah selesai edit .env..."
fi

# Check if MySQL is accessible
echo ""
echo "🔍 Checking MySQL connection..."
if command -v mysql &> /dev/null; then
    # Extract DB credentials from .env
    DB_HOST=$(grep DB_HOST .env | cut -d '=' -f2)
    DB_PORT=$(grep DB_PORT .env | cut -d '=' -f2)
    DB_DATABASE=$(grep DB_DATABASE .env | cut -d '=' -f2)
    
    echo "Testing connection to MySQL..."
    # Note: Ini hanya warning, bukan blocking
else
    echo "⚠️  MySQL client tidak terdeteksi, skip check"
fi

echo ""
echo "=================================="
echo "Starting Docker Containers..."
echo "=================================="

# Build and start containers
docker-compose up -d --build

echo ""
echo "=================================="
echo "Containers Status:"
echo "=================================="
docker-compose ps

echo ""
echo "=================================="
echo "Waiting for services to be ready..."
echo "=================================="
echo "This may take 1-2 minutes..."

# Wait a bit for containers to initialize
sleep 5

echo ""
echo "📊 Checking health status..."
docker-compose ps

echo ""
echo "=================================="
echo "✅ Setup Complete!"
echo "=================================="
echo ""
echo "🌐 Access Points:"
echo "   - Admin Panel:    http://localhost:8000/admin"
echo "   - Public Website: http://localhost"
echo "   - Backend API:    http://localhost:8000/api"
echo ""
echo "📝 Useful Commands:"
echo "   - View logs:      docker-compose logs -f"
echo "   - Stop:           docker-compose down"
echo "   - Restart:        docker-compose restart"
echo ""
echo "📚 For more info, check DOCKER-README.md"
echo "=================================="
