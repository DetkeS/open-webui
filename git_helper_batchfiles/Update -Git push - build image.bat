@echo off
cd /d "%~dp0..\"
echo --------------------------------------------
echo Starte im Verzeichnis: %CD%
echo --------------------------------------------

echo ================================================
echo Update + Git Commit + Docker Build
echo ================================================
git status
echo.
set /p commitMsg=Commit-Nachricht eingeben: 
git add .
git commit -m "%commitMsg%"
git push
echo.
docker build -t openwebui-custom:ollama --build-arg USE_OLLAMA=true .
echo.
echo ► Update und Build abgeschlossen.
pause
