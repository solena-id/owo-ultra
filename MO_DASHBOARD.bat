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

if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --app="%URL%" --user-data-dir=%PROFILE%
    exit
)
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --app="%URL%" --user-data-dir=%PROFILE%
    exit
)
start "" "%URL%"
exit
