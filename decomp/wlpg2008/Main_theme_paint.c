// program: WLXPhotoLibraryMain.dll

// ===== FUN_63d4dfb8 @ 63d4dfb8  size 500
// callers: [FUN_63d1f81e@63d1f82d(UNCONDITIONAL_CALL), FUN_63d4ebd4@63d4ebe8(UNCONDITIONAL_CALL)]

void FUN_63d4dfb8(HWND param_1)

{
  HRESULT HVar1;
  int iVar2;
  uint uVar3;
  DWORD DVar4;
  undefined4 uVar5;
  uint *puVar6;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 uVar7;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  uint *unaff_ESI;
  uint uVar8;
  uint uVar9;
  uint local_18;
  uint local_14;
  uint local_10;
  uint local_c;
  HTHEME local_8;
  
  local_8 = OpenThemeData(param_1,L"MediaStyle");
  if (local_8 != (HTHEME)0x0) {
    local_c = 0;
    local_10 = 0;
    local_14 = 0;
    local_18 = 0;
    param_1 = (HWND)0x0;
    HVar1 = GetThemeColor(local_8,0,0,0xeef,(COLORREF *)&param_1);
    if ((-1 < HVar1) && (iVar2 = FUN_63d4df59(&local_c,HVar1), -1 < iVar2)) {
      param_1 = (HWND)0x0;
      HVar1 = GetThemeColor(local_8,0,0,0xeed,(COLORREF *)&param_1);
      if ((-1 < HVar1) && (iVar2 = FUN_63d4df59(&local_10,HVar1), -1 < iVar2)) {
        param_1 = (HWND)0x0;
        HVar1 = GetThemeColor(local_8,0,0,0xee8,(COLORREF *)&param_1);
        if ((-1 < HVar1) && (iVar2 = FUN_63d4df59(&local_14,HVar1), -1 < iVar2)) {
          param_1 = (HWND)0x0;
          HVar1 = GetThemeColor(local_8,0,0,0xedf,(COLORREF *)&param_1);
          if ((-1 < HVar1) && (iVar2 = FUN_63d4df59(&local_18,HVar1), uVar8 = local_10, -1 < iVar2))
          {
            *unaff_ESI = local_c;
            unaff_ESI[1] = local_10;
            unaff_ESI[2] = local_c;
            unaff_ESI[4] = local_14;
            uVar3 = FUN_63cf79b7(local_14,local_18,0xb3);
            unaff_ESI[8] = uVar8;
            unaff_ESI[6] = uVar3;
            uVar8 = 0;
            uVar7 = extraout_ECX;
            do {
              if (uVar8 == 1) {
                unaff_ESI[5] = unaff_ESI[4];
              }
              else {
                uVar3 = FUN_63cf79b7(uVar7,unaff_ESI[1],0x40);
                unaff_ESI[uVar8 * 2 + 3] = uVar3;
                uVar7 = extraout_ECX_00;
              }
              uVar8 = uVar8 + 1;
            } while (uVar8 < 4);
            goto LAB_63d4e198;
          }
        }
      }
    }
  }
  DVar4 = GetSysColor(5);
  uVar9 = (DVar4 >> 8 & 0xff | (DVar4 & 0xff | 0xffffff00) << 8) << 8 | DVar4 >> 0x10 & 0xff;
  DVar4 = GetSysColor(0x1b);
  uVar3 = (DVar4 >> 8 & 0xff | (DVar4 & 0xff | 0xffffff00) << 8) << 8 | DVar4 >> 0x10 & 0xff;
  uVar5 = FUN_63d50f88();
  param_1 = (HWND)CONCAT13((char)uVar5,param_1._0_3_);
  uVar8 = uVar9;
  uVar7 = extraout_ECX_01;
  if ((char)uVar5 == '\0') {
    uVar8 = FUN_63cf79b7(extraout_ECX_01,uVar9,0x32);
    uVar7 = extraout_ECX_02;
  }
  *unaff_ESI = uVar8;
  unaff_ESI[1] = uVar8;
  uVar8 = uVar3;
  if (param_1._3_1_ == '\0') {
    uVar8 = uVar9;
  }
  unaff_ESI[2] = uVar8;
  if (param_1._3_1_ == '\0') {
    uVar3 = FUN_63cf79b7(uVar7,uVar9,0xcc);
  }
  unaff_ESI[8] = 0;
  unaff_ESI[4] = uVar3;
  unaff_ESI[6] = uVar9;
  puVar6 = unaff_ESI + 3;
  iVar2 = 4;
  do {
    *puVar6 = puVar6[-1];
    puVar6 = puVar6 + 2;
    iVar2 = iVar2 + -1;
  } while (iVar2 != 0);
LAB_63d4e198:
  if (local_8 != (HTHEME)0x0) {
    CloseThemeData(local_8);
  }
  return;
}



