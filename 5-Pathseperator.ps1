# Der Unterteiler des Pfades ist unterschiedlich !
[IO.Path]::PathSeparator

$env:PATH -split [IO.Path]::PathSeparator # ersetzt ';'

$script = {
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    $psep = [IO.Path]::PathSeparator
    "Dir Seperator Char: $psep"
    'PATH .Net'
    [Environment]::GetEnvironmentVariable('PATH')
    "*** Splitting the correct way ***"
    [Environment]::GetEnvironmentVariable('PATH') -split $psep
}
invoke-command -Session $win,$lin,$mac -ScriptBlock $script


#Noch ein paar weitere IO.Path Features:
[IO.Path]::VolumeSeparatorChar
[IO.Path]::GetRandomFileName()
[IO.Path]::HasExtension('dateips1')
[IO.Path]::HasExtension('datei.ps1')
# Den verstehe ich nicht ...
[IO.Path]::GetInvalidPathChars()


