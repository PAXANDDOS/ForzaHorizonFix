@echo off

rem Starting Forza Horizon 4. Explorer must be running.
start /high explorer.exe shell:appsFolder\Microsoft.SunriseBaseGame_8wekyb3d8bbwe!SunriseReleaseFinal

rem Setting required variables.
SetLocal EnableExtensions
SetLocal ENABLEDELAYEDEXPANSION
Set Forza=ForzaHorizon4.exe

rem Killing explorer.
echo This bat file was made by PAXANDDOS (@paxanddos).
echo If Forza Horizon 4 didn't start. Try restarting explorer.exe manually.
echo Waiting for Forza Horizon 4 to finally launch and then killing explorer.exe.
echo If after timeout you see some data, then this file is working properly and will be closed as soon as Forza Horizon 4 has stopped working.
timeout /T 55 /NOBREAK
taskkill /f /im explorer.exe

rem Waiting Forza Horizon 4 to stop and starting explorer.
:loop
tasklist | Find /i "%Forza%" || (goto Else)
:THEN
timeout /T 5 /NOBREAK
goto loop
:ELSE
start explorer.exe
exit
