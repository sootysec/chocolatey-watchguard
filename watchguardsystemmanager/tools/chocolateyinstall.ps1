$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'http://cdn.watchguard.com/SoftwareCenter/Files/WSM/12_6_2/wsm_12_6_2.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Watchguard System Manager*'

  checksum      = 'AC30AD94F8AEE7AF18236EEC92C1BB80828B4F508E18529C80B5FD1C69A871F0'
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs