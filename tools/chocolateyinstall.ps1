$ErrorActionPreference = 'Stop'

# Pithflow 1.47.0 — the immutable, versioned installer URL (same one winget uses).
# The checksum was taken from the live file on 2026-11-21; it must match exactly.
$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://pithflow.com/downloads/Pithflow_1.47.0_x64-setup.exe'
  checksum64     = '06aba00f2976924b949ab41193200e37d259dfec8c462c389ca2a93dfc7671e4'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Pithflow*'
}

Install-ChocolateyPackage @packageArgs
