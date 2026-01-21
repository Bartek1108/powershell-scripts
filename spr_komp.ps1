for(;;){
    $nameOfComputer = Read-Host 'Podaj Nazwe Komputera'
    Get-WmiObject -Class Win32_ComputerSystem -ComputerName $nameOfComputer  
    Get-WmiObject -Class Win32_Bios -ComputerName $nameOfComputer 
}
