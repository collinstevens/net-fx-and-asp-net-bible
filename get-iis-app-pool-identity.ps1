$AppCmd = "$env:SystemRoot\System32\inetsrv\AppCmd.exe"

& "$AppCmd" list APPPOOL "ByteWeb" /text:*
& "$AppCmd" list APPPOOL "ByteWeb" /config:*

$UserName = & "$AppCmd" list APPPOOL "ByteWeb" /text:processModel.userName
$User = [System.Security.Principal.NTAccount]::new($UserName)
$SecurityIdentifier = $User.Translate([System.Security.Principal.SecurityIdentifier])

Write-Host $SecurityIdentifier