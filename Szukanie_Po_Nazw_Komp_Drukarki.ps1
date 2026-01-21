#Szukanie po nazwie komputera:

while(1){
    $nameofcomp = Read-Host "Podaj nazwę komputera: "
    Get-Printer -ComputerName $nameofcomp | Select Name, PrinterStatus 
}
