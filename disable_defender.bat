@echo off
:: Disable via registry
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f

:: Stop and disable service
sc stop WinDefend
sc config WinDefend start= disabled

:: Disable Tamper Protection (if enabled)
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Features" /v "TamperProtection" /t REG_DWORD /d 0 /f

echo [+] Windows Defender disabled (reboot may be required).
pause