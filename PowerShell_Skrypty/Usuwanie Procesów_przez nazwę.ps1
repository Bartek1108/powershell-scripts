Enter-PSSession CCBBT046W -Credential (Get-Credential)

Stop-Process -Name 'MsTeams'

Exit-PSSession
###############

Enter-PSSession CCBST020U -Credential (Get-Credential)

Stop-Process -Name 'McAfee Agent Service'

Exit-PSSession

################

Enter-PSSession CCBST055N -Credential (Get-Credential)

Stop-Process -Name 'Outlook'

Exit-PSSession

################

Enter-PSSession $nazwaKomputera -Credential (Get-Credential)

Stop-Process -Name 'SupportAssistAgent'

Exit-PSSession

##################

Enter-PSSession ZCBZW092W -Credential (Get-Credential)

Stop-Process -Name 'H2F501P'

Exit-PSSession

###################
Enter-PSSession CCBIE034N -Credential (Get-Credential)

Stop-Process -Name 'Outlook'

Exit-PSSession

Enter-PSSession CCBFZ004N -Credential (Get-Credential)

Stop-Process -Name 'Adobe Acrobat Reader'

Exit-PSSession