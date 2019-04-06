# Der Unterteiler des Pfades ist unterschiedlich !
[IO.Path]::PathSeparator

$env:PATH -split [IO.Path]::PathSeparator

#Noch ein paar weitere IO.Path Features:
[IO.Path]::VolumeSeparatorChar

[IO.Path]::GetRandomFileName()

[IO.Path]::HasExtension('dateips1')
[IO.Path]::HasExtension('datei.ps1')

[IO.Path]::GetInvalidPathChars()


