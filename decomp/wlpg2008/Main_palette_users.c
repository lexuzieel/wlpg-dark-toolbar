// program: WLXPhotoLibraryMain.dll

// ===== FUN_63d1f81e @ 63d1f81e  size 39
// callers: [FUN_63d172df@63d1736c(UNCONDITIONAL_CALL), FUN_63d1f797@63d1f7c8(UNCONDITIONAL_CALL)]

void FUN_63d1f81e(void)

{
  int unaff_EDI;
  undefined4 local_28;
  
  FUN_63d4dfb8(*(HWND *)(unaff_EDI + 4));
  FUN_63d205c6(local_28);
  return;
}



// ===== FUN_63d4ebd4 @ 63d4ebd4  size 652
// callers: [FUN_63d16772@63d16786(UNCONDITIONAL_CALL)]

void FUN_63d4ebd4(undefined4 param_1,HWND param_2,int *param_3,uint param_4)

{
  uint uVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  bool bVar8;
  bool bVar9;
  uint local_70;
  uint local_6c;
  uint local_68 [8];
  HWND local_48;
  int local_44;
  int local_40;
  uint local_3c;
  HWND local_38;
  int local_34;
  int local_30;
  int local_2c;
  HWND local_28;
  int local_24;
  int local_20;
  int local_1c;
  undefined4 local_14;
  int local_10;
  HDC local_8;
  
  FUN_63d4dfb8(param_2);
  local_38 = (HWND)*param_3;
  local_34 = param_3[1];
  local_30 = param_3[2] - (int)local_38;
  local_2c = param_3[3] - local_34;
  local_28 = local_38;
  local_24 = local_34;
  local_20 = local_30;
  local_1c = local_2c;
  local_8 = GetDC((HWND)0x0);
  if (local_8 == (HDC)0x0) {
    iVar4 = 0x20;
  }
  else {
    iVar4 = GetDeviceCaps(local_8,0xe);
    iVar5 = GetDeviceCaps(local_8,0xc);
    iVar4 = iVar4 * iVar5;
  }
  uVar6 = FUN_63d50f88();
  if (((char)uVar6 != '\0') || (bVar2 = true, iVar4 < 0x18)) {
    bVar2 = false;
  }
  bVar8 = false;
  iVar4 = local_1c;
  if ((bVar2) && (local_6c != local_70)) {
    local_48 = local_38;
    local_44 = local_34;
    local_40 = local_30;
    local_3c = param_4;
    local_24 = param_4 + local_34;
    iVar4 = local_2c - local_24;
    param_4 = local_70;
    FUN_63cc3b6f(&param_4,&local_48,1);
    bVar8 = local_10 == 0;
    local_10 = 0;
    if (bVar8) {
      iVar5 = FUN_63cbb733(local_48,local_44,local_40,local_3c);
      if (iVar5 == 0) {
        bVar8 = true;
        GdipDeleteBrush(local_14);
        goto LAB_63d4ed1a;
      }
      FUN_63cf768e(iVar5);
LAB_63d4eced:
      GdipDeleteBrush(local_14);
      goto joined_r0x63d4ecbd;
    }
  }
  else {
LAB_63d4ed1a:
    param_4 = local_6c;
    FUN_63cbb7df();
    bVar9 = local_10 == 0;
    local_10 = 0;
    if (bVar9) {
      iVar4 = FUN_63cbb733(local_28,local_24,local_20,iVar4);
      if (bVar8) {
        if (iVar4 != 0) goto LAB_63d4eced;
LAB_63d4ed6d:
        local_44 = param_3[1];
        param_4 = local_68[0];
        local_48 = (HWND)*param_3;
        local_40 = param_3[2] - (int)local_48;
        local_3c = param_3[3] - local_44;
        FUN_63cc3b6f(&param_4,&local_48,1);
        iVar4 = local_20;
        bVar8 = local_1c == 0;
        local_1c = 0;
        if (bVar8) {
          param_4 = 0;
          param_2 = local_38;
          do {
            uVar1 = local_68[param_4 * 2];
            if (uVar1 != 0) {
              if ((bVar2) && (uVar1 != local_68[param_4 * 2 + 1])) {
                iVar7 = GdipSetLineColors(iVar4,uVar1,local_68[param_4 * 2 + 1]);
                iVar5 = iVar7;
                iVar3 = local_10;
                if (iVar7 == 0) {
                  iVar7 = 0;
                  iVar5 = local_1c;
                }
              }
              else {
                iVar7 = GdipSetSolidFillColor(local_14,uVar1);
                iVar5 = local_1c;
                iVar3 = iVar7;
                if (iVar7 == 0) {
                  iVar7 = 0;
                  iVar3 = local_10;
                }
              }
              local_10 = iVar3;
              local_1c = iVar5;
              if ((iVar7 != 0) || (iVar5 = FUN_63cbb733(param_2,local_34,1,local_2c), iVar5 != 0))
              break;
            }
            param_4 = param_4 + 1;
            param_2 = (HWND)((int)&param_2->unused + 1);
          } while (param_4 < 4);
        }
        GdipDeleteBrush(iVar4);
      }
      else {
        if (iVar4 == 0) goto LAB_63d4ed6d;
        FUN_63cf768e(iVar4);
      }
      GdipDeleteBrush(local_14);
      goto joined_r0x63d4ecbd;
    }
  }
  local_10 = 0;
  GdipDeleteBrush(local_14);
joined_r0x63d4ecbd:
  if (local_8 != (HDC)0x0) {
    ReleaseDC((HWND)0x0,local_8);
  }
  return;
}



