Write-Host "Started Install Oracle VirtualBox Guest Additions installation"

if ($env:install_vbox_tools -eq $true)
{
  ((Get-PSDrive) | Where-Object {$_.Provider.Name -eq "FileSystem"}).Root | ForEach-Object {
    if (Test-Path "$($_)VBoxWindowsAdditions.exe") {
      Write-Host "Installing Virtualbox Guest Additions from $($_)"
      &Start-Process -FilePath "$($_)cert\vboxcertutil.exe" -ArgumentList "add-trusted-publisher $($_)cert\vbox-sha1.cer" -Wait
      &Start-Process -FilePath "$($_)VBoxWindowsAdditions.exe" -ArgumentList "/S" -Wait
      Write-Host "Installation Completed"
    } else {
      Write-Host "$($_) is not Virtualbox ISO"
    }
  }
} else {
  Write-Host "Skipping installation of Virtualbox Guest Additions"
}
