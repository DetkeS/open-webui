@echo off
cd /d "%~dp0..\"
echo --------------------------------------------
echo Starte im Verzeichnis: %CD%
echo --------------------------------------------

echo ================================================
echo Stoppe und entferne Container: openwebui-custom
echo ================================================
docker stop openwebui-custom
docker rm openwebui-custom
pause
