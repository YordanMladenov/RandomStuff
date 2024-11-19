@echo off
color 0a
title Your Windows is locked
goto lockscreen

:lockscreen
cls
echo \033[91m This computer is locked by the government because you didn't pay 100,000 USD to the IRS. Enter the police key to unlock this device and exit this screen. | cmdcolor.exe
echo.
echo.
echo.
set /p key="Key: "
if %key% == gh7G78F568c8cv3 goto unlock
echo \033[91m ERROR | cmdcolor.exe
goto lockscreen

:unlock
echo Unlocking...
timeout 5 >nul
cls
echo Press any key to start Windows...
pause >nul
exit /b