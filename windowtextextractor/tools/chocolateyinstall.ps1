$ErrorActionPreference = 'Stop';
$packageName= 'windowtextextractor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/AlexanderPro/WindowTextExtractor/releases/download/v1.9.0/WindowTextExtractor_v1.9.0.zip'

$packageArgs = @{
  packageName   = $packageName
  destination   = $toolsDir
  fileType      = 'zip'
  url           = $url
  softwareName  = 'WindowTextExtractor*'
  checksum      = 'afc84d3ac047dcfbbdd7d248eb4023dadc7ebc2abee53042baa57fd70a23422f'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs









