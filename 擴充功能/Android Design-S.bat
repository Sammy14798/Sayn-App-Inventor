@echo off

set "CHROME_PATH1=C:\Program Files\Google\Chrome\Application\chrome.exe"
set "CHROME_PATH2=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

start /min "" "C:\Program Files (x86)\AI2 Starter\connector\aiWinStarter.exe"
timeout /t 2 /nobreak >nul
start /min "" "C:\AI2U\startAI.cmd"
timeout /t 1 /nobreak >nul

if exist "%CHROME_PATH1%" (
    start "%CHROME_PATH1%" "http://127.0.0.1:8888/login/"
) else if exist "%CHROME_PATH2%" (
    start "%CHROME_PATH2%" "http://127.0.0.1:8888/login/"
) else (
    echo Chrome not found in expected locations.
    pause
)

exit