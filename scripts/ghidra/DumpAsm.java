// Prints a disassembly listing (address, file offset, bytes, instruction) for functions,
// and for plain data addresses reports the nearest preceding labelled symbol.
// Args: <output file> <hex address> [<hex address> ...]
//@category RE

import java.io.PrintWriter;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.symbol.Symbol;

public class DumpAsm extends GhidraScript {

	@Override
	public void run() throws Exception {
		String[] args = getScriptArgs();
		Memory mem = currentProgram.getMemory();
		try (PrintWriter out = new PrintWriter(args[0], "UTF-8")) {
			out.println("; program: " + currentProgram.getName() + "  image base " +
				currentProgram.getImageBase());
			for (int i = 1; i < args.length; i++) {
				Address a = toAddr(Long.parseLong(args[i], 16));
				Function f = getFunctionContaining(a);
				if (f == null) {
					Address p = a;
					Symbol s = null;
					for (int k = 0; k < 4096 && s == null; k++, p = p.subtract(1)) {
						Symbol c = currentProgram.getSymbolTable().getPrimarySymbol(p);
						if (c != null && !c.getName().startsWith("PTR_") && !c.getName().startsWith("DAT_")) {
							s = c;
						}
					}
					out.println("\n; data " + a + " -> nearest symbol: " +
						(s == null ? "?" : s.getName(true) + " @ " + s.getAddress()));
					continue;
				}
				out.println("\n; ===== " + f.getName(true) + " @ " + f.getEntryPoint() + "  conv " +
					f.getCallingConventionName() + "  purge " + f.getStackPurgeSize());
				InstructionIterator it = currentProgram.getListing().getInstructions(f.getBody(), true);
				while (it.hasNext()) {
					Instruction ins = it.next();
					Address ia = ins.getAddress();
					long off = mem.getAddressSourceInfo(ia).getFileOffset();
					StringBuilder hex = new StringBuilder();
					for (byte b : ins.getBytes()) {
						hex.append(String.format("%02x", b));
					}
					out.println(String.format("%s  %06x  %-24s %s", ia, off, hex, ins));
				}
			}
		}
		println("DumpAsm: " + (args.length - 1) + " -> " + args[0]);
	}
}
