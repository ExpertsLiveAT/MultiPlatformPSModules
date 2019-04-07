# Windows Box "Striterax"
$acred = Get-Credential -UserName 'Thegalaxy\a-roman'
$acred.Password|Set-Clipboard
$win = New-PSSession -HostName 'striterax.thegalaxy.local' -Name 'win' -UserName 'a-roman'
#>

# Ubuntu Box 'Jumpbox'
$lin = New-PSSession -HostName '172.16.110.20' -Name 'lin' -UserName marvin

# Local mac session
$mac = New-PSSession -HostName '172.16.10.27' -Name 'mac' -username psuser
# Achtung - Bug mit CLS auf Linux dort:
$env:TERM = 'vt100'
