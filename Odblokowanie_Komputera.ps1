$accName = Read-Host "Podaj nazwę użytkownika: "
Enable-ADAccount -Identity "{$accName}"


$computerName = Read-Host "Podaj nazwę komputera: "
Set-ADComputer -Identity $computerName -Enable $true