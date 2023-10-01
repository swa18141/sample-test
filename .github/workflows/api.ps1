# Check if summary.txt file exists, if not, create it
$filePath = "summary.txt"
if (-not (Test-Path -Path $filePath)) {
    New-Item -Path $filePath -ItemType File | Out-Null
}


# Specify the path to the existing file in your repository
$filePath = "summary.txt"


# Sample data to add to the file
$sampleData = "sample text to store in the summary file to upload into the artifacts...!n`", $response

Write-Host $sampleData

# Read the existing content of the file
$fileContent = Get-Content -Path $filePath -Raw

# Append the sample data to the file content
$newContent = $fileContent + "`n" + $sampleData

# Write the updated content back to the file
$newContent | Set-Content -Path $filePath
