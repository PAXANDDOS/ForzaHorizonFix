@echo off

echo Executing ForzaHorizonFix (v2.5) by @paxanddos.
echo If you have any issues please address them to https://github.com/PAXANDDOS/ForzaHorizonFix/issues
echo Waiting for Forza Horizon 5 to finally launch and then killing explorer.exe.

start /high explorer.exe shell:appsFolder\Microsoft.624F8B84B80_8wekyb3d8bbwe!Forzahorizon5
SetLocal EnableExtensions
SetLocal ENABLEDELAYEDEXPANSION
Set app=ForzaHorizon5.exe
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
