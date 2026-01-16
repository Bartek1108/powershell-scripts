$nameOfComputer = Read-Host("Podaj nazwe Komputera: ")

Enable-PSRemoting -Force

Enter-PSSession -ComputerName $nameOfComputer -Credential abc.pl\adm

Invoke-Command -ComputerName $nameOfComputer -ScriptBlock {COMMAND} -credential abc.pl\adm

#mstsc/v:[$nameOfComputer]:3389
Start-Process "#env:windir\system32\mstsc.exe" -ArgumentList "/v:$[$nameOfComputer]"


$computername = Read-Host("Podaj nazwę komputera: ")

function Start-RDP ($computername)
{
    Start-Process "$env:windir\system32\mstsc.exe" -ArgumentList "/v:$computername"
}