// ===== FUN_63d4df59 @ 63d4df59  size 47
// callers: [FUN_63d4dfb8@63d4e010(UNCONDITIONAL_CALL), FUN_63d4dfb8@63d4e040(UNCONDITIONAL_CALL), FUN_63d4dfb8@63d4e070(UNCONDITIONAL_CALL), FUN_63d4dfb8@63d4e098(UNCONDITIONAL_CALL), FUN_63d4e249@63d4e296(UNCONDITIONAL_CALL), FUN_63d4e249@63d4e2bc(UNCONDITIONAL_CALL), FUN_63d4e34e@63d4e427(UNCONDITIONAL_CALL), FUN_63d4e34e@63d4e44c(UNCONDITIONAL_CALL), FUN_63d4e34e@63d4e475(UNCONDITIONAL_CALL), FUN_63d4e84a@63d4e8ac(UNCONDITIONAL_CALL), FUN_63d4e84a@63d4e8da(UNCONDITIONAL_CALL), FUN_63d4e84a@63d4e900(UNCONDITIONAL_CALL), FUN_63d4e84a@63d4e926(UNCONDITIONAL_CALL)]

undefined4 FUN_63d4df59(uint *param_1,undefined4 param_2)

{
  uint uVar1;
  uint *in_EAX;
  
  uVar1 = *in_EAX;
  *param_1 = ((uVar1 & 0xff | 0xffffff00) << 8 | uVar1 >> 8 & 0xff) << 8 | uVar1 >> 0x10 & 0xff;
  return param_2;
}



// ===== FUN_63cf79b7 @ 63cf79b7  size 106
// callers: [FUN_63cc38bc@63cc38e3(UNCONDITIONAL_CALL), FUN_63cc7030@63cc715c(UNCONDITIONAL_CALL), FUN_63cc7030@63cc7189(UNCONDITIONAL_CALL), FUN_63ceccde@63cecf73(UNCONDITIONAL_CALL), FUN_63ced27b@63ced2f4(UNCONDITIONAL_CALL), FUN_63ced27b@63ced37a(UNCONDITIONAL_CALL), FUN_63d4dfb8@63d4e0bd(UNCONDITIONAL_CALL), FUN_63d4dfb8@63d4e0e0(UNCONDITIONAL_CALL), FUN_63d4dfb8@63d4e150(UNCONDITIONAL_CALL), FUN_63d4dfb8@63d4e176(UNCONDITIONAL_CALL), FUN_63d4e249@63d4e323(UNCONDITIONAL_CALL), FUN_63d4e34e@63d4e4fc(UNCONDITIONAL_CALL), FUN_63d4e34e@63d4e52f(UNCONDITIONAL_CALL), FUN_63d4e9ff@63d4eaab(UNCONDITIONAL_CALL), FUN_63d4e9ff@63d4eabe(UNCONDITIONAL_CALL), FUN_63d5277a@63d52896(UNCONDITIONAL_CALL)]

