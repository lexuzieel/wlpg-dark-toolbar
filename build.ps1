<#
.SYNOPSIS
Builds an installer of Windows Live Photo Gallery 2008 with the dark toolbar from the
original Microsoft MSI.

.DESCRIPTION
Nothing here is downloaded and no Microsoft file is shipped with this script. You supply the
original installer; the script

  1. checks that it is the expected file (SHA-256) and still carries a valid Microsoft signature,
  2. unpacks it with "msiexec /a" (an administrative image, nothing is installed),
  3. rewrites 14 colour constants in WLXPhotoLibraryMain.dll and WLXPhotoViewer.dll,
  4. replaces picture PNG 7030 in WLXPhotoLibraryResources.dll,
  5. records the new size of that DLL in the installer database,
  6. checks the result and prints its SHA-256 hashes.

The output folder holds an MSI next to the unpacked files. Install with:
    msiexec /i "<out>\WindowsLivePhotoGallery.msi"

Works in Windows PowerShell 5.1 and PowerShell 7. Needs no other tools.

.PARAMETER Msi
Path to the original "Windows Live Photo Gallery.msi", version 12.0.1329.0201.

.PARAMETER Out
Folder to build into. It must not exist yet.

.EXAMPLE
.\build.ps1 -Msi "C:\Downloads\Windows Live Photo Gallery.msi" -Out C:\wlpg-dark
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory)][string]$Msi,
    [string]$Out = (Join-Path $PSScriptRoot "out")
)
$ErrorActionPreference = "Stop"

# ---- known values -------------------------------------------------------------------------
$MsiSha256 = "c273c4e5f99cc1bab911b4e5373201739e33c00425131cfc16f77351bfb04c32"
# The colour patch is a pure byte edit, so its result is the same everywhere.
$PatchedSha256 = @{
    "WLXPhotoLibraryMain.dll" = "b7c2e6565071976cc68285a1910f770a6b5baeeca556e87107c77d5a7e82fa2e"
    "WLXPhotoViewer.dll"      = "b328176ddd029c385304f492bd07b4db28a47ef48811b1f9d5e6ec76f3fd421f"
}
$DarkPng = Join-Path $PSScriptRoot "patches\wlpg\PNG7030_dark.png"

# The toolbar background is drawn by one function with GDI+ gradients. Each row is a
# MOV instruction prefix, the original RGB and the new RGB, in address order.
$Colours = @(
    @("c745b8", "3586b9", "353843"),  # modern look: upper gradient, bottom
    @("c745e8", "7db1d2", "57607f"),  #              upper gradient, top
    @("c745e8", "64a5c9", "1a1c25"),  #              lower gradient, bottom
    @("c745b8", "005c96", "0b0b0f"),  #              lower gradient, top
    @("c745ec", "80b3d3", "4a5062"),  #              upper inner border, bottom
    @("c745e8", "afcfe4", "7a84a6"),  #              upper inner border, top
    @("c745ec", "a7d1e4", "313e60"),  #              lower inner border, bottom
    @("c745e8", "558fb4", "15161c"),  #              lower inner border, top
    @("c745ec", "999999", "6b7080"),  #              outer frame
    @("c745ec", "6caace", "20222b"),  # XP look: gradient, bottom
    @("c745e8", "005c96", "0b0b0f"),  #          gradient, top
    @("bb",     "a9d2e5", "313e60"),  #          border bottom and separator line
    @("c745e8", "558fb4", "15161c"),  #          left border, top
    @("c745e8", "558fb4", "15161c")   #          right border, top
)
$Window = 0x600   # all fourteen immediates lie within this many bytes of the first one

