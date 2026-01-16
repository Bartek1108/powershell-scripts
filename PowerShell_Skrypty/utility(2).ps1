# Pobieramy nazwę komputera
$remoteComputer = Read-Host "Podaj nazwę komputera"

# Pobieramy dane uwierzytelniające
$credential = Get-Credential

# Wybieramy akcję do wykonania
do {
    $action = Read-Host @"
Wybierz akcję:
1. Uruchom nowy proces
2. Zabij proces (po nazwie)
3. Zabij proces (po ID)
4. Wyświetl listę procesów
5. Sprawdź dyski
6. Sprawdź pamięć RAM
7. Wymuś ponowne uruchomienie systemu
8. Zakończ sesję PowerShell
"@

    # Łączymy się z zdalnym komputerem
    try {
        $remoteSession = New-PSSession -ComputerName $remoteComputer -Credential $credential -ErrorAction Stop
        Write-Host "Pomyślnie połączono z $remoteComputer"
    } catch {
        Write-Host "Błąd podczas łączenia z $remoteComputer. Sprawdź poprawność nazwy komputera lub dane uwierzytelniające."
        exit
    }

    # Wykonujemy wybraną akcję
    switch ($action) {
        1 {
            # Uruchamiamy nowy proces
            $processToRun = Read-Host "Podaj ścieżkę do pliku do uruchomienia"
            Invoke-Command -Session $remoteSession -ScriptBlock {
                param($processToRun)
                Start-Process $processToRun
                Write-Host "Uruchomiono proces: $processToRun"
            } -ArgumentList $processToRun -ErrorAction Stop
        }
        2 {
            # Zabijamy proces po nazwie
            $processToKillByName = Read-Host "Podaj nazwę procesu do zakończenia"
            Invoke-Command -Session $remoteSession -ScriptBlock {
                param($processToKillByName)
                $process = Get-Process -Name $processToKillByName -ErrorAction Stop
                $process | Stop-Process -Force
                Write-Host "Proces $processToKillByName został zakończony."
            } -ArgumentList $processToKillByName -ErrorAction Stop
        }
        3 {
            # Zabijamy proces po ID
            $processToKillByID = Read-Host "Podaj ID procesu do zakończenia"
            Invoke-Command -Session $remoteSession -ScriptBlock {
                param($processToKillByID)
                $process = Get-Process -Id $processToKillByID -ErrorAction Stop
                $process | Stop-Process -Force
                Write-Host "Proces o ID $processToKillByID został zakończony."
            } -ArgumentList $processToKillByID -ErrorAction Stop
        }
        4 {
            # Wyświetlamy listę procesów
            $processList = Invoke-Command -Session $remoteSession -ScriptBlock {
                Get-Process | Format-Table -AutoSize
            } -ErrorAction Stop

            Write-Host "Lista procesów:"
            Write-Output $processList
        }
        5 {
            # Sprawdzamy dyski
            $disks = Invoke-Command -Session $remoteSession -ScriptBlock {
                Get-PhysicalDisk | Select-Object FriendlyName, Size, MediaType, HealthStatus  | Format-Table -AutoSize
            } -ErrorAction Stop

            Write-Host "Dyski:"
            Write-Output $disks
        }
        6 {
            # Sprawdzamy pamięć RAM
            $ram = Invoke-Command -Session $remoteSession -ScriptBlock {
                Get-CimInstance Win32_PhysicalMemory | Select-Object DeviceLocator, Speed, Capacity, PartNumber| Format-Table -AutoSize
            } -ErrorAction Stop

            Write-Host "Pamięć RAM:"
            Write-Output $ram
        }
        7 {
            # Wymuszamy ponowne uruchomienie systemu z informacją dla zalogowanego użytkownika
            Invoke-Command -Session $remoteSession -ScriptBlock {
                $message = "System zostanie ponownie uruchomiony za 60 sekund. Zapisz swoje prace!"
                msg.exe * "$message"
                Start-Sleep -Seconds 60
                Restart-Computer -Force
            } -ErrorAction Stop
        }
        8 {
            # Zamykamy sesję PowerShell
            Write-Host "Zamykanie sesji PowerShell..."
            $script:exitLoop = $true
        }
        default {
            Write-Host "Wybrano nieprawidłową opcję."
        }
    }

    # Zamykamy sesję zdalną
    Remove-PSSession $remoteSession

} while (-not $script:exitLoop)
