# DONT use ALIASes !!!

$script = {
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    
    'ls','cat','pwd' | foreach {Get-Alias $_}
}
invoke-command -Session $mac -ScriptBlock $script

# Ausschließlich PS Cmdlets verwenden
