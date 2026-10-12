// program: WLXPhotoLibraryMain.dll

// ===== FUN_63d2bed5 @ 63d2bed5  size 1752
// callers: [FUN_63d0b3fb@63d0b477(UNCONDITIONAL_CALL), FUN_63d0b3fb@63d0b4ae(UNCONDITIONAL_CALL), FUN_63d0b3fb@63d0b4db(UNCONDITIONAL_CALL), FUN_63d0b501@63d0b544(UNCONDITIONAL_CALL), FUN_63d0b56c@63d0b5ed(UNCONDITIONAL_CALL), FUN_63d0b56c@63d0b639(UNCONDITIONAL_CALL)]

/* WARNING: Function: __EH_prolog3 replaced with injection: EH_prolog3 */
/* WARNING: Function: __EH_epilog3 replaced with injection: EH_epilog3 */

void __thiscall FUN_63d2bed5(void *this,int param_1)

{
  undefined4 *puVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  int *pExceptionObject;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  undefined4 local_a8;
  int local_a4;
  undefined4 local_9c;
  int local_98;
  undefined4 local_8c;
  int local_88;
  int local_84;
  int local_80;
  int local_7c;
  int local_78;
  int local_74;
  int local_70;
  int local_6c;
  int local_68;
  int local_64;
  int local_60;
  int local_5c;
  int local_58;
  undefined4 local_50;
  int local_4c [2];
  undefined4 local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  undefined4 local_1c;
  int local_18;
  undefined4 local_8;
  undefined4 uStack_4;
  
  uStack_4 = 0x9c;
  local_8 = 0x63d2bee4;
  uVar3 = FUN_63d50f88();
  if ((char)uVar3 == '\0') {
    uVar3 = FUN_63d50151();
    if ((char)uVar3 == '\0') {
      local_28 = *(int *)((int)this + 4);
      local_2c = *(int *)this;
      local_20 = (*(int *)((int)this + 0xc) - local_28) + -2;
      local_24 = *(int *)((int)this + 8) - local_2c;
      local_18 = -0x935532;
      local_1c = 0xff005c96;
      FUN_63cc3b6f(&local_1c,&local_2c,1);
      local_8._0_1_ = 6;
      local_8._1_3_ = 0;
      uVar2 = (undefined1)local_8;
      if ((local_a4 == 0) &&
         (iVar4 = FUN_63cbb733(local_2c,local_28,local_24,local_20), uVar2 = (undefined1)local_8,
         iVar4 == 0)) {
        local_38 = *(int *)((int)this + 4);
        local_3c = *(int *)this;
        local_30 = *(int *)((int)this + 0xc) - local_38;
        local_34 = *(int *)((int)this + 8) - local_3c;
        local_18 = -0x562d1b;
        local_1c = 0xff558fb4;
        FUN_63cc3b6f(&local_1c,&local_3c,1);
        local_8._0_1_ = 7;
        uVar2 = (undefined1)local_8;
        if ((local_98 == 0) &&
           (iVar4 = FUN_63cbb733(*(undefined4 *)this,*(int *)((int)this + 4),1,
                                 (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) + -1),
           uVar2 = (undefined1)local_8, iVar4 == 0)) {
          local_38 = *(int *)((int)this + 4);
          local_3c = *(int *)this;
          local_30 = *(int *)((int)this + 0xc) - local_38;
          local_34 = *(int *)((int)this + 8) - local_3c;
          local_18 = -0x562d1b;
          local_1c = 0xff558fb4;
          FUN_63cc3b6f(&local_1c,&local_3c,1);
          local_8._0_1_ = 8;
          uVar2 = (undefined1)local_8;
          local_8._0_1_ = 8;
          if ((local_88 == 0) &&
             (iVar4 = FUN_63cbb733(*(int *)((int)this + 8) + -1,*(int *)((int)this + 4),1,
                                   (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) + -1),
             uVar2 = (undefined1)local_8, iVar4 == 0)) {
            local_18 = -0x562d1b;
            FUN_63cc7fb9(0x3f800000);
            iVar4 = local_40;
            local_8._0_1_ = 9;
            uVar2 = (undefined1)local_8;
            local_8._0_1_ = 9;
            local_40 = 0;
            if ((iVar4 == 0) &&
               (iVar4 = *(int *)((int)this + 0xc) + -2,
               iVar4 = FUN_63cd7426(*(undefined4 *)this,iVar4,*(undefined4 *)((int)this + 8),iVar4),
               uVar2 = (undefined1)local_8, iVar4 == 0)) {
              local_18 = -0x8f8f90;
              FUN_63cc7fb9(0x3f800000);
              iVar4 = local_4c[0];
              local_8._0_1_ = 10;
              local_4c[0] = 0;
              uVar2 = (undefined1)local_8;
              if ((iVar4 == 0) &&
                 (iVar4 = *(int *)((int)this + 0xc) + -1,
                 iVar4 = FUN_63cd7426(*(undefined4 *)this,iVar4,*(undefined4 *)((int)this + 8),iVar4
                                     ), uVar2 = (undefined1)local_8, iVar4 == 0)) {
                if (*(int *)(param_1 + 0x2510) == 0) {
                  puVar6 = (undefined4 *)FUN_63ce73cb(0x36f6);
                  puVar1 = *(undefined4 **)(param_1 + 0x2510);
                  if (puVar1 != puVar6) {
                    if (puVar1 != (undefined4 *)0x0) {
                      (**(code **)*puVar1)(1);
                    }
                    *(undefined4 **)(param_1 + 0x2510) = puVar6;
                  }
                }
                iVar4 = *(int *)(param_1 + 0x2510);
                GdipDeletePen(local_50);
                GdipDeletePen(local_44);
                GdipDeleteBrush(local_8c);
                GdipDeleteBrush(local_9c);
                GdipDeleteBrush(local_a8);
                goto LAB_63d2c542;
              }
            }
            goto LAB_63d2c311;
          }
        }
        local_8._0_1_ = uVar2;
        pExceptionObject = &local_64;
        FUN_63cbc1f7();
      }
      else {
LAB_63d2c311:
        local_8._0_1_ = uVar2;
        pExceptionObject = &local_3c;
        FUN_63cbc1f7();
      }
      goto LAB_63d2bf45;
    }
    local_64 = *(int *)this;
    local_58 = (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) / 2 + -2;
    local_5c = *(int *)((int)this + 8) - local_64;
    local_60 = *(int *)((int)this + 4) + 2;
    local_4c[0] = -0xca7947;
    local_1c = 0xff7db1d2;
    local_18 = local_58;
    FUN_63cc3b6f(&local_1c,&local_64,1);
    local_8._0_1_ = 1;
    local_8._1_3_ = 0;
    if ((local_88 == 0) && (iVar4 = FUN_63cbb733(local_64,local_60,local_5c,local_58), iVar4 == 0))
    {
      local_3c = *(int *)this;
      local_34 = *(int *)((int)this + 8) - local_3c;
      iVar4 = (*(int *)((int)this + 0xc) - local_58) - local_60;
      local_38 = local_58 + local_60;
      local_30 = iVar4 + -2;
      local_1c = 0xff64a5c9;
      local_4c[0] = -0xffa36a;
      FUN_63cc3b6f(local_4c,&local_3c,1);
      local_8._0_1_ = 2;
      if ((local_98 == 0) && (iVar5 = FUN_63cbb733(local_3c,local_38,local_34,local_30), iVar5 == 0)
         ) {
        local_7c = (*(int *)((int)this + 8) - *(int *)this) + -2;
        local_80 = *(int *)((int)this + 4) + 1;
        local_84 = *(int *)this + 1;
        local_78 = local_18 + 1;
        local_18 = -0x7f4c2d;
        local_1c = 0xffafcfe4;
        FUN_63cc3b6f(&local_1c,&local_84,1);
        iVar5 = local_4c[0];
        local_8._0_1_ = 3;
        local_4c[0] = 0;
        if ((((iVar5 == 0) && (iVar5 = FUN_63cbb733(local_84,local_80,1,local_78), iVar5 == 0)) &&
            (iVar5 = FUN_63cbb733(local_84 + local_7c + -1,local_80,1,local_78), iVar5 == 0)) &&
           (iVar5 = FUN_63cbb733(local_84,local_80,local_7c,1), iVar5 == 0)) {
          local_6c = (*(int *)((int)this + 8) - *(int *)this) + -2;
          local_74 = *(int *)this + 1;
          local_70 = local_38;
          local_18 = -0x582e1c;
          local_1c = 0xff558fb4;
          local_68 = iVar4 + -1;
          FUN_63cc3b6f(&local_1c,&local_74,1);
          iVar4 = local_40;
          local_8._0_1_ = 4;
          local_40 = 0;
          if ((((iVar4 == 0) && (iVar4 = FUN_63cbb733(local_74,local_70,1,local_68), iVar4 == 0)) &&
              (iVar4 = FUN_63cbb733(local_74 + local_6c + -1,local_70,1,local_68), iVar4 == 0)) &&
             (iVar4 = FUN_63cbb733(local_74,local_68 + local_70 + -1,local_6c,1), iVar4 == 0)) {
            local_18 = -0x666667;
            FUN_63cc7fb9(0x3f800000);
            local_8._0_1_ = 5;
            if ((local_a4 == 0) &&
               (iVar4 = FUN_63cc7f7e(*(int *)((int)this + 4),*(int *)this,
                                     (*(int *)((int)this + 8) - *(int *)this) + -1,
                                     (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) + -1),
               iVar4 == 0)) {
              if (*(int *)(param_1 + 0x250c) == 0) {
                puVar6 = (undefined4 *)FUN_63ce73cb(0x36f5);
                puVar1 = *(undefined4 **)(param_1 + 0x250c);
                if (puVar1 != puVar6) {
                  if (puVar1 != (undefined4 *)0x0) {
                    (**(code **)*puVar1)(1);
                  }
                  *(undefined4 **)(param_1 + 0x250c) = puVar6;
                }
              }
              iVar4 = *(int *)(param_1 + 0x250c);
              GdipDeletePen(local_a8);
              GdipDeleteBrush(local_44);
              GdipDeleteBrush(local_50);
              GdipDeleteBrush(local_9c);
              GdipDeleteBrush(local_8c);
LAB_63d2c542:
              if ((0 < *(int *)(param_1 + 0x2500)) && (iVar4 != 0)) {
                FUN_63cc7e35();
                uVar3 = FUN_63cc7e5c();
                uVar7 = FUN_63cc7e35();
                FUN_63ceb982((void *)0x0,0,0,uVar7,uVar3);
              }
              return;
            }
          }
        }
      }
    }
  }
  else {
    GetSysColor(5);
    FUN_63cbb7df();
    iVar4 = local_40;
    local_8._0_1_ = 0;
    local_8._1_3_ = 0;
    local_40 = 0;
    if ((iVar4 == 0) &&
       (iVar4 = FUN_63cbb733(*(int *)this,*(int *)((int)this + 4),
                             *(int *)((int)this + 8) - *(int *)this,
                             *(int *)((int)this + 0xc) - *(int *)((int)this + 4)), iVar4 == 0)) {
      GdipDeleteBrush(local_44);
      return;
    }
  }
  pExceptionObject = &local_2c;
  FUN_63cbc1f7();
LAB_63d2bf45:
                    /* WARNING: Subroutine does not return */
  _CxxThrowException(pExceptionObject,(ThrowInfo *)&DAT_63dd15f8);
}



