$read = Read-Host "Podaj nazwę programu"

foreach($program in $read){
    winget search $program
}
