$scriptPath = 'C:\Users\Admin\Documents\download_files.ps1'
$scriptContent = @"
Import-Module -Name Microsoft.PowerShell.Archive
 
`$url = 'https://tc24labfiles.s3.us-west-2.amazonaws.com/INSERT_ID_HERE/VM+Files/VM+Files.zip'
`$destination = 'C:\Users\Admin\VM Files.zip'

Invoke-WebRequest -Uri `$url -OutFile `$destination -Verbose
 
Expand-Archive -Path `$destination -DestinationPath 'C:\Users\Admin\Desktop' -Verbose
"@
 
Set-Content -Path $scriptPath -Value $scriptContent
 
pwsh $scriptPath
