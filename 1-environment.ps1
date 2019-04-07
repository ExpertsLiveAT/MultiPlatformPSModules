# Systemumgebung ist in Betriebssystemen unterschiedlich

## Wo bin ich ? - nicht ganz eindeutig .?
$script = {
    " "
    $OsVersion = [Environment]::OSVersion
    "OS Version: $OsVersion"
    $OsPlatform = [Environment]::OSVersion.Platform
    "OS Platform: $OsPlatform"
    $is64BitOS = [Environment]::Is64BitOperatingSystem
    "Is 64 BitOS: $is64BitOS"
}
invoke-command -Session $win,$lin,$mac -ScriptBlock $script

## Windows => sogar Autocomplete von $env
$Env:COMPUTERNAME
$env:USER

$script = {
    " "
    "Computername is: $env:COMPUTERNAME"
    "User is: $env:USER"
    "Text mit neuer `n Zeile dazwischen"
    "Tempdrive is: $env:TEMP"
}
invoke-command -Session $win,$lin,$mac -ScriptBlock $script

# Stattdessen: [Environment]
$script = {
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    
    $DotNetusername = [Environment]::UserName
    "User is: $Dotnetusername"
    
    $DotNetNewLine = [Environment]::NewLine
    "Text mit neuer $DotNetNewLine Zeile dazwischen"
    
    $EnvTempPath = [IO.Path]::GetTempPath()
    "Tempdrive is: $envTempPath"
}
invoke-command -Session $win,$lin,$mac -ScriptBlock $script

# Pfad Variable
$env:Path -split ';'
$env:PATH -split ';'
[Environment]::GetEnvironmentVariable('Path') -split ';'

#PS Systemvariablen funktionieren überall
$PSEdition

