// Decompiles every virtual method of the classes whose vftable namespace matches a
// substring, plus their callees up to a given depth, into one text file.
// Args: <namespace substring> <output file> [callee depth, default 2]
//@category RE

import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;

public class DumpClass extends GhidraScript {

	@Override
	public void run() throws Exception {
		String[] args = getScriptArgs();
		String needle = args[0];
		String outPath = args[1];
		int maxDepth = args.length > 2 ? Integer.parseInt(args[2]) : 2;

		Memory mem = currentProgram.getMemory();
		int ptrSize = currentProgram.getDefaultPointerSize();
		Map<Function, String> roots = new LinkedHashMap<>();

		try (PrintWriter out = new PrintWriter(outPath, "UTF-8")) {
			out.println("// program: " + currentProgram.getName() + "  image base: " +
				currentProgram.getImageBase());
			SymbolIterator it = currentProgram.getSymbolTable().getAllSymbols(true);
			while (it.hasNext()) {
				Symbol s = it.next();
				if (!s.getName().startsWith("vftable")) {
					continue;
				}
				String ns = s.getParentNamespace().getName(true);
				if (!ns.contains(needle)) {
					continue;
				}
				out.println("// VTABLE " + ns + " @ " + s.getAddress());
				Address a = s.getAddress();
				for (int i = 0; i < 400; i++) {
					Address slot = a.add((long) i * ptrSize);
					if (i > 0 && currentProgram.getSymbolTable().getPrimarySymbol(slot) != null) {
						break;
					}
					long v = mem.getInt(slot) & 0xffffffffL;
					Address target = toAddr(v);
					Function f = getFunctionAt(target);
					if (f == null) {
						break;
					}
					out.println("//   [" + i + "] " + target + " " + f.getName(true));
					roots.putIfAbsent(f, ns + " slot " + i);
				}
			}

			DecompInterface dec = new DecompInterface();
			dec.openProgram(currentProgram);
			Set<Function> seen = new LinkedHashSet<>();
			ArrayDeque<Object[]> queue = new ArrayDeque<>();
			for (Map.Entry<Function, String> e : roots.entrySet()) {
				queue.add(new Object[] { e.getKey(), 0, e.getValue() });
			}
			while (!queue.isEmpty()) {
				Object[] item = queue.poll();
				Function f = (Function) item[0];
				int depth = (Integer) item[1];
				if (f.isThunk() || f.isExternal() || !seen.add(f)) {
					continue;
				}
				out.println();
				out.println("// ===== " + f.getName(true) + " @ " + f.getEntryPoint() + "  depth " +
					depth + "  via " + item[2] + "  size " + f.getBody().getNumAddresses());
				DecompileResults r = dec.decompileFunction(f, 60, monitor);
				if (r != null && r.decompileCompleted()) {
					out.println(r.getDecompiledFunction().getC());
				}
				else {
					out.println("// decompile failed");
				}
				if (depth < maxDepth) {
					for (Function c : f.getCalledFunctions(monitor)) {
						queue.add(new Object[] { c, depth + 1, f.getName() });
					}
				}
			}
			out.println("// functions dumped: " + seen.size());
			println("DumpClass: " + seen.size() + " functions -> " + outPath);
		}
	}
}
