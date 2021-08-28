$ErrorActionPreference = 'Stop';
$packageName= 'windowtextextractor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/AlexanderPro/WindowTextExtractor/releases/download/v1.8.3/WindowTextExtractor_v1.8.3.zip'

$packageArgs = @{
  packageName   = $packageName
  destination   = $toolsDir
  fileType      = 'zip'
  url           = $url
  softwareName  = 'WindowTextExtractor*'
  checksum      = '9995a1d1b63f3d753c5c7de349eeb0593bf338b52fe0a661a9bbf9fa7140d3ae'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs









