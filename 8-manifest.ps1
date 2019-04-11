# Module Manifest
$ModuleInfo = Test-ModuleManifest -Path .\MPpowershell.psd1
$ModuleInfo.CompatiblePSEditions
$ModuleInfo.PowerShellVersion

#Finding your Module on the Gallery ?
$netcoremod = find-module '*net*' -Tag "PSedition_Core"

# Add in PrivateData ==> Tags