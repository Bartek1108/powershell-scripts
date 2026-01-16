# Instalacja Workflow przez Powershell

$act = Read-Host @"
1. Wgraj plik do klucza rejestru
2. Zainstaluj Wtyczkę Workflow
3. Sprawdz poprawność działania wtyczki Workflow

"@

switch ($act) {
    1{
        $user=Read-Host "Podaj nazwe uzytkownika"
        Start-Process -FilePath "C:\Windows\regedit.exe" -ArgumentList "/s C:\Users\$user\Desktop\Instalki\Workflow_Nowa_Wtyczka\Nowa_wtyczka_WorkFlow\WCCWordAddIn\Scripts\reg.exe "
    }
    2{
        #Start-Process -FilePath "C:\Users\bkania\Desktop\Instalki\Workflow_Nowa_Wtyczka\Nowa_wtyczka_WorkFlow\WCCWordAddIn\WCCWordAddInInstaller_x64.msi"
        $user=Read-Host "Podaj nazwe uzytkownika"
        Start-Process -FilePath "C:\Users\$user\Desktop\Instalki\Workflow_Nowa_Wtyczka\Nowa_wtyczka_WorkFlow\WCCWordAddIn"
    }
    3{
        Start-Process -FilePath "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" 
    }

}