$AppCmd = "$env:SystemRoot\System32\inetsrv\AppCmd.exe"

& "$AppCmd" list APPPOOL "DefaultAppPool" /text:*
& "$AppCmd" list APPPOOL "DefaultAppPool" /config:*

$UserName = & "$AppCmd" list APPPOOL "DefaultAppPool" /text:processModel.userName
$User = [System.Security.Principal.NTAccount]::new($UserName)
$SecurityIdentifier = $User.Translate([System.Security.Principal.SecurityIdentifier])

Write-Host $SecurityIdentifier