@echo off
cd /d "%~dp0"
call npm ci
if errorlevel 1 goto end
call npx expo start
:end
pause
