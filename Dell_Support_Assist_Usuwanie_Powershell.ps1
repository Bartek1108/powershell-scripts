MsiExec.exe /X "{0309AC01-330F-494C-B27D-58E297E4674F}" /quiet
MsiExec.exe /X "{F1D17890-F41B-4BFA-8893-B2C8A248BE0D}" /quiet

$CurrentSAPkg = Get-WMIObject -Class Win32_Product  | Where-Object { $_.Name -like "Dell*" }
$CurrentSAPkg.Uninstall()

& "C:\Program Files\Dell\SupportAssist\uninstaller.exe" /arp /S