# remove sysprep key that stops sysprep at end of build
Remove-ItemProperty -Path "HKLM:\System\Setup\Status\SysprepStatus" -Name GeneralizationState

#Start-Process -FilePath "c:\windows\system32\sysprep\sysprep.exe" -ArgumentList "/generalize /oobe /unattend:c:\windows\system32\sysprep\autounattend.xml" -Wait
