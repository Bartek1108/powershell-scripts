Install-Module -Name MicrosoftTeams

Get-PSRepository

Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Get-PSRepository

Install-Module -Name MicrosoftTeams -Force

Import-Module MicrosoftTeams
Get-Module

Connect-MicrosoftTeams
Get-CsTenant