// ===== FUN_63d4e1b1 @ 63d4e1b1  size 121
// callers: [FUN_63d1e8d3@63d1e8ef(UNCONDITIONAL_CALL), FUN_63d296e7@63d2970f(UNCONDITIONAL_CALL), FUN_63d4e22f@63d4e23b(UNCONDITIONAL_CALL)]

uint FUN_63d4e1b1(HWND param_1,int param_2,int param_3)

{
  uint uVar1;
  HTHEME hTheme;
  HRESULT HVar2;
  uint uVar3;
  uint uVar4;
  COLORREF local_8;
  
  local_8 = 0;
  hTheme = OpenThemeData(param_1,L"TEXTSTYLE");
  if ((hTheme == (HTHEME)0x0) || (HVar2 = GetThemeColor(hTheme,param_2,0,0xedb,&local_8), HVar2 < 0)
     ) {
    local_8 = GetSysColor(param_3);
  }
  uVar4 = local_8 & 0xff;
  uVar1 = local_8 >> 8;
  uVar3 = local_8 >> 0x10;
  if (hTheme != (HTHEME)0x0) {
    CloseThemeData(hTheme);
  }
  return ((uVar4 | 0xffffff00) << 8 | uVar1 & 0xff) << 8 | uVar3 & 0xff;
}



// ===== FUN_63d4e249 @ 63d4e249  size 256
// callers: [FUN_63cce8fc@63cce967(UNCONDITIONAL_CALL), FUN_63d283ee@63d28471(UNCONDITIONAL_CALL)]

void FUN_63d4e249(HWND param_1,uint *param_2,uint *param_3)

{
  HTHEME hTheme;
  HRESULT HVar1;
  int iVar2;
  DWORD DVar3;
  uint uVar4;
  uint uVar5;
  uint local_c;
  uint local_8;
  
  hTheme = OpenThemeData(param_1,L"MediaStyle");
  if (hTheme != (HTHEME)0x0) {
    local_8 = 0;
    local_c = 0;
    param_1 = (HWND)0x0;
    HVar1 = GetThemeColor(hTheme,0,0,0xeef,(COLORREF *)&param_1);
    if (-1 < HVar1) {
      iVar2 = FUN_63d4df59(&local_8,HVar1);
      if (-1 < iVar2) {
        param_1 = (HWND)0x0;
        HVar1 = GetThemeColor(hTheme,0,0,0xee8,(COLORREF *)&param_1);
        if (-1 < HVar1) {
          iVar2 = FUN_63d4df59(&local_c,HVar1);
          if (-1 < iVar2) {
            *param_2 = local_8;
            *param_3 = local_c;
            goto LAB_63d4e334;
          }
        }
      }
    }
  }
  DVar3 = GetSysColor(5);
  uVar5 = ((DVar3 & 0xff | 0xffffff00) << 8 | DVar3 >> 8 & 0xff) << 8 | DVar3 >> 0x10 & 0xff;
  DVar3 = GetSysColor(0x1b);
  uVar4 = FUN_63cf79b7(DVar3 >> 0x10 & 0xff,uVar5,0xcc);
  *param_2 = uVar4;
  *param_3 = uVar5;
LAB_63d4e334:
  if (hTheme != (HTHEME)0x0) {
    CloseThemeData(hTheme);
  }
  return;
}



