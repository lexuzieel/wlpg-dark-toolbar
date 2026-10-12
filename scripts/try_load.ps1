# Run with 32-bit Windows PowerShell. Tries to LoadLibrary each given DLL from -Dir
# and reports the Win32 error, to find which dependency breaks startup.
param([Parameter(Mandatory)][string]$Dir, [Parameter(Mandatory)][string[]]$Names)
Add-Type -Namespace W -Name K -MemberDefinition @'
[DllImport("kernel32.dll", CharSet=CharSet.Unicode, SetLastError=true)] public static extern IntPtr LoadLibraryW(string p);
[DllImport("kernel32.dll", CharSet=CharSet.Unicode, SetLastError=true)] public static extern bool SetDllDirectoryW(string p);
[DllImport("kernel32.dll", CharSet=CharSet.Ansi, SetLastError=true)] public static extern IntPtr GetProcAddress(IntPtr h, string n);
[DllImport("kernel32.dll")] public static extern uint SetErrorMode(uint m);
'@
"process is 64-bit: " + [Environment]::Is64BitProcess
[void][W.K]::SetErrorMode(1)
[void][W.K]::SetDllDirectoryW($Dir)
foreach ($n in $Names) {
    $h = [W.K]::LoadLibraryW((Join-Path $Dir $n))
    $e = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
    if ($h -eq [IntPtr]::Zero) {
        "{0,-34} FAILED  error {1}: {2}" -f $n, $e, ([ComponentModel.Win32Exception]$e).Message
    } else {
        $r = [W.K]::GetProcAddress($h, "RunAsStandAlone")
        "{0,-34} loaded at 0x{1:X8}  RunAsStandAlone={2}" -f $n, $h.ToInt64(), ($r -ne [IntPtr]::Zero)
    }
}
