// program: WLXPhotoGallery.exe

// ===== FUN_01001bb6 @ 01001bb6  size 561
// callers: [___tmainCRTStartup@010062df(UNCONDITIONAL_CALL)]

void FUN_01001bb6(HMODULE param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  FARPROC pFVar1;
  LSTATUS LVar2;
  int iVar3;
  DWORD DVar4;
  wchar_t *pwVar5;
  WCHAR *pWVar6;
  UINT uMode;
  HMODULE pHVar7;
  undefined1 auStack_24c [4];
  HKEY local_248;
  int iStack_244;
  int local_240;
  HKEY local_23c;
  HMODULE local_238;
  char local_234;
  DWORD aDStack_230 [2];
  HMODULE local_228;
  INITCOMMONCONTROLSEX local_224;
  undefined4 local_21c;
  WCHAR aWStack_218 [262];
  uint local_c;
  
  local_c = DAT_01009028 ^ (uint)auStack_24c;
  local_228 = param_1;
  local_21c = param_3;
  local_240 = 0;
  local_224.dwSize = 8;
  local_224.dwICC = 0xff;
  InitCommonControlsEx(&local_224);
  FUN_01001e4a(L"kernel32");
  pHVar7 = local_238;
  if ((local_238 == (HMODULE)0x0) || (local_234 != '\0')) {
    pFVar1 = (FARPROC)0x0;
  }
  else {
    pFVar1 = GetProcAddress(local_238,"RegisterApplicationRestart");
  }
  if (pFVar1 != (FARPROC)0x0) {
    (*pFVar1)(&DAT_010014cc,0);
  }
  local_248 = (HKEY)0x0;
  local_23c = (HKEY)0x0;
  LVar2 = RegOpenKeyExW((HKEY)0x80000002,L"Software\\Microsoft\\Windows Live\\Photo Gallery",0,
                        0x20019,&local_23c);
  if (LVar2 == 0) {
    local_248 = local_23c;
    iStack_244 = 0;
    aDStack_230[1] = 4;
    LVar2 = RegQueryValueExW(local_23c,L"SystemPropSys",(LPDWORD)0x0,aDStack_230,(LPBYTE)&iStack_244
                             ,aDStack_230 + 1);
    if ((((LVar2 == 0) && (aDStack_230[0] == 4)) && (iStack_244 != 0)) &&
       (iVar3 = FUN_01002065(L"propsys.dll",0xb61,0x33), iVar3 != 0)) {
      if (local_248 != (HKEY)0x0) {
        RegCloseKey(local_248);
      }
      if (pHVar7 != (HMODULE)0x0) {
        FreeLibrary(pHVar7);
      }
      goto LAB_01001dd0;
    }
  }
  aWStack_218[0] = L'\0';
  DVar4 = GetModuleFileNameW(local_228,aWStack_218,0x104);
  if (DVar4 == 0) {
    aWStack_218[0] = L'\0';
  }
  pwVar5 = wcsrchr(aWStack_218,L'\\');
  if (pwVar5 != (wchar_t *)0x0) {
    pwVar5[1] = L'\0';
  }
  iVar3 = 0x104;
  pWVar6 = aWStack_218;
  do {
    if (*pWVar6 == L'\0') break;
    pWVar6 = pWVar6 + 1;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  if (iVar3 != 0) {
    FUN_01001dec(aWStack_218 + (0x104 - iVar3));
  }
  uMode = SetErrorMode(1);
  pHVar7 = LoadLibraryW(aWStack_218);
  if ((pHVar7 == (HMODULE)0x0) && (DVar4 = GetLastError(), DVar4 == 0x7e)) {
    FUN_01002065(L"windowscodecs.dll",0xb60,0x34);
  }
  SetErrorMode(uMode);
  if (pHVar7 != (HMODULE)0x0) {
    pFVar1 = GetProcAddress(pHVar7,"RunAsStandAlone");
    if (pFVar1 != (FARPROC)0x0) {
      local_240 = (*pFVar1)(local_21c,param_4);
    }
    FreeLibrary(pHVar7);
  }
  if (local_248 != (HKEY)0x0) {
    RegCloseKey(local_248);
  }
  if (local_238 != (HMODULE)0x0) {
    FreeLibrary(local_238);
  }
LAB_01001dd0:
  __security_check_cookie(local_c ^ (uint)auStack_24c);
  return;
}



// ===== FUN_0100268b @ 0100268b  size 500
// callers: [FUN_01002615@01002640(UNCONDITIONAL_CALL)]

/* WARNING: Function: __SEH_prolog4_GS replaced with injection: SEH_prolog4 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_0100268b(void)

{
  int iVar1;
  code *pcVar2;
  DWORD DVar3;
  undefined4 local_284 [8];
  undefined4 local_264;
  undefined4 local_260;
  WCHAR *local_25c;
  undefined4 local_250;
  HMODULE local_248;
  int local_244 [2];
  HMODULE local_23c;
  undefined4 local_238;
  WCHAR local_234 [260];
  short local_2c;
  undefined2 local_2a;
  undefined4 uStack_c;
  undefined *local_8;
  
  local_8 = &DAT_01007648;
  uStack_c = 0x100269a;
  local_238 = 0;
  if ((((DAT_010096c0 != 0) || (DAT_0100905c != -1)) ||
      ((DAT_010096b0 == (code *)0x0 &&
       (DAT_010096b0 = (code *)FUN_01002890("QueryActCtxW"), DAT_010096b0 == (code *)0x0)))) ||
     (iVar1 = (*DAT_010096b0)(0x80000010,&DAT_0100905c,0,1,local_244,8,0), iVar1 == 0))
  goto LAB_01002877;
  if (local_244[0] == 0) {
    pcVar2 = (code *)FUN_01002890("GetModuleHandleExW");
    if ((pcVar2 == (code *)0x0) || (iVar1 = (*pcVar2)(6,&DAT_0100905c,&local_23c), iVar1 == 0))
    goto LAB_01002877;
    local_2a = 0;
    local_2c = 0;
    DVar3 = GetModuleFileNameW(local_23c,local_234,0x105);
    if (DVar3 == 0) goto LAB_01002877;
    if (local_2c != 0) {
      SetLastError(0x6f);
      goto LAB_01002877;
    }
    local_264 = 0x20;
    local_260 = 0x88;
    local_25c = local_234;
    local_250 = 3;
    local_248 = local_23c;
    if ((DAT_010096b4 == (code *)0x0) &&
       (DAT_010096b4 = (code *)FUN_01002890("CreateActCtxW"), DAT_010096b4 == (code *)0x0)) {
      local_244[0] = -1;
    }
    else {
      local_244[0] = (*DAT_010096b4)(&local_264);
    }
    if (local_244[0] == -1) {
      DVar3 = GetLastError();
      if ((((DVar3 != 0x714) && (DVar3 != 0x715)) && (DVar3 != 0x717)) && (DVar3 != 0x716))
      goto LAB_01002877;
      local_244[0] = 0;
    }
    _DAT_010096c4 = 1;
  }
  DAT_0100905c = local_244[0];
  iVar1 = FUN_0100296d();
  if (iVar1 != 0) {
    local_8 = (undefined *)0x0;
    local_284[0] = 0x40;
    if (((DAT_010096a8 != (code *)0x0) ||
        (DAT_010096a8 = (code *)FUN_01002890("FindActCtxSectionStringW"),
        DAT_010096a8 != (code *)0x0)) &&
       (iVar1 = (*DAT_010096a8)(0,0,2,L"Comctl32.dll",local_284), iVar1 != 0)) {
      LoadLibraryW(L"Comctl32.dll");
    }
    local_8 = (undefined *)0xfffffffe;
    FUN_0100287f();
  }
LAB_01002877:
  FUN_01006fec();
  return;
}



// ===== FUN_01002bc2 @ 01002bc2  size 235
// callers: [FUN_01002cb2@01002d0e(UNCONDITIONAL_CALL)]

void FUN_01002bc2(void)

{
  int iVar1;
  BOOL BVar2;
  HMODULE hInstance;
  LPWSTR unaff_EDI;
  undefined4 local_214;
  WCHAR local_210 [260];
  uint local_8;
  
  local_8 = DAT_01009028 ^ (uint)&stack0xfffffffc;
  if (unaff_EDI != (LPWSTR)0x0) {
    local_214 = 0x104;
    iVar1 = MsiLocateComponentW(L"{84FBA192-4F8D-4a5d-94DE-083446ACC1D0}",local_210,&local_214);
    if (((iVar1 == 3) && (BVar2 = PathRemoveFileSpecW(local_210), BVar2 != 0)) &&
       (BVar2 = PathAppendW(local_210,L"RegRes.dll"), BVar2 != 0)) {
      hInstance = FUN_01002a45(local_210);
      if (hInstance == (HMODULE)0x0) {
        GetLastError();
      }
      else {
        iVar1 = LoadStringW(hInstance,100,unaff_EDI,0x54);
        if (iVar1 == 0) {
          GetLastError();
        }
        FreeLibrary(hInstance);
      }
    }
  }
  __security_check_cookie(local_8 ^ (uint)&stack0xfffffffc);
  return;
}



// ===== FUN_01002b2d @ 01002b2d  size 144
// callers: [FUN_01002cb2@01002cff(UNCONDITIONAL_CALL)]

uint FUN_01002b2d(void)

{
  void *in_EAX;
  uint uVar1;
  bool bVar2;
  HKEY local_c;
  HKEY local_8;
  
  if (in_EAX == (void *)0x0) {
    uVar1 = 0x80004003;
  }
  else {
    memset(in_EAX,0,0xa8);
    local_8 = (HKEY)0x0;
    local_c = (HKEY)0x0;
    uVar1 = RegOpenKeyExW((HKEY)0x80000002,L"Software\\Microsoft\\Windows Live\\Installer",0,0x20019
                          ,&local_c);
    if (uVar1 == 0) {
      uVar1 = 0;
      local_8 = local_c;
    }
    bVar2 = false;
    if (uVar1 == 0) {
      local_c = (HKEY)0x54;
      uVar1 = FUN_01002e1d(&local_8);
      bVar2 = uVar1 == 0;
    }
    if (!bVar2 && -1 < (int)uVar1) {
      uVar1 = uVar1 & 0xffff | 0x80070000;
    }
    if (local_8 != (HKEY)0x0) {
      RegCloseKey(local_8);
    }
  }
  return uVar1;
}



// ===== FUN_01001ed2 @ 01001ed2  size 360
// callers: [FUN_01002065@0100209a(UNCONDITIONAL_CALL)]

/* WARNING: Function: __EH_prolog3_catch replaced with injection: EH_prolog3 */
/* WARNING: Function: __EH_epilog3 replaced with injection: EH_epilog3 */
/* WARNING: Removing unreachable block (ram,0x01001fef) */
/* WARNING: Removing unreachable block (ram,0x01001ff6) */
/* WARNING: Removing unreachable block (ram,0x01001ff1) */
/* WARNING: Removing unreachable block (ram,0x01001ff9) */

int FUN_01001ed2(uint param_1,undefined4 param_2)

{
  int iVar1;
  HINSTANCE pHVar2;
  long lVar3;
  HMODULE local_24;
  int local_1c;
  
  local_1c = FUN_01002cb2();
  if (local_1c < 0) {
    CoTaskMemFree((LPVOID)0x0);
  }
  else {
    local_1c = 0;
    FUN_01001e4a(L"WLXPhotoLibraryResources.dll");
    if (local_24 != (HMODULE)0x0) goto LAB_01001f2d;
    lVar3 = 1;
    while( true ) {
      Base::Throw(lVar3);
LAB_01001f2d:
      InterlockedExchange(&DAT_010094ec,(LONG)local_24);
      FUN_01002a2a();
      FUN_010029e8((int *)&param_1,param_1);
      FUN_010020c1(&param_2,0xb5e);
      FUN_010029cb();
      FUN_01002a2a();
      FUN_01002eb6();
      FUN_01001e7d();
      iVar1 = FUN_01002efc();
      if ((iVar1 != 1) ||
         (pHVar2 = ShellExecuteW((HWND)0x0,L"open",(LPCWSTR)0x0,(LPCWSTR)0x0,(LPCWSTR)0x0,1),
         (HINSTANCE)0x20 < pHVar2)) break;
      lVar3 = -0x7fffbffb;
    }
    FUN_010029cb();
    FUN_010029cb();
    if (local_24 != (HMODULE)0x0) {
      FreeLibrary(local_24);
    }
    CoTaskMemFree((LPVOID)0x0);
  }
  return local_1c;
}



// ===== FUN_01002da5 @ 01002da5  size 115
// callers: [FUN_010031de@010032b3(UNCONDITIONAL_CALL)]

DWORD FUN_01002da5(void)

{
  LPCWSTR pv;
  DWORD DVar1;
  BOOL BVar2;
  SHELLEXECUTEINFOW local_44;
  LPCWSTR local_8;
  
  local_8 = (LPCWSTR)0x0;
  DVar1 = FUN_01002cb2();
  pv = local_8;
  if (-1 < (int)DVar1) {
    memset(&local_44,0,0x3c);
    local_44.cbSize = 0x3c;
    local_44.lpVerb = L"open";
    local_44.lpFile = pv;
    local_44.nShow = 1;
    BVar2 = ShellExecuteExW(&local_44);
    if (BVar2 == 0) {
      DVar1 = GetLastError();
    }
  }
  if (pv != (LPCWSTR)0x0) {
    CoTaskMemFree(pv);
  }
  return DVar1;
}



// ===== FUN_010028d4 @ 010028d4  size 148
// callers: [FUN_01002890@010028a3(UNCONDITIONAL_CALL), FUN_010036dc@0100371d(UNCONDITIONAL_CALL)]

FARPROC FUN_010028d4(int *param_1,LPCSTR param_2)

{
  DWORD DVar1;
  FARPROC pFVar2;
  HMODULE hModule;
  undefined4 *unaff_EDI;
  
  if (DAT_010096a4 == 0) {
    DVar1 = GetVersion();
    if ((int)DVar1 < 0) {
      GetFileAttributesW(L"???.???");
      DAT_010096a0 = GetModuleHandleA("Unicows.dll");
    }
    DAT_010096a4 = 1;
  }
  if ((DAT_010096a0 != (HMODULE)0x0) &&
     (pFVar2 = GetProcAddress(DAT_010096a0,param_2), pFVar2 != (FARPROC)0x0)) {
    return pFVar2;
  }
  hModule = (HMODULE)*param_1;
  if (hModule == (HMODULE)0x0) {
    DVar1 = GetVersion();
    if ((int)DVar1 < 0) {
      hModule = (HMODULE)(*(code *)unaff_EDI[2])(unaff_EDI[3]);
    }
    else {
      hModule = (HMODULE)(*(code *)*unaff_EDI)(unaff_EDI[1]);
    }
    if (hModule == (HMODULE)0x0) {
      return (FARPROC)0x0;
    }
    *param_1 = (int)hModule;
  }
  pFVar2 = GetProcAddress(hModule,param_2);
  return pFVar2;
}



// ===== FUN_01002e1d @ 01002e1d  size 107
// callers: [FUN_01002b2d@01002b93(UNCONDITIONAL_CALL)]

LSTATUS FUN_01002e1d(undefined4 *param_1)

{
  LSTATUS LVar1;
  uint *unaff_ESI;
  LPBYTE unaff_EDI;
  uint local_8;
  
  local_8 = *unaff_ESI;
  *unaff_ESI = 0;
  local_8 = local_8 * 2;
  LVar1 = RegQueryValueExW((HKEY)*param_1,L"WLXMarket",(LPDWORD)0x0,(LPDWORD)&param_1,unaff_EDI,
                           &local_8);
  if (LVar1 != 0) {
    return LVar1;
  }
  if ((param_1 == (undefined4 *)0x1) || (param_1 == (undefined4 *)0x2)) {
    if (unaff_EDI != (LPBYTE)0x0) {
      if (local_8 == 0) {
        unaff_EDI[0] = '\0';
        unaff_EDI[1] = '\0';
      }
      else if (((local_8 & 1) != 0) || (*(short *)(unaff_EDI + ((local_8 & 0xfffffffe) - 2)) != 0))
      goto LAB_01002e58;
    }
    *unaff_ESI = local_8 >> 1;
    LVar1 = 0;
  }
  else {
LAB_01002e58:
    LVar1 = 0xd;
  }
  return LVar1;
}