// ===== FUN_63d4e34e @ 63d4e34e  size 498
// callers: [FUN_63d4e65d@63d4e6cb(UNCONDITIONAL_CALL), FUN_63d4e740@63d4e775(UNCONDITIONAL_CALL), FUN_63d665f0@63d66614(UNCONDITIONAL_CALL), FUN_63d760d9@63d7614a(UNCONDITIONAL_CALL), FUN_63d7754b@63d775ec(UNCONDITIONAL_CALL), FUN_63d79179@63d7921a(UNCONDITIONAL_CALL), FUN_63d7ace4@63d7adaa(UNCONDITIONAL_CALL), FUN_63d7deae@63d7dee2(UNCONDITIONAL_CALL), FUN_63d7f6c8@63d7f75e(UNCONDITIONAL_CALL), FUN_63d81def@63d81eb9(UNCONDITIONAL_CALL)]

void FUN_63d4e34e(HWND param_1,uint *param_2,uint *param_3,uint *param_4)

{
  bool bVar1;
  undefined4 uVar2;
  DWORD DVar3;
  HTHEME hTheme;
  HRESULT HVar4;
  int iVar5;
  DWORD DVar6;
  uint uVar7;
  uint uVar8;
  uint local_18;
  uint local_14;
  uint local_10;
  COLORREF local_c;
  char local_5;
  
  uVar2 = FUN_63d50f88();
  if ((char)uVar2 == '\0') {
    local_5 = '\x01';
    bVar1 = Base::OS::IsVistaOrGreater();
    if ((bVar1) && (hTheme = OpenThemeData(param_1,L"TASKDIALOG"), hTheme != (HTHEME)0x0)) {
      local_c = 0;
      HVar4 = GetThemeColor(hTheme,1,0,0xeda,&local_c);
      if ((-1 < HVar4) && (iVar5 = FUN_63d4df59(&local_10,HVar4), -1 < iVar5)) {
        local_c = 0;
        HVar4 = GetThemeColor(hTheme,9,0,0xeda,&local_c);
        if ((-1 < HVar4) && (iVar5 = FUN_63d4df59(&local_14,HVar4), -1 < iVar5)) {
          local_c = 0;
          HVar4 = GetThemeColor(hTheme,2,0,0xedb,&local_c);
          if ((-1 < HVar4) && (iVar5 = FUN_63d4df59(&local_18,HVar4), -1 < iVar5)) {
            *param_2 = local_10;
            *param_3 = local_14;
            *param_4 = local_18;
            local_5 = '\0';
          }
        }
      }
      CloseThemeData(hTheme);
      if (local_5 == '\0') {
        return;
      }
    }
    DVar3 = GetSysColor(5);
    DVar6 = GetSysColor(8);
    uVar7 = DVar6 >> 8 & 0xff;
    uVar8 = ((DVar6 & 0xff | 0xffffff00) << 8 | uVar7) << 8 | DVar6 >> 0x10 & 0xff;
    *param_2 = ((DVar3 & 0xff | 0xffffff00) << 8 | DVar3 >> 8 & 0xff) << 8 | DVar3 >> 0x10 & 0xff;
    uVar7 = FUN_63cf79b7(uVar7,uVar8,0xf0);
    *param_3 = uVar7;
    DVar3 = GetSysColor(2);
    uVar7 = FUN_63cf79b7(DVar3 >> 0x10 & 0xff,uVar8,0xb2);
    *param_4 = uVar7;
  }
  else {
    DVar3 = GetSysColor(5);
    *param_2 = ((DVar3 & 0xff | 0xffffff00) << 8 | DVar3 >> 8 & 0xff) << 8 | DVar3 >> 0x10 & 0xff;
    DVar3 = GetSysColor(0xf);
    *param_3 = ((DVar3 & 0xff | 0xffffff00) << 8 | DVar3 >> 8 & 0xff) << 8 | DVar3 >> 0x10 & 0xff;
    DVar3 = GetSysColor(8);
    *param_4 = ((DVar3 & 0xff | 0xffffff00) << 8 | DVar3 >> 8 & 0xff) << 8 | DVar3 >> 0x10 & 0xff;
  }
  return;
}



// ===== FUN_63d4e545 @ 63d4e545  size 275
// callers: [FUN_63d4e65d@63d4e6b1(UNCONDITIONAL_CALL)]

