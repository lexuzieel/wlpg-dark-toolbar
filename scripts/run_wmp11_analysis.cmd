@echo off
set "JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-21.0.12.101-hotspot"
set "PATH=%JAVA_HOME%\bin;%PATH%"
call "%~dp0..\tools\ghidra_12.1.4_PUBLIC\support\analyzeHeadless.bat" "%~dp0..\ghidra_proj" wmp11 -import "%~dp0..\work\wmp11\wmp.dll" "%~dp0..\work\wmp11\wmplayer.exe" -overwrite -log "%~dp0..\ghidra_proj\wmp11_analysis.log" > "%~dp0..\ghidra_proj\wmp11_console.log" 2>&1 < NUL
echo done %ERRORLEVEL% %TIME% > "%~dp0..\ghidra_proj\wmp11_DONE.txt"
