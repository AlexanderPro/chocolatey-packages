$ErrorActionPreference = 'Stop';
$packageName= 'smartsystemmenu'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/AlexanderPro/SmartSystemMenu/releases/download/v2.9.3/SmartSystemMenu_v2.9.3.zip'

$packageArgs = @{
  packageName   = $packageName
  destination   = $toolsDir
  fileType      = 'zip'
  url           = $url
  softwareName  = 'SmartSystemMenu*'
  checksum      = '7405fe00d3798dc167967791e8612b2a68519abea0e38099cc75f7d38ff7b83f'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs









