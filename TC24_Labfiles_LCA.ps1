# Define the ID value to replace in the script
$ID = "Lab_code"

# Specify the URL of the script on GitHub
$scriptUrl = "https://raw.githubusercontent.com/LODSContent/Events/main/TC24_labfiles.ps1"

# Download the script using Invoke-RestMethod
$script = Invoke-RestMethod -Uri $scriptUrl

# Replace the placeholder 'INSERT_ID_HERE' with the actual ID in the downloaded script
$modifiedScript = $script -replace 'INSERT_ID_HERE', $ID

# Execute the modified script
Invoke-Expression $modifiedScript
