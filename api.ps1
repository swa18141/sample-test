$filePath = "summary.txt"


# Sample data to add to the file
$sampleData = "created at-- $timestamp`n", "$org`n", "$PROXIES`n","$sharedflowdatastatus`n","$ORGKVMS`n","$apps`n"

Write-Host $sampleData

# Read the existing content of the file
$fileContent = Get-Content -Path $filePath -Raw

# Append the sample data to the file content
$newContent = $fileContent + "`n" + $sampleData

# Write the updated content back to the file
$newContent | Set-Content -Path $filePath
