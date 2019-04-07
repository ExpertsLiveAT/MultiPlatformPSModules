# Systemumgebung ist in Betriebssystemen unterschiedlich

## Wo bin ich ? - nicht ganz eindeutig .?
[Environment]::OSVersion
[Environment]::OSVersion.Platform
[Environment]::Is64BitOperatingSystem

## Windows => sogar Autocomplete von $env
invoke-command -Session $win,$lin -ScriptBlock {
    "Computername is: $env:COMPUTERNAME"
    "Text mit neuer `n Zeile dazwischen"
    "Tempdrive is: $env:TEMP"
}

# Stattdessen: [Environment]
[Environment]::UserName
[Environment]::MachineName
[Environment]::NewLine
[IO.Path]::GetTempPath()

# Pfad Variable
$env:Path -split ';'
$env:PATH -split ';'
[Environment]::GetEnvironmentVariable('Path') -split ';'

#PS Systemvariablen funktionieren überall
$PSEdition

