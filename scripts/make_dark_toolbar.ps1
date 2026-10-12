# Draws the dark (Windows Vista Photo Gallery style) replacement for the WLPG 2008
# command bar background, resource PNG 7030 (596x30) of WLXPhotoLibraryResources.dll.
# Colours follow the vertical profile sampled from a Vista Photo Gallery screenshot:
# a blue-grey upper half, a near-black lower half and a dark blue bottom line.
param([Parameter(Mandatory)][string]$Out, [int]$Width = 596, [int]$Height = 30)
Add-Type -AssemblyName System.Drawing

function Lerp([int[]]$a, [int[]]$b, [double]$t) {
    0..2 | ForEach-Object { [int][math]::Round($a[$_] + ($b[$_] - $a[$_]) * $t) }
}

$edgeTop    = 0x78, 0x7D, 0x8A   # frame line above the bar
$highlight  = 0x6C, 0x76, 0x97   # 1px highlight under the frame
$upperFrom  = 0x57, 0x60, 0x7F
$upperTo    = 0x35, 0x38, 0x43
$lowerFrom  = 0x0B, 0x0B, 0x0F
$lowerTo    = 0x18, 0x1A, 0x22
$edgeBottom = 0x31, 0x3E, 0x60

$split = [int]($Height / 2)      # first row of the lower (glossy dark) half
$bmp = New-Object System.Drawing.Bitmap($Width, $Height, [System.Drawing.Imaging.PixelFormat]::Format24bppRgb)
for ($y = 0; $y -lt $Height; $y++) {
    if ($y -eq 0) { $c = $edgeTop }
    elseif ($y -eq 1) { $c = $highlight }
    elseif ($y -eq $Height - 1) { $c = $edgeBottom }
    elseif ($y -lt $split) { $c = Lerp $upperFrom $upperTo (($y - 2) / [double]($split - 3)) }
    else { $c = Lerp $lowerFrom $lowerTo (($y - $split) / [double]($Height - 2 - $split)) }
    $color = [System.Drawing.Color]::FromArgb($c[0], $c[1], $c[2])
    for ($x = 0; $x -lt $Width; $x++) { $bmp.SetPixel($x, $y, $color) }
}
$bmp.Save($Out, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
"$Out ${Width}x${Height}"
