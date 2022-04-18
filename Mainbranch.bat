@echo off
color 9
cls
:Start
goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...
    
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed.
    ) else (
        echo Failure: Error 1 rerun the disabler as administrator
        goto noadmin
    )
    
    

echo Thanks for downloading
echo If you run into any problems feel free 
echo to join our discord at https://discord.gg/WHzBUcsPyJ
echo [1] Windows Disabler
echo [2] Norton Disabler
echo [3] Network Based Restrictions 

set /p Select=Option: 
if %Select%==1 goto Windows
if %Select%==2 goto Norton
if %Select%==3 goto FireWall
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


:FireWall
echo [92m=======================================================[94m
echo RESETING NETWORK SETTINGS (This Will Not Harm Your PC)
echo !!!READ!!! YOUR PC WILL RESTART 10 SECONDS AFTER YOUR HIT 1 TO AGREE SAVE ANY UNSAVED WORK BEFORE HITTING ONE
Echo Press 2 to cancel this action
set /p Select=Option: 
if %Select%==1 goto Confirmed
if %Select%==2 goto FAILED
if not %Select%==test goto Invalid

:Confirmed
cls
echo testing
netsh int ip reset
netsh advfirewall reset
echo RESETTING NETWORK
cls
echo RESTARTING
shutdown /r -t 5
TIMEOUT 5
goto exit

:noadmin
cls
echo Please reopen the disabler as an administrator.
TIMEOUT 3
goto exit


:FAILED
cls
echo You hit 2 meaning you did not agree to the restart returning to start menu.
TIMEOUT 3
cls
goto Start
