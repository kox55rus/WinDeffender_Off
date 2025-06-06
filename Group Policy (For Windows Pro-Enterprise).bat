@echo off
:: Force-disable via Group Policy
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
gpupdate /force
echo [+] Defender disabled via Group Policy. Reboot required.
pause