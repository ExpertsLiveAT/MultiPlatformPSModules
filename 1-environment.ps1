# Systemumgebung ist in Betriebssystemen unterschiedlich

## Wo bin ich ? - nicht ganz eindeutig .?
[Environment]::OSVersion
[Environment]::OSVersion.Platform
[Environment]::Is64BitOperatingSystem

## Windows => sogar Autocomplete von $env
$env:USERNAME   
$env:COMPUTERNAME
"Text mit neuer `n Zeile dazwischen"
"Text mit neuer `r Zeile dazwischen"
"Text mit neuer `r `n Zeile dazwischen"
$env:TEMP

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

