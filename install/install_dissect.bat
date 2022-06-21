@echo off
REM get QGIS python interpreter
call "%QGIS_PATH%\bin\o4w_env.bat"
call py3_env
REM set required and optional qgis settings to install script
if not exist %appdata%\QGIS\QGIS3\profiles\default\ (
    echo It appears QGIS has not previously run by your profile. Please open and close QGIS to establish a profile.
    pause
    exit
)
if exist %appdata%\QGIS\QGIS3\profiles\default\ (
    echo Installing Dissect ...
    call python install.py
    echo Install complete
)
timeout /t 5

