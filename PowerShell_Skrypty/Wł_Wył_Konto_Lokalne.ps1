Get-LocalUser | select Name | Where-Object Name -In ('X') | Enable-LocalUser

Get-LocalUser | select Name, Enabled

Disable-LocalUser X 


Get-LocalUser | select Name | Where-Object Name -In ('Administrator') | Disable-LocalUser

Get-LocalUser | select Name, Enabled

Enable-LocalUser Administrator