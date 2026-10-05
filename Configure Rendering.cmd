@echo off
cd /d "%~dp0"
if not exist "backend\.env" copy "backend\.env.example" "backend\.env" >nul
echo Set OPENAI_API_KEY and a long random WEWRAP_BETA_ACCESS_CODE in the file.
echo Keep these values private. Do not upload backend\.env or paste its contents into chat.
echo Save the file and close Notepad to start the local rendering service.
start /wait notepad.exe "backend\.env"
node --env-file=backend/.env backend/server.mjs
pause
