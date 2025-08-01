@echo off
cd /d "%~dp0..\"
echo --------------------------------------------
echo Starte im Verzeichnis: %CD%
echo --------------------------------------------

echo ================================================
echo Git Commit und Push (manuell)
echo ================================================
git status
echo.
set /p commitMsg=Commit-Nachricht eingeben: 
git add .
git commit -m "%commitMsg%"
git push
echo.
echo ► Git Push abgeschlossen.
pause
