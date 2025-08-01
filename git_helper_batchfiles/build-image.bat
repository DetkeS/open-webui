@echo off
cd /d "%~dp0..\"
echo --------------------------------------------
echo Starte im Verzeichnis: %CD%
echo --------------------------------------------

echo ================================================
echo Baue Docker-Image: openwebui-custom:ollama
echo ================================================
docker build --no-cache -t openwebui-custom:ollama --build-arg USE_OLLAMA=true .
echo.
echo ► Docker-Image wurde erstellt.
pause
