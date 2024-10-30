@echo off
start "" "C:\Program Files\Docker\Docker\Docker Desktop.exe"
timeout /t 10 >nul
docker start stirling-pdf
echo "Refresh browser multiple times if page not found displayed in browser."
timeout /t 5 >nul
start http://localhost:8080
timeout /t 5 >nul
taskkill /IM "Docker Desktop.exe" /F

