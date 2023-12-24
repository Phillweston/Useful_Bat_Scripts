@echo off
setlocal enabledelayedexpansion

REM Check if the prefix argument is provided
if "%~1"=="" (
    echo No prefix argument provided.
    exit /b
)

REM Set the prefix to the first argument
set "prefix=%~1"

REM Loop through each file with the prefix in its name
for %%f in (*%prefix%*) do (
    set "filename=%%f"
    
    REM Extract the part of the filename from the prefix onwards
    set "newname=!filename:*%prefix%=%prefix%!"
    
    REM Rename the file
    if not "!filename!"=="!newname!" (
        echo Renaming !filename! to !newname!
        ren "!filename!" "!newname!"
    )
)

echo Done.
pause
