::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBlGVQeHAE+/Fb4I5/jHzeuToUUhZuczfY7I3/qLOOVz
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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

