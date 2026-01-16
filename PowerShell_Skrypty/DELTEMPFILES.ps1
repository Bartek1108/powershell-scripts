#usuwanie plików tymczasowych z komputera

$credential = Get-Credential abc.pl\adm
$nameOfComputer = Read-Host -Prompt 'Podaj nazwę komputera: '
$session = New-PSSession -ComputerName $nameOfComputer -Credential $credential
Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\Temp" | Remove-Item -Force -Recurse}
Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\users\**\appdata\Local\Temp" | Remove-Item -Force -Recurse}
Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\Prefetch" | Remove-Item -Force -Recurse}
Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\SoftwareDistribution\Download" | Remove-Item -Force -Recurse}
Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\SoftwareDistribution\SLS"  | Remove-Item -Force -Recurse}
#Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\SoftwareDistribution"  | Remove-Item -Force -Recurse}
Remove-PSSession $session

 