@echo off

set full_stamp=2022-10-19_20-20-10
set txt=bla bla bla
set logFile=logfile.log


call :Log txt, logFile


EXIT /B %ERRORLEVEL%

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Log
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Log::(txt, logFile)
	setlocal
	echo %full_stamp%:  txt  >> %logFile%
	endlocal
	exit /B 0