void FUN_63d4e545(HBRUSH param_1,HDC param_2,LPCRECT param_3)

{
  bool bVar1;
  undefined4 uVar2;
  HTHEME hTheme;
  HRESULT HVar3;
  HBRUSH pHVar4;
  HBRUSH pHVar5;
  RECT local_24;
  uint local_14;
  uint local_10;
  char local_9;
  
  uVar2 = FUN_63d50f88();
  local_9 = '\x01';
  bVar1 = Base::OS::IsVistaOrGreater();
  if (((bVar1) && ((char)uVar2 == '\0')) &&
     (hTheme = OpenThemeData((HWND)param_1,L"TASKDIALOG"), hTheme != (HTHEME)0x0)) {
    HVar3 = DrawThemeBackground(hTheme,param_2,8,0,param_3,(LPCRECT)0x0);
    if (-1 < HVar3) {
      local_9 = '\0';
    }
    CloseThemeData(hTheme);
    if (local_9 == '\0') {
      return;
    }
  }
  param_1 = (HBRUSH)0x0;
  FUN_63d4e9ff(&local_10,&local_14);
  pHVar4 = CreateSolidBrush((uint)CONCAT11((char)local_10,(char)(local_10 >> 8)) << 8 |
                            local_10 >> 0x10 & 0xff);
  if (pHVar4 != (HBRUSH)0x0) {
    param_1 = pHVar4;
  }
  pHVar5 = CreateSolidBrush((uint)CONCAT11((char)local_14,(char)(local_14 >> 8)) << 8 |
                            local_14 >> 0x10 & 0xff);
  pHVar4 = (HBRUSH)0x0;
  if (pHVar5 != (HBRUSH)0x0) {
    pHVar4 = pHVar5;
  }
  if (param_1 != (HBRUSH)0x0) {
    if (pHVar4 == (HBRUSH)0x0) goto LAB_63d4e642;
    local_24.left = param_3->left;
    local_24.right = param_3->right;
    local_24.bottom = param_3->bottom;
    local_24.top = param_3->top + 1;
    FillRect(param_2,&local_24,param_1);
    local_24.bottom = local_24.top;
    local_24.top = local_24.top + -1;
    FillRect(param_2,&local_24,pHVar4);
  }
  if (pHVar4 != (HBRUSH)0x0) {
    DeleteObject(pHVar4);
  }
LAB_63d4e642:
  if (param_1 != (HBRUSH)0x0) {
    DeleteObject(param_1);
  }
  return;
}



// ===== FUN_63d4e65d @ 63d4e65d  size 197
// callers: [FUN_63cf9311@63cf9338(UNCONDITIONAL_CALL), FUN_63d0386a@63d0388b(UNCONDITIONAL_CALL), FUN_63d6654a@63d6655e(UNCONDITIONAL_CALL), FUN_63d7e7ff@63d7e862(UNCONDITIONAL_CALL)]

/* WARNING: Function: __EH_prolog3_catch replaced with injection: EH_prolog3 */
/* WARNING: Function: __EH_epilog3 replaced with injection: EH_epilog3 */

undefined * FUN_63d4e65d(HWND param_1,HDC param_2,uint param_3,undefined4 *param_4)

{
  BOOL BVar1;
  HBRUSH hbr;
  RECT local_54;
  RECT local_44;
  tagRECT local_34;
  Exception aEStack_24 [12];
  uint local_18 [4];
  undefined4 local_8;
  undefined4 uStack_4;
  
  uStack_4 = 0x44;
  local_8 = 0;
  BVar1 = GetClientRect(param_1,&local_34);
  if (BVar1 == 0) {
    Base::ThrowLastError();
  }
  local_54.left = local_34.left;
  local_54.top = local_34.top;
  local_54.right = local_34.right;
  local_54.bottom = local_34.bottom;
  if (param_3 != 0) {
    local_44.top = local_34.bottom - param_3;
    local_44.left = local_34.left;
    local_44.right = local_34.right;
    local_44.bottom = local_34.bottom;
    FUN_63d4e545((HBRUSH)param_1,param_2,&local_44);
    local_54.bottom = local_44.top;
  }
  FUN_63d4e34e(param_1,(uint *)&param_1,local_18,&param_3);
  param_3 = 0;
  local_8 = CONCAT31(local_8._1_3_,1);
  hbr = CreateSolidBrush((uint)param_1 >> 0x10 & 0xff |
                         (uint)CONCAT11((char)param_1,(char)((uint)param_1 >> 8)) << 8);
  if (hbr == (HBRUSH)0x0) {
    Base::Throw(-0x7fffbffb);
    *param_4 = 0;
    Base::Exception::~Exception(aEStack_24);
    return &DAT_63d4e717;
  }
  FillRect(param_2,&local_54,hbr);
  DeleteObject(hbr);
  return (undefined *)0x1;
}



