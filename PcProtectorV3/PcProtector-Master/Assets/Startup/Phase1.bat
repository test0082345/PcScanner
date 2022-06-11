@echo off
title PcProtector Stage: Starting (ADMIN PERMS NEEDED FOR THE ENTIRE SCRIPT)
echo Welcome To PcProtector
echo.
echo this is a script coded in batch to:
echo repair
echo replace
echo delete
echo.
echo corrupted files
echo.
echo Pc Protector will Run the following things ater you accpected this screen
echo.
echo it wil run:
echo Check disk
echo Sfc Scan
echo DISM Scan
echo.
echo anyway
echo.
echo (To Continue its CONTINUE in all caps)
SET /P AREYOUSURE=
IF /I "%AREYOUSURE%" NEQ "CONTINUE" GOTO END
echo.
echo No Going Back