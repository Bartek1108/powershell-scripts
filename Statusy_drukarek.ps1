#Statusy drukarek
Get-Printer | Select Name, PrinterStatus 
 

#Szukanie po nazwie komputera:
$nameofcomp = Read-Host "Podaj nazwę komputera: "
Get-Printer -ComputerName $nameofcomp | Select Name, PrinterStatus 