// ===== FUN_63d4e740 @ 63d4e740  size 236
// callers: [FUN_63cf9363@63cf93a4(UNCONDITIONAL_CALL), FUN_63d038b6@63d038f1(UNCONDITIONAL_CALL), FUN_63d665f0@63d6666f(UNCONDITIONAL_CALL), FUN_63d7e7ff@63d7e82d(UNCONDITIONAL_CALL)]

/* WARNING: Function: __EH_prolog3_catch replaced with injection: EH_prolog3 */
/* WARNING: Function: __EH_epilog3 replaced with injection: EH_epilog3 */

HGDIOBJ __thiscall FUN_63d4e740(void *this,HWND param_1,HWND param_2,char param_3,int param_4)

{
  HGDIOBJ pvVar1;
  COLORREF CVar2;
  int iVar3;
  BOOL BVar4;
  uint uVar5;
  tagRECT local_60;
  tagRECT local_50;
  tagRECT local_40;
  uint local_24;
  uint local_20;
  uint local_1c [5];
  undefined4 local_8;
  undefined4 uStack_4;
  
  uStack_4 = 0x50;
  local_8 = 0;
  pvVar1 = GetStockObject(0x12);
  if (pvVar1 != (HGDIOBJ)0x0) goto LAB_63d4e766;
  do {
    do {
      do {
        Base::ThrowLastError();
LAB_63d4e766:
        FUN_63d4e34e(param_2,&local_24,&local_20,local_1c);
        if (param_3 == '\0') {
          CVar2 = GetSysColor(8);
        }
        else {
          CVar2 = local_1c[0] >> 0x10 & 0xff |
                  (uint)CONCAT11((char)local_1c[0],(char)(local_1c[0] >> 8)) << 8;
        }
        SetTextColor(this,CVar2);
        iVar3 = SetBkMode(this,1);
      } while (iVar3 == 0);
      FUN_63cf9171(param_1,param_2,&local_50);
      BVar4 = GetClientRect(param_2,&local_40);
    } while (BVar4 == 0);
    local_40.top = local_40.bottom - param_4;
    BVar4 = IntersectRect(&local_60,&local_50,&local_40);
    uVar5 = local_20;
    if (BVar4 == 0) {
      uVar5 = local_24;
    }
    CVar2 = SetDCBrushColor(this,(uint)CONCAT11((char)uVar5,(char)(uVar5 >> 8)) << 8 |
                                 uVar5 >> 0x10 & 0xff);
  } while (CVar2 == 0xffffffff);
  return pvVar1;
}



// ===== FUN_63d4e84a @ 63d4e84a  size 432
// callers: [FUN_63d83ff5@63d84013(UNCONDITIONAL_CALL)]

void FUN_63d4e84a(HWND param_1,uint *param_2,uint *param_3,uint *param_4,uint *param_5)

