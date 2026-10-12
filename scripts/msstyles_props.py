"""Dump theme properties of selected classes from an extracted .msstyles.

Usage: py -I msstyles_props.py <CMAP.bin> <VARIANT NORMAL.bin> <class substring> [...]
Record layout (Windows 7+): nameID, typeID, classID, partID, stateID, shortFlag,
reserved, size (8 x int32) followed by the data padded to 8 bytes.
"""
import struct
import sys

PROP_NAMES = {
    3801: "BORDERCOLOR", 3802: "FILLCOLOR", 3803: "TEXTCOLOR", 3804: "EDGELIGHTCOLOR",
    3805: "EDGEHIGHLIGHTCOLOR", 3806: "EDGESHADOWCOLOR", 3807: "EDGEDKSHADOWCOLOR",
    3808: "EDGEFILLCOLOR", 3809: "TRANSPARENTCOLOR", 3810: "GRADIENTCOLOR1",
    3811: "GRADIENTCOLOR2", 3812: "GRADIENTCOLOR3", 3813: "GRADIENTCOLOR4",
    3814: "GRADIENTCOLOR5", 3815: "SHADOWCOLOR", 3816: "GLOWCOLOR", 3817: "TEXTBORDERCOLOR",
    3818: "TEXTSHADOWCOLOR", 3819: "GLYPHTEXTCOLOR", 3820: "GLYPHTRANSPARENTCOLOR",
    3821: "FILLCOLORHINT", 3822: "BORDERCOLORHINT", 3823: "ACCENTCOLORHINT",
    3824: "TEXTCOLORHINT", 3825: "HEADING1TEXTCOLOR", 3826: "HEADING2TEXTCOLOR",
    3827: "BODYTEXTCOLOR",
}


def main():
    cmap = open(sys.argv[1], "rb").read().decode("utf-16-le")
    classes = [c for c in cmap.split("\0")]
    # consecutive NULs are padding, not entries
    names, prev_empty = [], False
    for c in classes:
        if c:
            names.append(c)
    data = open(sys.argv[2], "rb").read()
    wanted = {i: n for i, n in enumerate(names) if any(w.lower() in n.lower() for w in sys.argv[3:])}
    print("classes in CMAP: %d; matched: %s" % (len(names), wanted))
    off, count = 0, 0
    while off + 32 <= len(data):
        name_id, type_id, class_id, part, state, short, _res, size = struct.unpack_from("<8i", data, off)
        if size < 0 or off + 32 + size > len(data):
            print("stopped at 0x%x (bad record)" % off)
            break
        body = data[off + 32:off + 32 + size]
        if class_id in wanted and type_id == 204 and size >= 4:
            r, g, b = body[0], body[1], body[2]
            print("%-28s part %2d state %2d  %-22s (%4d) = RGB(%3d,%3d,%3d)  #%02X%02X%02X" % (
                wanted[class_id], part, state, PROP_NAMES.get(name_id, "?"), name_id, r, g, b, r, g, b))
            count += 1
        off += 32 + ((size + 7) & ~7)
    print("colour records printed: %d" % count)


if __name__ == "__main__":
    main()
