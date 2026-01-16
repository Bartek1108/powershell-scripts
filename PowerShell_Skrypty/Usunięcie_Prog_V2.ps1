winget list

$Prog = Read-Host "Podaj nazwę programu: "

#Uninstall-Package -Name $Prog



$app = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -match "$Prog"}

$app.Uninstall()
