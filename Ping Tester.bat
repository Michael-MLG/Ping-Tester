:Start

@echo off
SETLOCAL DisableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

@ECHO off
REM Original code from PlanetSide 2 Ping Tester by Sh4rkill3rSG
REM Original Code link https://pastebin.com/wtMHUw72
REM IPs copied from http://pastebin.com/raw/be4eZRKr
ECHO CSGO PING TESTER by Michael #MLG WannaBe
ECHO =========================================
CALL:ColorText 0A "Europe"
CALL:csgo 146.66.159.127
ECHO - (EU West)  Luxembourg:         %ms%
CALL:csgo 146.66.155.5
ECHO - (EU East)  Austria/Vienna:     %ms%
CALL:csgo 146.66.156.20
ECHO - (EU North) Sweden/Stockholm:   %ms%
CALL:csgo 155.133.242.82
ECHO - (Poland)   Warsaw:             %ms%
CALL:csgo 155.133.247.108
ECHO - (Spain)    Madrid:             %ms%
ECHO =========================================
CALL:ColorText 0A "United States"
CALL:csgo 192.69.96.1
ECHO - (US West) Washington:          %ms%
CALL:csgo 208.78.164.1
ECHO - (US East) Sterling:            %ms%
CALL:csgo 162.254.194.1
ECHO - (US SouthWest) California:     %ms%
CALL:csgo 162.254.199.1
ECHO - (US SouthEast) Atlanta:        %ms%
ECHO =========================================
CALL:ColorText 0A "South East Asia, Singapore"
CALL:csgo 103.28.54.20
ECHO - (SEA) Singapore:               %ms%
CALL:csgo 45.121.184.100
ECHO - (SEA) Singapore 2:             %ms%
ECHO =========================================
CALL:ColorText 0A "South Asia"
CALL:csgo 116.202.224.146
ECHO - (India) New Delhi              %ms%
ECHO =========================================
CALL:ColorText 0A "Australia"
CALL:csgo 103.10.125.2
ECHO - (AU) Sydney:                   %ms%
ECHO =========================================
CALL:ColorText 0A "South America"
CALL:csgo 209.197.29.0
ECHO - (BR) Sao Paulo:                %ms%
ECHO =========================================
call:ColorText 0A "South Africa"
CALL:csgo 197.80.200.1
ECHO - (SA) Cape Town                 %ms%
ECHO =========================================
call:ColorText 0A "Middle East"
CALL:csgo 185.25.183.1
ECHO - (Emirates) Dubai               %ms%
ECHO =========================================
call:ColorText 0A "Japan"
CALL:csgo 45.121.186.1
ECHO - (Japan) Tokyo                  %ms%
ECHO =========================================
ECHO.
ECHO.
ECHO.
ECHO Press any key to restart the search


pause
cls
goto Start

:csgo
SET ms=Error
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms=%%i
GOTO:EOF


:ColorText
echo off
<nul set /p .=. > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
echo(%DEL%%DEL%%DEL%
del "%~2" > nul 2>&1
goto :eof
