Add-Type -AssemblyName System.Web

$json = Get-Content 'temp.txt' -Raw
$data = $json | ConvertFrom-Json
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

# Add W14 for "3 AL-FARABI" on all days except Jumaat
if ($newData.'3 AL-FARABI') {
    foreach ($day in @('Isnin', 'Selasa', 'Rabu', 'Khamis')) {
        if ($newData.'3 AL-FARABI'.$day) {
            $maxPeriod = ($newData.'3 AL-FARABI'.$day.PSObject.Properties.Name | ForEach-Object { [int]$_ } | Measure-Object -Maximum).Maximum
            $newData.'3 AL-FARABI'.$day.'14' = @{
                subject = 'BI'
                teacher = 'LAILA'
                time = '13:50 - 14:20'
            }
        }
    }
}

$newData | ConvertTo-Json -Depth 10 | Set-Content 'jadual.json' -Encoding UTF8
Write-Host "Done processing jadual.json"