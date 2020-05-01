@ECHO OFF
ECHO.
ECHO.
ECHO.
ECHO WARNING!!!
ECHO.
ECHO This will remove all unofficial maps from
ECHO the Yuri's Revenge installation folder.
ECHO.
ECHO You will need to manually re-install these maps,
ECHO if you ever want to use them again.
ECHO ...
ECHO.
ECHO.
ECHO.

:START
set choice=
set /p choice=Remove Maps from game? (Y/N): 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='n' GOTO END
if '%choice%'=='N' GOTO END
if '%choice%'=='Y' GOTO DEL
if '%choice%'=='y' GOTO DEL
ECHO.
ECHO "%choice%" is not valid please type "Y" or "N"
ECHO.
GOTO START

:DEL
CLS
ECHO.
ECHO.
ECHO.
ECHO Removing files; Please stand by
ECHO ...
ECHO.
ECHO.
ECHO.
DIR
DEL ecache97.mix
DEL expand97.mix
DEL *.yrm
GOTO END

:END
EXIT