{
  bool bVar1;
  HTHEME hTheme;
  HRESULT HVar2;
  int iVar3;
  DWORD DVar4;
  uint local_1c;
  uint local_18;
  uint local_14;
  uint local_10;
  COLORREF local_c;
  char local_5;
  
  local_5 = '\x01';
  bVar1 = Base::OS::IsVistaOrGreater();
  if ((bVar1) && (hTheme = OpenThemeData(param_1,L"BUTTON"), hTheme != (HTHEME)0x0)) {
    local_c = 0;
    HVar2 = GetThemeColor(hTheme,6,1,0xedb,&local_c);
    if ((-1 < HVar2) && (iVar3 = FUN_63d4df59(&local_10,HVar2), -1 < iVar3)) {
      local_c = 0;
      HVar2 = GetThemeColor(hTheme,6,2,0xedb,&local_c);
      if ((-1 < HVar2) && (iVar3 = FUN_63d4df59(&local_14,HVar2), -1 < iVar3)) {
        local_c = 0;
        HVar2 = GetThemeColor(hTheme,6,3,0xedb,&local_c);
        if ((-1 < HVar2) && (iVar3 = FUN_63d4df59(&local_18,HVar2), -1 < iVar3)) {
          local_c = 0;
          HVar2 = GetThemeColor(hTheme,6,4,0xedb,&local_c);
          if ((-1 < HVar2) && (iVar3 = FUN_63d4df59(&local_1c,HVar2), -1 < iVar3)) {
            *param_2 = local_10;
            *param_3 = local_14;
            *param_4 = local_18;
            *param_5 = local_1c;
            local_5 = '\0';
          }
        }
      }
    }
    CloseThemeData(hTheme);
    if (local_5 == '\0') {
      return;
    }
  }
  DVar4 = GetSysColor(8);
  *param_2 = (DVar4 >> 8 & 0xff | (DVar4 & 0xff | 0xffffff00) << 8) << 8 | DVar4 >> 0x10 & 0xff;
  DVar4 = GetSysColor(0x1a);
  *param_3 = (DVar4 >> 8 & 0xff | (DVar4 & 0xff | 0xffffff00) << 8) << 8 | DVar4 >> 0x10 & 0xff;
  DVar4 = GetSysColor(0x1a);
  *param_4 = (DVar4 >> 8 & 0xff | (DVar4 & 0xff | 0xffffff00) << 8) << 8 | DVar4 >> 0x10 & 0xff;
  DVar4 = GetSysColor(0x10);
  *param_5 = ((DVar4 & 0xff | 0xffffff00) << 8 | DVar4 >> 8 & 0xff) << 8 | DVar4 >> 0x10 & 0xff;
  return;
}



// ===== FUN_63d4e9ff @ 63d4e9ff  size 208
// callers: [FUN_63d4e545@63d4e5b6(UNCONDITIONAL_CALL), FUN_63d6654a@63d66578(UNCONDITIONAL_CALL)]

void FUN_63d4e9ff(uint *param_1,uint *param_2)

{
  undefined4 uVar1;
  DWORD DVar2;
  uint uVar3;
  uint uVar4;
  
  uVar1 = FUN_63d50f88();
  if ((char)uVar1 == '\0') {
    GetSysColor(5);
    DVar2 = GetSysColor(8);
    uVar3 = DVar2 >> 8 & 0xff;
    uVar4 = ((DVar2 & 0xff | 0xffffff00) << 8 | uVar3) << 8 | DVar2 >> 0x10 & 0xff;
    uVar3 = FUN_63cf79b7(uVar3,uVar4,0xf0);
    *param_1 = uVar3;
    uVar3 = FUN_63cf79b7(param_1,uVar4,0xdf);
    *param_2 = uVar3;
  }
  else {
    DVar2 = GetSysColor(0xf);
    *param_1 = ((DVar2 & 0xff | 0xffffff00) << 8 | DVar2 >> 8 & 0xff) << 8 | DVar2 >> 0x10 & 0xff;
    DVar2 = GetSysColor(0xf);
    *param_2 = ((DVar2 & 0xff | 0xffffff00) << 8 | DVar2 >> 8 & 0xff) << 8 | DVar2 >> 0x10 & 0xff;
  }
  return;
}



// ===== FUN_63d4ead4 @ 63d4ead4  size 123
// callers: [FUN_63d4eb9e@63d4ebba(UNCONDITIONAL_CALL), FUN_63d8407d@63d840a3(UNCONDITIONAL_CALL)]

void __thiscall FUN_63d4ead4(void *this,HWND param_1,int param_2,int param_3,undefined4 *param_4)

