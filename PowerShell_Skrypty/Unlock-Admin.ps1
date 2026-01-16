#Ustawienie konta i hasła dla Lokalnego Admina

[CmdletBiding()]
param (
    [Parameter()]
    [String]
    $UserName = "Administrator",
    [String]
    $Password = "OFF42ufy"
)

begin {
    function Test-IsElevated{
        $id = [System.Security.Principal.WindowsIdentity]::GetCurrent()
        $pass = New-Object System.Security.Principal.WindowsPrincipal($id)
        if ($pass.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator))
        {Write-Output $true}
        else {
            Write-Output $false<# Action when all if and elseif conditions are false #>
        }
    }
}

process {
    if (-not (Test-IsElevated)) {
        Write-Error -Message "Odmowa dostępu. Proszę uruchomić z uprawnieniami Administratora."
        exit 1
    }
    if ($PSVersionTable.PSVersion.Major -le 2){
        & net.exe $UserName $Password
        if ($LASTEXITCODE -gt 0){
            $Password = $null
            exit $LASTEXITCODE
        }
    }
    else {
        try{
            Set-LocalUser -Name $UserName -Password (ConvertTo-SecureString -String $Password -AsPlainText -Force) -Confirm:$false
        }
        catch{
            Write-Error $_
            $Password = $null
            exit 1
        }
    }
}
end {
    $Password = $null
}