"""Debug helper: summarise the property stream of an extracted .msstyles.

Usage: py -I msstyles_debug.py <CMAP.bin> <VARIANT NORMAL.bin> <nameID> [<nameID> ...]
Prints the first records, and every record whose nameID is one of the given ids.
"""
import collections
import struct
import sys

cmap = open(sys.argv[1], "rb").read().decode("utf-16-le")
names = [c for c in cmap.split("\0") if c]
data = open(sys.argv[2], "rb").read()
ids = {int(a) for a in sys.argv[3:]}
print("first 64 bytes:", data[:64].hex())
off, n = 0, 0
types = collections.Counter()
while off + 32 <= len(data):
    name_id, type_id, class_id, part, state, short, res, size = struct.unpack_from("<8i", data, off)
    if size < 0 or off + 32 + size > len(data):
        print("bad record at 0x%x: %s" % (off, data[off:off + 32].hex()))
        break
    if n < 5:
        print("rec", n, (name_id, type_id, class_id, part, state, short, res, size))
    types[type_id] += 1
    if name_id in ids:
        body = data[off + 32:off + 32 + size]
        cls = names[class_id] if 0 <= class_id < len(names) else "?"
        print("name %d type %d class %3d %-30s part %2d state %2d  data %s" % (
            name_id, type_id, class_id, cls, part, state, body[:8].hex()))
    off += 32 + ((size + 7) & ~7)
    n += 1
print("records:", n, "types:", dict(types))
print("classes around MediaStyle:", [(i, c) for i, c in enumerate(names) if "edia" in c])
