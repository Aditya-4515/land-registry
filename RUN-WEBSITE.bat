@echo off
setlocal
cd /d "%~dp0frontend"
echo ========================================
echo LandChain - Website Setup and Run
echo ========================================
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed. Install Node.js 18+ and run this file again.
  pause
  exit /b 1
)
if not exist node_modules (
  echo Installing frontend dependencies...
  call npm install
  if errorlevel 1 (
    echo Dependency installation failed.
    pause
    exit /b 1
  )
)
if not exist .env.local if exist .env.local.example copy /Y .env.local.example .env.local >nul
call npm run dev
