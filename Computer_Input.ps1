#Wejście do ściężki sieciowej przez powershell
$nameOfComputer = Read-Host "Podaj nazwę komputera"
$chooseDisk = Read-Host "Wybierz dysk"

Start-Process -FilePath \\$nameOfComputer\$chooseDisk