$id = Read-Host "Wpisz ID Programu"

foreach ($j in $id){
    winget install $j
}