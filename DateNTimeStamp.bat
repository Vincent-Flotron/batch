@echo off


call :GetTimeStamp v1, v2, v3, v4

echo full_file_stamp: %v1%
echo full_stamp: %v2%
echo date_stamp: %v3%
echo time_stamp: %v4%

REM pause


EXIT /B %ERRORLEVEL%



:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Return differents stamps
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:GetTimeStamp::(full_file_stamp, full_stamp, date_stamp, time_stamp)
	setlocal
	REM split the string "LocalDateTime=20221019144906.868000+120" on the egal sign and take the 2nd part.
	for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
	set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
	set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%" & set "mmm=%dt:~15,3%"

	REM Set the stamps
	set "date_stamp=%YYYY%%MM%%DD%" & set "time_stamp=%HH%%Min%%Sec%%mmm%"
	set "full_stamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%-%mmm%"
	set "full_file_stamp=%YYYY%%MM%%DD%_%HH%%Min%%Sec%%mmm%"

	endlocal
	
	REM return the stamps
	set %~1=%full_file_stamp%
	set "%~2=%full_stamp%"
	set "%~3=%date_stamp%"
	set "%~4=%time_stamp%"

	exit /B 0