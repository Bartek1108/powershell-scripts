#logowanie się do skryptu jako Administrator / Konto ADM
$cred = Get-Credential abc\adm.
#$nameOfComputer = Read-Host -Prompt 'Podaj Nazwe komputera'


#pkt 1, 2, 3, 4 i 5 zrobiony
#5. Znalezienie numeru Seryjnego z BIOSU i nazwy komputera
$action = Read-Host @"
1. Zabij proces po PID
2. Znajdz ostatnie logowanie
3. Znajdz nazwe komputera, która znajduje sie w domenie
4. Znajdz szczegoly uzytkownika
5. Znalezienie numeru Seryjnego z BIOSU i nazwy komputera
6. Usuwanie plików tymczasowych z komputera

"@

        while (-not $script:exitLoop) {
            
            switch($action){
                1 {
                    $nameOfComputer = Read-Host -Prompt 'Podaj Nazwe komputera'
                    Get-Process | Where-Object {$_.mainWindowTitle} | Format-Table Id, Name, mainWindowtitle -AutoSize
                    #Get-Process | Where-Object {$nameOfComputer} | Format-Table Id, Name, $nameOfComputer -AutoSize
                    $id = Read-Host /PID 'ID Procesu'
                    taskkill /F /PID $id
                }
                2 {
                    $domainName = Read-Host 'Podaj nazwę konta'
                    #Get-ADUser -Identity $domainName -Properties LastLogonName | Select-Object -ExpandProperty LastLogonName
                    Get-ADUser -Identity $domainName -Properties LastLogonDate | Select-Object -ExpandProperty LastLogonDate
                }
                3{
                    $nameOfComputer = Read-Host 'Podaj Nazwe komputera'
                    Get-WmiObject -Class Win32_ComputerSystem -ComputerName $nameOfComputer | Select-Object Name, Domain, UserName
                }
                4{
                    $domainName = Read-Host 'Podaj Nazwę Użytkoniwka'
                    
                    #$listusers = Get-ADUser -Identity $domainName 
                    #$listcomputers = Get-WmiObject –Class Win32_ComputerSystem –ComputerName $nameOfComputer | Select-Object Domain, UserName
                    
                    Get-ADUser -Identity $domainName                    
                }
                5{
                    $nameOfComputer = Read-Host 'Podaj Nazwe Komputera'
                    Get-WmiObject -Class Win32_ComputerSystem -ComputerName $nameOfComputer  
                    Get-WmiObject -Class Win32_Bios -ComputerName $nameOfComputer 
                }
                6{
                    $nameOfComputer = Read-Host -Prompt 'Podaj nazwę komputera: '
                    $session = New-PSSession -ComputerName $nameOfComputer -Credential $credential
                    Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\Temp" | Remove-Item -Force -Recurse}
                    Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\users\**\appdata\Local\Temp" | Remove-Item -Force -Recurse}
                    Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\Prefetch" | Remove-Item -Force -Recurse}
                    Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\SoftwareDistribution\Download" | Remove-Item -Force -Recurse}
                    Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\SoftwareDistribution\SLS"  | Remove-Item -Force -Recurse}
                    #Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\SoftwareDistribution"  | Remove-Item -Force -Recurse}
                    Remove-PSSession $session
                }
                #6{
                #    $nameOfComputer = Read-Host -Prompt 'Podaj nazwę komputera: '
                #    $session = New-PSSession -ComputerName $nameOfComputer -Credential $credential
                #    Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\Temp" -Force -Recurse}
                #    Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\users\**\appdata\Local\Temp" -Force -Recurse}
                #    Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\Prefetch" -Force -Recurse}
                #    Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\SoftwareDistribution\Download" -Force -Recurse}
                #    Invoke-Command -Session $session -Scriptblock {Get-ChildItem -Path "C:\Windows\SoftwareDistribution\SLS" -Force -Recurse}
                #    Remove-PSSession $session
                #}

            
            }
            Remove-PSSession $cred
        }
        #Remove-PSSession $cred
    

