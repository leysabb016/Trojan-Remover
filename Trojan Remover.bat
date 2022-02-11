@echo off
:home
cls
title HOME
cls
color 5
echo --------------
echo HOME
echo --------------
echo.
echo --------------
echo 1. Delete all known processes
echo --------------
echo 2. Delete ratted files (administrator)
echo --------------
echo 3. Kill minecraft
echo --------------
echo 4. Terminate process
echo --------------
if ["%a%"] == ["1"] goto process
if ["%a%"] == ["2"] goto files
if ["%a%"] == ["3"] goto minecraft
if ["%a%"] == ["4"] goto terminate
pause >nul
:minecraft
cls
taskkill /f /im javaw.exe
cls
goto home
:files
cls
echo yes/no
set /p "si=Are you sure you want to delete ?: "
if ["%si%"] == ["yes"] goto yes
if ["%si%"] == ["no"] goto home
:yes
cls
cd AppData/roaming/.minecraft/libraries/net/minecraftforge/injector/forgedefault/
del injector-forgedefault.jar
cd C:\Users\%Username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
rmdir startup
Ping localhost -n 1 >nul
mkdir Startup
Ping localhost -n 1 >nul
cls
goto home
:process
cls
taskkill /f /im taskMrger.exe
taskkill /f /im TiWorker.exe
taskkill /f /im Client-Built.exe
taskkill /f /im DcRat.exe
taskkill /f /im MoUsoCoreWorker.exe
taskkill /f /im LIMERAT.exe
taskkill /f /im OVRServer_x64.exe
taskkill /f /im dllhost.exe
taskkill /f /im nvrserver.exe
taskkill /f /im csrss.exe
taskkill /f /im conhost.exe
goto svchost
:svchost
cls
echo yes/no
echo would you like to kill all svchost.exe tasks
echo Some are required for windows operations and other apps So take note you will most likly have to restart your computer
set /p "si=Are you sure you want to delete ?: "
if ["%si%"] == ["yes"] goto svkill
if ["%si%"] == ["no"] goto home
:svkill
cls
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
taskkill /f /t /im svchost.exe
ping localhost -n 3 >nul
echo Tasks Successfully Killed
cls
Goto home
cls
:terminate
cls