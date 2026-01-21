#Sprawdzenie konta - pętla działa bez przerwy
while (1) {
    $domainacc = Read-Host "Podaj nazwę użytkownika: "
    get-aduser -Identity $domainacc -Properties * | select accountexpires, accountlockouttime, badlogoncount, lastbadpasswordattempt, lastlogondate, lockedout, passowordexpired, passwordlastset | format-list     
}



