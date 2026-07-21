$j = Get-Content 'jadual.json' -Raw | ConvertFrom-Json
Write-Host "Jumaat periods:"
$j.'3 AL-FARABI'.Jumaat.PSObject.Properties | ForEach-Object { Write-Host $_.Name }