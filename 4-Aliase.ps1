# DONT use ALIASes !!!

$script = {
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    
    'ls','cat','pwd' | foreach {Get-Alias $_}
}
invoke-command -Session $win,$lin,$mac -ScriptBlock $script

# Ausschließlich PS Cmdlets verwenden
