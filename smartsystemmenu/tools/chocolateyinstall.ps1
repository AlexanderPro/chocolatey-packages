$ErrorActionPreference = 'Stop';
$packageName= 'smartsystemmenu'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/AlexanderPro/SmartSystemMenu/releases/download/v2.19.3/SmartSystemMenu_v2.19.3.zip'

$packageArgs = @{
  packageName   = $packageName
  destination   = $toolsDir
  fileType      = 'zip'
  url           = $url
  softwareName  = 'SmartSystemMenu*'
  checksum      = '1bef16a3bfdfa94e1941188cbb522442840d800c03aa7ef979fe6e4d1e0ed5c8'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs









