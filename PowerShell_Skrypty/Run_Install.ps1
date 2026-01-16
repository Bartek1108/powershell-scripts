$cred = Get-Credential abc.pl\adm

$credentials = New-Object System.Management.Automation.PSCredential -ArgumentList $cred

if($credentials){
    Start-Process "\\CCBST255W\C$\Instalki"
}



