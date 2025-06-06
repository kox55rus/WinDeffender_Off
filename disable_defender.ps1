# Disable real-time protection
Set-MpPreference -DisableRealtimeMonitoring $true

# Stop the Defender service
Stop-Service -Name "WinDefend" -Force

# Disable startup scan
Set-MpPreference -DisableScanAtStartup $true

# Add an exclusion (optional, risky)
Add-MpPreference -ExclusionPath "C:\"

Write-Host "[+] Windows Defender disabled (temporary)."