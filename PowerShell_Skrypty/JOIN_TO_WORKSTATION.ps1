Enable-PSRemoting -Force

$nameofcomputer = Read-Host -ComputerName "Podaj nazwę komputera: "
$logadmin = "abc.pl\adm"

Enter-PSSession -ComputerName $nameofcomputer -Credential $logadmin

Invoke-Command -ComputerName $nameofcomputer -ScriptBlock {COMMAND} -credential $logadmin

#mstsc/v:[$nameofcomputer]]:3389
Start-Process "#env:windir\system32\mstsc.exe" -ArgumentList "/v:$[$nameofcomputer]"