#Turn off Network Discovery
netsh advfirewall firewall set rule group="Network Discovery" new enable=No

# Turn off Server Manager at login
Set-ItemProperty -Path HKLM:\Software\Microsoft\ServerManager -Name DoNotOpenServerManagerAtLogon -Type DWord -Value "0x1"

# Set WinRM to allow basic connections - Triggers Build to continue
Set-Item WSMan:\localhost\Service\AllowUnencrypted -Value True
Set-item WSMan:\localhost\Service\Auth\Basic -Value True
