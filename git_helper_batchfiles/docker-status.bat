@echo off
cd /d "%~dp0..\"
echo --------------------------------------------
echo Starte im Verzeichnis: %CD%
echo --------------------------------------------

echo ================================================
echo Docker Container Übersicht
echo ================================================
docker ps -a
pause
