# Sehr beliebt: Pfade mit Strings und \ ==> Linux :-(
"C:\ProgramData\Microsoft\Network"

# Besser Pfade durch das System holen lassen und Join-Path verwenden
$script = {
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    [Environment]::CurrentDirectory  # Get-Location ginge auch
    $curpath = [Environment]::CurrentDirectory # Get-Location ginge auch
    Join-Path  $curpath -ChildPath 'pscoretest'
}
invoke-command -Session $mac -ScriptBlock $script


# Get-Folderpath erlaubt z.B. Programfiles, Programs
[Environment]::GetFolderPath('') # Fehler mit Hinweisen unten Beispiele
[Environment]::GetFolderPath('Desktop')
[Environment]::GetFolderPath('Programfiles')
[Environment]::GetFolderPath('UserProfile')
[Environment]::GetFolderPath('System')
[Environment]::GetFolderPath('Personal')
[Environment]::GetFolderPath('LocalApplicationData')

# Relative Pfadangaben (z.B. User Input) mit Resolve-Path auflösen
set-location ([Environment]::GetFolderPath('LocalApplicationData'))
resolve-path .\Lenovo



# [IO.Path]::DirectorySeparatorChar (Das habt ihr nicht gewusst :-)
$ds = [IO.Path]::DirectorySeparatorChar

# Anwendung - combination von Pfaden
"c:\temp{0}Subpfad" -f $ds












# Verstehe das Problem nicht .....
$Userpath = 'MMPSCore'
if(!([IO.Path]::IsPathRooted($UserPath) ))
{
    $Userpath = Join-Path -Path (Get-Location).Path -ChildPath $UserPath
}
$Userpath = Join-Path -Path $UserPath -ChildPath '.'
$Userpath = [IO.Path]::GetFullPath($UserPath)



