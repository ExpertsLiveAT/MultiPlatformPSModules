# Sind in Linux Case-sensitiv ?- Nicht nach meiner Erfahrung ..."
$script = {
    $DotNetMachineName = [Environment]::MachineName
    "Computername is: $DotNetmachinename"
    
    $Person = @{
        'Vorname'  = 'Hans'
        'Nachname' = 'Bauer'
    }
    "Vorname: $($Person['Vorname'])"
    "VORNAME: $($Person['VORNAME'])"
    "nachname: $($Person['nachname'])"
    "NaChNaMe: $($Person['NaChNaMe'])"
}
invoke-command -Session $win -ScriptBlock $script
invoke-command -Session $lin -ScriptBlock $script
invoke-command -Session $mac -ScriptBlock $script
# Die Variable selbst ist NICHT case-sensitiv


