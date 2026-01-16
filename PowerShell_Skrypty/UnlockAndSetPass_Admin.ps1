
Get-LocalUser -Name "Administrator" | Enable-LocalUser
$Password = Read-Host "zaq1@WSX"
$UserAccount = Get-LocalUser -Name "Administrator"
$UserAccount | Set-LocalUser -Password $Password