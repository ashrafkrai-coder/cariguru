$h = @{
    "class1" = @{
        "day1" = @{
            "1" = @{ subject = "P"; teacher = "A"; time = "7:30 - 8:00" }
            "2" = @{ subject = "BM"; teacher = "B"; time = "8:00 - 8:30" }
        }
    }
}
$h | ConvertTo-Json -Depth 10