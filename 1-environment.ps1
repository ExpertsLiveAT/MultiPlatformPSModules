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

# Systemvariablen mit [Environment] abfragen
$script = {
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    'Path .Net'
    [Environment]::GetEnvironmentVariable('Path') -split ';'
    'CAPITAL LETTERS PATH .Net'
    [Environment]::GetEnvironmentVariable('PATH') -split ';'
}
invoke-command -Session $win,$lin,$mac -ScriptBlock $script

#PS Systemvariablen funktionieren leider auch nicht überall

$script = {
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    "PSedition is:$PSEdition"
    "PSCulture is: $PSCulture"
    "PSUICulture is: $PSCulture"
    "HOME is: $HOME"
    "PID is: $PID"
}
invoke-command -Session $win,$lin,$mac -ScriptBlock $script

