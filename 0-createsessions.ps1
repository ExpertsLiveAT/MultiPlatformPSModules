# Windows Box "Striterax"
$acred = Get-Credential -UserName 'Thegalaxy\a-roman'
$acred.Password|Set-Clipboard
$win = New-PSSession -HostName 'striterax.thegalaxy.local' -UserName $acred.Username

# Ubuntu Box 'Jumpbox'
$lin = New-PSSession -HostName '172.16.110.20' -UserName 'marvin'


# Local mac session
$mac = New-PSSession -HostName localhost
# Achtung - Bug mit CLS auf Linux dort:
$env:TERM = 'vt100'
