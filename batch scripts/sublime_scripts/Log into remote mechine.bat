
@echo off
REM This script will log into your machine with userName and password that you entered in advance.
REM Pleas insert the user name inside "theUserName" and password inside "thePassword"

set /p id="Enter IP:"

cmdkey /generic:TERMSRV/%id% /user:theUserName /pass:thePassword

mstsc /v:%id%