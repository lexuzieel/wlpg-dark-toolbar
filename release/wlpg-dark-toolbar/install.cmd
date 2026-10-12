@echo off
rem Dark command bar for Windows Live Photo Gallery 2008, build 12.0.1329.0201 ONLY.
rem Run as administrator, with Photo Gallery closed.
rem Replaces three DLLs in the installed folder; originals are kept in a "backup-original" subfolder.
setlocal
set "SRC=%~dp0"
set "DST=%ProgramFiles(x86)%\Windows Live\Photo Gallery"
if not exist "%DST%\WLXPhotoGallery.exe" set "DST=%ProgramFiles%\Windows Live\Photo Gallery"
if not "%~1"=="" set "DST=%~1"
if not exist "%DST%\WLXPhotoGallery.exe" (
  echo Photo Gallery not found. Pass its folder as the first argument.
  exit /b 1
)
echo Target: %DST%
taskkill /im WLXPhotoGallery.exe /f >nul 2>&1
if not exist "%DST%\backup-original" (
  mkdir "%DST%\backup-original" || (echo Cannot write to target - run as administrator. & exit /b 1)
  for %%F in (WLXPhotoLibraryMain.dll WLXPhotoViewer.dll WLXPhotoLibraryResources.dll) do copy /y "%DST%\%%F" "%DST%\backup-original\%%F" >nul
)
for %%F in (WLXPhotoLibraryMain.dll WLXPhotoViewer.dll WLXPhotoLibraryResources.dll) do (
  copy /y "%SRC%%%F" "%DST%\%%F" >nul || (echo Failed to replace %%F & exit /b 1)
)
echo Done. To undo, copy the files from "%DST%\backup-original" back.
