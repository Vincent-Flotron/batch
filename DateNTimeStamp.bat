@echo off


set v1=
set v2=
set v3=
set v4=



REM call :GetTimeStamp v1, v2, v3, v4

REM echo full_file_stamp: %v1%
REM echo full_stamp: %v2%
REM echo date_stamp: %v3%
REM echo time_stamp: %v4%

call :GetTimeStamp thetime
echo thetime: %thetime%

REM pause


EXIT /B %ERRORLEVEL%



:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Return the time stamps
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:GetTimeStamp::(time_stamp)
	set %1=%date:~6,4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%%time:~6,2%%time:~9,2%
	
	exit /B 0