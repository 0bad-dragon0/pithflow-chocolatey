$ErrorActionPreference = 'Stop'

[array]$key = Get-UninstallRegistryKey -SoftwareName 'Pithflow*'

if ($key.Count -eq 1) {
  $file = ($key[0].UninstallString -replace '"', '')
  Uninstall-ChocolateyPackage -PackageName $env:ChocolateyPackageName `
    -FileType 'exe' -SilentArgs '/S' -File $file -ValidExitCodes @(0)
} elseif ($key.Count -eq 0) {
  Write-Warning "Pithflow was not found in Programs and Features; it may already be uninstalled."
} else {
  Write-Warning "$($key.Count) matches for 'Pithflow*' were found; not uninstalling to be safe:"
  $key | ForEach-Object { Write-Warning "- $($_.DisplayName)" }
}
