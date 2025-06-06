Set-MpPreference -DisableRealtimeMonitoring $false
Start-Service -Name "WinDefend"