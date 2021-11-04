@echo off
color 9
cls
:Start
echo Thanks for downloading
echo [1] Windows Disabler
echo [2] Norton Disabler
set /p Select=Option: 
if %Select%==1 goto Windows
if %Select%==2 goto Norton
if not %Select%==test goto Invalid

 

 

:Invalid
cls
echo Invalid option!
ping localhost -n 5 >nul
cls
goto Start
 
:exit
exit



:Norton



cls
echo [92m=======================================================================================================[94m
echo Starting Disabler (Keep The Window Open Or The Disabler Will Not work, If it says error dont worry its normal)
echo [92m=======================================================================================================[94m
TIMEOUT 10
:N
taskkill /IM "NF.exe" /F
cls
taskkill /IM "TampMon.exe" /F
cls




goto N




:Windows
cls
echo Thanks For downloading
echo The software will now disable WindowsControls
echo the commands start you can minimize this winodws but make sure you leave it open or else screentime will be renabled
wmic baseboard get serialnumber
TIMEOUT 10
:e
cls
net stop "WpcMonSvc"
cls
taskkill /IM "WpcMon.exe" /F

cls

echo [92m=======================================================[94m
echo Screen time startup disabled and process terminated!
echo [92m=======================================================[94m
timeout 3
cls
goto e