uint __fastcall FUN_63cf79b7(undefined4 param_1,uint param_2,int param_3)

{
  uint in_EAX;
  int iVar1;
  
  iVar1 = 0x100 - param_3;
  return ((in_EAX >> 8 & 0xffff00ff) * param_3 + (param_2 >> 8 & 0xffff00ff) * iVar1 ^
         (param_2 & 0xff00ff) * iVar1 + (in_EAX & 0xff00ff) * param_3 >> 8) & 0xff00ff ^
         (param_2 >> 8 & 0xff00ff) * iVar1 + (in_EAX >> 8 & 0xff00ff) * param_3;
}



// ===== FUN_63d50f88 @ 63d50f88  size 54
// callers: [FUN_63cc7030@63cc712c(UNCONDITIONAL_CALL), FUN_63d14964@63d14986(UNCONDITIONAL_CALL), FUN_63d283ee@63d28476(UNCONDITIONAL_CALL), FUN_63d28a95@63d28aa6(UNCONDITIONAL_CALL), FUN_63d2bed5@63d2bee6(UNCONDITIONAL_CALL), FUN_63d2e7a1@63d2e7a9(UNCONDITIONAL_CALL), FUN_63d2e7f1@63d2e81a(UNCONDITIONAL_CALL), FUN_63d2e7f1@63d2e8c0(UNCONDITIONAL_CALL), FUN_63d300c2@63d300d0(UNCONDITIONAL_CALL), FUN_63d33c56@63d33c64(UNCONDITIONAL_CALL), FUN_63d45f0c@63d45f57(UNCONDITIONAL_CALL), FUN_63d4668a@63d46697(UNCONDITIONAL_CALL), FUN_63d470af@63d47148(UNCONDITIONAL_CALL), FUN_63d4dfb8@63d4e13a(UNCONDITIONAL_CALL), FUN_63d4e34e@63d4e358(UNCONDITIONAL_CALL), FUN_63d4e545@63d4e550(UNCONDITIONAL_CALL), FUN_63d4e9ff@63d4ea06(UNCONDITIONAL_CALL), FUN_63d4ebd4@63d4ec3d(UNCONDITIONAL_CALL), FUN_63d51468@63d5146b(UNCONDITIONAL_CALL), FUN_63d51481@63d5148a(UNCONDITIONAL_CALL), FUN_63d51e75@63d51e80(UNCONDITIONAL_CALL), FUN_63d5277a@63d52823(UNCONDITIONAL_CALL), FUN_63d5277a@63d5295d(UNCONDITIONAL_CALL), FUN_63d53096@63d530a6(UNCONDITIONAL_CALL), FUN_63d531ea@63d531f7(UNCONDITIONAL_CALL), FUN_63d531ea@63d53268(UNCONDITIONAL_CALL), FUN_63d55327@63d5538e(UNCONDITIONAL_CALL), FUN_63d55327@63d553ac(UNCONDITIONAL_CALL)]

undefined4 FUN_63d50f88(void)

{
  BOOL BVar1;
  undefined4 uVar2;
  undefined4 local_10;
  uint local_c;
  undefined4 uStack_8;
  
  local_c = 0;
  uStack_8 = 0;
  local_10 = 0xc;
  BVar1 = SystemParametersInfoW(0x42,0xc,&local_10,0);
  if ((BVar1 == 0) || (uVar2 = 1, (local_c & 1) == 0)) {
    uVar2 = 0;
  }
  return uVar2;
}



// ===== FUN_63d1e8d3 @ 63d1e8d3  size 61
// callers: [<data>@63c9b220(DATA)]

void __thiscall FUN_63d1e8d3(void *this,undefined4 *param_1,int *param_2)

{
  if (*(int *)((int)this + 0x6c) == 0) {
    FUN_63d4e22f(*(HWND *)((int)this + 4));
  }
  else if (*(int *)((int)this + 0x6c) == 1) {
    FUN_63d4e1b1(*(HWND *)((int)this + 4),6,0x1a);
  }
  FUN_63d58297((int)this,param_1,param_2);
  return;
}



