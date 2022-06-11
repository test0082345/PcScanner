@echo off
title FlanikPrompt (PcProtector)
echo Flanik Prompt [Version 0.1 BETA]
echo (c) Flanik Is The Only Person Who Worked On This Prompt
echo Edited To Run For PcProtector
echo Commands:
echo dism
echo sfc
echo checkdisk
echo fullscan
echo.
echo.

%~d0 2>NUL
pushd "%~dp0" 2>NUL



:typecmd
set c=
set /P c="PcProtector>"

if /I "%c%" EQU "dism" (
call Assets\Fixing_Drive\DISM\DISM_Scan.bat
goto typecmd
)

if /I "%c%" EQU "sfc" (
call Assets\Fixing_Drive\SFC_Scan\Sfc_Scan.bat
goto typecmd
)


if /I "%c%" EQU "checkdisk" (
call Assets\Fixing_Drive\Check_Disk\Check_Disk_Scan.bat
goto typecmd
)



if /I "%c%" EQU "FullScan" (
cls

%~d0 2>NUL
pushd "%~dp0" 2>NUL



cd Assets
call Startup\Phase1.bat



timeout 10


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
echo The Batch Has Ran All The Scans
echo.
echo You Can Now Close This Screen
echo.
echo thank you for using PcProtector :D
pause
goto typecmd
)
