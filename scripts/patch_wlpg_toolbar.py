"""Recolour the WLPG 2008 command bar from blue to the dark Vista Photo Gallery look.

The bar background is painted by one function (FUN_63d2bed5 in WLXPhotoLibraryMain.dll,
the same code is compiled into WLXPhotoViewer.dll) with GDI+ gradients whose ARGB
colours are immediates of MOV instructions. This script rewrites those immediates.

Usage: py -I patch_wlpg_toolbar.py <dll> [<dll> ...]
Safe to re-run: a DLL that already carries the new colours is reported and left alone.
"""
import sys

# (instruction prefix, old RGB, new RGB, what it paints) in address order.
# Branch B is the look used on Vista and later, branch A the one with the custom caption.
PATCHES = [
    ("c745b8", "3586b9", "353843", "B upper gradient, bottom"),
    ("c745e8", "7db1d2", "57607f", "B upper gradient, top"),
    ("c745e8", "64a5c9", "1a1c25", "B lower gradient, bottom"),
    ("c745b8", "005c96", "0b0b0f", "B lower gradient, top"),
    ("c745ec", "80b3d3", "4a5062", "B upper inner border, bottom"),
    ("c745e8", "afcfe4", "7a84a6", "B upper inner border, top"),
    ("c745ec", "a7d1e4", "313e60", "B lower inner border, bottom"),
    ("c745e8", "558fb4", "15161c", "B lower inner border, top"),
    ("c745ec", "999999", "6b7080", "B outer frame"),
    ("c745ec", "6caace", "20222b", "A gradient, bottom"),
    ("c745e8", "005c96", "0b0b0f", "A gradient, top"),
    ("bb", "a9d2e5", "313e60", "A border bottom / separator line"),
    ("c745e8", "558fb4", "15161c", "A left border, top"),
    ("c745e8", "558fb4", "15161c", "A right border, top"),
]
ANCHOR = bytes.fromhex("c745b8b98635ff")      # first colour of the function, unique in the file
ANCHOR_NEW = bytes.fromhex("c745b8433835ff")
WINDOW = 0x600                                # all immediates lie within this many bytes


def imm(rgb):
    """RGB hex string -> little-endian ARGB immediate with alpha FF."""
    return bytes.fromhex(rgb)[::-1] + b"\xff"


def patch(path):
    data = bytearray(open(path, "rb").read())
    if data.count(ANCHOR) == 0 and data.count(ANCHOR_NEW) == 1:
        print("%s: already patched" % path)
        return
    if data.count(ANCHOR) != 1:
        raise SystemExit("%s: anchor found %d times, expected 1" % (path, data.count(ANCHOR)))
    pos = data.index(ANCHOR)
    end = pos + WINDOW
    for prefix, old, new, what in PATCHES:
        pat = bytes.fromhex(prefix) + imm(old)
        at = data.find(pat, pos, end)
        if at < 0:
            raise SystemExit("%s: pattern for '%s' not found after 0x%x" % (path, what, pos))
        data[at + len(pat) - 4:at + len(pat)] = imm(new)
        print("  0x%06x  #%s -> #%s  %s" % (at, old.upper(), new.upper(), what))
        pos = at + len(pat)
    open(path, "wb").write(data)
    print("%s: %d immediates patched" % (path, len(PATCHES)))


if __name__ == "__main__":
    for p in sys.argv[1:]:
        patch(p)
