@echo off
setlocal enabledelayedexpansion

if "%~1" == "" goto :noarg

set size=0
for /f "tokens=*" %%x in ('dir /s /a /b %*') do set /a size+=%%~zx
echo. Chosen direcory(ies) size - %size% Bytes
goto :eof

:noarg
@echo.Calculating size for chosen directory. Please give at least one directory as an argument.

endlocal
EXIT /B %ERRORLEVEL%