# Check if summary.txt file exists, if not, create it
$filePath = "summary.txt"
if (-not (Test-Path -Path $filePath)) {
    New-Item -Path $filePath -ItemType File | Out-Null
}

# Sample data to add to the file
$sampleText = "sample text to store in the summary file to upload into the artifacts...!"

Write-Host $sampleText

# Read the existing content of the file
$fileContent = Get-Content -Path $filePath -Raw

# Append the sample data to the file content
$newContent = $fileContent + "`n" + $sampleText

# Write the updated content back to the file
$newContent | Set-Content -Path $filePath

