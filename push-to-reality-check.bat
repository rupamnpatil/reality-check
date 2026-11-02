@echo off
setlocal
title Reality Check - Push to reality-check Repository
cd /d "%~dp0"

echo ================================================================
echo      REALITY CHECK - PUSHING TO github.com/rupamnpatil/reality-check
echo ================================================================
echo.

echo [1/3] Switching remote to reality-check...
git remote set-url origin https://github.com/rupamnpatil/reality-check.git

echo.
echo [2/3] Checking staged files and commit...
git add .
git commit -m "Fix admin dashboard reporting, map bounds, real-time sync, and add service scripts" 2>nul

echo.
echo [3/3] Pushing to https://github.com/rupamnpatil/reality-check (branch main)...
git push origin main

if errorlevel 1 (
    echo.
    echo Trying forced update to overwrite the 2-month-old initial commit...
    git push origin main --force
)

echo.
echo ================================================================
echo  DONE! Open: https://github.com/rupamnpatil/reality-check
echo ================================================================
echo.
pause
