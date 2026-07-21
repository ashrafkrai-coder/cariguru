$h = @{a=1; b=2}
Write-Host "Count: $($h.Count)"
Write-Host "Keys: $($h.Keys -join ', ')"