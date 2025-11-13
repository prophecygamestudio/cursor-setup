@echo off
REM Cursor Setup Installer - Batch Script
REM This script self-elevates and runs the PowerShell installer

REM Check if running as administrator
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Running with administrator privileges...
    goto :run_installer
) else (
    echo Requesting administrator privileges...
    REM Re-launch with elevation
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

:run_installer
echo.
echo ============================================
echo Cursor Setup - Installing...
echo ============================================
echo.

REM Download and execute the PowerShell installer
powershell -ExecutionPolicy Bypass -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/RallyHereInteractive/cursor-setup/main/web-installer.ps1' -OutFile '%TEMP%\cursor-web-installer.ps1'; & '%TEMP%\cursor-web-installer.ps1'}"

if %errorLevel% == 0 (
    echo.
    echo Installation completed successfully!
) else (
    echo.
    echo Installation encountered an error. Exit code: %errorLevel%
    pause
)

