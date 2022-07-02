@echo off
echo Disable Real-time protection
PowerShell Set-MpPreference -DisableRealtimeMonitoring $true

echo Disable Internet
wmic path win32_networkadapter where PhysicalAdapter=True call disable
pause