@echo off
title NoAIVerdad - Launcher
echo ========================================================
echo   Iniciando servicios locales de NoAIVerdad (Windows)
echo ========================================================
echo.
echo 1. Iniciando Backend FastAPI en puerto 8000...
start "NoAIVerdad Backend (FastAPI)" cmd /k "cd /d %~dp0backend && python -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload"

echo 2. Iniciando Frontend en puerto 3000...
start "NoAIVerdad Frontend (HTTP Server)" cmd /k "cd /d %~dp0frontend && python -m http.server 3000"

echo.
echo ========================================================
echo  Servicios activos en segundo plano:
echo  - Frontend: http://localhost:3000
echo  - Backend:  http://localhost:8000
echo  - Swagger:  http://localhost:8000/docs
echo ========================================================
pause
