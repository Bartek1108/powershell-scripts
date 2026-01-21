#Wejście do ściężki sieciowej przez powershell Wersja 2
$nameOfComputer = Read-Host "Podaj nazwę komputera"
$chooseDisk = Read-Host "Wybierz dysk"
$userProfile = Read-Host "Wpisz nazwe profilu uzytkownika"

Start-Process -FilePath \\$nameOfComputer\$chooseDisk\users\$userProfile