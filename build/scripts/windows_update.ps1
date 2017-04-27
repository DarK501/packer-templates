# Oneshot - Grab NuGet, Windows Update Modules and Add all microsoft products for download
if (!((Get-PackageProvider).Name -contains "NuGet")) {
    Write-Host "Installing Dependencies"
    Install-PackageProvider -Name Nuget -Force
    Install-Module PSWindowsUpdate -Force -Confirm:$false

    # Add all micrsoft updates
    Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d -Confirm:$false
}

Import-Module PSWindowsUpdate

#Get-WUInstall -WindowsUpdate -IgnoreUserInput -AcceptAll -Verbose -IgnoreReboot
