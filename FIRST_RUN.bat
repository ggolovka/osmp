@echo off
echo Task killing explorer.exe...Done!
echo Installing WSO objects for VBS...
@taskkill /f /im explorer.exe
start /wait C:\osmp\wso2000XP.exe /silent
echo Done!..
echo Starting VBS browser...
@ping 127.0.0.1 >nul
@start C:\osmp\maralt.vbs
exit