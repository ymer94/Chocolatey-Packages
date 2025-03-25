$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url           = 'https://github.com/hoppscotch/releases/releases/download/v25.2.3-0/Hoppscotch_win_x64.msi'

  softwareName  = 'Hoppscotch*'

  checksum      = '61BC12AE640C9B79E208FB76ED4AB430610AEE8C6CD8E9EE855C05E78DDCC37C'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs