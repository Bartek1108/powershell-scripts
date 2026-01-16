#Skrypt wyszukujący po nazwie komputera użytkownika oraz numer seryjny komputera

$nameOfComputer = Read-Host 'Podaj Nazwe komputera'
Get-WmiObject -Class Win32_ComputerSystem -ComputerName $nameOfComputer | Select-Object Name, Domain, UserName
Get-WmiObject Win32_Bios -ComputerName $nameOfComputer | Select-Object __SERVER, SerialNumber