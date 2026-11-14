@echo off
title Habitto BD Local Server
cd /d "c:\Habitto"

echo ===================================================
echo             HABITTO BD LOCAL SERVER
echo ===================================================
echo.
echo [1/3] Checking MySQL database...
tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I /N "mysqld.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo [OK] MySQL is already running.
) else (
    echo [STARTING] Starting MySQL from XAMPP...
    start "" /B "C:\xampp\mysql\bin\mysqld.exe" --defaults-file="C:\xampp\mysql\bin\my.ini" --standalone
    timeout /t 2 /nobreak >nul
)

echo.
echo [2/3] Detecting Local IP for Mobile Access...
set LOCAL_IP=
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    set LOCAL_IP=%%a
)
if defined LOCAL_IP set LOCAL_IP=%LOCAL_IP: =%

echo.
echo [3/3] Opening Habitto BD in your default browser...
start "" "http://localhost:8000"

echo.
echo ===================================================
echo  WEBSITE IS LIVE:
echo.
echo  PC Browser:     http://localhost:8000
if defined LOCAL_IP (
echo  Mobile Browser: http://%LOCAL_IP%:8000
echo  (Note: Mobile & PC must be connected to the same Wi-Fi)
)
echo.
echo  Keep this window open while browsing the site.
echo  Press Ctrl+C to stop the server anytime.
echo ===================================================
echo.

"C:\xampp\php\php.exe" artisan serve --host=0.0.0.0 --port=8000
pause
