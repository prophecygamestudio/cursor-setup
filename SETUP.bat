@echo off
REM Game Studio Cursor Environment Setup Launcher
REM This batch file launches the PowerShell setup script with proper permissions

echo ============================================
echo Game Studio Cursor Environment Setup
echo ============================================
echo.

REM Check if repository URL is provided as argument
if "%~1"=="" (
    echo ERROR: Please provide the repository URL as an argument
    echo.
    echo Usage: SETUP.bat "https://github.com/yourstudio/cursor-setup.git"
    echo.
    pause
    exit /b 1
)

echo Repository URL: %~1
echo.

REM Launch PowerShell script with execution policy bypass
echo Launching setup script...
echo.

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0setup-cursor-environment.ps1" -RepositoryUrl "%~1"

echo.
echo Setup launcher finished.
pause
