// program: WLXPhotoLibraryMain.dll

// ===== FUN_63ccabd8 @ 63ccabd8  size 344
// callers: [RunAsStandAlone@63ccb073(UNCONDITIONAL_CALL)]

/* WARNING: Function: __EH_prolog3_catch_GS replaced with injection: EH_prolog3 */

void FUN_63ccabd8(void)

{
  short sVar1;
  LPCWSTR pWVar2;
  BOOL BVar3;
  DWORD DVar4;
  undefined4 *puVar5;
  LPCWSTR pWVar6;
  short *psVar7;
  int iVar8;
  uint uVar9;
  ULARGE_INTEGER local_244;
  ULARGE_INTEGER local_23c;
  ULARGE_INTEGER local_234;
  int local_22c;
  LPCWSTR local_228;
  undefined4 local_224;
  undefined4 local_8;
  undefined4 uStack_4;
  
  uStack_4 = 0x234;
  local_8 = 0x63ccabe7;
  local_224 = local_224 & 0xffff0000;
  memset((void *)((int)&local_224 + 2),0,0x208);
  BVar3 = SHGetSpecialFolderPathW((HWND)0x0,(LPWSTR)&local_224,0x1c,1);
  if ((BVar3 == 0) &&
     (BVar3 = SHGetSpecialFolderPathW((HWND)0x0,(LPWSTR)&local_224,0x1a,1), BVar3 == 0)) {
    DVar4 = GetLastError();
    if (DVar4 != 5) goto LAB_63ccad2a;
    puVar5 = (undefined4 *)FUN_63cbc28f(&local_22c,0x4a9);
    pWVar2 = (LPCWSTR)*puVar5;
    uVar9 = 0;
    pWVar6 = (LPCWSTR)FUN_63d03d9e();
    FUN_63d50dfb((HWND)0x0,pWVar2,pWVar6,uVar9);
    local_228 = (LPCWSTR)(local_22c + -0x10);
  }
  else {
    psVar7 = (short *)&local_224;
    do {
      sVar1 = *psVar7;
      psVar7 = psVar7 + 1;
    } while (sVar1 != 0);
    if ((int)psVar7 - ((int)&local_224 + 2) >> 1 == 0) goto LAB_63ccad2a;
    local_234.s.LowPart = 0x1400001;
    local_234.s.HighPart = 0;
    GetDiskFreeSpaceExW((LPCWSTR)&local_224,&local_234,&local_23c,&local_244);
    if ((local_234.s.HighPart != 0) || (0x13fffff < local_234.s.LowPart)) goto LAB_63ccad2a;
    local_8 = 0;
    towupper((wint_t)local_224);
    FUN_63cc8362(&local_228,0x3a1);
    pWVar2 = local_228;
    uVar9 = 4;
    pWVar6 = (LPCWSTR)FUN_63d03d9e();
    iVar8 = FUN_63d50dfb((HWND)0x0,pWVar2,pWVar6,uVar9);
    local_228 = local_228 + -8;
    if (iVar8 != 7) {
      FUN_63cbc052((undefined4 *)local_228);
      goto LAB_63ccad2a;
    }
  }
  FUN_63cbc052((undefined4 *)local_228);
LAB_63ccad2a:
  FUN_63dbe3fe();
  return;
}



// ===== FUN_63ccad3b @ 63ccad3b  size 326
// callers: [RunAsStandAlone@63ccb07e(UNCONDITIONAL_CALL)]

/* WARNING: Function: __EH_prolog3_catch replaced with injection: EH_prolog3 */
/* WARNING: Function: __EH_epilog3 replaced with injection: EH_epilog3 */

void FUN_63ccad3b(void)

{
  HKEY__ HVar1;
  HKEY hKey;
  LSTATUS LVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  int local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  int local_28;
  HKEY__ local_24;
  DWORD local_20;
  HKEY local_1c [5];
  undefined4 local_8;
  undefined4 uStack_4;
  
  uStack_4 = 0x3c;
  local_8 = 0;
  local_1c[0] = (HKEY)0x0;
  LVar2 = RegOpenKeyExW((HKEY)0x80000001,L"Software\\Microsoft\\Windows Live\\Photo Gallery",0,
                        0x20019,local_1c);
  if (LVar2 == 0) {
    if (local_1c[0] == (HKEY)0x0) {
      return;
    }
    RegCloseKey(local_1c[0]);
    return;
  }
  local_4c = 0;
  local_48 = 0;
  local_44 = 0;
  local_40 = 0;
  local_3c = 0;
  local_38 = 10;
  local_8._0_1_ = 1;
  uVar3 = FUN_63cca717(&local_4c);
  if (((char)uVar3 == '\0') || (local_28 = local_4c, local_4c == 0)) goto LAB_63ccae74;
  local_1c[0] = (HKEY)0x0;
  local_8._0_1_ = 2;
  LVar2 = FUN_63cbc0f0(L"Software\\Microsoft\\Windows Live\\Photo Gallery\\Library\\AddFolders",
                       &local_24);
  hKey = local_1c[0];
  if (LVar2 == 0) {
    if ((LPCWSTR)local_24.unused != (LPCWSTR)0x1) {
      local_20 = 0;
      LVar2 = RegQueryInfoKeyW(local_1c[0],(LPWSTR)0x0,(LPDWORD)0x0,(LPDWORD)0x0,(LPDWORD)0x0,
                               (LPDWORD)0x0,(LPDWORD)0x0,&local_20,(LPDWORD)0x0,(LPDWORD)0x0,
                               (LPDWORD)0x0,(PFILETIME)0x0);
      if ((LVar2 != 0) || (local_20 != 0)) goto joined_r0x63ccae6b;
    }
    local_20 = 0;
    FUN_63cbc14c();
    local_8._0_1_ = 3;
    do {
      piVar4 = FUN_63cc19b8(&local_28);
      local_20 = local_20 + 1;
      FUN_63cc0f04(&local_24,L"Path%d");
      HVar1.unused = local_24.unused;
      iVar5 = FUN_63cc1976(local_1c,local_24.unused,(LPCWSTR)*piVar4);
      if (iVar5 != 0) break;
    } while (local_28 != 0);
    FUN_63cbc052((undefined4 *)(HVar1.unused + -0x10));
  }
joined_r0x63ccae6b:
  if (hKey != (HKEY)0x0) {
    RegCloseKey(hKey);
  }
LAB_63ccae74:
  FUN_63cc1474(&local_4c);
  return;
}


