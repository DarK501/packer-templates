# Set WinRM to allow basic connections - Triggers Build to continue
Set-Item WSMan:\localhost\Service\AllowUnencrypted -Value True
Set-item WSMan:\localhost\Service\Auth\Basic -Value True
