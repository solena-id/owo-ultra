@echo off
chcp 65001 >nul
title OwO Pro Farmer VIP
cd /d "%~dp0"
if exist "MO_DASHBOARD.bat" (
    start "" "MO_DASHBOARD.bat"
)
core.exe
pause
