param (
    [string]$ID = "1796"
)

$scriptPath = 'C:\Users\Admin\Documents\download_files.ps1'
$filePath = "https://tc24labfiles.s3.us-west-2.amazonaws.com/$ID/VM+Files/VM+Files.zip"

$scriptContent = @"
Import-Module -Name Microsoft.PowerShell.Archive
 
`$url = '{0}'
`$destination = 'C:\Users\Admin\VM Files.zip'
 
Invoke-WebRequest -Uri `$url -OutFile `$destination -Verbose
 
Expand-Archive -Path `$destination -DestinationPath 'C:\Users\Admin\Desktop' -Verbose
"@

# Insert the filePath into the script content where {0} is the placeholder
$scriptContent = $scriptContent -f $filePath

# Write the content to the new script file
Set-Content -Path $scriptPath -Value $scriptContent

# Execute the newly created script
pwsh $scriptPath
