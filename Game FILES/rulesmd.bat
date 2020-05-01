@ECHO OFF
if not exist ra2md.exe goto NORA2MD
if exist rulesmd.dat goto ENABLE
if exist rulesmd.ini goto DISABLE
if not exist rulesmd.ini goto FILEMIS
if not exist rulesmd.dat goto FILEMIS
goto END

:ENABLE
ren Rulesmd.dat Rulesmd.ini
cls
ECHO.
ECHO 'MPI Yuri's Revenge Rules-MOD' has been ENABLED!!!
ECHO.
pause
goto END

:DISABLE
ren Rulesmd.ini Rulesmd.dat
cls
ECHO.
ECHO 'MPI Yuri's Revenge Rules-MOD' has been DISABLED!!!
ECHO.
pause
goto END

:NORA2MD
echo.
echo FATAL ERROR
echo 'RA2MD.EXE' not found! You must have this file and all the
echo files it requires!
echo If Yuri's Revenge is not installed, please re-install first.
pause
goto END

:FILEMIS
echo.
echo FATAL ERROR
echo 'Rulesmd.ini' or 'Rulesmd.dat' not found! You must have one
echo of these files, in the directory in which you installed
echo Yuri's Revenge.
pause
goto END

:END
EXIT
