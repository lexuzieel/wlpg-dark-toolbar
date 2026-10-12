// program: WLXPhotoLibraryMain.dll

// ===== FUN_63d28de6 @ 63d28de6  size 489
// callers: [FUN_63d28a95@63d28b66(UNCONDITIONAL_CALL)]

void __fastcall FUN_63d28de6(int param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  int iVar3;
  undefined4 uVar4;
  int unaff_EBX;
  undefined4 unaff_ESI;
  undefined1 auStack_45c [3];
  undefined1 local_459;
  undefined4 *puStack_458;
  int iStack_454;
  undefined4 uStack_450;
  undefined1 auStack_448 [8];
  undefined4 local_440;
  undefined4 local_43c;
  wchar_t awStack_438 [2];
  int local_434;
  undefined2 local_420;
  undefined1 local_41e [1002];
  uint uStack_34;
  void *pvStack_2c;
  undefined4 uStack_24;
  uint local_1c;
  void *local_14;
  undefined1 *puStack_10;
  undefined4 uStack_c;
  
  puVar1 = DAT_63df401c;
  uStack_c = 0xffffffff;
  puStack_10 = &LAB_63dcbd35;
  local_14 = ExceptionList;
  local_1c = (uint)DAT_63df401c ^ (uint)auStack_45c;
  ExceptionList = &local_14;
  local_43c = param_3;
  local_440 = param_4;
  local_420 = 0;
  local_434 = param_1;
  memset(local_41e,0,0x3fe);
  puVar2 = &local_459;
  local_459 = 0;
  (**(code **)(**(int **)(param_1 + 0xc) + 8))(*(int **)(param_1 + 0xc),param_2[1],0,&local_420);
  FUN_63cf7f2a();
  FUN_63d290e7();
  uStack_24 = 0;
  if (puVar1 == &stack0xfffffb98) {
    iVar3 = GdipSetStringFormatAlign(puVar2,0);
    if (iVar3 == 0) {
      iVar3 = GdipSetStringFormatLineAlign(puVar2,1);
      if (iVar3 == 0) {
        iVar3 = GdipSetStringFormatTrimming(puVar2,3);
        if (iVar3 == 0) {
          uStack_450 = FUN_63d4e22f((HWND)*param_2);
          FUN_63cbb7df();
          uStack_24 = CONCAT31(uStack_24._1_3_,1);
          if (unaff_EBX == 0) {
            uVar4 = FUN_63cf7dfc();
            FUN_63d50c5f((HWND)*param_2,puStack_458,awStack_438,uVar4,(int *)(iStack_454 + 0x20),
                         (undefined4 *)&stack0xfffffb90,&stack0xfffffb98);
            GdipDeleteBrush(unaff_ESI);
            GdipDeleteStringFormat(puVar2);
            ExceptionList = pvStack_2c;
            __security_check_cookie(uStack_34 ^ (uint)&stack0xfffffb8c);
            return;
          }
          puVar2 = auStack_448;
          FUN_63cbc1f7();
        }
        else {
          puVar2 = &stack0xfffffb98;
          FUN_63cbc1f7();
        }
      }
      else {
        puVar2 = &stack0xfffffb98;
        FUN_63cbc1f7();
      }
    }
    else {
      puVar2 = &stack0xfffffb98;
      FUN_63cbc1f7();
    }
  }
  else {
    puVar2 = &stack0xfffffb98;
    FUN_63cbc1f7();
  }
                    /* WARNING: Subroutine does not return */
  _CxxThrowException(puVar2,(ThrowInfo *)&DAT_63dd15f8);
}



// ===== FUN_63d33e03 @ 63d33e03  size 299
// callers: [FUN_63d33a6b@63d33aab(UNCONDITIONAL_CALL), FUN_63d33da3@63d33db6(UNCONDITIONAL_CALL)]

/* WARNING: Function: __EH_prolog3_catch replaced with injection: EH_prolog3 */
/* WARNING: Function: __EH_epilog3 replaced with injection: EH_epilog3 */

void FUN_63d33e03(int param_1)