// ===== FUN_63d2bed5 @ 63d2bed5  size 1752
// callers: [FUN_63d0b3fb@63d0b477(UNCONDITIONAL_CALL), FUN_63d0b3fb@63d0b4ae(UNCONDITIONAL_CALL), FUN_63d0b3fb@63d0b4db(UNCONDITIONAL_CALL), FUN_63d0b501@63d0b544(UNCONDITIONAL_CALL), FUN_63d0b56c@63d0b5ed(UNCONDITIONAL_CALL), FUN_63d0b56c@63d0b639(UNCONDITIONAL_CALL)]

/* WARNING: Function: __EH_prolog3 replaced with injection: EH_prolog3 */
/* WARNING: Function: __EH_epilog3 replaced with injection: EH_epilog3 */

void __thiscall FUN_63d2bed5(void *this,int param_1)

{
  undefined4 *puVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  int *pExceptionObject;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  undefined4 local_a8;
  int local_a4;
  undefined4 local_9c;
  int local_98;
  undefined4 local_8c;
  int local_88;
  int local_84;
  int local_80;
  int local_7c;
  int local_78;
  int local_74;
  int local_70;
  int local_6c;
  int local_68;
  int local_64;
  int local_60;
  int local_5c;
  int local_58;
  undefined4 local_50;
  int local_4c [2];
  undefined4 local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  undefined4 local_1c;
  int local_18;
  undefined4 local_8;
  undefined4 uStack_4;
  
  uStack_4 = 0x9c;
  local_8 = 0x63d2bee4;
  uVar3 = FUN_63d50f88();
  if ((char)uVar3 == '\0') {
    uVar3 = FUN_63d50151();
    if ((char)uVar3 == '\0') {
      local_28 = *(int *)((int)this + 4);
      local_2c = *(int *)this;
      local_20 = (*(int *)((int)this + 0xc) - local_28) + -2;
      local_24 = *(int *)((int)this + 8) - local_2c;
      local_18 = -0x935532;
      local_1c = 0xff005c96;
      FUN_63cc3b6f(&local_1c,&local_2c,1);
      local_8._0_1_ = 6;
      local_8._1_3_ = 0;
      uVar2 = (undefined1)local_8;
      if ((local_a4 == 0) &&
         (iVar4 = FUN_63cbb733(local_2c,local_28,local_24,local_20), uVar2 = (undefined1)local_8,
         iVar4 == 0)) {
        local_38 = *(int *)((int)this + 4);
        local_3c = *(int *)this;
        local_30 = *(int *)((int)this + 0xc) - local_38;
        local_34 = *(int *)((int)this + 8) - local_3c;
        local_18 = -0x562d1b;
        local_1c = 0xff558fb4;
        FUN_63cc3b6f(&local_1c,&local_3c,1);
        local_8._0_1_ = 7;
        uVar2 = (undefined1)local_8;
        if ((local_98 == 0) &&
           (iVar4 = FUN_63cbb733(*(undefined4 *)this,*(int *)((int)this + 4),1,
                                 (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) + -1),
           uVar2 = (undefined1)local_8, iVar4 == 0)) {
          local_38 = *(int *)((int)this + 4);
          local_3c = *(int *)this;
          local_30 = *(int *)((int)this + 0xc) - local_38;
          local_34 = *(int *)((int)this + 8) - local_3c;
          local_18 = -0x562d1b;
          local_1c = 0xff558fb4;
          FUN_63cc3b6f(&local_1c,&local_3c,1);
          local_8._0_1_ = 8;
          uVar2 = (undefined1)local_8;
          local_8._0_1_ = 8;
          if ((local_88 == 0) &&
             (iVar4 = FUN_63cbb733(*(int *)((int)this + 8) + -1,*(int *)((int)this + 4),1,
                                   (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) + -1),
             uVar2 = (undefined1)local_8, iVar4 == 0)) {
            local_18 = -0x562d1b;
            FUN_63cc7fb9(0x3f800000);
            iVar4 = local_40;
            local_8._0_1_ = 9;
            uVar2 = (undefined1)local_8;
            local_8._0_1_ = 9;
            local_40 = 0;
            if ((iVar4 == 0) &&
               (iVar4 = *(int *)((int)this + 0xc) + -2,
               iVar4 = FUN_63cd7426(*(undefined4 *)this,iVar4,*(undefined4 *)((int)this + 8),iVar4),
               uVar2 = (undefined1)local_8, iVar4 == 0)) {
              local_18 = -0x8f8f90;
              FUN_63cc7fb9(0x3f800000);
              iVar4 = local_4c[0];
              local_8._0_1_ = 10;
              local_4c[0] = 0;
              uVar2 = (undefined1)local_8;
              if ((iVar4 == 0) &&
                 (iVar4 = *(int *)((int)this + 0xc) + -1,
                 iVar4 = FUN_63cd7426(*(undefined4 *)this,iVar4,*(undefined4 *)((int)this + 8),iVar4
                                     ), uVar2 = (undefined1)local_8, iVar4 == 0)) {
                if (*(int *)(param_1 + 0x2510) == 0) {
                  puVar6 = (undefined4 *)FUN_63ce73cb(0x36f6);
                  puVar1 = *(undefined4 **)(param_1 + 0x2510);
                  if (puVar1 != puVar6) {
                    if (puVar1 != (undefined4 *)0x0) {
                      (**(code **)*puVar1)(1);
                    }
                    *(undefined4 **)(param_1 + 0x2510) = puVar6;
                  }
                }
                iVar4 = *(int *)(param_1 + 0x2510);
                GdipDeletePen(local_50);
                GdipDeletePen(local_44);
                GdipDeleteBrush(local_8c);
                GdipDeleteBrush(local_9c);
                GdipDeleteBrush(local_a8);
                goto LAB_63d2c542;
              }
            }
            goto LAB_63d2c311;
          }
        }
        local_8._0_1_ = uVar2;
        pExceptionObject = &local_64;
        FUN_63cbc1f7();
      }
      else {
LAB_63d2c311:
        local_8._0_1_ = uVar2;
        pExceptionObject = &local_3c;
        FUN_63cbc1f7();
      }
      goto LAB_63d2bf45;
    }
    local_64 = *(int *)this;
    local_58 = (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) / 2 + -2;
    local_5c = *(int *)((int)this + 8) - local_64;
    local_60 = *(int *)((int)this + 4) + 2;
    local_4c[0] = -0xca7947;
    local_1c = 0xff7db1d2;
    local_18 = local_58;
    FUN_63cc3b6f(&local_1c,&local_64,1);
    local_8._0_1_ = 1;
    local_8._1_3_ = 0;
    if ((local_88 == 0) && (iVar4 = FUN_63cbb733(local_64,local_60,local_5c,local_58), iVar4 == 0))
    {
      local_3c = *(int *)this;
      local_34 = *(int *)((int)this + 8) - local_3c;
      iVar4 = (*(int *)((int)this + 0xc) - local_58) - local_60;
      local_38 = local_58 + local_60;
      local_30 = iVar4 + -2;
      local_1c = 0xff64a5c9;
      local_4c[0] = -0xffa36a;
      FUN_63cc3b6f(local_4c,&local_3c,1);
      local_8._0_1_ = 2;
      if ((local_98 == 0) && (iVar5 = FUN_63cbb733(local_3c,local_38,local_34,local_30), iVar5 == 0)
         ) {
        local_7c = (*(int *)((int)this + 8) - *(int *)this) + -2;
        local_80 = *(int *)((int)this + 4) + 1;
        local_84 = *(int *)this + 1;
        local_78 = local_18 + 1;
        local_18 = -0x7f4c2d;
        local_1c = 0xffafcfe4;
        FUN_63cc3b6f(&local_1c,&local_84,1);
        iVar5 = local_4c[0];
        local_8._0_1_ = 3;
        local_4c[0] = 0;
        if ((((iVar5 == 0) && (iVar5 = FUN_63cbb733(local_84,local_80,1,local_78), iVar5 == 0)) &&
            (iVar5 = FUN_63cbb733(local_84 + local_7c + -1,local_80,1,local_78), iVar5 == 0)) &&
           (iVar5 = FUN_63cbb733(local_84,local_80,local_7c,1), iVar5 == 0)) {
          local_6c = (*(int *)((int)this + 8) - *(int *)this) + -2;
          local_74 = *(int *)this + 1;
          local_70 = local_38;
          local_18 = -0x582e1c;
          local_1c = 0xff558fb4;
          local_68 = iVar4 + -1;
          FUN_63cc3b6f(&local_1c,&local_74,1);
          iVar4 = local_40;
          local_8._0_1_ = 4;
          local_40 = 0;
          if ((((iVar4 == 0) && (iVar4 = FUN_63cbb733(local_74,local_70,1,local_68), iVar4 == 0)) &&
              (iVar4 = FUN_63cbb733(local_74 + local_6c + -1,local_70,1,local_68), iVar4 == 0)) &&
             (iVar4 = FUN_63cbb733(local_74,local_68 + local_70 + -1,local_6c,1), iVar4 == 0)) {
            local_18 = -0x666667;
            FUN_63cc7fb9(0x3f800000);
            local_8._0_1_ = 5;
            if ((local_a4 == 0) &&
               (iVar4 = FUN_63cc7f7e(*(int *)((int)this + 4),*(int *)this,
                                     (*(int *)((int)this + 8) - *(int *)this) + -1,
                                     (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) + -1),
               iVar4 == 0)) {
              if (*(int *)(param_1 + 0x250c) == 0) {
                puVar6 = (undefined4 *)FUN_63ce73cb(0x36f5);
                puVar1 = *(undefined4 **)(param_1 + 0x250c);
                if (puVar1 != puVar6) {
                  if (puVar1 != (undefined4 *)0x0) {
                    (**(code **)*puVar1)(1);
                  }
                  *(undefined4 **)(param_1 + 0x250c) = puVar6;
                }
              }
              iVar4 = *(int *)(param_1 + 0x250c);
              GdipDeletePen(local_a8);
              GdipDeleteBrush(local_44);
              GdipDeleteBrush(local_50);
              GdipDeleteBrush(local_9c);
              GdipDeleteBrush(local_8c);
LAB_63d2c542:
              if ((0 < *(int *)(param_1 + 0x2500)) && (iVar4 != 0)) {
                FUN_63cc7e35();
                uVar3 = FUN_63cc7e5c();
                uVar7 = FUN_63cc7e35();
                FUN_63ceb982((void *)0x0,0,0,uVar7,uVar3);
              }
              return;
            }
          }
        }
      }
    }
  }
  else {
    GetSysColor(5);
    FUN_63cbb7df();
    iVar4 = local_40;
    local_8._0_1_ = 0;
    local_8._1_3_ = 0;
    local_40 = 0;
    if ((iVar4 == 0) &&
       (iVar4 = FUN_63cbb733(*(int *)this,*(int *)((int)this + 4),
                             *(int *)((int)this + 8) - *(int *)this,
                             *(int *)((int)this + 0xc) - *(int *)((int)this + 4)), iVar4 == 0)) {
      GdipDeleteBrush(local_44);
      return;
    }
  }
  pExceptionObject = &local_2c;
  FUN_63cbc1f7();
LAB_63d2bf45:
                    /* WARNING: Subroutine does not return */
  _CxxThrowException(pExceptionObject,(ThrowInfo *)&DAT_63dd15f8);
}



