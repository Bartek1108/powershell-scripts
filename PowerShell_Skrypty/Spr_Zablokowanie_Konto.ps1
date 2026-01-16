$insertUserName = Read-Host "Wprowadz login uzytkownika: "
Get-ADUser $insertUserName -Properties LockedOut | Select-Object LockedOut