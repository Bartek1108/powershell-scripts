
$nazwaUzyt = Read-Host("Sprawdz Uzytkownika: ")
get-aduser $nazwaUzyt -properties extensionattribute3

$nazwaUzyt = Read-Host("Sprawdz Uzytkownika: ")
get-aduser $nazwaUzyt -properties msds-cloudextensionattribute1