@echo off
chcp 65001 >nul
title Token Manager - OwO Pro Farmer VIP
cd /d "%~dp0"
core.exe --manage-tokens
pause