// ===== FUN_63d2bed5 @ 63d2bed5  size 1752
// callers: [FUN_63d0b3fb@63d0b477(UNCONDITIONAL_CALL), FUN_63d0b3fb@63d0b4ae(UNCONDITIONAL_CALL), FUN_63d0b3fb@63d0b4db(UNCONDITIONAL_CALL), FUN_63d0b501@63d0b544(UNCONDITIONAL_CALL), FUN_63d0b56c@63d0b5ed(UNCONDITIONAL_CALL), FUN_63d0b56c@63d0b639(UNCONDITIONAL_CALL)]

/* WARNING: Function: __EH_prolog3 replaced with injection: EH_prolog3 */
/* WARNING: Function: __EH_epilog3 replaced with injection: EH_epilog3 */

void __thiscall FUN_63d2bed5(void *this,int param_1)

{
  undefined4 *puVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  int *pExceptionObject;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  undefined4 local_a8;
  int local_a4;
  undefined4 local_9c;
  int local_98;
  undefined4 local_8c;
  int local_88;
  int local_84;
  int local_80;
  int local_7c;
  int local_78;
  int local_74;
  int local_70;
  int local_6c;
  int local_68;
  int local_64;
  int local_60;
  int local_5c;
  int local_58;
  undefined4 local_50;
  int local_4c [2];
  undefined4 local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  undefined4 local_1c;
  int local_18;
  undefined4 local_8;
  undefined4 uStack_4;
  
  uStack_4 = 0x9c;
  local_8 = 0x63d2bee4;
  uVar3 = FUN_63d50f88();
  if ((char)uVar3 == '\0') {
    uVar3 = FUN_63d50151();
    if ((char)uVar3 == '\0') {
      local_28 = *(int *)((int)this + 4);
      local_2c = *(int *)this;
      local_20 = (*(int *)((int)this + 0xc) - local_28) + -2;
      local_24 = *(int *)((int)this + 8) - local_2c;
      local_18 = -0x935532;
      local_1c = 0xff005c96;
      FUN_63cc3b6f(&local_1c,&local_2c,1);
      local_8._0_1_ = 6;
      local_8._1_3_ = 0;
      uVar2 = (undefined1)local_8;
      if ((local_a4 == 0) &&
         (iVar4 = FUN_63cbb733(local_2c,local_28,local_24,local_20), uVar2 = (undefined1)local_8,
         iVar4 == 0)) {
        local_38 = *(int *)((int)this + 4);
        local_3c = *(int *)this;
        local_30 = *(int *)((int)this + 0xc) - local_38;
        local_34 = *(int *)((int)this + 8) - local_3c;
        local_18 = -0x562d1b;
        local_1c = 0xff558fb4;
        FUN_63cc3b6f(&local_1c,&local_3c,1);
        local_8._0_1_ = 7;
        uVar2 = (undefined1)local_8;
        if ((local_98 == 0) &&
           (iVar4 = FUN_63cbb733(*(undefined4 *)this,*(int *)((int)this + 4),1,
                                 (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) + -1),
           uVar2 = (undefined1)local_8, iVar4 == 0)) {
          local_38 = *(int *)((int)this + 4);
          local_3c = *(int *)this;
          local_30 = *(int *)((int)this + 0xc) - local_38;
          local_34 = *(int *)((int)this + 8) - local_3c;
          local_18 = -0x562d1b;
          local_1c = 0xff558fb4;
          FUN_63cc3b6f(&local_1c,&local_3c,1);
          local_8._0_1_ = 8;
          uVar2 = (undefined1)local_8;
          local_8._0_1_ = 8;
          if ((local_88 == 0) &&
             (iVar4 = FUN_63cbb733(*(int *)((int)this + 8) + -1,*(int *)((int)this + 4),1,
                                   (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) + -1),
             uVar2 = (undefined1)local_8, iVar4 == 0)) {
            local_18 = -0x562d1b;
            FUN_63cc7fb9(0x3f800000);
            iVar4 = local_40;
            local_8._0_1_ = 9;
            uVar2 = (undefined1)local_8;
            local_8._0_1_ = 9;
            local_40 = 0;
            if ((iVar4 == 0) &&
               (iVar4 = *(int *)((int)this + 0xc) + -2,
               iVar4 = FUN_63cd7426(*(undefined4 *)this,iVar4,*(undefined4 *)((int)this + 8),iVar4),
               uVar2 = (undefined1)local_8, iVar4 == 0)) {
              local_18 = -0x8f8f90;
              FUN_63cc7fb9(0x3f800000);
              iVar4 = local_4c[0];
              local_8._0_1_ = 10;
              local_4c[0] = 0;
              uVar2 = (undefined1)local_8;
              if ((iVar4 == 0) &&
                 (iVar4 = *(int *)((int)this + 0xc) + -1,
                 iVar4 = FUN_63cd7426(*(undefined4 *)this,iVar4,*(undefined4 *)((int)this + 8),iVar4
                                     ), uVar2 = (undefined1)local_8, iVar4 == 0)) {
                if (*(int *)(param_1 + 0x2510) == 0) {
                  puVar6 = (undefined4 *)FUN_63ce73cb(0x36f6);
                  puVar1 = *(undefined4 **)(param_1 + 0x2510);
                  if (puVar1 != puVar6) {
                    if (puVar1 != (undefined4 *)0x0) {
                      (**(code **)*puVar1)(1);
                    }
                    *(undefined4 **)(param_1 + 0x2510) = puVar6;
                  }
                }
                iVar4 = *(int *)(param_1 + 0x2510);
                GdipDeletePen(local_50);
                GdipDeletePen(local_44);
                GdipDeleteBrush(local_8c);
                GdipDeleteBrush(local_9c);
                GdipDeleteBrush(local_a8);
                goto LAB_63d2c542;
              }
            }
            goto LAB_63d2c311;
          }
        }
        local_8._0_1_ = uVar2;
        pExceptionObject = &local_64;
        FUN_63cbc1f7();
      }
      else {
LAB_63d2c311:
        local_8._0_1_ = uVar2;
        pExceptionObject = &local_3c;
        FUN_63cbc1f7();
      }
      goto LAB_63d2bf45;
    }
    local_64 = *(int *)this;
    local_58 = (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) / 2 + -2;
    local_5c = *(int *)((int)this + 8) - local_64;
    local_60 = *(int *)((int)this + 4) + 2;
    local_4c[0] = -0xca7947;
    local_1c = 0xff7db1d2;
    local_18 = local_58;
    FUN_63cc3b6f(&local_1c,&local_64,1);
    local_8._0_1_ = 1;
    local_8._1_3_ = 0;
    if ((local_88 == 0) && (iVar4 = FUN_63cbb733(local_64,local_60,local_5c,local_58), iVar4 == 0))
    {
      local_3c = *(int *)this;
      local_34 = *(int *)((int)this + 8) - local_3c;
      iVar4 = (*(int *)((int)this + 0xc) - local_58) - local_60;
      local_38 = local_58 + local_60;
      local_30 = iVar4 + -2;
      local_1c = 0xff64a5c9;
      local_4c[0] = -0xffa36a;
      FUN_63cc3b6f(local_4c,&local_3c,1);
      local_8._0_1_ = 2;
      if ((local_98 == 0) && (iVar5 = FUN_63cbb733(local_3c,local_38,local_34,local_30), iVar5 == 0)
         ) {
        local_7c = (*(int *)((int)this + 8) - *(int *)this) + -2;
        local_80 = *(int *)((int)this + 4) + 1;
        local_84 = *(int *)this + 1;
        local_78 = local_18 + 1;
        local_18 = -0x7f4c2d;
        local_1c = 0xffafcfe4;
        FUN_63cc3b6f(&local_1c,&local_84,1);
        iVar5 = local_4c[0];
        local_8._0_1_ = 3;
        local_4c[0] = 0;
        if ((((iVar5 == 0) && (iVar5 = FUN_63cbb733(local_84,local_80,1,local_78), iVar5 == 0)) &&
            (iVar5 = FUN_63cbb733(local_84 + local_7c + -1,local_80,1,local_78), iVar5 == 0)) &&
           (iVar5 = FUN_63cbb733(local_84,local_80,local_7c,1), iVar5 == 0)) {
          local_6c = (*(int *)((int)this + 8) - *(int *)this) + -2;
          local_74 = *(int *)this + 1;
          local_70 = local_38;
          local_18 = -0x582e1c;
          local_1c = 0xff558fb4;
          local_68 = iVar4 + -1;
          FUN_63cc3b6f(&local_1c,&local_74,1);
          iVar4 = local_40;
          local_8._0_1_ = 4;
          local_40 = 0;
          if ((((iVar4 == 0) && (iVar4 = FUN_63cbb733(local_74,local_70,1,local_68), iVar4 == 0)) &&
              (iVar4 = FUN_63cbb733(local_74 + local_6c + -1,local_70,1,local_68), iVar4 == 0)) &&
             (iVar4 = FUN_63cbb733(local_74,local_68 + local_70 + -1,local_6c,1), iVar4 == 0)) {
            local_18 = -0x666667;
            FUN_63cc7fb9(0x3f800000);
            local_8._0_1_ = 5;
            if ((local_a4 == 0) &&
               (iVar4 = FUN_63cc7f7e(*(int *)((int)this + 4),*(int *)this,
                                     (*(int *)((int)this + 8) - *(int *)this) + -1,
                                     (*(int *)((int)this + 0xc) - *(int *)((int)this + 4)) + -1),
               iVar4 == 0)) {
              if (*(int *)(param_1 + 0x250c) == 0) {
                puVar6 = (undefined4 *)FUN_63ce73cb(0x36f5);
                puVar1 = *(undefined4 **)(param_1 + 0x250c);
                if (puVar1 != puVar6) {
                  if (puVar1 != (undefined4 *)0x0) {
                    (**(code **)*puVar1)(1);
                  }
                  *(undefined4 **)(param_1 + 0x250c) = puVar6;
                }
              }
              iVar4 = *(int *)(param_1 + 0x250c);
              GdipDeletePen(local_a8);
              GdipDeleteBrush(local_44);
              GdipDeleteBrush(local_50);
              GdipDeleteBrush(local_9c);
              GdipDeleteBrush(local_8c);
LAB_63d2c542:
              if ((0 < *(int *)(param_1 + 0x2500)) && (iVar4 != 0)) {
                FUN_63cc7e35();
                uVar3 = FUN_63cc7e5c();
                uVar7 = FUN_63cc7e35();
                FUN_63ceb982((void *)0x0,0,0,uVar7,uVar3);
              }
              return;
            }
          }
        }
      }
    }
  }
  else {
    GetSysColor(5);
    FUN_63cbb7df();
    iVar4 = local_40;
    local_8._0_1_ = 0;
    local_8._1_3_ = 0;
    local_40 = 0;
    if ((iVar4 == 0) &&
       (iVar4 = FUN_63cbb733(*(int *)this,*(int *)((int)this + 4),
                             *(int *)((int)this + 8) - *(int *)this,
                             *(int *)((int)this + 0xc) - *(int *)((int)this + 4)), iVar4 == 0)) {
      GdipDeleteBrush(local_44);
      return;
    }
  }
  pExceptionObject = &local_2c;
  FUN_63cbc1f7();
LAB_63d2bf45:
                    /* WARNING: Subroutine does not return */
  _CxxThrowException(pExceptionObject,(ThrowInfo *)&DAT_63dd15f8);
}


