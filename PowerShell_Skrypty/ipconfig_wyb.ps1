
$action = Read-Host @"
Wybierz: 
1. ipconfig
2. ipconfig /all
3. ipconfig /
4. ipconfig /renew
5. ipconfig /release
6. ipconfig /displaydns
7. ipconfig /registerdns
8. ipconfig /flushdns

"@

switch($action){
    1{
        ipconfig
    }

    2{
        ipconfig /all
    }

    3{
        ipconfig /
    }

    4{
        ipconfig /renew
    }

    5{
        ipconfig /release
    }

    6{
        ipconfig /displaydns
    }

    7{
        ipconfig /registerdns
    }

    8{
        ipconfig /flushdns
    }
}