$data = Get-Content 'jadual.json' -Raw | ConvertFrom-Json
$newData = @{}

foreach ($class in $data.PSObject.Properties.Name) {
    $newData[$class] = @{}
    foreach ($day in $data.$class.PSObject.Properties.Name) {
        $newData[$class][$day] = @{}
        
        # Get all periods and filter out W6
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

$newData | ConvertTo-Json -Depth 10 | Set-Content 'jadual.json'