@echo off
echo ==================================
echo SIMPAN Docker - Quick Start
echo ==================================

REM Check if .env exists
if not exist .env (
    echo. 
    echo [ERROR] File .env tidak ditemukan!
    echo [INFO] Copy .env.example ke .env dan sesuaikan konfigurasi database
    echo.
    echo Menjalankan: copy .env.example .env
    copy .env.example .env
    echo [OK] File .env sudah dibuat
    echo.
    echo [WARNING] PENTING: Edit file .env dan sesuaikan DB_PASSWORD dengan password MySQL Anda!
    echo.
    pause
)

echo.
echo ==================================
echo Starting Docker Containers...
echo ==================================

REM Build and start containers
docker-compose up -d --build

echo.
echo ==================================
echo Containers Status:
echo ==================================
docker-compose ps

echo.
echo ==================================
echo Waiting for services to be ready...
echo ==================================
echo This may take 1-2 minutes...

REM Wait a bit for containers to initialize
timeout /t 5 /nobreak > nul

echo.
echo [INFO] Checking health status...
docker-compose ps

echo.
echo ==================================
echo Setup Complete!
echo ==================================
echo.
echo [ACCESS POINTS]
echo    - Admin Panel:    http://localhost:8000/admin
echo    - Public Website: http://localhost
echo    - Backend API:    http://localhost:8000/api
echo.
echo [USEFUL COMMANDS]
echo    - View logs:      docker-compose logs -f
echo    - Stop:           docker-compose down
echo    - Restart:        docker-compose restart
echo.
echo [INFO] For more info, check DOCKER-README.md
echo ==================================
pause
