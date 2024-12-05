@echo off
echo Press 1 and then ENTER to play Alibi.
set /p play="["
if %play% == 1 goto playsong
exit /b

:playsong
start https://open.spotify.com/track/5496lks6V3fh1mZAB6IAap
exit /b