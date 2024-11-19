@echo off
goto infocheck

:infocheck
title Checking info...
echo Checking info...
timeout 5 >nul
title Sign in to your MCSERVER Account
goto loginpage

:loginpage
clear
color 0f
title Sign in Use your MCSERVER Account to add it to Windows.
echo Sign in
echo Use your MCSERVER Account to add it to Windows
echo.
set /p emailorphone="Email or phone: "
if %emailorphone% == license goto license
if %emailorphone% == mcserver@mcserver.com goto nextstep
if %emailorphone% == skip goto skip
if %emailorphone% == key goto crypt
if %emailorphone% == crash goto error
echo Wrong email or phone.
goto loginpage

:nextstep
clear
title Enter your password to authorize Windows to use your account
echo Hi, MCSERVER
echo Enter your password to authorize Windows to use your account
echo mcserver@mcserver.com
echo.
set /p pass="Password: "
if %pass% == microsoftisbest goto finished
echo Wrong password.
goto nextstep

:finished
clear
title Signing you in...
echo Signing you in...
timeout 5 >nul
clear
title Account added
echo Account added! Press any key to exit.
pause >nul
exit /b

:license
C:\Users\yorda\Desktop\mcserver_files\notice.rtf
goto loginpage

:skip
clear
title Are you sure you want to skip setting up an MCSERVER Account?
echo Are you sure you want to skip setting up an MCSERVER Account?
echo Type Y (yes) or N (no).
set /p skipsetup=": "
if %skipsetup% == Y exit
if %skipsetup% == N goto loginpage

:crypt
clear
title Please enter the key.
color 04
echo Please enter the key.
echo.
echo.
set /p key="<Key>: "
if %key% == gh7G78F568c8cv3 goto decrypt
goto crypt

:decrypt
clear
title Decrypting...
echo Decrypting...
timeout 5 >nul
goto loginpage

:error
title Something went wrong!
clear
echo Something went wrong! Please try again. More INFO: https://accounts.mcserver.com/v3/signin/email
echo.
echo Press any key to retry.
pause >nul
clear
echo Restarting setup...
timeout 5 >nul
goto loginpage