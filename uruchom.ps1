#Polecenia uruchom

for(;;){
    $act = Read-Host @"

    
Wybierz polecenie:
1. Uruchom Panel Sterowania
2. Uruchom Konta Użytkownikow
3. Uruchom Uzytkownicy i Grupy Lokalne
4. Uruchom Zarzadzanie Dyskiem
5. Uruchom Zarzadzanie Politykami
6. Uruchom Menedzera Drukarek
7. Uruchom Menedzera Urzadzen
8. Uruchom Powershell
9. Uruchom Wiersz Polecen
10. Uruchom Menedzera Zadan
11. Znajdz nazwe komputera
12. Wyswietl numer seryjny komputera
13. Uruchom Oczyszczanie dysku
14. Uruchom Usługi
15. Uruchom Właściwości Systemu

"@

    switch ($act) {
        1{
            control.exe
        }
        2{
            control userpasswords2
        }
        3{
            lusrmgr.msc
        }
        4{
            diskmgmt.msc
        }
        5{
            gpmc.msc
        }
        6{
            printmanagement.msc
        }
        7{
            devmgmt.msc
        }
        8{
            powershell.exe
        }
        9{
            cmd.exe
        }
        10{
            Taskmgr.exe
        }
        11{
            hostname
        }
        12{
            wmic bios get serialnumber
        }
	13{
            cleanmgr.exe
        }
	14{
            services.msc
        }
	15{
            sysdm.cpl
        }
        
    }
}


