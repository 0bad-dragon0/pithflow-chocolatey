# Pithflow Chocolatey package

Source files for the [Pithflow](https://pithflow.com/) package on the Chocolatey community repository.

Pithflow is AI voice dictation for Windows, also available for Mac and iPhone, with an Android keyboard in beta. This package installs the Windows app.

```powershell
choco install pithflow
```

## What is here

- `pithflow.nuspec`: the package description.
- `tools/chocolateyinstall.ps1`: downloads the signed installer from pithflow.com and checks its SHA-256 checksum before running it silently.
- `tools/chocolateyuninstall.ps1`: removes the app.

The app itself is not open source; this repository holds only the packaging files.

## Problems

- With the package (install or uninstall through Chocolatey): open an issue here.
- With the app: hello@pithflow.com
