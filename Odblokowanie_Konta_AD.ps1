#Odblokowanie konta - pętla działa bez przerwy
while (1) {
    $domainacc = Read-Host "Podaj nazwę użytkownika: "
    Unlock-ADAccount $domainacc
}
