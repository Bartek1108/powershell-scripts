#Read-Host "Podaj programy do odinstalowania!"
#Get-WmiObject -Class Win32_Product | Select-Object -Property Name
$nameApp = Read-Host "Podaj nazwę programu do odinstalowania: "
$AppUninstall =  Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "$nameApp"}
$AppUninstall.Uninstall()

$AppUninstall =  Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "CCleaner"}
$AppUninstall.Uninstall()