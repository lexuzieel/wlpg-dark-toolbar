# Builds a labelled contact sheet from a folder of PNGs.
# Usage: contact_sheet.ps1 -Dir <png dir> -Out <png> [-Filter <regex>] [-Scale 2] [-Width 1500] [-Bg 808080]
param(
    [Parameter(Mandatory)][string]$Dir,
    [Parameter(Mandatory)][string]$Out,
    [string]$Filter = ".",
    [int]$Scale = 2,
    [int]$Width = 1500,
    [string]$Bg = "808080"
)
Add-Type -AssemblyName System.Drawing
$files = Get-ChildItem $Dir -Filter *.png | Where-Object { $_.BaseName -match $Filter } | Sort-Object { [int](($_.BaseName -replace '\D', '') + '0') }
$items = foreach ($f in $files) {
    try { $img = [System.Drawing.Image]::FromFile($f.FullName) } catch { continue }
    [pscustomobject]@{ Name = ($f.BaseName -replace '^PNG', '' -replace '_1$', ''); Img = $img }
}
$pad = 8; $labelH = 14
$font = New-Object System.Drawing.Font("Consolas", 8)
# layout pass
$x = $pad; $y = $pad; $rowH = 0; $pos = @()
foreach ($it in $items) {
    $w = [math]::Max($it.Img.Width * $Scale, 46); $h = $it.Img.Height * $Scale + $labelH
    if ($x + $w + $pad -gt $Width) { $x = $pad; $y += $rowH + $pad; $rowH = 0 }
    $pos += , @($x, $y)
    $x += $w + $pad; if ($h -gt $rowH) { $rowH = $h }
}
$height = $y + $rowH + $pad
$bmp = New-Object System.Drawing.Bitmap($Width, $height)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.Clear([System.Drawing.ColorTranslator]::FromHtml("#$Bg"))
$g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::NearestNeighbor
$g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::Half
for ($i = 0; $i -lt $items.Count; $i++) {
    $it = $items[$i]; $px = $pos[$i][0]; $py = $pos[$i][1]
    $g.DrawString($it.Name, $font, [System.Drawing.Brushes]::White, $px - 2, $py - 1)
    $g.DrawImage($it.Img, $px, $py + $labelH, $it.Img.Width * $Scale, $it.Img.Height * $Scale)
    $it.Img.Dispose()
}
$g.Dispose()
$bmp.Save($Out, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
"{0}: {1} images, {2}x{3}" -f $Out, $items.Count, $Width, $height
