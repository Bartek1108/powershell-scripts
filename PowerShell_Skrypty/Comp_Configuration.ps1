#Skrypt pozwalający odblokować lokalnego Admina oraz zmienić nazwę komputera wraz podpięciem do domeny.
hostname 

$Password = zaq1@WSX
$UserAccount = Get-LocalUser -Name "Administrator"
$UserAccount | Set-LocalUser -Password $Password

$renamecomputer = Read-Host "Podaj nazwę komputera: "
Rename-Computer -NewName $renamecomputer 
Add-Computer -DomainName abc.pl -Restart -Force