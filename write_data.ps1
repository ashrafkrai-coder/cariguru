$ErrorActionPreference = 'Stop'

$data = @{
    "3 AL-FARABI" = @{
        "Isnin" = @{
            "1"  = @{ subject = "P";   teacher = "FAISAL";  time = "7:30 - 8:00" }
            "2"  = @{ subject = "BM";  teacher = "FATIN A"; time = "8:00 - 8:30" }
            "3"  = @{ subject = "BM";  teacher = "FATIN A"; time = "8:30 - 9:00" }
            "4"  = @{ subject = "PI";  teacher = "NURUL";   time = "9:00 - 9:30" }
            "5"  = @{ subject = "MAT"; teacher = "AHMAD";   time = "9:30 - 10:00" }
            "7"  = @{ subject = "BI";  teacher = "LAILA";   time = "10:20 - 10:50" }
            "8"  = @{ subject = "BI";  teacher = "LAILA";   time = "10:50 - 11:20" }
            "9"  = @{ subject = "SEJ"; teacher = "KAMAL";   time = "11:20 - 11:50" }
            "10" = @{ subject = "SEJ"; teacher = "KAMAL";   time = "11:50 - 12:20" }
            "11" = @{ subject = "GEO"; teacher = "RINA";    time = "12:20 - 12:50" }
            "12" = @{ subject = "GEO"; teacher = "RINA";    time = "12:50 - 13:20" }
            "13" = @{ subject = "FIZ"; teacher = "HASAN";   time = "13:20 - 13:50" }
            "14" = @{ subject = "FIZ"; teacher = "HASAN";   time = "13:50 - 14:20" }
        }
        "Selasa" = @{
            "1"  = @{ subject = "P";   teacher = "FAISAL";  time = "7:30 - 8:00" }
            "2"  = @{ subject = "BM";  teacher = "FATIN A"; time = "8:00 - 8:30" }
            "3"  = @{ subject = "PI";  teacher = "NURUL";   time = "8:30 - 9:00" }
            "4"  = @{ subject = "MAT"; teacher = "AHMAD";   time = "9:00 - 9:30" }
            "5"  = @{ subject = "BI";  teacher = "LAILA";   time = "9:30 - 10:00" }
            "7"  = @{ subject = "SEJ"; teacher = "KAMAL";   time = "10:20 - 10:50" }
            "8"  = @{ subject = "GEO"; teacher = "RINA";    time = "10:50 - 11:20" }
            "9"  = @{ subject = "FIZ"; teacher = "HASAN";   time = "11:20 - 11:50" }
            "10" = @{ subject = "ICT"; teacher = "ZUL";     time = "11:50 - 12:20" }
            "11" = @{ subject = "ICT"; teacher = "ZUL";     time = "12:20 - 12:50" }
            "12" = @{ subject = "PA";  teacher = "DIN";     time = "12:50 - 13:20" }
            "13" = @{ subject = "PA";  teacher = "DIN";     time = "13:20 - 13:50" }
            "14" = @{ subject = "BM";  teacher = "FATIN A"; time = "13:50 - 14:20" }
        }
        "Rabu" = @{
            "1"  = @{ subject = "P";   teacher = "FAISAL";  time = "7:30 - 8:00" }
            "2"  = @{ subject = "MAT"; teacher = "AHMAD";   time = "8:00 - 8:30" }
            "3"  = @{ subject = "SEJ"; teacher = "KAMAL";   time = "8:30 - 9:00" }
            "4"  = @{ subject = "GEO"; teacher = "RINA";    time = "9:00 - 9:30" }
            "5"  = @{ subject = "BI";  teacher = "LAILA";   time = "9:30 - 10:00" }
            "7"  = @{ subject = "PI";  teacher = "NURUL";   time = "10:20 - 10:50" }
            "8"  = @{ subject = "FIZ"; teacher = "HASAN";   time = "10:50 - 11:20" }
            "9"  = @{ subject = "BM";  teacher = "FATIN A"; time = "11:20 - 11:50" }
            "10" = @{ subject = "PA";  teacher = "DIN";     time = "11:50 - 12:20" }
            "11" = @{ subject = "PA";  teacher = "DIN";     time = "12:20 - 12:50" }
            "12" = @{ subject = "ICT"; teacher = "ZUL";     time = "12:50 - 13:20" }
            "13" = @{ subject = "ICT"; teacher = "ZUL";     time = "13:20 - 13:50" }
            "14" = @{ subject = "MAT"; teacher = "AHMAD";   time = "13:50 - 14:20" }
        }
        "Khamis" = @{
            "1"  = @{ subject = "BM";  teacher = "FATIN A"; time = "7:30 - 8:00" }
            "2"  = @{ subject = "BI";  teacher = "LAILA";   time = "8:00 - 8:30" }
            "3"  = @{ subject = "PI";  teacher = "NURUL";   time = "8:30 - 9:00" }
            "4"  = @{ subject = "MAT"; teacher = "AHMAD";   time = "9:00 - 9:30" }
            "5"  = @{ subject = "SEJ"; teacher = "KAMAL";   time = "9:30 - 10:00" }
            "7"  = @{ subject = "GEO"; teacher = "RINA";    time = "10:20 - 10:50" }
            "8"  = @{ subject = "FIZ"; teacher = "HASAN";   time = "10:50 - 11:20" }
            "9"  = @{ subject = "PA";  teacher = "DIN";     time = "11:20 - 11:50" }
            "10" = @{ subject = "PA";  teacher = "DIN";     time = "11:50 - 12:20" }
            "11" = @{ subject = "ICT"; teacher = "ZUL";     time = "12:20 - 12:50" }
            "12" = @{ subject = "ICT"; teacher = "ZUL";     time = "12:50 - 13:20" }
            "13" = @{ subject = "BM";  teacher = "FATIN A"; time = "13:20 - 13:50" }
            "14" = @{ subject = "BM";  teacher = "FATIN A"; time = "13:50 - 14:20" }
        }
        "Jumaat" = @{
            "1" = @{ subject = "YAS";  teacher = "AHMAD";   time = "7:30 - 8:00" }
            "2" = @{ subject = "BM";   teacher = "FATIN A"; time = "8:00 - 8:30" }
            "3" = @{ subject = "BI";   teacher = "LAILA";   time = "8:30 - 9:00" }
            "4" = @{ subject = "PI";   teacher = "NURUL";   time = "9:00 - 9:30" }
            "5" = @{ subject = "MAT";  teacher = "AHMAD";   time = "9:30 - 10:00" }
            "6" = @{ subject = "REHAT"; teacher = "-";       time = "10:00 - 10:20" }
            "7" = @{ subject = "SEJ";  teacher = "KAMAL";   time = "10:20 - 10:50" }
            "8" = @{ subject = "GEO";  teacher = "RINA";    time = "10:50 - 11:20" }
            "9" = @{ subject = "FIZ";  teacher = "HASAN";   time = "11:20 - 11:50" }
            "10" = @{ subject = "PA"; teacher = "DIN";     time = "11:50 - 12:20" }
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

if ($newData.'3 AL-FARABI') {
    foreach ($day in @('Isnin', 'Selasa', 'Rabu', 'Khamis')) {
        if ($newData.'3 AL-FARABI'.$day) {
            $newData.'3 AL-FARABI'.$day.'14' = @{
                subject = 'BI'
                teacher = 'LAILA'
                time = '13:50 - 14:20'
            }
        }
    }
}

$jsonOutput = $newData | ConvertTo-Json -Depth 10
Set-Content -Path 'jadual.json' -Value $jsonOutput -Encoding UTF8
Write-Host "Done processing jadual.json"