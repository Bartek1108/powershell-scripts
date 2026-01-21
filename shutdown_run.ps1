$action = Read-Host @" 
Wybierz akcje:
1. Wyłącz Komputer
2. Uruchom Ponownie
3. Wygloguj Użytkownika
4. Wejdź do BIOS

"@

switch($action){
    1{
        shutdown /s
    }
    2{
        shutdown /r
    }
    3{
        shutdown /l
    }
    4{
        shutdown /r /fw /t 0
    }
}