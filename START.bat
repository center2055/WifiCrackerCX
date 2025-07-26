@echo off
setlocal ENABLEDELAYEDEXPANSION

REM WifiCrackerCX Launcher

REM Check for Windows 11
ver | findstr /i "10.0.22 10.0.23 10.0.24 10.0.25 10.0.26" >nul
if errorlevel 1 (
    echo [WARNING] WifiCrackerCX is only tested on Windows 11. You may experience issues on other versions.
    echo.
)

REM Check for Python
where python >nul 2>nul
if errorlevel 1 (
    echo Python is not installed or not in PATH.
    pause
    exit /b 1
)

REM Check for pip
python -m pip --version >nul 2>nul
if errorlevel 1 (
    echo pip is not installed. Installing pip...
    python -m ensurepip
)

REM Check for pywifi
python -c "import pywifi" 2>nul
if errorlevel 1 (
    echo pywifi not found. Installing pywifi...
    python -m pip install pywifi
)

REM Check for PyQt5
python -c "import PyQt5" 2>nul
if errorlevel 1 (
    echo PyQt5 not found. Installing PyQt5...
    python -m pip install PyQt5
)

echo Launching WifiCrackerCX...

REM Ask user about admin rights
set /p adminchoice="Run WifiCrackerCX with administrator rights? (Y/N): "
if /I "%adminchoice%"=="Y" (
    powershell -Command "Start-Process python 'main.py' -Verb RunAs"
) else (
    python main.py
)

endlocal 