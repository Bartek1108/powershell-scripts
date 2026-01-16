$cred = Get-Credential abc.pl\adm.
$nazwaKompa = Read-Host -Prompt 'Nazwa komputera'
#tasklist | more
Get-Process | Where-Object {$_.mainWindowTitle} | Format-Table Id, Name, mainWindowtitle -AutoSize
$id = Read-Host /PID 'ID Procesu'
taskkill /F /PID $id


$cred = Get-Credential abc.pl\adm
$nameOfComputer = Read-Host -Prompt 'Podaj Nazwe komputera'
Get-Process | Where-Object $nameOfComputer | Format-Table Id, Name, mainWindowtitle -AutoSize
 #Get-Process | Where-Object {$nameOfComputer} | Format-Table Id, Name, $nameOfComputer -AutoSize
$id = Read-Host /PID 'ID Procesu'
taskkill /F /PID $id

$cred = Get-Credential abc\adm
$processToKillByName = Read-Host "Podaj nazwę procesu do zakończenia"
Invoke-Command -Session $remoteSession -ScriptBlock {
    param($processToKillByName)
    $process = Get-Process -Name $processToKillByName -ErrorAction Stop
    $process | Stop-Process -Force
    Write-Host "Proces $processToKillByName został zakończony."
} -ArgumentList $processToKillByName -ErrorAction Stop