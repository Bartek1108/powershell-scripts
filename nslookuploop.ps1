while(1){
    $readHostOrIp = Read-Host "Podaj Adres IP lub nazwe hosta komputera: "
    nslookup $readHostOrIp
}