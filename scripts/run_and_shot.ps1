# Launches an exe, waits for its main window and saves a picture of that window only.
# The window is rendered with PrintWindow, so other windows overlapping it are never captured.
# Usage: run_and_shot.ps1 -Exe <path> -Out <png> [-ExeArgs <string>] [-Wait 15] [-CropHeight <px>] [-KeepOpen]
param(
    [Parameter(Mandatory)][string]$Exe,
    [Parameter(Mandatory)][string]$Out,
    [string]$ExeArgs = "",
    [int]$Wait = 15,
    [int]$CropHeight = 0,
    [switch]$KeepOpen
)
Add-Type -AssemblyName System.Drawing
Add-Type -Namespace W -Name U -MemberDefinition @'
[StructLayout(LayoutKind.Sequential)] public struct RECT { public int L, T, R, B; }
[DllImport("user32.dll")] public static extern bool GetWindowRect(IntPtr h, out RECT r);
[DllImport("user32.dll")] public static extern bool PrintWindow(IntPtr h, IntPtr hdc, uint flags);
[DllImport("user32.dll")] public static extern bool SetProcessDPIAware();
'@
[void][W.U]::SetProcessDPIAware()
$sp = @{ FilePath = $Exe; WorkingDirectory = (Split-Path $Exe); PassThru = $true }
if ($ExeArgs) { $sp.ArgumentList = $ExeArgs }
$p = Start-Process @sp
$deadline = (Get-Date).AddSeconds($Wait)
while ((Get-Date) -lt $deadline) {
    Start-Sleep -Milliseconds 500
    $p.Refresh()
    if ($p.HasExited) { "process exited early, code $($p.ExitCode)"; return }
    if ($p.MainWindowHandle -ne [IntPtr]::Zero) { break }
}
if ($p.MainWindowHandle -eq [IntPtr]::Zero) { "no main window after $Wait s (pid $($p.Id) still running)"; return }
Start-Sleep -Seconds 4
$h = $p.MainWindowHandle
$r = New-Object W.U+RECT
[void][W.U]::GetWindowRect($h, [ref]$r)
$w = $r.R - $r.L; $ht = $r.B - $r.T
$bmp = New-Object System.Drawing.Bitmap($w, $ht)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$hdc = $g.GetHdc()
# 2 = PW_RENDERFULLCONTENT: ask DWM for the window's own content
$ok = [W.U]::PrintWindow($h, $hdc, 2)
$g.ReleaseHdc($hdc)
$g.Dispose()
if ($CropHeight -ne 0 -and [math]::Abs($CropHeight) -lt $ht) {
    # positive: keep the top strip; negative: keep the bottom strip
    $top = if ($CropHeight -gt 0) { 0 } else { $ht + $CropHeight }
    $crop = $bmp.Clone((New-Object System.Drawing.Rectangle(0, $top, $w, [math]::Abs($CropHeight))), $bmp.PixelFormat)
    $bmp.Dispose(); $bmp = $crop
}
$bmp.Save($Out, [System.Drawing.Imaging.ImageFormat]::Png)
"pid $($p.Id)  title [$($p.MainWindowTitle)]  window ${w}x${ht}  PrintWindow=$ok  saved $($bmp.Width)x$($bmp.Height) -> $Out"
$bmp.Dispose()
if (-not $KeepOpen) { [void]$p.CloseMainWindow(); Start-Sleep -Seconds 2; if (-not $p.HasExited) { $p.Kill() } }
