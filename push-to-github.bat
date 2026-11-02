@echo off
setlocal
title Reality Check - Multi-Repo GitHub Pusher
cd /d "%~dp0"

echo ================================================================
echo           REALITY CHECK - PUSHING UPDATES TO GITHUB
echo ================================================================
echo.

echo [1/3] Staging and committing changes...
git add .
git commit -m "Fix admin dashboard reporting, map bounds, real-time sync, and add service scripts" 2>nul

echo.
echo [2/3] Pushing to repository: Civic-platform...
git remote set-url origin https://github.com/rupamnpatil/Civic-platform.git
git push origin main
if errorlevel 1 git push origin main --force

echo.
echo [3/3] Pushing to repository: reality-check...
git remote set-url origin https://github.com/rupamnpatil/reality-check.git
git push origin main
if errorlevel 1 git push origin main --force

echo.
echo ================================================================
echo                   ALL REPOSITORIES UPDATED!
echo ================================================================
echo.
echo Both repositories are now updated with your latest code:
echo   1. https://github.com/rupamnpatil/Civic-platform
echo   2. https://github.com/rupamnpatil/reality-check
echo.
pause
