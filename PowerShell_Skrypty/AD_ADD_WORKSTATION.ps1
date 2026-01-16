hostname

Add-Computer -DomainName abc.pl -Restart

$renamecomputer = Read-Host "Podaj nazwę komputera"
Rename-Computer -NewName $renamecomputer -DomainCredential abc.pl\adm -Restart -Force

