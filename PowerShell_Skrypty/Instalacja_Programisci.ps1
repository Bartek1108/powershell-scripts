$Arguments = @(
    "/S"
    "/V"
    "/qn"
)

$action = Read-Host @"
1. Zainstaluj najnowszy Android Studio
2. Zainstaluj InteliJIdea
3. Zainstaluj Apache NET Beans
4. Zainstaluj PGAdmin
5. Zainstaluj Postman
6. Zainstaluj Putty
7. Zainstaluj WINSCP
8. Zainstaluj Notepad++
9. Zainstaluj Visual Studio Code
10. Przejdz do pozostalych instalacji dla Programistow

"@

switch ($action) {
    1{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALKI_PROGRAMISCI/android-studio-2023.1.1.26-windows.exe" -ArgumentList $Arguments -Wait -NoNewWindow
    }
    2{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALKI_PROGRAMISCI/ideaIU-2023.2.5.exe" -ArgumentList $Arguments -Wait -NoNewWindow
    }
    3{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALKI_PROGRAMISCI/Apache-NetBeans-17-bin-windows-x64.exe" -Wait -NoNewWindow
    }
    4{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALKI_PROGRAMISCI/pgadmin4-6.17-x64.exe" -Wait -NoNewWindow
    }
    5{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALKI_PROGRAMISCI/Postman-win64-Setup.exe" -Wait -NoNewWindow
    }
    6{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALKI_PROGRAMISCI/putty-64bit-0.78-installer.msi" -Wait -NoNewWindow
    }
    7{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALKI_PROGRAMISCI/WinSCP-5.21.8-Setup.exe" -Wait -NoNewWindow
    }
    8{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALKI_PROGRAMISCI/npp.8.4.9.Installer.x64.exe" -Wait -NoNewWindow
    }
    9{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALKI_PROGRAMISCI/VSCodeUserSetup-x64-1.81.1.exe" -Wait -NoNewWindow
    }
    10{
        Start-Process -FilePath "\\CCBST255W\E$\INSTALKI_PROGRAMISCI"
    }
    
}