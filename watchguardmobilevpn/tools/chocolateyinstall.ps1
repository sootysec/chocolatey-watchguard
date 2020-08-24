$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'http://cdn.watchguard.com/SoftwareCenter/Files/MUVPN_SSL/12_5_3/WG-MVPN-SSL_12_5_3.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Watchguard Mobile VPN with SSL Client*'

  checksum      = 'D9B1C31BC333E7CF9E7575B78BBF4028784C3B47E211B1E821812F5CD4A41EA1'
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs