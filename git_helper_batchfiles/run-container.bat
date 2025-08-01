@echo off
cd /d "%~dp0..\"
echo --------------------------------------------
echo Starte im Verzeichnis: %CD%
echo --------------------------------------------

echo ================================================
echo Starte Container: openwebui-custom
echo ================================================
docker run -d -p 8080:8080 --name openwebui-custom openwebui-custom:ollama
echo.
docker ps
pause
