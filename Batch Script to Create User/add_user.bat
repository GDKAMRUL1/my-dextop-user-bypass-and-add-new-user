@echo off
:: Set the username and password
set "username=NewUser"
set "password=Password123"

:: Create the user
net user %username% %password% /add

:: Add the user to the Administrators group (optional)
net localgroup administrators %username% /add

echo User %username% has been created with administrator privileges.
pause
