// Decompiles the functions at the given addresses and lists their callers.
// Args: <output file> <hex address> [<hex address> ...]
//@category RE

import java.io.PrintWriter;
import java.util.TreeSet;

import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.Reference;

public class DumpFuncs extends GhidraScript {

	@Override
	public void run() throws Exception {
		String[] args = getScriptArgs();
		DecompInterface dec = new DecompInterface();
		dec.openProgram(currentProgram);
		try (PrintWriter out = new PrintWriter(args[0], "UTF-8")) {
			out.println("// program: " + currentProgram.getName());
			for (int i = 1; i < args.length; i++) {
				Function f;
				if (args[i].matches("[0-9a-fA-F]{6,8}")) {
					f = getFunctionContaining(toAddr(Long.parseLong(args[i], 16)));
				}
				else {
					// not an address: treat as a symbol (e.g. export) name
					java.util.List<Function> named = getGlobalFunctions(args[i]);
					f = named.isEmpty() ? null : named.get(0);
				}
				if (f == null) {
					out.println("\n// ===== no function at " + args[i]);
					continue;
				}
				TreeSet<String> callers = new TreeSet<>();
				for (Reference ref : getReferencesTo(f.getEntryPoint())) {
					Function c = getFunctionContaining(ref.getFromAddress());
					callers.add((c != null ? c.getName(true) : "<data>") + "@" + ref.getFromAddress() +
						"(" + ref.getReferenceType() + ")");
				}
				out.println("\n// ===== " + f.getName(true) + " @ " + f.getEntryPoint() + "  size " +
					f.getBody().getNumAddresses());
				out.println("// callers: " + callers);
				DecompileResults r = dec.decompileFunction(f, 90, monitor);
				out.println(r != null && r.decompileCompleted() ? r.getDecompiledFunction().getC()
						: "// decompile failed");
			}
		}
		println("DumpFuncs: " + (args.length - 1) + " -> " + args[0]);
	}
}
