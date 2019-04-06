$acred = Get-Credential -UserName 'Thegalaxy\a-roman'
$acred.Password|clip.exe
$win = New-PSSession -HostName 'striterax.thegalaxy.local' -UserName $acred.Username
