# Sind in Linux Case-sensitiv ?"
$Person1 = @{
    'Vorname' = 'Hans'
    'Nachname' = 'Bauer'
}
$Person['Vorname']
$Person['VORNAME']
$Person['nachname']

# Die Variable selbst ist NICHT case-sensitiv
$person
$PERSON
$pErSoN

