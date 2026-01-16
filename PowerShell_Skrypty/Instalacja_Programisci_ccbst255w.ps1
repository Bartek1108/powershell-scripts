
$action = Read-Host @"
1. Zainstaluj Apache NET Beans
2. Zainstaluj PGAdmin
3. Zainstaluj Postman
4. Zainstaluj Putty
5. Zainstaluj WINSCP
6. Zainstaluj Notepad++
7. Zainstaluj Visual Studio Code
8. Przejdz do pozostalych instalacji dla Programistow

"@

switch ($action) {
    1{
        Start-Process -FilePath "\\CCBST255W\E$\INSTALKI_PROGRAMISCI\Apache-NetBeans-17-bin-windows-x64.exe" -Wait -NoNewWindow
    }
    2{
        Start-Process -FilePath "\\CCBST255W\E$\INSTALKI_PROGRAMISCI\pgadmin4-6.17-x64.exe" -Wait -NoNewWindow
    }
    3{
        Start-Process -FilePath "\\CCBST255W\E$\INSTALKI_PROGRAMISCI\Postman-win64-Setup.exe" -Wait -NoNewWindow
    }
    4{
        Start-Process -FilePath "\\CCBST255W\E$\INSTALKI_PROGRAMISCI\putty-64bit-0.78-installer.msi" -Wait -NoNewWindow
    }
    5{
        Start-Process -FilePath "\\CCBST255W\E$\INSTALKI_PROGRAMISCI\WinSCP-5.21.8-Setup.exe" -Wait -NoNewWindow
    }
    6{
        Start-Process -FilePath "\\CCBST255W\E$\INSTALKI_PROGRAMISCI\npp.8.4.9.Installer.x64.exe" -Wait -NoNewWindow
    }
    7{
        Start-Process -FilePath "\\CCBST255W\E$\INSTALKI_PROGRAMISCI\VSCodeUserSetup-x64-1.81.1.exe" -Wait -NoNewWindow
    }
    8{
        Start-Process -FilePath "\\CCBST255W\E$\INSTALKI_PROGRAMISCI"
    }
}