# ---- helpers ------------------------------------------------------------------------------
function Get-Sha256([string]$Path) { (Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash.ToLower() }

function ConvertFrom-Hex([string]$Hex) {
    $bytes = New-Object byte[] ($Hex.Length / 2)
    for ($i = 0; $i -lt $bytes.Length; $i++) { $bytes[$i] = [Convert]::ToByte($Hex.Substring($i * 2, 2), 16) }
    , $bytes
}

# ARGB immediate as stored in the file: blue, green, red, alpha FF.
function Get-Immediate([string]$Rgb) {
    $b = ConvertFrom-Hex $Rgb
    , [byte[]]($b[2], $b[1], $b[0], 0xFF)
}

function Set-ToolbarColours([string]$Path) {
    $data = [System.IO.File]::ReadAllBytes($Path)
    # Latin-1 maps every byte to one char, which lets String.IndexOf search the binary.
    $latin1 = [System.Text.Encoding]::GetEncoding(28591)
    $text = $latin1.GetString($data)
    $first = $latin1.GetString((ConvertFrom-Hex $Colours[0][0]) + (Get-Immediate $Colours[0][1]))
    $pos = $text.IndexOf($first, [StringComparison]::Ordinal)
    if ($pos -lt 0 -or $text.IndexOf($first, $pos + 1, [StringComparison]::Ordinal) -ge 0) {
        throw "${Path}: the toolbar code was not found exactly once. Wrong build, or already patched."
    }
    $end = $pos + $Window
    foreach ($row in $Colours) {
        $pattern = (ConvertFrom-Hex $row[0]) + (Get-Immediate $row[1])
        $at = $text.IndexOf($latin1.GetString($pattern), $pos, $end - $pos, [StringComparison]::Ordinal)
        if ($at -lt 0) { throw "${Path}: colour #$($row[1]) not found where expected." }
        $new = Get-Immediate $row[2]
        [Array]::Copy($new, 0, $data, $at + $pattern.Length - 4, 4)
        $pos = $at + $pattern.Length
    }
    [System.IO.File]::WriteAllBytes($Path, $data)
}

Add-Type -Namespace WlpgBuild -Name Native -MemberDefinition @'
[DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
public static extern IntPtr BeginUpdateResourceW(string file, bool deleteExisting);
[DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
public static extern bool UpdateResourceW(IntPtr update, string type, IntPtr name, ushort language, byte[] data, uint size);
[DllImport("kernel32.dll", SetLastError = true)]
public static extern bool EndUpdateResourceW(IntPtr update, bool discard);
[DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
public static extern IntPtr LoadLibraryExW(string file, IntPtr reserved, uint flags);
[DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
public static extern IntPtr FindResourceExW(IntPtr module, string type, IntPtr name, ushort language);
[DllImport("kernel32.dll", SetLastError = true)]
public static extern uint SizeofResource(IntPtr module, IntPtr resource);
[DllImport("kernel32.dll", SetLastError = true)]
public static extern IntPtr LoadResource(IntPtr module, IntPtr resource);
[DllImport("kernel32.dll")]
public static extern IntPtr LockResource(IntPtr data);
[DllImport("kernel32.dll")]
public static extern bool FreeLibrary(IntPtr module);
'@

$ResType = "PNG"; $ResId = [IntPtr]7030; $ResLang = [uint16]1033

function Set-PngResource([string]$Path, [byte[]]$Png) {
    $h = [WlpgBuild.Native]::BeginUpdateResourceW($Path, $false)
    if ($h -eq [IntPtr]::Zero) { throw "BeginUpdateResource failed for $Path" }
    if (-not [WlpgBuild.Native]::UpdateResourceW($h, $ResType, $ResId, $ResLang, $Png, $Png.Length)) {
        [void][WlpgBuild.Native]::EndUpdateResourceW($h, $true)
        throw "UpdateResource failed for $Path"
    }
    if (-not [WlpgBuild.Native]::EndUpdateResourceW($h, $false)) { throw "EndUpdateResource failed for $Path" }
}

function Get-PngResource([string]$Path) {
    $module = [WlpgBuild.Native]::LoadLibraryExW($Path, [IntPtr]::Zero, 2)   # 2 = load as data file
    if ($module -eq [IntPtr]::Zero) { throw "Cannot open $Path" }
    try {
        $res = [WlpgBuild.Native]::FindResourceExW($module, $ResType, $ResId, $ResLang)
        if ($res -eq [IntPtr]::Zero) { throw "PNG 7030 not found in $Path" }
        $size = [WlpgBuild.Native]::SizeofResource($module, $res)
        $ptr = [WlpgBuild.Native]::LockResource([WlpgBuild.Native]::LoadResource($module, $res))
        $bytes = New-Object byte[] $size
        [System.Runtime.InteropServices.Marshal]::Copy($ptr, $bytes, 0, $size)
        , $bytes
    }
    finally { [void][WlpgBuild.Native]::FreeLibrary($module) }
}

# Windows Installer automation is late-bound COM; this keeps the calls readable.
function Invoke-Com($Object, [string]$Member, [string]$Kind, $Arguments) {
    $Object.GetType().InvokeMember($Member, $Kind, $null, $Object, $Arguments)
}

function Set-MsiFileSize([string]$Database, [string]$FileName, [long]$Size) {
    $installer = New-Object -ComObject WindowsInstaller.Installer
    $db = Invoke-Com $installer "OpenDatabase" "InvokeMethod" @($Database, 1)   # 1 = transacted
    $view = Invoke-Com $db "OpenView" "InvokeMethod" @("SELECT ``File``, ``FileName`` FROM ``File``")
    [void](Invoke-Com $view "Execute" "InvokeMethod" $null)
    $key = $null
    while ($true) {
        $rec = Invoke-Com $view "Fetch" "InvokeMethod" $null
        if (-not $rec) { break }
        # FileName is "short|long"
        $name = (Invoke-Com $rec "StringData" "GetProperty" 2) -split "\|" | Select-Object -Last 1
        if ($name -eq $FileName) { $key = Invoke-Com $rec "StringData" "GetProperty" 1 }
    }
    [void](Invoke-Com $view "Close" "InvokeMethod" $null)
    if (-not $key) { throw "$FileName is not listed in the installer database." }
    $update = Invoke-Com $db "OpenView" "InvokeMethod" @("UPDATE ``File`` SET ``FileSize`` = $Size WHERE ``File`` = '$key'")
    [void](Invoke-Com $update "Execute" "InvokeMethod" $null)
    [void](Invoke-Com $update "Close" "InvokeMethod" $null)
    [void](Invoke-Com $db "Commit" "InvokeMethod" $null)
    foreach ($o in $update, $view, $db, $installer) { [void][System.Runtime.InteropServices.Marshal]::ReleaseComObject($o) }
    [GC]::Collect(); [GC]::WaitForPendingFinalizers()
}

# ---- 1. check the input -------------------------------------------------------------------
$Msi = (Resolve-Path -LiteralPath $Msi).Path
if (-not (Test-Path -LiteralPath $DarkPng)) { throw "Missing $DarkPng" }
if (Test-Path -LiteralPath $Out) { throw "Output folder already exists: $Out" }

Write-Host "Checking the original installer..."
$hash = Get-Sha256 $Msi
if ($hash -ne $MsiSha256) { throw "Unexpected installer. SHA-256 is $hash, expected $MsiSha256." }
$sig = Get-AuthenticodeSignature -LiteralPath $Msi
if ($sig.Status -ne "Valid" -or $sig.SignerCertificate.Subject -notmatch "O=Microsoft Corporation") {
    throw "The installer does not carry a valid Microsoft signature (status: $($sig.Status))."
}
Write-Host "  SHA-256 matches and the Microsoft signature is valid."

# ---- 2. unpack ----------------------------------------------------------------------------
Write-Host "Unpacking (nothing is installed)..."
$Out = [System.IO.Path]::GetFullPath($Out)
[void](New-Item -ItemType Directory -Path $Out)
$p = Start-Process msiexec.exe -ArgumentList "/a `"$Msi`" /qn TARGETDIR=`"$Out`"" -Wait -PassThru
if ($p.ExitCode -ne 0) { throw "msiexec /a failed with exit code $($p.ExitCode)." }
$gallery = Join-Path $Out "PFiles\Windows Live\Photo Gallery"
$imageMsi = Get-ChildItem -LiteralPath $Out -Filter *.msi | Select-Object -First 1
if (-not $imageMsi -or -not (Test-Path -LiteralPath $gallery)) { throw "Unexpected layout after unpacking." }

# ---- 3. toolbar colours -------------------------------------------------------------------
foreach ($name in $PatchedSha256.Keys) {
    Write-Host "Recolouring the toolbar in $name..."
    $file = Join-Path $gallery $name
    Set-ToolbarColours $file
    $hash = Get-Sha256 $file
    if ($hash -ne $PatchedSha256[$name]) { throw "${name}: result differs from the expected file ($hash)." }
}

# ---- 4. caption picture -------------------------------------------------------------------
$resources = Join-Path $gallery "WLXPhotoLibraryResources.dll"
Write-Host "Replacing picture PNG 7030 in WLXPhotoLibraryResources.dll..."
$png = [System.IO.File]::ReadAllBytes($DarkPng)
Set-PngResource $resources $png
$back = Get-PngResource $resources
if ([Convert]::ToBase64String($back) -ne [Convert]::ToBase64String($png)) { throw "The picture read back from the DLL differs." }

# ---- 5. installer database ----------------------------------------------------------------
Write-Host "Updating the file size in the installer database..."
Set-MsiFileSize $imageMsi.FullName "WLXPhotoLibraryResources.dll" (Get-Item -LiteralPath $resources).Length

# ---- 6. report ----------------------------------------------------------------------------
Write-Host ""
Write-Host "Done. SHA-256 of the changed files:"
foreach ($name in "WLXPhotoLibraryMain.dll", "WLXPhotoViewer.dll", "WLXPhotoLibraryResources.dll") {
    Write-Host ("  {0}  {1}" -f (Get-Sha256 (Join-Path $gallery $name)), $name)
}
Write-Host ""
Write-Host "Install with:"
Write-Host "  msiexec /i `"$($imageMsi.FullName)`""
Write-Host "Photo Gallery 2008 also needs SQL Server Compact 3.1 to be installed."
