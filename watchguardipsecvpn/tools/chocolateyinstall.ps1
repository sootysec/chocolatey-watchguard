$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'http://cdn.watchguard.com/SoftwareCenter/Files/NCP/12_5_1/WG-Mobile-VPN_Windows_x86_1400_45109.exe'
$url64      = 'http://cdn.watchguard.com/SoftwareCenter/Files/NCP/12_5_1/WG-Mobile-VPN_Windows_x86-64_1400_45109.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Watchguard Mobile VPN*'

  checksum      = '8D3CB3A6FEB2F3C6E76A5F219775685B65F176C4B87F2AFC1B206408C4379DA4'
  checksumType  = 'sha256'
  checksum64    = '07C528B267A8E0AA19EFB8D1D772696544D74B13A0A73CF526C00F1CFFA859B3'
  checksumType64= 'sha256'

  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs