@echo off
title Command prompt
cls
goto cmd

:cmd
echo MCSERVER Command Prompt (C) All rights reserved.
echo.
echo.
set /p cmd="Enter command - "
if %cmd% == help goto help
if %cmd% == ip goto iploadfake
if %cmd% == exit goto exitProgram
if %cmd% == winbat goto winbatch
if %cmd% == dirmk goto makedir

:help
echo.
echo HELP MENU
echo -----------
echo.
echo ip - Gives you your IP address.
echo exit - Exit the program (requires confirmation).
echo help - Open the help menu.
echo dirmk - Make a directory.
echo.
goto cmdrestart

:exitProgram
cls
echo Press any key to exit...
pause >nul
exit /b

:loginload
start %userprofile%\Desktop\apps\MCSERVER.BAT
goto cmdrestart

:cmdrestart
set /p recmd="Enter command - "
if %recmd% == help goto help
if %recmd% == ip goto ipload
if %recmd% == exit goto exit
if %recmd% == winbat goto winbatch
if %recmd% == dirmk goto makedir

:iploadfake
echo.
echo Checking info...
echo.
echo Your IP address is 127.0.0.1.
echo.
goto cmdrestart

:makedir
echo.
echo Enter the name of the directory you want to create.
set /p dir="Name: "
if %dir% == account goto mkproc
if %dir% == cancel goto cmdrestart

:mkproc
echo Creating directory "%dir%"...
mkdir "%dir%"
timeout 5 >nul
echo Created Directory!
echo.
goto cmdrestart