$ChrInst = @(Get-ChildItem "C:\Program Files*\Google\Chrome\Application\*Installer\setup.exe")
$ChrInst += @(Get-ChildItem "C:\Program Files*\Google\Chrome\Application\*Installer\setup.exe")

Write-Output "Sprawdz poprawna sciezke, gdzie mozna znalezc i odinstalowac Google Chrome"

foreach($ChromeSetup in $ChrInst){
    Start-Process -FilePath "$ChromeSetup" -ArgumentList "--uninstall --multi-install --chrome --system-level --force-uninstall" -Wait -PassThru
}