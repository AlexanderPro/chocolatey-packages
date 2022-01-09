$ErrorActionPreference = 'Stop';
$packageName= 'smartsystemmenu'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/AlexanderPro/SmartSystemMenu/releases/download/v2.17.0/SmartSystemMenu_v2.17.0.zip'

$packageArgs = @{
  packageName   = $packageName
  destination   = $toolsDir
  fileType      = 'zip'
  url           = $url
  softwareName  = 'SmartSystemMenu*'
  checksum      = '6fdaf969170e9274bd7366fd4860a6714f8ffd20c4a7731402c171f0a3beb71f'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs









