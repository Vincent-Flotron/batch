@ECHO off
:: setlocal EnableDelayedExpansion ::Doesn't make a difference, why do people use this anyway?
::NOTE: remove the leading zero with this little trick: "set /a dd1=(1%dd: =0%-100)-1"
::::::::::::::::
set retirement_date=20-09-2024
::::::::::::::::
REM set dd=%date:~4,2%-%date:~7,2%-%date:~10,4%
set dd=%date:~0,2%-%date:~3,2%-%date:~6,4%

:: separate the present year into fields
for /f "tokens=1,2* delims=- " %%A in ('ECHO %dd%') do (
	:: correct way 1%%A-100, because all 0x numbers are octal, so you have to remove the leading "0"
	Set /a PresD=1%%A-100
	Set /a PresM=1%%B-100
	Set /a PresY=1%%C-100
)
:: separate the retirement_date.
for /f "tokens=1,2* delims=- " %%G in ('ECHO %retirement_date%') do (
	Set /a RetD=1%%G-100
	Set /a RetM=1%%H-100
	Set /a RetY=1%%I-100
)

set /a diff_y=%RetY%-%PresY%
set /a diff_m=%RetM%-%PresM%
set /a diff_d=%RetD%-%PresD%

set /a Total_Days=%diff_y%*365+%diff_m%*30+%diff_d%
set /a Total_Years=(Total_Days/365)
set /a Remainder_Days=(Total_Days%%365)
set /a Remainder_Months=(Remainder_Days/30)
set /a Remainder_Days2=Remainder_Days%%30

echo ###############################################
ECHO TODAY's Date    : %dd%
ECHO RETIREMENT Date : %retirement_date%^

^

/                        +                \^

    Retirement is just + %Total_Days% + day(s) away!^

\                        +                /^

^

That is: %Total_Years% Year(s), %Remainder_Months% Months and %Remainder_Days2% Days^

^

###############################################