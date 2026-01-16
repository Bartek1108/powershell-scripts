
$Arguments = @(
    "/S"
    "/V"
    "/qn"
)

$action = Read-Host @"
1. Zainsatluj 7-zip
2. Zainstaluj Adobe Acrobat Reader
3. Zainstaluj Google Chrome
4. Zainstaluj Mozille Firefox
5. Zainstaluj Jave
6. Zainsatluj Total Comannder
7. Zainstaluj Global Protect
8. Zainsatluj Pakiet Office 365
9. Zainstaluj Pakiet Microsoft Teams
10. Zainstaluj Oprogramowanie CENCERT (PEM-HEART)
11. Zainstaluj PDF Sam Basic
12. Zainstaluj Szafir 2.0
13. Zainstaluj Office 2019

"@

switch($action){
    1{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/7z2301-x64.exe" -Wait -NoNewWindow
    }
    2{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/AcroRdrDC1900820071_pl_PL.exe" -ArgumentList $Arguments -Wait -NoNewWindow
    }
    3{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/ChromeSetup.exe" -Wait -NoNewWindow
    }
    4{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/Firefox Setup 117.0.exe" -ArgumentList $Arguments -Wait -NoNewWindow
    }
    5{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/oaj2se.exe" -Wait -NoNewWindow
    }
    6{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/tcmd1052x64.exe" -ArgumentList $Arguments -Wait -NoNewWindow
    }
    7{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/Global_Protect_Instalka_Prawdziwa/GlobalProtect64.msi" -Wait
    }
    8{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/Office_365_Instalka/OfficeSetup.exe" -Wait -NoNewWindow
    }
    9{
        #Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/MSTeams-x64.msix" -Wait
        winget search Microsoft.Teams
        $id = Read-Host "Podaj ID Microsoft Teams"
        winget install $id
    }
    10{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/PH-3.9.19.29.exe" -Wait
    }
    11{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/PDFsamBasic7Installer.exe" -Wait -NoNewWindow
    }
    12{
        Start-Process -FilePath "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO_V2/szafir_2.0.0_x64_jre.msi" -Wait - -NoNewWindow
    }
    13{
        Start-Process "C:/Users/Administrator/Desktop/INSTALACJA_SYSTEMU_OPERACYJNEGO/Office_2019"
    }
}