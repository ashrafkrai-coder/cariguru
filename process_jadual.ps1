$json = Get-Content 'jadual.json' -Raw
$data = $json | ConvertFrom-Json
$newData = @{}

foreach ($class in $data.PSObject.Properties.Name) {
    $newData[$class] = @{}
    foreach ($day in $data.$class.PSObject.Properties.Name) {
        $newData[$class][$day] = @{}
        foreach ($period in $data.$class.$day.PSObject.Properties.Name) {
            if ($period -ne '6') {
                $newKey = if ([int]$period -gt 6) { [string]([int]$period - 1) } else { $period }
                $newData[$class][$day][$newKey] = $data.$class.$day.$period
            }
        }
    }
}

$newData | ConvertTo-Json -Depth 10 | Set-Content 'jadual.json'