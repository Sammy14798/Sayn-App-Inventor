@echo off
set AI_STARTER="C:\Program Files (x86)\AI2 Starter\connector\aiWinStarter.exe"
set AI2U_CMD="C:\AI2U\startAI.cmd"

if not exist %AI_STARTER% (
    echo WARNNING! Not Installed AI2 Starter
    pause
    goto :exit
)

if not exist %AI2U_CMD% (
    echo WARNNING!  Not Installed AI2U 64bit
    pause
    goto :exit
)

start /min "" %AI_STARTER%
timeout /t 2 /nobreak >nul

start /min "" %AI2U_CMD%
timeout /t 1 /nobreak >nul

set CHROME_64BIT="C:\Program Files\Google\Chrome\Application\chrome.exe"
if exist %CHROME_64BIT% (
    start "" %CHROME_64BIT% "http://127.0.0.1:8888/login/"
    goto :exit
)

set CHROME_32BIT="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
if exist %CHROME_32BIT% (
    start "" %CHROME_32BIT% "http://127.0.0.1:8888/login/"
    goto :exit
)

echo Cannot find Chrome browser. Please make sure Chrome is installed.
pause

:exit
exit