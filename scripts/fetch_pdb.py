"""Download public PDBs from the Microsoft symbol server for the given PE files.

Usage: py -I fetch_pdb.py <symbol_dir> <pe> [<pe> ...]
Symbols are stored in the standard symstore layout: <symbol_dir>/<pdb>/<GUID><age>/<pdb>
"""
import os
import struct
import sys
import urllib.request

SERVER = "https://msdl.microsoft.com/download/symbols"


def codeview_info(path):
    with open(path, "rb") as f:
        data = f.read()
    pe = struct.unpack_from("<I", data, 0x3C)[0]
    if data[pe:pe + 4] != b"PE\0\0":
        return None
    nsec = struct.unpack_from("<H", data, pe + 6)[0]
    optsize = struct.unpack_from("<H", data, pe + 20)[0]
    opt = pe + 24
    magic = struct.unpack_from("<H", data, opt)[0]
    ddir = opt + (96 if magic == 0x10B else 112)
    dbg_rva, dbg_size = struct.unpack_from("<II", data, ddir + 6 * 8)
    if not dbg_rva:
        return None
    sections = []
    sec = opt + optsize
    for i in range(nsec):
        vsize, va, rsize, raw = struct.unpack_from("<IIII", data, sec + i * 40 + 8)
        sections.append((va, max(vsize, rsize), raw))

    def off(rva):
        for va, size, raw in sections:
            if va <= rva < va + size:
                return rva - va + raw
        return None

    base = off(dbg_rva)
    if base is None:
        return None
    for i in range(dbg_size // 28):
        typ, size, _, raw = struct.unpack_from("<IIII", data, base + i * 28 + 12)
        if typ != 2:
            continue
        sig = data[raw:raw + 4]
        if sig == b"RSDS":
            d1, d2, d3 = struct.unpack_from("<IHH", data, raw + 4)
            d4 = data[raw + 12:raw + 20]
            age = struct.unpack_from("<I", data, raw + 20)[0]
            name = data[raw + 24:data.index(b"\0", raw + 24)].decode("ascii", "replace")
            guid = "%08X%04X%04X%s" % (d1, d2, d3, d4.hex().upper())
            return os.path.basename(name.replace("\\", "/")), "%s%X" % (guid, age)
        if sig == b"NB10":
            ts, age = struct.unpack_from("<II", data, raw + 8)
            name = data[raw + 16:data.index(b"\0", raw + 16)].decode("ascii", "replace")
            return os.path.basename(name.replace("\\", "/")), "%08X%X" % (ts, age)
    return None


def main():
    symdir = sys.argv[1]
    for path in sys.argv[2:]:
        label = os.path.basename(path)
        info = codeview_info(path)
        if not info:
            print("%-32s no CodeView record" % label)
            continue
        pdb, key = info
        dest = os.path.join(symdir, pdb, key, pdb)
        if os.path.exists(dest):
            print("%-32s %s/%s already present" % (label, pdb, key))
            continue
        got = False
        for name in (pdb, pdb[:-1] + "_"):
            url = "%s/%s/%s/%s" % (SERVER, pdb, key, name)
            req = urllib.request.Request(url, headers={"User-Agent": "Microsoft-Symbol-Server/10.0.0.0"})
            try:
                with urllib.request.urlopen(req, timeout=120) as r:
                    body = r.read()
            except Exception as e:
                last = e
                continue
            os.makedirs(os.path.dirname(dest), exist_ok=True)
            out = dest if name == pdb else dest[:-1] + "_"
            with open(out, "wb") as f:
                f.write(body)
            print("%-32s %s/%s OK %d bytes (%s)" % (label, pdb, key, len(body), name))
            got = True
            break
        if not got:
            print("%-32s %s/%s NOT FOUND (%s)" % (label, pdb, key, last))


if __name__ == "__main__":
    main()