// ===== FUN_63d296e7 @ 63d296e7  size 126
// callers: [<data>@63c9b444(DATA)]

void __thiscall FUN_63d296e7(void *this,undefined4 param_1,uint param_2)

{
  if ((param_2 & 0x20) == 0) {
    GetSysColor(0x11);
  }
  else if (*(int *)((int)this + 0x174) == 0) {
    FUN_63d4e22f(*(HWND *)((int)this + 4));
  }
  else if (*(int *)((int)this + 0x174) == 1) {
    FUN_63d4e1b1(*(HWND *)((int)this + 4),6,0x1a);
  }
  FUN_63d55a01((int)this);
  return;
}



// ===== FUN_63d4e22f @ 63d4e22f  size 21
// callers: [FUN_63d1e8d3@63d1e8f9(UNCONDITIONAL_CALL), FUN_63d28de6@63d28f27(UNCONDITIONAL_CALL), FUN_63d296e7@63d29719(UNCONDITIONAL_CALL), FUN_63d33e03@63d33ed0(UNCONDITIONAL_CALL)]

void FUN_63d4e22f(HWND param_1)

{
  FUN_63d4e1b1(param_1,4,8);
  return;
}



// ===== FUN_63cce8fc @ 63cce8fc  size 429
// callers: [FUN_63cd5737@63cd57b0(UNCONDITIONAL_CALL), FUN_63cd5737@63cd57e1(UNCONDITIONAL_CALL), FUN_63cd5737@63cd5808(UNCONDITIONAL_CALL), FUN_63cd582e@63cd586f(UNCONDITIONAL_CALL), FUN_63cd5886@63cd5913(UNCONDITIONAL_CALL), FUN_63cd5886@63cd5969(UNCONDITIONAL_CALL)]

void FUN_63cce8fc(int param_1,undefined4 param_2,RECT *param_3)

{
  undefined1 *puVar1;
  RECT *lprcSrc1;
  int iVar2;
  undefined4 uVar3;
  BOOL BVar4;
  RECT *pRVar5;
  tagRECT local_5c;
  RECT local_4c;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  undefined4 local_28;
  int local_24;
  int local_20 [2];
  undefined4 local_18;
  int local_14;
  uint local_10;
  uint local_c [2];
  
  lprcSrc1 = param_3;
  FUN_63cbb7df();
  iVar2 = local_24;
  local_24 = 0;
  if (iVar2 == 0) {
    if (*(char *)(param_1 + 0x1d4c) == '\0') {
      FUN_63cbb733(param_3->left,param_3->top,param_3->right - param_3->left,
                   param_3->bottom - param_3->top);
    }
    else {
      FUN_63cced66();
      if (param_3->top <= local_38) {
        local_38 = param_3->top;
      }
      if (local_30 <= param_3->bottom) {
        local_30 = param_3->bottom;
      }
      FUN_63d4e249(*(HWND *)(param_1 + 0x18),local_c,&local_10);
      pRVar5 = (RECT *)((local_34 - local_3c) / 2 + local_3c);
      FUN_63cc7fb9(0x3f800000);
      iVar2 = local_14;
      local_14 = 0;
      param_3 = pRVar5;
      if (iVar2 == 0) {
        FUN_63cd7426(pRVar5,local_38,pRVar5,local_30);
        if (local_10 != *(uint *)(param_1 + 0x1ee4)) {
          param_3 = (RECT *)((int)&pRVar5->left + 1);
          iVar2 = GdipSetPenColor(local_18,local_10);
          if (iVar2 != 0) {
            local_14 = iVar2;
          }
          FUN_63cd7426(param_3,local_38,param_3,local_30);
        }
      }
      iVar2 = lprcSrc1->left;
      if (iVar2 < (int)pRVar5) {
        FUN_63cbb733(iVar2,lprcSrc1->top,(int)pRVar5 - iVar2,lprcSrc1->bottom - lprcSrc1->top);
      }
      puVar1 = (undefined1 *)((int)&param_3->left + 1);
      if ((int)puVar1 < lprcSrc1->right) {
        FUN_63cbb733(puVar1,lprcSrc1->top,(lprcSrc1->right - (int)param_3) + -1,
                     lprcSrc1->bottom - lprcSrc1->top);
      }
      GdipDeletePen(local_18);
    }
    uVar3 = FUN_63cd4540(param_1,&local_5c.left,&local_4c.left,local_20,&local_3c);
    if ((char)uVar3 != '\0') {
      BVar4 = IntersectRect(&local_5c,lprcSrc1,&local_4c);
      if (BVar4 != 0) {
        FUN_63cec7a8(param_2,&local_4c.left);
      }
    }
  }
  GdipDeleteBrush(local_28);
  return;
}



