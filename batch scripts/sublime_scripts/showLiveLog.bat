
@echo off
REM When executing this script inside sublime you can use the write click "Log Highlight"
REM and you will see the log file updated live with color highlight of the lines contain the word
REM "warning" (in yellow) and "Error" (in read)

REM Pleas insert the user name inside "UserName" password inside "sshpass" and ip inside "IpOfMechine"
REM Change "location/of/log/file" to the location of the file and "fileToShowChangesLive.log" to the
REM log file name that you want to see highlighted in real time

bash -c 'sshpass -p " UserName" ssh -t UserName@IpOfMechine "cd location/of/log/file;  tail -f fileToShowChangesLive.log; bash"'