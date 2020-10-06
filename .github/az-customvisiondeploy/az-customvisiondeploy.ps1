param()

$ErrorActionPreference = "Stop"

Write-Verbose 'Entering custom vision deploy.ps1'

#Get Parameters
$customVisionEndPoint = -Name Get-VstsInput -Name cognitiveServicesEndPoint -Require

Invoke-WebRequest -Uri "$customVisionEndPoint" -Method POST

Write-Verbose 'Leaving custom vision deploy.ps1'