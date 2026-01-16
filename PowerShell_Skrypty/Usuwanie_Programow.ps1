
$acc = Get-Credential intercity.pl\adm.bkania
$compName = Write-Host "Podaj nazwe komputera: "
Invoke-Command -ComputerName $compName -Credential $acc -ScriptBlock {Get-WmiObject Win32-Product | Select-Object Name}

#Get-WmiObject Win32-Product | Select-Object Name

$acc = Get-Credential intercity.pl\adm.bkania
$compName = Write-Host "Podaj nazwe komputera: "
$nazwaAp = Write-Host "Podaj nazwe aplikacji: "
$appName = $nazwaAp
Invoke-Command -ComputerName $compName -Credential $acc -ScriptBlock {
    Get-WmiObject Win32-Product | Where-Object {$_.name -eq $appName} | ForEach-Object {$appName.Uninstall}
}

#Invoke-Command -ComputerName {Get-WmiObject Win32-Product | Where-Object {$_.name -eq $appName} | ForEach-Object {$appName.Uninstall}}