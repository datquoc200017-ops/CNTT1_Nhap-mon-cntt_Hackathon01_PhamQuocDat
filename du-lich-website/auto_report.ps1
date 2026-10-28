# Script: auto_report.ps1 
# Tac gia: Pham Quoc Dat
# Ngay tao: 28/10/2026



Write-Host "Dang loc log...."

"=== BAO CAO LOI ===" > logs/auto_report.txt
Get-content logs/travel.log | Select-string "ERROR" |Out-file logs/auto_report.txt -Append

