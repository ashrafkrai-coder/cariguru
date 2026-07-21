$j = Get-Content 'jadual.json' -Raw | ConvertFrom-Json
foreach ($day in @('Isnin', 'Selasa', 'Rabu', 'Khamis', 'Jumaat')) {
    Write-Host "$day periods: $($j.'3 AL-FARABI'.$day.PSObject.Properties.Name -join ', ')"
}