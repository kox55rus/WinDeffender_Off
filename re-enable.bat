reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /f
sc config WinDefend start= auto
sc start WinDefend