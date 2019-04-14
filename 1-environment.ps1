# $env: Systemumgebung ist in Betriebssystemen unterschiedlich

$Env:COMPUTERNAME
$env:USERNAME
set-location env:
Set-location c:

$script = {
    " "
    "Computername is: $env:COMPUTERNAME"
    "USERNAME is: $env:USERNAME"
    "USER is: $env:USER"
    "Text mit neuer `n Zeile dazwischen"
    "Tempdrive is: $env:TEMP"
    "Shell is: $env:SHELL"
    "Systemdrive is: $env:Systemdrive"
}
invoke-command -Session $mac -ScriptBlock $script

# LÖSUNG Stattdessen: [Environment]
$script = {
    " "
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    
    $DotNetusername = [Environment]::UserName
    "User is: $Dotnetusername"
    
    $DotNetNewLine = [Environment]::NewLine
    "Text mit neuer $DotNetNewLine Zeile dazwischen"
    
    $EnvTempPath = [IO.Path]::GetTempPath()
    "Tempdrive is: $envTempPath"
}
invoke-command -Session $mac -ScriptBlock $script

# BEISPIEL: Systemvariablen z.B. Path mit [Environment] abfragen
$script = {
    " "
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    'Path .Net'
    [Environment]::GetEnvironmentVariable('Path') -split ';'
    'CAPITAL LETTERS PATH .Net'
    [Environment]::GetEnvironmentVariable('PATH') -split ';'
}
invoke-command -Session $mac -ScriptBlock $script

#PS Systemvariablen funktionieren leider auch nicht überall

$script = {
    " "
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    "PSedition is:$PSEdition"
    "PSCulture is: $PSCulture"
    "PSUICulture is: $PSUICulture"
    "HOME is: $HOME"
    "PID is: $PID"
}
invoke-command -Session $mac -ScriptBlock $script

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
invoke-command -Session $mac -ScriptBlock $script

