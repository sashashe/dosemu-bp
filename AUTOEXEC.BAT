@ECHO OFF
SET DOSDIR=C:\FDOS
SET LANG=RU
SET TZ=UTC
SET PATH=%dosdir%\BIN;D:\DOSEMU;C:\BP;C:\BP\BIN
SET NLSPATH=%dosdir%\NLS
SET HELPPATH=%dosdir%\HELP
SET TEMP=%dosdir%\TEMP
SET TMP=%TEMP%
SET BLASTER=A220 I5 D1 H5 P330
SET DIRCMD=/P /OGN /Y
SET COPYCMD=/-Y

IF EXIST %DOSDIR%\BIN\DOSLFN.COM LH DOSLFN
NLSFUNC %dosdir%\BIN\COUNTRY.SYS
DISPLAY CON=(EGA,866,2)
MODE CON CP PREP=((866) %dosdir%\CPI\EGA3.CPX)
MODE CON CP SELECT 866

SET AUTOFILE=%0
SET CFGFILE=C:\FDCONFIG.SYS
alias reboot=fdapm warmboot
alias reset=fdisk /reboot
alias halt=fdapm poweroff
alias shutdown=fdapm poweroff
alias cfg=edit %cfgfile%
alias auto=edit %0

set OS_NAME=FreeDOS
set OS_VERSION=1.2
unix -e