{
  HTHEME hTheme;
  HRESULT HVar1;
  HFONT pHVar2;
  LOGFONTW local_64;
  uint local_8;
  
  local_8 = DAT_63df401c ^ (uint)&stack0xfffffffc;
  hTheme = OpenThemeData(param_1,this);
  if (hTheme != (HTHEME)0x0) {
    local_64.lfHeight = 0;
    memset(&local_64.lfWidth,0,0x58);
    HVar1 = GetThemeFont(hTheme,(HDC)0x0,param_2,param_3,0xd2,&local_64);
    if (-1 < HVar1) {
      pHVar2 = CreateFontIndirectW(&local_64);
      *param_4 = pHVar2;
    }
    CloseThemeData(hTheme);
  }
  __security_check_cookie(local_8 ^ (uint)&stack0xfffffffc);
  return;
}



// ===== FUN_63ce029c @ 63ce029c  size 67
// callers: [FUN_63cd7fe7@63cd812c(UNCONDITIONAL_CALL), FUN_63cd98b7@63cd9925(UNCONDITIONAL_CALL)]

void FUN_63ce029c(void)

{
  HTHEME hTheme;
  BOOL BVar1;
  int unaff_ESI;
  
  hTheme = OpenThemeData(*(HWND *)(unaff_ESI + 0x30),L"TREEVIEW");
  if (hTheme == (HTHEME)0x0) {
    *(undefined1 *)(unaff_ESI + 0x124) = 0;
  }
  else {
    BVar1 = IsThemePartDefined(hTheme,1,0);
    *(bool *)(unaff_ESI + 0x124) = BVar1 != 0;
    CloseThemeData(hTheme);
  }
  return;
}



// ===== FUN_63ce01d2 @ 63ce01d2  size 197
// callers: [FUN_63cd9c9f@63cd9d2c(UNCONDITIONAL_CALL)]

void FUN_63ce01d2(void)

{
  uint uVar1;
  int in_EAX;
  uint uVar2;
  undefined4 uVar3;
  DWORD DVar4;
  HWND hWnd;
  BOOL BVar5;
  DWORD DVar6;
  LRESULT LVar7;
  code *pcVar8;
  int unaff_EDI;
  bool bVar9;
  
  bVar9 = *(char *)(in_EAX + 0x124) == '\0';
  if ((*(byte *)(unaff_EDI + 0x28) & 0x40) != 0) {
    return;
  }
  uVar1 = *(uint *)(unaff_EDI + 0x24);
  uVar2 = FUN_63ce0193();
  pcVar8 = GetSysColor_exref;
  if (uVar1 != uVar2) {
    if ((uVar2 != 0) || ((*(byte *)(unaff_EDI + 0x28) & 1) == 0)) {
      if (bVar9) {
        DVar4 = GetSysColor(8);
        *(DWORD *)(unaff_EDI + 0x30) = DVar4;
      }
      LVar7 = SendMessageW(*(HWND *)(in_EAX + 0x30),0x111f,0,0);
      *(LRESULT *)(unaff_EDI + 0x34) = LVar7;
      if (LVar7 != -1) {
        return;
      }
      DVar4 = GetSysColor(5);
      goto LAB_63ce0290;
    }
    hWnd = GetFocus();
    pcVar8 = GetSysColor_exref;
    if ((*(HWND *)(in_EAX + 0x30) != hWnd) &&
       (BVar5 = IsChild(*(HWND *)(in_EAX + 0x30),hWnd), BVar5 == 0)) {
      DVar4 = GetSysColor(0xf);
      DVar6 = GetSysColor(5);
      if (DVar4 != DVar6) {
        if (bVar9) {
          DVar6 = GetSysColor(0x12);
          *(DWORD *)(unaff_EDI + 0x30) = DVar6;
        }
        *(DWORD *)(unaff_EDI + 0x34) = DVar4;
        return;
      }
    }
  }
  if (bVar9) {
    uVar3 = (*pcVar8)(0xe);
    *(undefined4 *)(unaff_EDI + 0x30) = uVar3;
  }
  DVar4 = (*pcVar8)(0xd);
LAB_63ce0290:
  *(DWORD *)(unaff_EDI + 0x34) = DVar4;
  return;
}


