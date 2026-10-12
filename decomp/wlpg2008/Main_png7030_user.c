// program: WLXPhotoLibraryMain.dll

// ===== FUN_63d13d5b @ 63d13d5b  size 650
// callers: [FUN_63d15a6c@63d15ac2(UNCONDITIONAL_CALL)]

/* WARNING: Function: __EH_prolog3 replaced with injection: EH_prolog3 */
/* WARNING: Function: __EH_epilog3 replaced with injection: EH_epilog3 */

int * FUN_63d13d5b(int *param_1,HWND param_2)

{
  code *pcVar1;
  undefined4 *puVar2;
  int *piVar3;
  BOOL BVar4;
  int iVar5;
  long lVar6;
  undefined1 local_30 [16];
  int *local_20;
  int local_1c;
  uint local_18;
  undefined4 *local_14;
  undefined4 local_8;
  undefined4 uStack_4;
  
  pcVar1 = DefWindowProcW_exref;
  uStack_4 = 0x20;
  param_1[1] = 0;
  param_1[5] = 0;
  local_18 = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = (int)pcVar1;
  local_8 = 0;
  param_1[9] = (int)CustomFrameWindowHandle::vftable;
  FUN_63cca798();
  param_1[0xc5] = -1;
  *param_1 = (int)CustomFrameWindow::vftable;
  param_1[9] = (int)CustomFrameWindow::vftable;
  *(undefined1 *)(param_1 + 0xc) = 0;
  *(undefined1 *)((int)param_1 + 0x31) = 1;
  param_1[0xd] = 9;
  *(undefined1 *)(param_1 + 0xe) = 1;
  param_1[0xf] = 0;
  *(undefined1 *)(param_1 + 0x10) = 0;
  *(undefined1 *)((int)param_1 + 0x41) = 0;
  *(undefined1 *)((int)param_1 + 0x24a) = 0;
  param_1[0x93] = 0;
  *(undefined1 *)(param_1 + 0x94) = 0;
  *(undefined1 *)((int)param_1 + 0x251) = 0;
  *(undefined1 *)((int)param_1 + 0x252) = 1;
  param_1[0xc6] = 0;
  param_1[199] = 0;
  local_8._0_1_ = 3;
  FUN_63d139f0(param_1 + 200,0x1b79);
  local_8._0_1_ = 4;
  FUN_63d139f0(param_1 + 0xcc,0x1b78);
  local_8._0_1_ = 5;
  FUN_63d139f0(param_1 + 0xd0,0x1b7a);
  local_8._0_1_ = 6;
  FUN_63d139f0(param_1 + 0xd4,0x1b77);
  piVar3 = param_1 + 0xd8;
  *piVar3 = 0;
  param_1[0xd9] = 0;
  local_8 = CONCAT31(local_8._1_3_,9);
  param_1[0xda] = 0;
  *(undefined2 *)((int)param_1 + 0x42) = 0;
  memset(param_1 + 0x95,0,0x60);
  memset(param_1 + 0xad,0,0x60);
  local_14 = (undefined4 *)FUN_63ce73cb(0x1b7b);
  puVar2 = (undefined4 *)param_1[199];
  if (puVar2 != local_14) {
    if (puVar2 != (undefined4 *)0x0) {
      (**(code **)*puVar2)(1);
    }
    param_1[199] = (int)local_14;
  }
  if (param_1[199] != 0) goto LAB_63d13ec3;
LAB_63d13eb8:
  lVar6 = -0x7fff0001;
  do {
    while( true ) {
      Base::Throw(lVar6);
LAB_63d13ec3:
      FUN_63ce73cb(0x1b76);
      FUN_63cc9f2a();
      if (*piVar3 == 0) goto LAB_63d13eb8;
      puVar2 = (undefined4 *)FUN_63cbc28f(&local_1c,0x1b7d);
      local_14 = (undefined4 *)_wtoi((wchar_t *)*puVar2);
      FUN_63cbc052((undefined4 *)(local_1c + -0x10));
      if ((int)local_14 < 1) goto LAB_63d13eb8;
      piVar3 = (int *)GdipAlloc(8);
      local_8._0_1_ = 10;
      local_20 = piVar3;
      if (piVar3 == (int *)0x0) {
        puVar2 = (undefined4 *)0x0;
      }
      else {
        puVar2 = (undefined4 *)FUN_63cbc28f(&local_1c,0x1b7c);
        local_18 = 1;
        puVar2 = (undefined4 *)FUN_63cf7f46(*puVar2,(float)(int)local_14);
      }
      local_8 = CONCAT31(local_8._1_3_,9);
      FUN_63cf7edc(puVar2);
      if ((local_18 & 1) != 0) {
        FUN_63cbc052((undefined4 *)(local_1c + -0x10));
      }
      if (param_1[0xd9] != 0) break;
      lVar6 = -0x7ff8fff2;
    }
    if (*(int *)(param_1[0xd9] + 4) != 0) {
      FUN_63cbc1f7();
                    /* WARNING: Subroutine does not return */
      _CxxThrowException(local_30,(ThrowInfo *)&DAT_63dd15f8);
    }
    if (param_2 != (HWND)0x0) {
      BVar4 = IsWindow(param_2);
      if (BVar4 != 0) break;
    }
    lVar6 = -0x7ff8ffa9;
  } while( true );
  iVar5 = FUN_63ce3ba6(param_2);
  piVar3 = param_1;
  if (iVar5 != 0) {
    FUN_63d149cf();
    BVar4 = IsWindow(param_2);
    if (BVar4 != 0) {
      FUN_63d14964();
      return param_1;
    }
  }
  goto LAB_63d13eb8;
}


