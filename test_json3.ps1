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

foreach ($class in $data.PSObject.Properties.Name) {
    $newData[$class] = @{}
    foreach ($day in $data.$class.PSObject.Properties.Name) {
        $newData[$class][$day] = @{}
        $periods = $data.$class.$day.PSObject.Properties.Name | Where-Object { $_ -ne '6' }
        foreach ($period in $periods) {
            $periodNum = [int]$period
            if ($periodNum -gt 6) {
                $newKey = [string]($periodNum - 1)
            } else {
                $newKey = $period
            }
            $newData[$class][$day][$newKey] = $data.$class.$day.$period
        }
    }
}

Write-Host "Type of newData: $($newData.GetType().FullName)"
Write-Host "Count of newData: $($newData.Count)"

$jsonOutput = $newData | ConvertTo-Json -Depth 10
Set-Content -Path 'jadual.json' -Value $jsonOutput -Encoding UTF8
Write-Host "Done"