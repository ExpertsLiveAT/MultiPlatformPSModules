# DONT use ALIAS !!!

$script = {
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    
    'ls','cat','pwd' | foreach {Get-Alias $_}
}
invoke-command -Session $win,$lin,$mac -ScriptBlock $script