// ===== FUN_63d283ee @ 63d283ee  size 618
// callers: [<data>@63c9a9a0(DATA), <data>@63c9af4c(DATA), <data>@63c9ca9c(DATA)]

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall FUN_63d283ee(void *this,HDC param_1)

{
  undefined4 uVar1;
  int *pExceptionObject;
  int iVar2;
  int iVar3;
  bool bVar4;
  uint local_60;
  uint local_5c;
  uint local_58 [2];
  undefined4 local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  undefined4 local_3c;
  tagRECT local_38;
  int local_28 [5];
  void *local_14;
  undefined1 *puStack_10;
  undefined4 local_c;
  
  local_c = 0xffffffff;
  puStack_10 = &LAB_63dc246f;
  local_14 = ExceptionList;
  ExceptionList = &local_14;
  FUN_63d2880f(this,param_1);
  local_38.left = 0;
  local_38.top = 0;
  local_38.right = 0;
  local_38.bottom = 0;
  GetClientRect(*(HWND *)((int)this + 4),&local_38);
  iVar3 = (local_38.bottom + -2 + local_38.top) / 2;
  local_60 = 0;
  local_5c = 0;
  FUN_63d4e249(*(HWND *)((int)this + 4),&local_60,&local_5c);
  uVar1 = FUN_63d50f88();
  if ((char)uVar1 == '\0') {
    local_40 = local_38.right - local_38.left;
    local_58[0] = local_60 & 0xffffff;
    local_48 = local_38.left;
    local_3c = 1;
    local_44 = iVar3;
    FUN_63cc3b6f(local_58,&local_48,0);
    iVar3 = local_4c;
    local_c = 1;
    local_4c = 0;
    if (iVar3 == 0) {
      iVar3 = FUN_63d288ea(_DAT_63e02e44,0x3f800000);
      if (iVar3 == 0) {
        iVar3 = FUN_63cbb733(local_48,local_44,local_40,local_3c);
        if (iVar3 == 0) {
          local_44 = local_44 + 1;
          iVar2 = GdipSetLineColors(local_50,local_5c & 0xffffff,local_5c);
          iVar3 = iVar2;
          if (iVar2 == 0) {
            iVar2 = 0;
            iVar3 = local_4c;
          }
          local_4c = iVar3;
          if (iVar2 == 0) {
            iVar3 = FUN_63cbb733(local_48,local_44,local_40,local_3c);
            if (iVar3 == 0) goto LAB_63d2863a;
            pExceptionObject = local_28;
            FUN_63cbc1f7();
          }
          else {
            pExceptionObject = local_28;
            FUN_63cbc1f7();
          }
        }
        else {
          pExceptionObject = local_28;
          FUN_63cbc1f7();
        }
      }
      else {
        pExceptionObject = local_28;
        FUN_63cbc1f7();
      }
    }
    else {
      pExceptionObject = local_28;
      FUN_63cbc1f7();
    }
  }
  else {
    local_5c = local_60;
    FUN_63cbb7df();
    local_c = 0;
    bVar4 = local_4c == 0;
    local_4c = 0;
    if (bVar4) {
      iVar3 = FUN_63cbb733(local_38.left,iVar3,local_38.right - local_38.left,2);
      if (iVar3 == 0) {
LAB_63d2863a:
        GdipDeleteBrush(local_50);
        ExceptionList = local_14;
        return;
      }
      pExceptionObject = &local_48;
      FUN_63cbc1f7();
    }
    else {
      pExceptionObject = &local_48;
      FUN_63cbc1f7();
    }
  }
                    /* WARNING: Subroutine does not return */
  _CxxThrowException(pExceptionObject,(ThrowInfo *)&DAT_63dd15f8);
}


