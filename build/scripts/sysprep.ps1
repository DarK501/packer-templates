# remove sysprep key that stops sysprep at end of build
Remove-ItemProperty -Path "HKLM:\System\Setup\Status\SysprepStatus" -Name GeneralizationState

&c:\windows\system32\sysprep\sysprep.exe /generalize /oobe /shutdown /unattend:c:\windows\system32\sysprep\autounattend.xml
