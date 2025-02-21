@echo off
start /min "" "C:\Program Files (x86)\AI2 Starter\connector\aiWinStarter.exe"
timeout /t 2 /nobreak >nul
start /min "" "C:\AI2U\startAI.cmd"
timeout /t 1 /nobreak >nul
start /min "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://127.0.0.1:8888/login/"
exit