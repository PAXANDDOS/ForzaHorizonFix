@echo off

echo Executing ForzaHorizon4Fix (v2.0) by @paxanddos.
echo If you have any issues please address them to https://github.com/PAXANDDOS/ForzaHorizon4Fix/issues
echo Waiting for Forza Horizon 4 to finally launch and then killing explorer.exe.

start /high explorer.exe shell:appsFolder\Microsoft.SunriseBaseGame_8wekyb3d8bbwe!SunriseReleaseFinal
SetLocal EnableExtensions
SetLocal ENABLEDELAYEDEXPANSION
Set app=ForzaHorizon4.exe
timeout /T 60 /NOBREAK
taskkill /f /im explorer.exe

:loop
    tasklist | Find /i "%app%" || (goto Else)
:THEN
    timeout /T 5 /NOBREAK
    goto loop
:ELSE
    start explorer.exe
    exit
