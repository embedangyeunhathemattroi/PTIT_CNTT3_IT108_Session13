# Tao tieu de bao cao
Write-Output "=== BAO CAO SU CO SMARTFARM ===" > ..\backup\bao-cao-su-co.txt
Write-Output "Thoi gian: $(Get-Date -Format '2026-10-27 3:36:00')" >> ..\backup\bao-cao-su-co.txt

# Loc cac dong ERROR hoac CRITICAL
Get-Content ..\data\log-he-thong.log |
    Select-String "ERROR|CRITICAL" >> ..\backup\bao-cao-su-co.txt

# Dem so dong su co
$soSuCo = (Get-Content ..\data\log-he-thong.log |
    Select-String "ERROR|CRITICAL" | Measure-Object).Count

Write-Output "TONG SO SU CO: $soSuCo" >> ..\backup\bao-cao-su-co.txt