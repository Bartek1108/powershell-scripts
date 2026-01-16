#winget install $searched
#winget uninstall $seaarched

$read = Read-Host "Podaj nazwę programu"

#Wyszukanie Programu
foreach($program in $read){
    winget search $program    
}

$searched = Read-Host "Podaj ID Programu"

#Instalowanie aplikacji
foreach($id in $searched){
    winget install $id
}

#Odinstalowanie aplikacji
foreach($id in $searched){
    winget uninstall $id
}