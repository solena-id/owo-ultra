@echo off
chcp 65001 >nul
title OwO Pro Farmer VIP - Auto Update
cd /d "%~dp0"
echo ==============================================
echo       OwO Pro Farmer VIP - AUTO UPDATE
echo ==============================================
echo.
echo Dang kiem tra va tai ban cap nhat moi nhat tu Github...
echo.
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/solena-id/owo-ultra/main/app.dat' -OutFile 'app.dat'"
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/solena-id/owo-ultra/main/core.exe' -OutFile 'core.exe'"
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/solena-id/owo-ultra/main/START.bat' -OutFile 'START.bat'"
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/solena-id/owo-ultra/main/QUAN_LY_TOKEN.bat' -OutFile 'QUAN_LY_TOKEN.bat'"
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/solena-id/owo-ultra/main/MO_DASHBOARD.bat' -OutFile 'MO_DASHBOARD.bat'"
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/solena-id/owo-ultra/main/UPDATE.bat' -OutFile 'UPDATE_NEW.bat'; if (Test-Path 'UPDATE_NEW.bat') { Move-Item -Path 'UPDATE_NEW.bat' -Destination 'UPDATE.bat' -Force }"
echo.
echo [OK] Da cap nhat thanh cong!
echo Bam phim bat ky de thoat...
pause >nul
