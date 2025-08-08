@echo off
mode con: cols=25 lines=4
title ForceDelete

if "%~1"=="" (
    echo.
    echo USAGE: Drag and drop a
    echo file onto this script
    echo to force-delete it.
    timeout>NUL /t 5 /NOBREAK
    exit
)

set "file=%~1"

del /f "%file%"
if errorlevel 1 (
    mode con: cols=20 lines=3
    CLS
    echo.
    echo Deletion failed.
    echo Missing perms?
    timeout>NUL /t 3 /NOBREAK
    exit
) else (
    exit
)