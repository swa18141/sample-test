# Specify the path to the existing file in your repository
$filePath = "summary.txt"

# Sample data to add to the file
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$org = "your_org_value"
$PROXIES = "your_proxies_value"
$sharedflowdatastatus = "your_sharedflow_value"
$ORGKVMS = "your_orgkvm_value"
$apps = "your_apps_value"

# API Request - Replace with your actual API request code
# This is a placeholder example, you should replace it with your actual API request
$response = Invoke-RestMethod -Uri "https://api.example.com/your-api-endpoint"

# Create the sample data (including the API response)
$sampleData = @"
created at-- $timestamp
$org
$PROXIES
$sharedflowdatastatus
$ORGKVMS
$apps
API Response:
$response
"@

# Write the sample data (including the API response) directly to the 'summary.txt' file
$sampleData | Set-Content -Path $filePath -Encoding UTF8
