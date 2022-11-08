@echo off

set myvar=
echo %myvar%
call :myfunction myvar
echo %myvar%
goto :eof

:myfunction
set %1=filled
EXIT /B 0