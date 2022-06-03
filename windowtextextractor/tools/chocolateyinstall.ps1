$ErrorActionPreference = 'Stop';
$packageName= 'windowtextextractor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/AlexanderPro/WindowTextExtractor/releases/download/v1.13.0/WindowTextExtractor_v1.13.0.zip'

$packageArgs = @{
  packageName   = $packageName
  destination   = $toolsDir
  fileType      = 'zip'
  url           = $url
  softwareName  = 'WindowTextExtractor*'
  checksum      = 'd8b0fc135355141f0b67f036c6582badddf4b9e5014953734ba4de336d79c1b7'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs









