@echo off

REM created by Guy Luz

REM Batch script to change Widows IP, default gateway and fixed subnet mask.

set /p NewIp=Enter the new IP:

set Del=%NewIp:*.=%
set Del=%Del:*.=%
set Del=%Del:*.=%
set Del=.%Del%

CALL set DefaultG=%%NewIp:%Del%=.254%%

netsh interface ipv4 set address name="Local Area Connection" static %NewIp% 255.255.255.0 %DefaultG%

set /p Input=To exit press enter