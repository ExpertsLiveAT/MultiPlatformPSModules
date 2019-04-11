# Unterschiede zwischen Windows und PSCore

## einfaches Listing
Get-Childitem
### Aber Achtung ....
Get-ChildItem | ForEach-Object { $_ }
Get-ChildItem | ForEach-Object { [string]$_ }

### Deshalb Eigenschaften verwenden
Get-ChildItem | ForEach-Object { $_.FullName }
Get-ChildItem | ForEach-Object { $_.Name }

## Variablen $is... 
if ($IsWindows) {"Ein Windows Host !"}
if ($IsLinux) {"Ein Linux Host !"}
if ($IsMacOS) {"Ein macOS Host !"}

# erzeugt Fehler auf WindowsPowerShell
Set-StrictMode -Version 'Latest'
if ($IsWindows) {"Ein Windows Host !"}
if ($IsLinux) {"Ein Linux Host !"}
if ($IsMacOS) {"Ein macOS Host !"}

# Weil die Variablen wuf Windows PowerSHell nicht existieren :-(
#Workaround    

if((Get-Variable 'isWindows' -ErrorAction Ignore) -eq $null)
{
    # We know we're on Windows PowerShell 5.1 or earlier
    $IsWindows = $true
    $IsLinux = $IsMacOS = $false
}

