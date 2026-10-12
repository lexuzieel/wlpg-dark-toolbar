# Dark toolbar for Windows Live Photo Gallery 2008

Build 12.0.1329.0201. Three DLLs are patched, nothing is recompiled.

Before:

![Blue toolbar](shots/01_toolbar_before.png)

After:

![Dark toolbar](shots/03_toolbar_dark.png)

## Build it yourself

Get the original `Windows Live Photo Gallery.msi` and run:

    .\build.ps1 -Msi "C:\path\to\Windows Live Photo Gallery.msi" -Out C:\wlpg-dark

The script checks the installer's SHA-256 and Microsoft signature, unpacks it, applies the
patch and prints the hashes of the changed files. It needs only PowerShell.
Install the result with `msiexec /i`. Photo Gallery 2008 also needs SQL Server Compact 3.1.

## Files

- `build.ps1` - builds the patched installer from the original MSI
- `release/wlpg-dark-toolbar/` - patched DLLs and `install.cmd`
- `unpacked/` - original files
- `scripts/patch_wlpg_toolbar.py` - the patcher
- `shots/` - before and after

Tags: `baseline` (original), `wlpg-dark-toolbar-v1` (patched).
