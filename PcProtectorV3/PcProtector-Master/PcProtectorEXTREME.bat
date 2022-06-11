:makes sure that the path doesnt show trought the entire script
@echo off

:incase the Path Has An Error
%~d0 2>NUL
pushd "%~dp0" 2>NUL


:starting the script
cd Assets
call Startup\Phase1.bat



:gives the user 10 more seconds to close the tab before PcProtector is going to take action
timeout 10

:Starting Repair Session
Title Repair Session (1/4)
call Fixing_Drive\DISM\DISM_Scan.bat
pause
Title Repair Session (2/4)
call Fixing_Drive\Check_Disk\Check_Disk_Scan.bat
pause
Title Repair Session (3/4)
call Fixing_Drive\SFC_Scan\Sfc_Scan.bat
pause
Title Repair Session (1/4)
call Fixing_Drive\SFC_Scan\Sfc_Scan.bat
:ending Screen
echo The Batch Has Ran All The Scans
echo.
echo You Can Now Close This Screen
echo.
echo thank you for using PcProtector :D
pause
