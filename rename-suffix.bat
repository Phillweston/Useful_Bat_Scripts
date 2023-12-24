@echo off
setlocal enabledelayedexpansion

REM Loop through each file with ".pdfpos" suffix
for %%f in (*.pdfpos) do (
    set "filename=%%f"
    
    REM Create the new filename by replacing ".pdfpos" with ".pdf"
    set "newname=!filename:.pdfpos=.pdf!"
    
    REM Rename the file
    echo Renaming !filename! to !newname!
    ren "!filename!" "!newname!"
)

echo Done.
pause
