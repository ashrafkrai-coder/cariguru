$data = @{
    "3 AL-FARABI" = @{
        "Isnin" = @{
            "1"  = @{ subject = "P";   teacher = "FAISAL";  time = "7:30 - 8:00" }
            "2"  = @{ subject = "BM";  teacher = "FATIN A"; time = "8:00 - 8:30" }
        }
        "Selasa" = @{
            "1"  = @{ subject = "P";   teacher = "FAISAL";  time = "7:30 - 8:00" }
        }
    }
}

$newData = @{}

foreach ($class in $data.Keys) {
    $newData[$class] = @{}
    foreach ($day in $data[$class].Keys) {
        $newData[$class][$day] = @{}
        $periods = $data[$class][$day].Keys | Where-Object { $_ -ne '6' }
        foreach ($period in $periods) {
            $periodNum = [int]$period
            if ($periodNum -gt 6) {
                $newKey = [string]($periodNum - 1)
            } else {
                $newKey = $period
            }
            $newData[$class][$day][$newKey] = $data[$class][$day][$period]
        }
    }
}

Write-Host "Type: $($newData.GetType().FullName)"
Write-Host "Count: $($newData.Count)"
Write-Host "Keys: $($newData.Keys -join ', ')"

$jsonOutput = $newData | ConvertTo-Json -Depth 10
Set-Content -Path 'jadual.json' -Value $jsonOutput -Encoding UTF8
Write-Host "Done"