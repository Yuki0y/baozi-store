@echo off
set "SCRIPT_DIR=%~dp0"
set "JAVA_HOME=%SCRIPT_DIR%..\tools\jdk"
set "PATH=%JAVA_HOME%\bin;%SCRIPT_DIR%..\tools\maven\bin;%PATH%"

echo ========================================================
echo   Iniciando API REST Baozi Store - Gilberto (RU: 5256762)
echo ========================================================
echo JAVA_HOME: %JAVA_HOME%
echo.

cd /d "%SCRIPT_DIR%"
mvn spring-boot:run
pause
