@echo off
chcp 65001 >nul
title OwO Farmer - Dashboard Viewer

set PORT=3000
if exist .env (
    for /f "tokens=1,2 delims==" %%a in (.env) do (
        if "%%a"=="DASHBOARD_PORT" set PORT=%%b
    )
)
set URL=http://127.0.0.1:%PORT%
set PROFILE="%TEMP%\OwODashProfile"

:: 1. Uu tien tim Microsoft Edge (Nhe, tich hop san tren Windows 10/11)
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --app="%URL%" --user-data-dir=%PROFILE%
    exit
)

:: 2. Tim Google Chrome (Ban 64-bit)
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --app="%URL%" --user-data-dir=%PROFILE%
    exit
)

:: 3. Tim Google Chrome (Ban 32-bit)
if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --app="%URL%" --user-data-dir=%PROFILE%
    exit
)

:: 4. Neu khong tim thay Edge/Chrome trong o C, mo bang trinh duyet mac dinh cua he thong
start "" "%URL%"
exit
