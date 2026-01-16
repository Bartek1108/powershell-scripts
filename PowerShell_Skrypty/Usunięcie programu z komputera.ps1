#$readProgram = Read-Host "Podaj nazwe aplikacji, aby odinstalowac ja"
#$softUnin = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -match "{$readProgram}"}
#$softUnin.Uninstall()

#foreach($soft in $softUnin){
#    $soft.Uninstall()
#}
#Write-Output "Oprogramowanie zostało pomyślnie usunięte."

$nameOfApp = Read-Host "Podaj nazwę aplikacji: "
$program = @("$nameOfApp")
$softUnin = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -match "$program"}
$softUnin.Uninstall()


