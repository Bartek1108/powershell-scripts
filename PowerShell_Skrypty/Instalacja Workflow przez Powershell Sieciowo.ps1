# Instalacja Workflow przez Powershell

$act = Read-Host @"
1. Wgraj plik do klucza rejestru
2. Zainstaluj Wtyczkę Workflow
3. Sprawdz poprawność działania wtyczki Workflow

"@

switch ($act) {
    1{
        Start-Process -FilePath "C:\Windows\regedit.exe" -ArgumentList "/s \\CCBST055N\C$\Users\bkania\Desktop\Instalki\Workflow_Nowa_Wtyczka\Nowa_wtyczka_WorkFlow\WCCWordAddIn\Scripts\reg.exe "
    }
    2{
        Start-Process -FilePath "\\CCBST055N\C$\Users\bkania\Desktop\Instalki\Workflow_Nowa_Wtyczka\Nowa_wtyczka_WorkFlow\WCCWordAddIn"
    }
    3{
        Start-Process -FilePath "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" 
    }

}