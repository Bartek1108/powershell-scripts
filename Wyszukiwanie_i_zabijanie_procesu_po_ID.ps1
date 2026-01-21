#Wyszukiwanie i zabijanie procesu po ID
#Wyszukiwanie procesu
Get-Process

#Zabicie procesu u użytkownika
for(;;){
    $processid = Read-Host "Podaj ID Procesu: "
    Stop-Process -Id $processid
}

