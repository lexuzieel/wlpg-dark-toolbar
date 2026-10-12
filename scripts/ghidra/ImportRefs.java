// Lists every function that calls one of the named imported APIs, with call-site addresses.
// Args: <output file> <api name> [<api name> ...]
//@category RE

import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeMap;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;

public class ImportRefs extends GhidraScript {

	@Override
	public void run() throws Exception {
		String[] args = getScriptArgs();
		Set<String> names = new HashSet<>(Arrays.asList(args).subList(1, args.length));
		TreeMap<String, StringBuilder> byFunc = new TreeMap<>();
		SymbolIterator it = currentProgram.getSymbolTable().getAllSymbols(true);
		while (it.hasNext()) {
			Symbol s = it.next();
			String n = s.getName();
			if (!names.contains(n) && !(n.startsWith("__imp_") && names.contains(n.substring(6)))) {
				continue;
			}
			for (Reference ref : getReferencesTo(s.getAddress())) {
				Function f = getFunctionContaining(ref.getFromAddress());
				if (f == null) {
					continue;
				}
				String key = f.getEntryPoint() + " " + f.getName(true);
				byFunc.computeIfAbsent(key, k -> new StringBuilder())
						.append("  ").append(n.replace("__imp_", "")).append("@").append(ref.getFromAddress());
			}
		}
		try (PrintWriter out = new PrintWriter(args[0], "UTF-8")) {
			out.println("// program: " + currentProgram.getName());
			byFunc.forEach((k, v) -> out.println(k + v));
		}
		println("ImportRefs: " + byFunc.size() + " functions -> " + args[0]);
	}
}
