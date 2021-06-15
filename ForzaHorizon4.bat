@echo off

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

    echo Executing ForzaHorizon4Fix (v2.0) by @paxanddos.
    echo If you have any issues please address them to https://github.com/PAXANDDOS/ForzaHorizon4Fix/issues
    echo Waiting for Forza Horizon 4 to finally launch and then killing explorer.exe.

    net start XboxNetApiSvc
    net start XboxGipSvc
    net start XblAuthManager
    net start XblGameSave
    timeout /T 1 /NOBREAK

    start /high explorer.exe shell:appsFolder\Microsoft.SunriseBaseGame_8wekyb3d8bbwe!SunriseReleaseFinal
    SetLocal EnableExtensions
    SetLocal ENABLEDELAYEDEXPANSION
    Set game=ForzaHorizon4.exe
    timeout /T 60 /NOBREAK
    taskkill /f /im explorer.exe

    :loop
        tasklist | Find /i "%game%" || (goto Else)
    :THEN
        timeout /T 5 /NOBREAK
        goto loop
    :ELSE
        start explorer.exe
        exit
