@echo off
set time=02:30:00
echo ************
echo ** SETUP: **
echo ************
set /P url=Enter URL (paste from clipboard then press enter): 
echo.
echo Enter file name and then press enter 
set /P file=Do not add extention like .mp4: 
echo.
echo Enter duration and then press enter 
echo (ex: 01:05:15 for 1 hours 5 minutes 15 seconds)
set /p time=If blank, will default to 02:30:00: 
echo.
echo.
echo *******************
echo ** CONFIRMATION: **
echo *******************
echo You are going to record %file%.mp4 for a duration of %time%. 
echo Remember you can press q to end recording at any time. 
echo.
pause
call ffmpeg -i %url%  -t %time% -bsf:a aac_adtstoasc -c copy %file%.mp4