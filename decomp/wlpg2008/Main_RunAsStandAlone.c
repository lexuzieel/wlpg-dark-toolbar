// program: WLXPhotoLibraryMain.dll

// ===== RunAsStandAlone @ 63ccae95  size 714
// callers: [<data>@63df3e10(DATA), <data>@Entry Point(EXTERNAL)]

/* WARNING: Function: __EH_prolog3_catch_GS replaced with injection: EH_prolog3 */

void RunAsStandAlone(short *param_1)

{
  short sVar1;
  bool bVar2;
  char cVar3;
  FARPROC pFVar4;
  HWND hWnd;
  BOOL BVar5;
  short *psVar6;
  HRESULT HVar7;
  LPCWSTR pWVar8;
  undefined *puVar9;
  int iVar10;
  ulong uVar11;
  undefined4 uVar12;
  HMENU pHVar13;
  char local_d4c;
  undefined4 local_d44;
  undefined4 local_d40;
  undefined4 local_d3c;
  tagMSG tStack_d38;
  short *local_d1c;
  HMODULE local_d18;
  HWND local_d14;
  HANDLE local_d10 [2];
  char local_d07;
  char local_d06;
  char local_d05;
  WCHAR local_d04 [4];
  HWND local_cfc;
  tagRECT local_bf8 [191];
  undefined4 local_8;
  undefined4 uStack_4;
  
                    /* 0x3ae95  3  RunAsStandAlone */
  uStack_4 = 0xd48;
  local_8 = 0x63ccaea4;
  local_d1c = param_1;
  local_d3c = 0;
  Sqm::Startup();
  local_8 = 0;
  Sqm::StartStreamTimer(0x6b,4,4);
  bVar2 = Base::OS::IsVistaOrGreater();
  if (bVar2) {
    HeapSetInformation((HANDLE)0x0,HeapEnableTerminationOnCorruption,(PVOID)0x0,0);
  }
  FUN_63cd7502(L"user32",'\0');
  pFVar4 = FUN_63cf80f0("SetProcessDPIAware");
  if (pFVar4 != (FARPROC)0x0) {
    (*pFVar4)();
  }
  if (local_d18 != (HMODULE)0x0) {
    FreeLibrary(local_d18);
  }
  FUN_63cca7e6(local_d10);
  FUN_63cca834((int *)local_d10);
  local_8._0_1_ = 1;
  hWnd = FindWindowW(L"WLX_Photo_Library_MainWnd",(LPCWSTR)0x0);
  local_d14 = hWnd;
  BVar5 = IsWindow(hWnd);
  if (BVar5 == 0) {
    FUN_63cca798();
    HVar7 = OleInitialize((LPVOID)0x0);
    local_d07 = HVar7 == 0;
    local_8._0_1_ = 3;
    Base::Initialize();
    local_d44 = 8;
    local_d40 = 0x1ff;
    FUN_63cc15ba(&local_d44);
    FUN_63d0f34d(&local_d14);
    local_8 = CONCAT31(local_8._1_3_,4);
    cVar3 = FUN_63d507ce(DAT_63e03114);
    if (cVar3 != '\0') {
      SetProcessDefaultLayout(1);
    }
    local_d06 = FUN_63ccabd8();
    FUN_63ccad3b();
    FUN_63d07def((undefined4 *)local_d04);
    local_8._0_1_ = 5;
    if (local_d06 != '\0') {
      pWVar8 = (LPCWSTR)FUN_63d03d9e();
      puVar9 = FUN_63cebba4();
      FUN_63d4d671((int)puVar9,pWVar8);
      local_8 = CONCAT31(local_8._1_3_,6);
      FUN_63d085e8(local_d04,(int)local_d1c);
      tStack_d38.lParam = 0;
      tStack_d38.time = 0;
      tStack_d38.pt.x = 0;
      tStack_d38.pt.y = 0;
      local_d05 = '\0';
      FUN_63d51652(local_bf8,&tStack_d38.lParam,&local_d05);
      pHVar13 = (HMENU)0x0;
      local_d1c = (short *)&stack0xfffff294;
      pWVar8 = (LPCWSTR)FUN_63d03d9e();
      local_d1c = (short *)&stack0xfffff28c;
      iVar10 = FUN_63ccb315(&tStack_d38.lParam,pWVar8,pHVar13);
      if (iVar10 == 0) {
        Base::ThrowLastError();
      }
      ShowWindow(local_cfc,(uint)(local_d05 != '\0') * 2 + 1);
      UpdateWindow(local_cfc);
      local_8 = 5;
      FUN_63ccb17a();
      return;
    }
    FUN_63cca8b0();
    if (local_d06 != '\0') {
      local_d05 = '\0';
      while( true ) {
        BVar5 = PeekMessageW(&tStack_d38,(HWND)0x0,0,0,0);
        if ((BVar5 == 0) && (local_d05 == '\0')) {
          if (*(int *)(PTR_LOOP_63df6144 + 0x30) != 0 || *(int *)(PTR_LOOP_63df6144 + 0x34) != 0) {
            FUN_63cc306b(&DAT_63c98a80,*(int *)(PTR_LOOP_63df6144 + 0x30),
                         *(int *)(PTR_LOOP_63df6144 + 0x34));
          }
          bVar2 = Sqm::IsEnabled();
          if (bVar2) {
            uVar11 = FUN_63d088bd();
            FUN_63cca8e1(0,0,uVar11);
            Sqm::StopStreamTimer(0x6b,4);
          }
          local_d05 = '\x01';
        }
        BVar5 = GetMessageW(&tStack_d38,(HWND)0x0,0,0);
        if (BVar5 == 0) break;
        bVar2 = FUN_63d0bdd1(&tStack_d38);
        if ((!bVar2) && (uVar12 = FUN_63d703aa(&tStack_d38), (char)uVar12 == '\0')) {
          TranslateMessage(&tStack_d38);
          DispatchMessageW(&tStack_d38);
        }
      }
    }
    local_8._0_1_ = 4;
    FUN_63d080c1((undefined4 *)local_d04);
    if (local_d14 != (HWND)0x0) {
      FreeLibrary((HMODULE)local_d14);
    }
    if (local_d07 != '\0') {
      OleUninitialize();
    }
    if (local_d4c != '\0') {
      GdiplusShutdown();
    }
    FUN_63cca8b0();
    if (local_d10[0] != (HANDLE)0x0) {
      CloseHandle(local_d10[0]);
      local_d10[0] = (HANDLE)0x0;
    }
    Sqm::Shutdown();
  }
  else {
    BVar5 = IsIconic(hWnd);
    if (BVar5 != 0) {
      SendMessageW(hWnd,0x112,0xf120,0);
    }
    SetForegroundWindow(hWnd);
    if ((param_1 != (short *)0x0) && (*param_1 != 0)) {
      tStack_d38.time = 0;
      psVar6 = param_1;
      do {
        sVar1 = *psVar6;
        psVar6 = psVar6 + 1;
      } while (sVar1 != 0);
      tStack_d38.pt.x = ((int)psVar6 - (int)(param_1 + 1) >> 1) * 2 + 2;
      tStack_d38.pt.y = (LONG)param_1;
      SendMessageW(local_d14,0x4a,0,(LPARAM)&tStack_d38.time);
    }
    FUN_63cca8b0();
    if (local_d10[0] != (HANDLE)0x0) {
      CloseHandle(local_d10[0]);
      local_d10[0] = (HANDLE)0x0;
    }
    Sqm::Shutdown();
  }
  FUN_63dbe3fe();
  return;
}


