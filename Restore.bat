@echo off
echo Enable Real-time protection
PowerShell Set-MpPreference -DisableRealtimeMonitoring $false

echo Enable Internet
wmic path win32_networkadapter where PhysicalAdapter=True call enable
pause