{
  BOOL BVar1;
  int iVar2;
  undefined4 *puVar3;
  tagRECT local_48;
  int local_38;
  int local_34;
  undefined4 local_30;
  undefined4 local_2c;
  int local_1c;
  undefined1 *local_18 [4];
  undefined4 local_8;
  undefined4 uStack_4;
  
  uStack_4 = 0x38;
  local_8 = 0x63d33e0f;
  if (*(char *)(param_1 + 0x3d8) == '\0') {
    local_48.left = 0;
    local_48.top = 0;
    local_48.right = 0;
    local_48.bottom = 0;
    BVar1 = GetClientRect(*(HWND *)(param_1 + 4),&local_48);
    if (BVar1 == 0) {
      Base::ThrowLastError();
    }
    FUN_63d34245(param_1,(int *)(param_1 + 0xe8),0x232b,0x232a,0x2331,0x2332,(HMENU)0xbf69);
    FUN_63d34245(param_1,(int *)(param_1 + 0x25c),0x2329,9000,0x232f,0x2330,(HMENU)0xbf68);
    local_8 = 0;
    local_30 = 1;
    local_2c = 1;
    local_18[0] = &stack0xffffff9c;
    local_38 = 0;
    local_34 = 0;
    FUN_63cee01a(*(HWND *)(param_1 + 4),&local_38,0x50000000,(HMENU)0x0);
    FUN_63d580ff(2);
    iVar2 = FUN_63d4e22f(*(HWND *)(param_1 + 4));
    FUN_63d58194(iVar2);
    puVar3 = (undefined4 *)FUN_63d33a20(local_18);
    SetWindowTextW(*(HWND *)(param_1 + 0x7c),(LPCWSTR)*puVar3);
    FUN_63cbc052((undefined4 *)(local_18[0] + -0x10));
    FUN_63d580d1('\0');
    MoveWindow(*(HWND *)(param_1 + 0x7c),local_38,local_34,local_1c,(int)local_18[0],0);
    local_8 = 0xffffffff;
    FUN_63d33f40();
    return;
  }
  return;
}



// ===== FUN_63d16772 @ 63d16772  size 29
// callers: [FUN_63d0b104@63d0b17e(UNCONDITIONAL_CALL), FUN_63d0b104@63d0b1b3(UNCONDITIONAL_CALL), FUN_63d0b104@63d0b1de(UNCONDITIONAL_CALL), FUN_63d0b204@63d0b244(UNCONDITIONAL_CALL), FUN_63d0b25b@63d0b2e6(UNCONDITIONAL_CALL), FUN_63d0b25b@63d0b33d(UNCONDITIONAL_CALL)]

void FUN_63d16772(undefined4 param_1,int *param_2)

{
  int in_EAX;
  
  FUN_63d4ebd4(param_1,*(HWND *)(in_EAX + 4),param_2,*(uint *)(in_EAX + 0x1e4));
  return;
}



// ===== FUN_63d172df @ 63d172df  size 242
// callers: [<data>@63c9a34c(DATA), <data>@63c9b228(DATA)]

undefined4 __thiscall
FUN_63d172df(void *this,undefined4 param_1,int param_2,HWND param_3,int param_4,undefined4 *param_5,
            int param_6)

{
  short sVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  void *local_c [2];
  
  if (param_6 != 0) {
    return 0;
  }
  local_c[0] = this;
  iVar2 = FUN_63d17bd7(this,param_1,param_2,param_3,param_4,param_5,0);
  if (iVar2 != 0) {
    return 1;
  }
  if (param_2 == 1) {
    uVar3 = FUN_63d1f754((int)this);
  }
  else {
    if (param_2 != 0x7e8) {
      if (param_2 == 0x7b) {
        local_c[0] = (void *)0x1;
        uVar3 = FUN_63d1fc98(param_3,local_c);
        *param_5 = uVar3;
        if (local_c[0] == (void *)0x0) {
          return 0;
        }
        return 1;
      }
      if ((param_2 == 0x15) || (param_2 == 0x31a)) {
        FUN_63d1f81e();
        *param_5 = 0;
        return 1;
      }
      if (param_2 != 0x111) {
        return 0;
      }
      sVar1 = (short)param_3;
      if (sVar1 == -0x5420) {
        uVar4 = 1;
      }
      else {
        if (sVar1 != -0x541f) {
          if (sVar1 == -0x34e0) {
            uVar3 = FUN_63d1ff38(this);
          }
          else {
            if (sVar1 != -0x34df) {
              return 0;
            }
            uVar3 = FUN_63d1ff79(this);
          }
          goto LAB_63d17323;
        }
        uVar4 = 0;
      }
      FUN_63d38dc1((HRGN)((int)this + 0x10c),*(uint *)((int)this + 0x1414),uVar4);
      *param_5 = 0;
      return 1;
    }
    uVar3 = FUN_63d1fb99(this);
  }
LAB_63d17323:
  *param_5 = uVar3;
  return 1;
}



// ===== FUN_63d1f797 @ 63d1f797  size 130
// callers: [FUN_63d1f754@63d1f767(UNCONDITIONAL_CALL)]

void FUN_63d1f797(int param_1)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = FUN_63d2032e(*(HWND *)(param_1 + 4),(int *)0x0,(HMENU)0x0);
  if (iVar1 == 0) {
    Base::ThrowLastError();
  }
  FUN_63d1f81e();
  FUN_63d1f84a(param_1);
  FUN_63d1fa79();
  FUN_63d1f9bd(param_1);
  FUN_63ccb675();
  uVar2 = GetWindowLongW(*(HWND *)(param_1 + 0x110),-0x10);
  if (uVar2 != (uVar2 | 0x20000)) {
    SetWindowLongW(*(HWND *)(param_1 + 0x110),-0x10,uVar2 | 0x20000);
  }
  return;
}


