Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "   Iniciando servicios locales de NoAIVerdad (Windows)  " -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Iniciando Backend FastAPI en http://localhost:8000..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd backend; python -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload"

Write-Host "2. Iniciando Frontend en http://localhost:3000..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd frontend; python -m http.server 3000"

Write-Host ""
Write-Host "========================================================" -ForegroundColor Green
Write-Host " Servicios iniciados:" -ForegroundColor Green
Write-Host " - Frontend: http://localhost:3000" -ForegroundColor Green
Write-Host " - Backend:  http://localhost:8000" -ForegroundColor Green
Write-Host " - Swagger:  http://localhost:8000/docs" -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Green
