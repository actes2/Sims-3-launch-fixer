while ($True) {
    Write-Output "Waiting for Sims 3 to launch..."

    # Wait until the game process starts
    do {
        $TS3 = Get-Process TS3, TS3W -ErrorAction SilentlyContinue
    } until ($TS3)

    Write-Output "Sims 3 launched. Setting processor affinity..."

    # Save the current processor affinity
    $Affinity = $TS3.ProcessorAffinity

    # Set the processor affinity to 1
    $TS3.ProcessorAffinity = 1

    # Wait for 5 seconds before resetting the affinity
    Start-Sleep -Seconds 5

    # Reset the processor affinity
    $TS3.ProcessorAffinity = $Affinity
    Write-Output "Processor affinity restored."

    # Wait for the game process to exit
    Write-Output "Waiting for Sims 3 to close..."
    while ($TS3 -and !$TS3.HasExited) {
        Start-Sleep -Seconds 1
        $TS3 = Get-Process TS3, TS3W -ErrorAction SilentlyContinue
    }

    Write-Output "Sims 3 closed. Restarting monitoring loop..."
}