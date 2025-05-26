@echo off

setlocal enabledelayedexpansion

set "currentFile=liste.txt"

:: Ausgabe formatieren
echo.

:: Zähler initialisieren
set /a lineNumber=0

:: Lies die Datei Zeile für Zeile
for /f "delims=" %%A in ('type "%currentFile%"') do (
    set /a lineNumber+=1
    if !lineNumber! LSS 10 (
    echo  !lineNumber!: %%A
    ) else (
    echo !lineNumber!: %%A
    )
)
echo.

endlocal