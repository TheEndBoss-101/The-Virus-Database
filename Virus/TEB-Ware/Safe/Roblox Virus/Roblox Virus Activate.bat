::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcBCKOW60OpEZ++Pv4Pq7kUwQRO46OLnSyKGdHNIc6EnrbdYb32hPi/cNHAtdcBblehcgyQ==
::fBE1pAF6MU+EWHreyHcjLQlHcBCKOW60OpEZ++Pv4Pq7kUwQRO46OLnSyKGdHNIc6EnrbdYb32hPi/cNDw9RaBO/awt6v2xR1g==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFA9cSQGMAE+/Fb4I5/jH3OuKskEYFNQ2aprI5oaBIuwc8gXSfIQ4xUZzm8QCHydqcRCnYRd6oG1N1g==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFA9cSQGMAE+/Fb4I5/jH3OuKskEYFNQ2aprI5oaBIuwc8gXSfIQ4xUZol8kAAwNnXxG/Zxk1vWsMs3yAVw==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cd %b2eincfilepath%

echo [0m[ [92mINFO[0m ] [90mDEBUG MODE [97mENABLED[0m!
goto activate

:activate
echo [0m[ [92mINFO[0m ] [90mSTATUS [97mACTIVATE LAUNCHED[0m!

if exist C:\Windows\System32\drivers\etc\rbxl_status.txt (
    echo [0m[ [92mINFO[0m ] [90mSTATUS [97mIS ACTIVE[0m!
    cscript activated.vbs
    goto quit
) else (
    echo [0m[ [92mINFO[0m ] [90mSTATUS [97mIS NOT ACTIVE[0m!
    copy C:\Windows\System32\drivers\etc\hosts C:\Windows\System32\drivers\etc\hosts_backup
    type append.txt >> C:\Windows\System32\drivers\etc\hosts
    echo ACTIVE > C:\Windows\System32\drivers\etc\rbxl_status.txt
    goto quit
)

:quit
echo [0m[ [92mINFO[0m ] [90mSTATUS [97mABORTED[0m!
taskkill /f /im chrome.exe /t
taskkill /f /im iexplore.exe /t
taskkill /f /im msedge.exe /t

taskkill /f /im RobloxPlayerBeta.exe /t
taskkill /f /im RobloxPlayerLauncher.exe /t
taskkill /f /im RobloxStudioLauncherBeta.exe /t
rem pause
exit