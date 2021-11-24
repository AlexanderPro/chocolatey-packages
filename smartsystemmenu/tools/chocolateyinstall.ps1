$ErrorActionPreference = 'Stop';
$packageName= 'smartsystemmenu'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/AlexanderPro/SmartSystemMenu/releases/download/v2.14.1/SmartSystemMenu_v2.14.1.zip'

$packageArgs = @{
  packageName   = $packageName
  destination   = $toolsDir
  fileType      = 'zip'
  url           = $url
  softwareName  = 'SmartSystemMenu*'
  checksum      = '41466aa3484199e54bec54ef47386c6fe617c04e695e4acc0f60f52ee1f08a05'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs









