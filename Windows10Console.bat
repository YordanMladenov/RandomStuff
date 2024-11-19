@echo off

echo Starting Windows...

timeout 10>NUL

cls

echo User OOBE

echo ==============

echo Welcome! Follow what it says to setup this computer!

pause

echo 1st is Create account!

echo.

echo Enter your desired username and password or you can use username but no password!

set /p username="Username: "

set /p password="Password: "

cls

echo Please wait...

timeout 10>NUL

cls

echo Now done! Time for install!

timeout 10>NUL

cls

echo Rebooting to Windows Setup...

timeout 10>NUL

cls

echo Starting Windows...

timeout 10>NUL

cls

echo Preparing Windows Setup...

timeout 10>NUL

cls

echo Windows Setup

echo ==============

echo.

echo Installing Windows...

timeout 20>NUL

cls

echo Time to reboot to Service Registration!

pause

cls

echo Rebooting to Service Registration...

timeout 10>NUL

cls

echo Starting Windows...

timeout 10>NUL

cls

echo Setup is registering services...

timeout 10>NUL

echo.

echo Setup is updating registry...

timeout 10>NUL

cls

echo Rebooting...

timeout 10>NUL

cls

echo Starting Windows...

timeout 10>NUL

cls

echo Logon Screen

echo =============

echo Login to account!

set /p username2="Username: "

set /p password2="Password: "

cls

echo Logging on...

timeout 10>NUL

cls

echo Desktop

echo =======

timeout 10>NUL

cls

color 9f

cls

echo :(

echo.

echo Fatal Error - Integral Problem

timeout 10>NUL

cls

color 07

cls

echo Starting Windows...

timeout 10>NUL

echo.

echo Fatal Error - Integral Problem

timeout 10>NUL

cls

color 4f

echo.

cls

echo :(

echo.

echo Apperantly, Windows failed to load because of a failed process and a Fatal ERROR.

echo To fix this, you now have an option for Recovery Mode!

echo Press any key to reboot to Recovery Mode.

echo.

echo Error code: WINCRASH

pause

cls

color 07

echo Are you sure, you want to enter Recovery Mode?

set /p recover=""

if %recover% == Yes goto recover

if %recover% == No exit

:recover

cls

color 07

echo Starting Windows...

timeout 10>NUL

cls

color 0f

echo Loading X:\windows\SYSTEM32\winload.efi

timeout 10>NUL

cls

color 9f

echo Entering Recovery Mode...

timeout 10>NUL

color 9f

cls

color 07

echo You will now repair your computer from serious errors. Are you sure you want to run REPAIR.EXE?

set /p repair=""

if %repair% == Yes goto repair

if %repair% == No exit

:repair

cls

echo Repairing stage 1 of 10...

timeout 10>NUL

cls

echo FATAL ERROR: Recovery has got an error with error code "CRASH"!

cls

echo RECOVERY FAILED! REBOOTING TO WINDOWS 10...

timeout 10>NUL

cls

goto start

:start

cls

echo Starting Windows...

timeout 10>NUL

cls

echo Loading Windows 10...

timeout 10>NUL

cls

echo Crash detected! Shutting down Windows...

timeout 10>NUL

cls

echo [InBoot] Loading boot files...

timeout 10>NUL

echo.

echo [InBoot] Failed to join group Windows10! OS does not exist?!?

timeout 10>NUL

echo.

echo [InBoot] Unable to find Windows Boot Manager! System will halt after another InBoot error!

timeout 10>NUL

echo.

echo [InBoot] Failed to start Windows Boot Manager with args "WINEXECUTE.BOOT /NOOPTIN /BOOTFILE=\?\CORRUPT\?\" /WORKGROUP="* UNKNOWN *"

timeout 10>NUL

echo.

echo [InBoot] Failed to launch OS "Windows 10" from Windows Boot Manager (%EFIPARTITION%\EFI\Boot\bootmgr.efi).

timeout 10>NUL

echo Shutting down...

timeout 10>NUL

cls

pause >NUL

EXIT /B

