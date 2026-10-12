; program: WLXPhotoLibraryMain.dll  image base 63c90000

; ===== FUN_63d2bed5 @ 63d2bed5  conv __thiscall  purge 8
63d2bed5  09b2d5  689c000000               PUSH 0x9c
63d2beda  09b2da  b8b84edc63               MOV EAX,0x63dc4eb8
63d2bedf  09b2df  e801240900               CALL 0x63dbe2e5
63d2bee4  09b2e4  8bf9                     MOV EDI,ECX
63d2bee6  09b2e6  e89d500200               CALL 0x63d50f88
63d2beeb  09b2eb  84c0                     TEST AL,AL
63d2beed  09b2ed  0f8487000000             JZ 0x63d2bf7a
63d2bef3  09b2f3  6a05                     PUSH 0x5
63d2bef5  09b2f5  ff151416c963             CALL dword ptr [0x63c91614]
63d2befb  09b2fb  0fb6c8                   MOVZX ECX,AL
63d2befe  09b2fe  81c900ffffff             OR ECX,0xffffff00
63d2bf04  09b304  0fb6d4                   MOVZX EDX,AH
63d2bf07  09b307  c1e108                   SHL ECX,0x8
63d2bf0a  09b30a  c1e810                   SHR EAX,0x10
63d2bf0d  09b30d  0bca                     OR ECX,EDX
63d2bf0f  09b30f  0fb6c0                   MOVZX EAX,AL
63d2bf12  09b312  c1e108                   SHL ECX,0x8
63d2bf15  09b315  0bc8                     OR ECX,EAX
63d2bf17  09b317  8d4508                   LEA EAX,[EBP + 0x8]
63d2bf1a  09b31a  8d75bc                   LEA ESI,[EBP + -0x44]
63d2bf1d  09b31d  894d08                   MOV dword ptr [EBP + 0x8],ECX
63d2bf20  09b320  e8baf8f8ff               CALL 0x63cbb7df
63d2bf25  09b325  8365fc00                 AND dword ptr [EBP + -0x4],0x0
63d2bf29  09b329  8b45c4                   MOV EAX,dword ptr [EBP + -0x3c]
63d2bf2c  09b32c  8365c400                 AND dword ptr [EBP + -0x3c],0x0
63d2bf30  09b330  85c0                     TEST EAX,EAX
63d2bf32  09b332  7417                     JZ 0x63d2bf4b
63d2bf34  09b334  8bf8                     MOV EDI,EAX
63d2bf36  09b336  8d75d8                   LEA ESI,[EBP + -0x28]
63d2bf39  09b339  e8b902f9ff               CALL 0x63cbc1f7
63d2bf3e  09b33e  68f815dd63               PUSH 0x63dd15f8
63d2bf43  09b343  8bc6                     MOV EAX,ESI
63d2bf45  09b345  50                       PUSH EAX
63d2bf46  09b346  e883230900               CALL 0x63dbe2ce
63d2bf4b  09b34b  8b0f                     MOV ECX,dword ptr [EDI]
63d2bf4d  09b34d  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2bf50  09b350  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2bf53  09b353  8b7f0c                   MOV EDI,dword ptr [EDI + 0xc]
63d2bf56  09b356  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2bf59  09b359  2bfa                     SUB EDI,EDX
63d2bf5b  09b35b  57                       PUSH EDI
63d2bf5c  09b35c  2bc1                     SUB EAX,ECX
63d2bf5e  09b35e  50                       PUSH EAX
63d2bf5f  09b35f  52                       PUSH EDX
63d2bf60  09b360  51                       PUSH ECX
63d2bf61  09b361  8d45bc                   LEA EAX,[EBP + -0x44]
63d2bf64  09b364  e8caf7f8ff               CALL 0x63cbb733
63d2bf69  09b369  85c0                     TEST EAX,EAX
63d2bf6b  09b36b  75c7                     JNZ 0x63d2bf34
63d2bf6d  09b36d  ff75c0                   PUSH dword ptr [EBP + -0x40]
63d2bf70  09b370  e8f5f20800               CALL 0x63dbb26a
63d2bf75  09b375  e92b060000               JMP 0x63d2c5a5
63d2bf7a  09b37a  8b4508                   MOV EAX,dword ptr [EBP + 0x8]
63d2bf7d  09b37d  0504250000               ADD EAX,0x2504
63d2bf82  09b382  e8ca410200               CALL 0x63d50151
63d2bf87  09b387  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2bf8a  09b38a  84c0                     TEST AL,AL
63d2bf8c  09b38c  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2bf8f  09b38f  0f8428030000             JZ 0x63d2c2bd
63d2bf95  09b395  8b7704                   MOV ESI,dword ptr [EDI + 0x4]
63d2bf98  09b398  2bc6                     SUB EAX,ESI
63d2bf9a  09b39a  99                       CDQ
63d2bf9b  09b39b  2bc2                     SUB EAX,EDX
63d2bf9d  09b39d  8b17                     MOV EDX,dword ptr [EDI]
63d2bf9f  09b39f  d1f8                     SAR EAX,0x1
63d2bfa1  09b3a1  48                       DEC EAX
63d2bfa2  09b3a2  48                       DEC EAX
63d2bfa3  09b3a3  33db                     XOR EBX,EBX
63d2bfa5  09b3a5  8945ec                   MOV dword ptr [EBP + -0x14],EAX
63d2bfa8  09b3a8  8945ac                   MOV dword ptr [EBP + -0x54],EAX
63d2bfab  09b3ab  2bca                     SUB ECX,EDX
63d2bfad  09b3ad  43                       INC EBX
63d2bfae  09b3ae  83c602                   ADD ESI,0x2
63d2bfb1  09b3b1  53                       PUSH EBX
63d2bfb2  09b3b2  8d45a0                   LEA EAX,[EBP + -0x60]
63d2bfb5  09b3b5  8975a4                   MOV dword ptr [EBP + -0x5c],ESI
63d2bfb8  09b3b8  894da8                   MOV dword ptr [EBP + -0x58],ECX
63d2bfbb  09b3bb  50                       PUSH EAX
63d2bfbc  09b3bc  8d45b8                   LEA EAX,[EBP + -0x48]
63d2bfbf  09b3bf  8d4de8                   LEA ECX,[EBP + -0x18]
63d2bfc2  09b3c2  8db574ffffff             LEA ESI,[EBP + 0xffffff74]
63d2bfc8  09b3c8  8955a0                   MOV dword ptr [EBP + -0x60],EDX
63d2bfcb  09b3cb  c745b8b98635ff           MOV dword ptr [EBP + -0x48],0xff3586b9
63d2bfd2  09b3d2  c745e8d2b17dff           MOV dword ptr [EBP + -0x18],0xff7db1d2
63d2bfd9  09b3d9  e8917bf9ff               CALL 0x63cc3b6f
63d2bfde  09b3de  895dfc                   MOV dword ptr [EBP + -0x4],EBX
63d2bfe1  09b3e1  8b857cffffff             MOV EAX,dword ptr [EBP + 0xffffff7c]
63d2bfe7  09b3e7  83a57cffffff00           AND dword ptr [EBP + 0xffffff7c],0x0
63d2bfee  09b3ee  85c0                     TEST EAX,EAX
63d2bff0  09b3f0  0f853effffff             JNZ 0x63d2bf34
63d2bff6  09b3f6  ff75ac                   PUSH dword ptr [EBP + -0x54]
63d2bff9  09b3f9  8bc6                     MOV EAX,ESI
63d2bffb  09b3fb  ff75a8                   PUSH dword ptr [EBP + -0x58]
63d2bffe  09b3fe  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c001  09b401  ff75a4                   PUSH dword ptr [EBP + -0x5c]
63d2c004  09b404  ff75a0                   PUSH dword ptr [EBP + -0x60]
63d2c007  09b407  e827f7f8ff               CALL 0x63cbb733
63d2c00c  09b40c  85c0                     TEST EAX,EAX
63d2c00e  09b40e  0f8520ffffff             JNZ 0x63d2bf34
63d2c014  09b414  8b55ac                   MOV EDX,dword ptr [EBP + -0x54]
63d2c017  09b417  8b0f                     MOV ECX,dword ptr [EDI]
63d2c019  09b419  8b5f0c                   MOV EBX,dword ptr [EDI + 0xc]
63d2c01c  09b41c  8b75a4                   MOV ESI,dword ptr [EBP + -0x5c]
63d2c01f  09b41f  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2c022  09b422  2bda                     SUB EBX,EDX
63d2c024  09b424  2bc1                     SUB EAX,ECX
63d2c026  09b426  2bde                     SUB EBX,ESI
63d2c028  09b428  8945d0                   MOV dword ptr [EBP + -0x30],EAX
63d2c02b  09b42b  6a01                     PUSH 0x1
63d2c02d  09b42d  8d45c8                   LEA EAX,[EBP + -0x38]
63d2c030  09b430  4b                       DEC EBX
63d2c031  09b431  03d6                     ADD EDX,ESI
63d2c033  09b433  894dc8                   MOV dword ptr [EBP + -0x38],ECX
63d2c036  09b436  50                       PUSH EAX
63d2c037  09b437  4b                       DEC EBX
63d2c038  09b438  8d45e8                   LEA EAX,[EBP + -0x18]
63d2c03b  09b43b  8d4db8                   LEA ECX,[EBP + -0x48]
63d2c03e  09b43e  8db564ffffff             LEA ESI,[EBP + 0xffffff64]
63d2c044  09b444  8955cc                   MOV dword ptr [EBP + -0x34],EDX
63d2c047  09b447  895dd4                   MOV dword ptr [EBP + -0x2c],EBX
63d2c04a  09b44a  c745e8c9a564ff           MOV dword ptr [EBP + -0x18],0xff64a5c9
63d2c051  09b451  c745b8965c00ff           MOV dword ptr [EBP + -0x48],0xff005c96
63d2c058  09b458  e8127bf9ff               CALL 0x63cc3b6f
63d2c05d  09b45d  c645fc02                 MOV byte ptr [EBP + -0x4],0x2
63d2c061  09b461  8b856cffffff             MOV EAX,dword ptr [EBP + 0xffffff6c]
63d2c067  09b467  83a56cffffff00           AND dword ptr [EBP + 0xffffff6c],0x0
63d2c06e  09b46e  85c0                     TEST EAX,EAX
63d2c070  09b470  0f85befeffff             JNZ 0x63d2bf34
63d2c076  09b476  ff75d4                   PUSH dword ptr [EBP + -0x2c]
63d2c079  09b479  8bc6                     MOV EAX,ESI
63d2c07b  09b47b  ff75d0                   PUSH dword ptr [EBP + -0x30]
63d2c07e  09b47e  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c081  09b481  ff75cc                   PUSH dword ptr [EBP + -0x34]
63d2c084  09b484  ff75c8                   PUSH dword ptr [EBP + -0x38]
63d2c087  09b487  e8a7f6f8ff               CALL 0x63cbb733
63d2c08c  09b48c  85c0                     TEST EAX,EAX
63d2c08e  09b48e  0f85a0feffff             JNZ 0x63d2bf34
63d2c094  09b494  8b17                     MOV EDX,dword ptr [EDI]
63d2c096  09b496  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2c099  09b499  8b4f04                   MOV ECX,dword ptr [EDI + 0x4]
63d2c09c  09b49c  2bc2                     SUB EAX,EDX
63d2c09e  09b49e  48                       DEC EAX
63d2c09f  09b49f  48                       DEC EAX
63d2c0a0  09b4a0  894588                   MOV dword ptr [EBP + -0x78],EAX
63d2c0a3  09b4a3  8b45ec                   MOV EAX,dword ptr [EBP + -0x14]
63d2c0a6  09b4a6  41                       INC ECX
63d2c0a7  09b4a7  42                       INC EDX
63d2c0a8  09b4a8  40                       INC EAX
63d2c0a9  09b4a9  89458c                   MOV dword ptr [EBP + -0x74],EAX
63d2c0ac  09b4ac  6a01                     PUSH 0x1
63d2c0ae  09b4ae  8d4580                   LEA EAX,[EBP + -0x80]
63d2c0b1  09b4b1  894d84                   MOV dword ptr [EBP + -0x7c],ECX
63d2c0b4  09b4b4  50                       PUSH EAX
63d2c0b5  09b4b5  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c0b8  09b4b8  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c0bb  09b4bb  8d75b0                   LEA ESI,[EBP + -0x50]
63d2c0be  09b4be  895580                   MOV dword ptr [EBP + -0x80],EDX
63d2c0c1  09b4c1  c745ecd3b380ff           MOV dword ptr [EBP + -0x14],0xff80b3d3
63d2c0c8  09b4c8  c745e8e4cfafff           MOV dword ptr [EBP + -0x18],0xffafcfe4
63d2c0cf  09b4cf  e89b7af9ff               CALL 0x63cc3b6f
63d2c0d4  09b4d4  c645fc03                 MOV byte ptr [EBP + -0x4],0x3
63d2c0d8  09b4d8  8b45b8                   MOV EAX,dword ptr [EBP + -0x48]
63d2c0db  09b4db  8365b800                 AND dword ptr [EBP + -0x48],0x0
63d2c0df  09b4df  85c0                     TEST EAX,EAX
63d2c0e1  09b4e1  0f854dfeffff             JNZ 0x63d2bf34
63d2c0e7  09b4e7  ff758c                   PUSH dword ptr [EBP + -0x74]
63d2c0ea  09b4ea  8bc6                     MOV EAX,ESI
63d2c0ec  09b4ec  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c0ef  09b4ef  6a01                     PUSH 0x1
63d2c0f1  09b4f1  ff7584                   PUSH dword ptr [EBP + -0x7c]
63d2c0f4  09b4f4  ff7580                   PUSH dword ptr [EBP + -0x80]
63d2c0f7  09b4f7  e837f6f8ff               CALL 0x63cbb733
63d2c0fc  09b4fc  85c0                     TEST EAX,EAX
63d2c0fe  09b4fe  0f8530feffff             JNZ 0x63d2bf34
63d2c104  09b504  ff758c                   PUSH dword ptr [EBP + -0x74]
63d2c107  09b507  8b4580                   MOV EAX,dword ptr [EBP + -0x80]
63d2c10a  09b50a  8b4d88                   MOV ECX,dword ptr [EBP + -0x78]
63d2c10d  09b50d  6a01                     PUSH 0x1
63d2c10f  09b50f  ff7584                   PUSH dword ptr [EBP + -0x7c]
63d2c112  09b512  03c1                     ADD EAX,ECX
63d2c114  09b514  48                       DEC EAX
63d2c115  09b515  50                       PUSH EAX
63d2c116  09b516  8d45b0                   LEA EAX,[EBP + -0x50]
63d2c119  09b519  e815f6f8ff               CALL 0x63cbb733
63d2c11e  09b51e  85c0                     TEST EAX,EAX
63d2c120  09b520  0f850efeffff             JNZ 0x63d2bf34
63d2c126  09b526  6a01                     PUSH 0x1
63d2c128  09b528  ff7588                   PUSH dword ptr [EBP + -0x78]
63d2c12b  09b52b  8d45b0                   LEA EAX,[EBP + -0x50]
63d2c12e  09b52e  ff7584                   PUSH dword ptr [EBP + -0x7c]
63d2c131  09b531  ff7580                   PUSH dword ptr [EBP + -0x80]
63d2c134  09b534  e8faf5f8ff               CALL 0x63cbb733
63d2c139  09b539  85c0                     TEST EAX,EAX
63d2c13b  09b53b  0f85f3fdffff             JNZ 0x63d2bf34
63d2c141  09b541  8b0f                     MOV ECX,dword ptr [EDI]
63d2c143  09b543  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2c146  09b546  2bc1                     SUB EAX,ECX
63d2c148  09b548  48                       DEC EAX
63d2c149  09b549  48                       DEC EAX
63d2c14a  09b54a  41                       INC ECX
63d2c14b  09b54b  894d90                   MOV dword ptr [EBP + -0x70],ECX
63d2c14e  09b54e  8b4dcc                   MOV ECX,dword ptr [EBP + -0x34]
63d2c151  09b551  894598                   MOV dword ptr [EBP + -0x68],EAX
63d2c154  09b554  6a01                     PUSH 0x1
63d2c156  09b556  8d4590                   LEA EAX,[EBP + -0x70]
63d2c159  09b559  894d94                   MOV dword ptr [EBP + -0x6c],ECX
63d2c15c  09b55c  50                       PUSH EAX
63d2c15d  09b55d  43                       INC EBX
63d2c15e  09b55e  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c161  09b561  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c164  09b564  8d75bc                   LEA ESI,[EBP + -0x44]
63d2c167  09b567  895d9c                   MOV dword ptr [EBP + -0x64],EBX
63d2c16a  09b56a  c745ece4d1a7ff           MOV dword ptr [EBP + -0x14],0xffa7d1e4
63d2c171  09b571  c745e8b48f55ff           MOV dword ptr [EBP + -0x18],0xff558fb4
63d2c178  09b578  e8f279f9ff               CALL 0x63cc3b6f
63d2c17d  09b57d  c645fc04                 MOV byte ptr [EBP + -0x4],0x4
63d2c181  09b581  8b45c4                   MOV EAX,dword ptr [EBP + -0x3c]
63d2c184  09b584  8365c400                 AND dword ptr [EBP + -0x3c],0x0
63d2c188  09b588  85c0                     TEST EAX,EAX
63d2c18a  09b58a  0f85a4fdffff             JNZ 0x63d2bf34
63d2c190  09b590  ff759c                   PUSH dword ptr [EBP + -0x64]
63d2c193  09b593  8b5d0c                   MOV EBX,dword ptr [EBP + 0xc]
63d2c196  09b596  6a01                     PUSH 0x1
63d2c198  09b598  ff7594                   PUSH dword ptr [EBP + -0x6c]
63d2c19b  09b59b  8bc6                     MOV EAX,ESI
63d2c19d  09b59d  ff7590                   PUSH dword ptr [EBP + -0x70]
63d2c1a0  09b5a0  8bf3                     MOV ESI,EBX
63d2c1a2  09b5a2  e88cf5f8ff               CALL 0x63cbb733
63d2c1a7  09b5a7  85c0                     TEST EAX,EAX
63d2c1a9  09b5a9  0f8585fdffff             JNZ 0x63d2bf34
63d2c1af  09b5af  ff759c                   PUSH dword ptr [EBP + -0x64]
63d2c1b2  09b5b2  8b4590                   MOV EAX,dword ptr [EBP + -0x70]
63d2c1b5  09b5b5  8b4d98                   MOV ECX,dword ptr [EBP + -0x68]
63d2c1b8  09b5b8  6a01                     PUSH 0x1
63d2c1ba  09b5ba  ff7594                   PUSH dword ptr [EBP + -0x6c]
63d2c1bd  09b5bd  03c1                     ADD EAX,ECX
63d2c1bf  09b5bf  48                       DEC EAX
63d2c1c0  09b5c0  50                       PUSH EAX
63d2c1c1  09b5c1  8d45bc                   LEA EAX,[EBP + -0x44]
63d2c1c4  09b5c4  e86af5f8ff               CALL 0x63cbb733
63d2c1c9  09b5c9  85c0                     TEST EAX,EAX
63d2c1cb  09b5cb  0f8563fdffff             JNZ 0x63d2bf34
63d2c1d1  09b5d1  8b459c                   MOV EAX,dword ptr [EBP + -0x64]
63d2c1d4  09b5d4  8b4d94                   MOV ECX,dword ptr [EBP + -0x6c]
63d2c1d7  09b5d7  6a01                     PUSH 0x1
63d2c1d9  09b5d9  ff7598                   PUSH dword ptr [EBP + -0x68]
63d2c1dc  09b5dc  03c1                     ADD EAX,ECX
63d2c1de  09b5de  48                       DEC EAX
63d2c1df  09b5df  50                       PUSH EAX
63d2c1e0  09b5e0  ff7590                   PUSH dword ptr [EBP + -0x70]
63d2c1e3  09b5e3  8d45bc                   LEA EAX,[EBP + -0x44]
63d2c1e6  09b5e6  e848f5f8ff               CALL 0x63cbb733
63d2c1eb  09b5eb  85c0                     TEST EAX,EAX
63d2c1ed  09b5ed  0f8541fdffff             JNZ 0x63d2bf34
63d2c1f3  09b5f3  d9e8                     FLD1
63d2c1f5  09b5f5  51                       PUSH ECX
63d2c1f6  09b5f6  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c1f9  09b5f9  d91c24                   FSTP float ptr [ESP]
63d2c1fc  09b5fc  8db55cffffff             LEA ESI,[EBP + 0xffffff5c]
63d2c202  09b602  c745ec999999ff           MOV dword ptr [EBP + -0x14],0xff999999
63d2c209  09b609  e8abbdf9ff               CALL 0x63cc7fb9
63d2c20e  09b60e  c645fc05                 MOV byte ptr [EBP + -0x4],0x5
63d2c212  09b612  8b8560ffffff             MOV EAX,dword ptr [EBP + 0xffffff60]
63d2c218  09b618  83a560ffffff00           AND dword ptr [EBP + 0xffffff60],0x0
63d2c21f  09b61f  85c0                     TEST EAX,EAX
63d2c221  09b621  0f850dfdffff             JNZ 0x63d2bf34
63d2c227  09b627  8b4704                   MOV EAX,dword ptr [EDI + 0x4]
63d2c22a  09b62a  8b570c                   MOV EDX,dword ptr [EDI + 0xc]
63d2c22d  09b62d  8b0f                     MOV ECX,dword ptr [EDI]
63d2c22f  09b62f  2bd0                     SUB EDX,EAX
63d2c231  09b631  4a                       DEC EDX
63d2c232  09b632  52                       PUSH EDX
63d2c233  09b633  8b5708                   MOV EDX,dword ptr [EDI + 0x8]
63d2c236  09b636  2bd1                     SUB EDX,ECX
63d2c238  09b638  4a                       DEC EDX
63d2c239  09b639  52                       PUSH EDX
63d2c23a  09b63a  51                       PUSH ECX
63d2c23b  09b63b  50                       PUSH EAX
63d2c23c  09b63c  8bc6                     MOV EAX,ESI
63d2c23e  09b63e  8bf3                     MOV ESI,EBX
63d2c240  09b640  e839bdf9ff               CALL 0x63cc7f7e
63d2c245  09b645  85c0                     TEST EAX,EAX
63d2c247  09b647  0f85e7fcffff             JNZ 0x63d2bf34
63d2c24d  09b64d  8b7508                   MOV ESI,dword ptr [EBP + 0x8]
63d2c250  09b650  39860c250000             CMP dword ptr [ESI + 0x250c],EAX
63d2c256  09b656  7526                     JNZ 0x63d2c27e
63d2c258  09b658  68f5360000               PUSH 0x36f5
63d2c25d  09b65d  e869b1fbff               CALL 0x63ce73cb
63d2c262  09b662  8b8e0c250000             MOV ECX,dword ptr [ESI + 0x250c]
63d2c268  09b668  8bd8                     MOV EBX,EAX
63d2c26a  09b66a  3bcb                     CMP ECX,EBX
63d2c26c  09b66c  7410                     JZ 0x63d2c27e
63d2c26e  09b66e  85c9                     TEST ECX,ECX
63d2c270  09b670  7406                     JZ 0x63d2c278
63d2c272  09b672  8b01                     MOV EAX,dword ptr [ECX]
63d2c274  09b674  6a01                     PUSH 0x1
63d2c276  09b676  ff10                     CALL dword ptr [EAX]
63d2c278  09b678  899e0c250000             MOV dword ptr [ESI + 0x250c],EBX
63d2c27e  09b67e  ffb55cffffff             PUSH dword ptr [EBP + 0xffffff5c]
63d2c284  09b684  8bb60c250000             MOV ESI,dword ptr [ESI + 0x250c]
63d2c28a  09b68a  e83bf00800               CALL 0x63dbb2ca
63d2c28f  09b68f  ff75c0                   PUSH dword ptr [EBP + -0x40]
63d2c292  09b692  e8d3ef0800               CALL 0x63dbb26a
63d2c297  09b697  ff75b4                   PUSH dword ptr [EBP + -0x4c]
63d2c29a  09b69a  e8cbef0800               CALL 0x63dbb26a
63d2c29f  09b69f  ffb568ffffff             PUSH dword ptr [EBP + 0xffffff68]
63d2c2a5  09b6a5  e8c0ef0800               CALL 0x63dbb26a
63d2c2aa  09b6aa  ffb578ffffff             PUSH dword ptr [EBP + 0xffffff78]
63d2c2b0  09b6b0  e8b5ef0800               CALL 0x63dbb26a
63d2c2b5  09b6b5  8b5d08                   MOV EBX,dword ptr [EBP + 0x8]
63d2c2b8  09b6b8  e985020000               JMP 0x63d2c542
63d2c2bd  09b6bd  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c2c0  09b6c0  8b37                     MOV ESI,dword ptr [EDI]
63d2c2c2  09b6c2  2bc2                     SUB EAX,EDX
63d2c2c4  09b6c4  48                       DEC EAX
63d2c2c5  09b6c5  48                       DEC EAX
63d2c2c6  09b6c6  2bce                     SUB ECX,ESI
63d2c2c8  09b6c8  8945e4                   MOV dword ptr [EBP + -0x1c],EAX
63d2c2cb  09b6cb  6a01                     PUSH 0x1
63d2c2cd  09b6cd  8d45d8                   LEA EAX,[EBP + -0x28]
63d2c2d0  09b6d0  8975d8                   MOV dword ptr [EBP + -0x28],ESI
63d2c2d3  09b6d3  894de0                   MOV dword ptr [EBP + -0x20],ECX
63d2c2d6  09b6d6  50                       PUSH EAX
63d2c2d7  09b6d7  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c2da  09b6da  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c2dd  09b6dd  8db558ffffff             LEA ESI,[EBP + 0xffffff58]
63d2c2e3  09b6e3  8955dc                   MOV dword ptr [EBP + -0x24],EDX
63d2c2e6  09b6e6  c745ecceaa6cff           MOV dword ptr [EBP + -0x14],0xff6caace
63d2c2ed  09b6ed  c745e8965c00ff           MOV dword ptr [EBP + -0x18],0xff005c96
63d2c2f4  09b6f4  e87678f9ff               CALL 0x63cc3b6f
63d2c2f9  09b6f9  c745fc06000000           MOV dword ptr [EBP + -0x4],0x6
63d2c300  09b700  8b8560ffffff             MOV EAX,dword ptr [EBP + 0xffffff60]
63d2c306  09b706  83a560ffffff00           AND dword ptr [EBP + 0xffffff60],0x0
63d2c30d  09b70d  85c0                     TEST EAX,EAX
63d2c30f  09b70f  7416                     JZ 0x63d2c327
63d2c311  09b711  8bf8                     MOV EDI,EAX
63d2c313  09b713  8d75c8                   LEA ESI,[EBP + -0x38]
63d2c316  09b716  e8dcfef8ff               CALL 0x63cbc1f7
63d2c31b  09b71b  68f815dd63               PUSH 0x63dd15f8
63d2c320  09b720  8bc6                     MOV EAX,ESI
63d2c322  09b722  e91efcffff               JMP 0x63d2bf45
63d2c327  09b727  ff75e4                   PUSH dword ptr [EBP + -0x1c]
63d2c32a  09b72a  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c32d  09b72d  ff75e0                   PUSH dword ptr [EBP + -0x20]
63d2c330  09b730  8d8558ffffff             LEA EAX,[EBP + 0xffffff58]
63d2c336  09b736  ff75dc                   PUSH dword ptr [EBP + -0x24]
63d2c339  09b739  ff75d8                   PUSH dword ptr [EBP + -0x28]
63d2c33c  09b73c  e8f2f3f8ff               CALL 0x63cbb733
63d2c341  09b741  85c0                     TEST EAX,EAX
63d2c343  09b743  75cc                     JNZ 0x63d2c311
63d2c345  09b745  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c348  09b748  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c34b  09b74b  8b37                     MOV ESI,dword ptr [EDI]
63d2c34d  09b74d  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2c350  09b750  2bc2                     SUB EAX,EDX
63d2c352  09b752  2bce                     SUB ECX,ESI
63d2c354  09b754  8945d4                   MOV dword ptr [EBP + -0x2c],EAX
63d2c357  09b757  6a01                     PUSH 0x1
63d2c359  09b759  8d45c8                   LEA EAX,[EBP + -0x38]
63d2c35c  09b75c  8975c8                   MOV dword ptr [EBP + -0x38],ESI
63d2c35f  09b75f  894dd0                   MOV dword ptr [EBP + -0x30],ECX
63d2c362  09b762  50                       PUSH EAX
63d2c363  09b763  bbe5d2a9ff               MOV EBX,0xffa9d2e5
63d2c368  09b768  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c36b  09b76b  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c36e  09b76e  8db564ffffff             LEA ESI,[EBP + 0xffffff64]
63d2c374  09b774  895dec                   MOV dword ptr [EBP + -0x14],EBX
63d2c377  09b777  c745e8b48f55ff           MOV dword ptr [EBP + -0x18],0xff558fb4
63d2c37e  09b77e  8955cc                   MOV dword ptr [EBP + -0x34],EDX
63d2c381  09b781  e8e977f9ff               CALL 0x63cc3b6f
63d2c386  09b786  c645fc07                 MOV byte ptr [EBP + -0x4],0x7
63d2c38a  09b78a  8b856cffffff             MOV EAX,dword ptr [EBP + 0xffffff6c]
63d2c390  09b790  83a56cffffff00           AND dword ptr [EBP + 0xffffff6c],0x0
63d2c397  09b797  85c0                     TEST EAX,EAX
63d2c399  09b799  7416                     JZ 0x63d2c3b1
63d2c39b  09b79b  8bf8                     MOV EDI,EAX
63d2c39d  09b79d  8d75a0                   LEA ESI,[EBP + -0x60]
63d2c3a0  09b7a0  e852fef8ff               CALL 0x63cbc1f7
63d2c3a5  09b7a5  68f815dd63               PUSH 0x63dd15f8
63d2c3aa  09b7aa  8bc6                     MOV EAX,ESI
63d2c3ac  09b7ac  e994fbffff               JMP 0x63d2bf45
63d2c3b1  09b7b1  8b4f04                   MOV ECX,dword ptr [EDI + 0x4]
63d2c3b4  09b7b4  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c3b7  09b7b7  8b17                     MOV EDX,dword ptr [EDI]
63d2c3b9  09b7b9  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c3bc  09b7bc  2bc1                     SUB EAX,ECX
63d2c3be  09b7be  48                       DEC EAX
63d2c3bf  09b7bf  50                       PUSH EAX
63d2c3c0  09b7c0  6a01                     PUSH 0x1
63d2c3c2  09b7c2  51                       PUSH ECX
63d2c3c3  09b7c3  52                       PUSH EDX
63d2c3c4  09b7c4  8d8564ffffff             LEA EAX,[EBP + 0xffffff64]
63d2c3ca  09b7ca  e864f3f8ff               CALL 0x63cbb733
63d2c3cf  09b7cf  85c0                     TEST EAX,EAX
63d2c3d1  09b7d1  75c8                     JNZ 0x63d2c39b
63d2c3d3  09b7d3  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c3d6  09b7d6  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c3d9  09b7d9  8b37                     MOV ESI,dword ptr [EDI]
63d2c3db  09b7db  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2c3de  09b7de  2bc2                     SUB EAX,EDX
63d2c3e0  09b7e0  2bce                     SUB ECX,ESI
63d2c3e2  09b7e2  8945d4                   MOV dword ptr [EBP + -0x2c],EAX
63d2c3e5  09b7e5  6a01                     PUSH 0x1
63d2c3e7  09b7e7  8d45c8                   LEA EAX,[EBP + -0x38]
63d2c3ea  09b7ea  8975c8                   MOV dword ptr [EBP + -0x38],ESI
63d2c3ed  09b7ed  894dd0                   MOV dword ptr [EBP + -0x30],ECX
63d2c3f0  09b7f0  50                       PUSH EAX
63d2c3f1  09b7f1  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c3f4  09b7f4  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c3f7  09b7f7  8db574ffffff             LEA ESI,[EBP + 0xffffff74]
63d2c3fd  09b7fd  895dec                   MOV dword ptr [EBP + -0x14],EBX
63d2c400  09b800  c745e8b48f55ff           MOV dword ptr [EBP + -0x18],0xff558fb4
63d2c407  09b807  8955cc                   MOV dword ptr [EBP + -0x34],EDX
63d2c40a  09b80a  e86077f9ff               CALL 0x63cc3b6f
63d2c40f  09b80f  c645fc08                 MOV byte ptr [EBP + -0x4],0x8
63d2c413  09b813  8b857cffffff             MOV EAX,dword ptr [EBP + 0xffffff7c]
63d2c419  09b819  83a57cffffff00           AND dword ptr [EBP + 0xffffff7c],0x0
63d2c420  09b820  85c0                     TEST EAX,EAX
63d2c422  09b822  0f8573ffffff             JNZ 0x63d2c39b
63d2c428  09b828  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c42b  09b82b  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c42e  09b82e  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2c431  09b831  2bc2                     SUB EAX,EDX
63d2c433  09b833  48                       DEC EAX
63d2c434  09b834  50                       PUSH EAX
63d2c435  09b835  6a01                     PUSH 0x1
63d2c437  09b837  49                       DEC ECX
63d2c438  09b838  52                       PUSH EDX
63d2c439  09b839  8bc6                     MOV EAX,ESI
63d2c43b  09b83b  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c43e  09b83e  51                       PUSH ECX
63d2c43f  09b83f  e8eff2f8ff               CALL 0x63cbb733
63d2c444  09b844  85c0                     TEST EAX,EAX
63d2c446  09b846  0f854fffffff             JNZ 0x63d2c39b
63d2c44c  09b84c  d9e8                     FLD1
63d2c44e  09b84e  51                       PUSH ECX
63d2c44f  09b84f  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c452  09b852  d91c24                   FSTP float ptr [ESP]
63d2c455  09b855  8d75c0                   LEA ESI,[EBP + -0x40]
63d2c458  09b858  895dec                   MOV dword ptr [EBP + -0x14],EBX
63d2c45b  09b85b  e859bbf9ff               CALL 0x63cc7fb9
63d2c460  09b860  c645fc09                 MOV byte ptr [EBP + -0x4],0x9
63d2c464  09b864  8b45c4                   MOV EAX,dword ptr [EBP + -0x3c]
63d2c467  09b867  8365c400                 AND dword ptr [EBP + -0x3c],0x0
63d2c46b  09b86b  85c0                     TEST EAX,EAX
63d2c46d  09b86d  0f859efeffff             JNZ 0x63d2c311
63d2c473  09b873  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c476  09b876  83c0fe                   ADD EAX,-0x2
63d2c479  09b879  50                       PUSH EAX
63d2c47a  09b87a  ff7708                   PUSH dword ptr [EDI + 0x8]
63d2c47d  09b87d  50                       PUSH EAX
63d2c47e  09b87e  ff37                     PUSH dword ptr [EDI]
63d2c480  09b880  8bc6                     MOV EAX,ESI
63d2c482  09b882  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c485  09b885  e89caffaff               CALL 0x63cd7426
63d2c48a  09b88a  85c0                     TEST EAX,EAX
63d2c48c  09b88c  0f857ffeffff             JNZ 0x63d2c311
63d2c492  09b892  d9e8                     FLD1
63d2c494  09b894  51                       PUSH ECX
63d2c495  09b895  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c498  09b898  d91c24                   FSTP float ptr [ESP]
63d2c49b  09b89b  8d75b4                   LEA ESI,[EBP + -0x4c]
63d2c49e  09b89e  c745ec707070ff           MOV dword ptr [EBP + -0x14],0xff707070
63d2c4a5  09b8a5  e80fbbf9ff               CALL 0x63cc7fb9
63d2c4aa  09b8aa  c645fc0a                 MOV byte ptr [EBP + -0x4],0xa
63d2c4ae  09b8ae  8b45b8                   MOV EAX,dword ptr [EBP + -0x48]
63d2c4b1  09b8b1  8365b800                 AND dword ptr [EBP + -0x48],0x0
63d2c4b5  09b8b5  85c0                     TEST EAX,EAX
63d2c4b7  09b8b7  0f8554feffff             JNZ 0x63d2c311
63d2c4bd  09b8bd  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c4c0  09b8c0  48                       DEC EAX
63d2c4c1  09b8c1  50                       PUSH EAX
63d2c4c2  09b8c2  ff7708                   PUSH dword ptr [EDI + 0x8]
63d2c4c5  09b8c5  50                       PUSH EAX
63d2c4c6  09b8c6  ff37                     PUSH dword ptr [EDI]
63d2c4c8  09b8c8  8bc6                     MOV EAX,ESI
63d2c4ca  09b8ca  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c4cd  09b8cd  e854affaff               CALL 0x63cd7426
63d2c4d2  09b8d2  85c0                     TEST EAX,EAX
63d2c4d4  09b8d4  0f8537feffff             JNZ 0x63d2c311
63d2c4da  09b8da  8b5d08                   MOV EBX,dword ptr [EBP + 0x8]
63d2c4dd  09b8dd  398310250000             CMP dword ptr [EBX + 0x2510],EAX
63d2c4e3  09b8e3  7526                     JNZ 0x63d2c50b
63d2c4e5  09b8e5  68f6360000               PUSH 0x36f6
63d2c4ea  09b8ea  e8dcaefbff               CALL 0x63ce73cb
63d2c4ef  09b8ef  8b8b10250000             MOV ECX,dword ptr [EBX + 0x2510]
63d2c4f5  09b8f5  8bf0                     MOV ESI,EAX
63d2c4f7  09b8f7  3bce                     CMP ECX,ESI
63d2c4f9  09b8f9  7410                     JZ 0x63d2c50b
63d2c4fb  09b8fb  85c9                     TEST ECX,ECX
63d2c4fd  09b8fd  7406                     JZ 0x63d2c505
63d2c4ff  09b8ff  8b01                     MOV EAX,dword ptr [ECX]
63d2c501  09b901  6a01                     PUSH 0x1
63d2c503  09b903  ff10                     CALL dword ptr [EAX]
63d2c505  09b905  89b310250000             MOV dword ptr [EBX + 0x2510],ESI
63d2c50b  09b90b  ff75b4                   PUSH dword ptr [EBP + -0x4c]
63d2c50e  09b90e  8bb310250000             MOV ESI,dword ptr [EBX + 0x2510]
63d2c514  09b914  e8b1ed0800               CALL 0x63dbb2ca
63d2c519  09b919  ff75c0                   PUSH dword ptr [EBP + -0x40]
63d2c51c  09b91c  e8a9ed0800               CALL 0x63dbb2ca
63d2c521  09b921  ffb578ffffff             PUSH dword ptr [EBP + 0xffffff78]
63d2c527  09b927  e83eed0800               CALL 0x63dbb26a
63d2c52c  09b92c  ffb568ffffff             PUSH dword ptr [EBP + 0xffffff68]
63d2c532  09b932  e833ed0800               CALL 0x63dbb26a
63d2c537  09b937  ffb55cffffff             PUSH dword ptr [EBP + 0xffffff5c]
63d2c53d  09b93d  e828ed0800               CALL 0x63dbb26a
63d2c542  09b942  83bb0025000000           CMP dword ptr [EBX + 0x2500],0x0
63d2c549  09b949  7e5a                     JLE 0x63d2c5a5
63d2c54b  09b94b  85f6                     TEST ESI,ESI
63d2c54d  09b94d  7456                     JZ 0x63d2c5a5
63d2c54f  09b94f  8b5f0c                   MOV EBX,dword ptr [EDI + 0xc]
63d2c552  09b952  2b5f04                   SUB EBX,dword ptr [EDI + 0x4]
63d2c555  09b955  83eb04                   SUB EBX,0x4
63d2c558  09b958  e8d8b8f9ff               CALL 0x63cc7e35
63d2c55d  09b95d  8b4d08                   MOV ECX,dword ptr [EBP + 0x8]
63d2c560  09b960  8b8900250000             MOV ECX,dword ptr [ECX + 0x2500]
63d2c566  09b966  898d70ffffff             MOV dword ptr [EBP + 0xffffff70],ECX
63d2c56c  09b96c  8b4f04                   MOV ECX,dword ptr [EDI + 0x4]
63d2c56f  09b96f  41                       INC ECX
63d2c570  09b970  41                       INC ECX
63d2c571  09b971  898d74ffffff             MOV dword ptr [EBP + 0xffffff74],ECX
63d2c577  09b977  898578ffffff             MOV dword ptr [EBP + 0xffffff78],EAX
63d2c57d  09b97d  899d7cffffff             MOV dword ptr [EBP + 0xffffff7c],EBX
63d2c583  09b983  e8d4b8f9ff               CALL 0x63cc7e5c
63d2c588  09b988  50                       PUSH EAX
63d2c589  09b989  e8a7b8f9ff               CALL 0x63cc7e35
63d2c58e  09b98e  50                       PUSH EAX
63d2c58f  09b98f  6a00                     PUSH 0x0
63d2c591  09b991  8bfe                     MOV EDI,ESI
63d2c593  09b993  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c596  09b996  6a00                     PUSH 0x0
63d2c598  09b998  33c9                     XOR ECX,ECX
63d2c59a  09b99a  8d8570ffffff             LEA EAX,[EBP + 0xffffff70]
63d2c5a0  09b9a0  e8ddf3fbff               CALL 0x63ceb982
63d2c5a5  09b9a5  e8271e0900               CALL 0x63dbe3d1
63d2c5aa  09b9aa  c20800                   RET 0x8

; ===== FUN_63d2bed5 @ 63d2bed5  conv __thiscall  purge 8
63d2bed5  09b2d5  689c000000               PUSH 0x9c
63d2beda  09b2da  b8b84edc63               MOV EAX,0x63dc4eb8
63d2bedf  09b2df  e801240900               CALL 0x63dbe2e5
63d2bee4  09b2e4  8bf9                     MOV EDI,ECX
63d2bee6  09b2e6  e89d500200               CALL 0x63d50f88
63d2beeb  09b2eb  84c0                     TEST AL,AL
63d2beed  09b2ed  0f8487000000             JZ 0x63d2bf7a
63d2bef3  09b2f3  6a05                     PUSH 0x5
63d2bef5  09b2f5  ff151416c963             CALL dword ptr [0x63c91614]
63d2befb  09b2fb  0fb6c8                   MOVZX ECX,AL
63d2befe  09b2fe  81c900ffffff             OR ECX,0xffffff00
63d2bf04  09b304  0fb6d4                   MOVZX EDX,AH
63d2bf07  09b307  c1e108                   SHL ECX,0x8
63d2bf0a  09b30a  c1e810                   SHR EAX,0x10
63d2bf0d  09b30d  0bca                     OR ECX,EDX
63d2bf0f  09b30f  0fb6c0                   MOVZX EAX,AL
63d2bf12  09b312  c1e108                   SHL ECX,0x8
63d2bf15  09b315  0bc8                     OR ECX,EAX
63d2bf17  09b317  8d4508                   LEA EAX,[EBP + 0x8]
63d2bf1a  09b31a  8d75bc                   LEA ESI,[EBP + -0x44]
63d2bf1d  09b31d  894d08                   MOV dword ptr [EBP + 0x8],ECX
63d2bf20  09b320  e8baf8f8ff               CALL 0x63cbb7df
63d2bf25  09b325  8365fc00                 AND dword ptr [EBP + -0x4],0x0
63d2bf29  09b329  8b45c4                   MOV EAX,dword ptr [EBP + -0x3c]
63d2bf2c  09b32c  8365c400                 AND dword ptr [EBP + -0x3c],0x0
63d2bf30  09b330  85c0                     TEST EAX,EAX
63d2bf32  09b332  7417                     JZ 0x63d2bf4b
63d2bf34  09b334  8bf8                     MOV EDI,EAX
63d2bf36  09b336  8d75d8                   LEA ESI,[EBP + -0x28]
63d2bf39  09b339  e8b902f9ff               CALL 0x63cbc1f7
63d2bf3e  09b33e  68f815dd63               PUSH 0x63dd15f8
63d2bf43  09b343  8bc6                     MOV EAX,ESI
63d2bf45  09b345  50                       PUSH EAX
63d2bf46  09b346  e883230900               CALL 0x63dbe2ce
63d2bf4b  09b34b  8b0f                     MOV ECX,dword ptr [EDI]
63d2bf4d  09b34d  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2bf50  09b350  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2bf53  09b353  8b7f0c                   MOV EDI,dword ptr [EDI + 0xc]
63d2bf56  09b356  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2bf59  09b359  2bfa                     SUB EDI,EDX
63d2bf5b  09b35b  57                       PUSH EDI
63d2bf5c  09b35c  2bc1                     SUB EAX,ECX
63d2bf5e  09b35e  50                       PUSH EAX
63d2bf5f  09b35f  52                       PUSH EDX
63d2bf60  09b360  51                       PUSH ECX
63d2bf61  09b361  8d45bc                   LEA EAX,[EBP + -0x44]
63d2bf64  09b364  e8caf7f8ff               CALL 0x63cbb733
63d2bf69  09b369  85c0                     TEST EAX,EAX
63d2bf6b  09b36b  75c7                     JNZ 0x63d2bf34
63d2bf6d  09b36d  ff75c0                   PUSH dword ptr [EBP + -0x40]
63d2bf70  09b370  e8f5f20800               CALL 0x63dbb26a
63d2bf75  09b375  e92b060000               JMP 0x63d2c5a5
63d2bf7a  09b37a  8b4508                   MOV EAX,dword ptr [EBP + 0x8]
63d2bf7d  09b37d  0504250000               ADD EAX,0x2504
63d2bf82  09b382  e8ca410200               CALL 0x63d50151
63d2bf87  09b387  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2bf8a  09b38a  84c0                     TEST AL,AL
63d2bf8c  09b38c  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2bf8f  09b38f  0f8428030000             JZ 0x63d2c2bd
63d2bf95  09b395  8b7704                   MOV ESI,dword ptr [EDI + 0x4]
63d2bf98  09b398  2bc6                     SUB EAX,ESI
63d2bf9a  09b39a  99                       CDQ
63d2bf9b  09b39b  2bc2                     SUB EAX,EDX
63d2bf9d  09b39d  8b17                     MOV EDX,dword ptr [EDI]
63d2bf9f  09b39f  d1f8                     SAR EAX,0x1
63d2bfa1  09b3a1  48                       DEC EAX
63d2bfa2  09b3a2  48                       DEC EAX
63d2bfa3  09b3a3  33db                     XOR EBX,EBX
63d2bfa5  09b3a5  8945ec                   MOV dword ptr [EBP + -0x14],EAX
63d2bfa8  09b3a8  8945ac                   MOV dword ptr [EBP + -0x54],EAX
63d2bfab  09b3ab  2bca                     SUB ECX,EDX
63d2bfad  09b3ad  43                       INC EBX
63d2bfae  09b3ae  83c602                   ADD ESI,0x2
63d2bfb1  09b3b1  53                       PUSH EBX
63d2bfb2  09b3b2  8d45a0                   LEA EAX,[EBP + -0x60]
63d2bfb5  09b3b5  8975a4                   MOV dword ptr [EBP + -0x5c],ESI
63d2bfb8  09b3b8  894da8                   MOV dword ptr [EBP + -0x58],ECX
63d2bfbb  09b3bb  50                       PUSH EAX
63d2bfbc  09b3bc  8d45b8                   LEA EAX,[EBP + -0x48]
63d2bfbf  09b3bf  8d4de8                   LEA ECX,[EBP + -0x18]
63d2bfc2  09b3c2  8db574ffffff             LEA ESI,[EBP + 0xffffff74]
63d2bfc8  09b3c8  8955a0                   MOV dword ptr [EBP + -0x60],EDX
63d2bfcb  09b3cb  c745b8b98635ff           MOV dword ptr [EBP + -0x48],0xff3586b9
63d2bfd2  09b3d2  c745e8d2b17dff           MOV dword ptr [EBP + -0x18],0xff7db1d2
63d2bfd9  09b3d9  e8917bf9ff               CALL 0x63cc3b6f
63d2bfde  09b3de  895dfc                   MOV dword ptr [EBP + -0x4],EBX
63d2bfe1  09b3e1  8b857cffffff             MOV EAX,dword ptr [EBP + 0xffffff7c]
63d2bfe7  09b3e7  83a57cffffff00           AND dword ptr [EBP + 0xffffff7c],0x0
63d2bfee  09b3ee  85c0                     TEST EAX,EAX
63d2bff0  09b3f0  0f853effffff             JNZ 0x63d2bf34
63d2bff6  09b3f6  ff75ac                   PUSH dword ptr [EBP + -0x54]
63d2bff9  09b3f9  8bc6                     MOV EAX,ESI
63d2bffb  09b3fb  ff75a8                   PUSH dword ptr [EBP + -0x58]
63d2bffe  09b3fe  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c001  09b401  ff75a4                   PUSH dword ptr [EBP + -0x5c]
63d2c004  09b404  ff75a0                   PUSH dword ptr [EBP + -0x60]
63d2c007  09b407  e827f7f8ff               CALL 0x63cbb733
63d2c00c  09b40c  85c0                     TEST EAX,EAX
63d2c00e  09b40e  0f8520ffffff             JNZ 0x63d2bf34
63d2c014  09b414  8b55ac                   MOV EDX,dword ptr [EBP + -0x54]
63d2c017  09b417  8b0f                     MOV ECX,dword ptr [EDI]
63d2c019  09b419  8b5f0c                   MOV EBX,dword ptr [EDI + 0xc]
63d2c01c  09b41c  8b75a4                   MOV ESI,dword ptr [EBP + -0x5c]
63d2c01f  09b41f  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2c022  09b422  2bda                     SUB EBX,EDX
63d2c024  09b424  2bc1                     SUB EAX,ECX
63d2c026  09b426  2bde                     SUB EBX,ESI
63d2c028  09b428  8945d0                   MOV dword ptr [EBP + -0x30],EAX
63d2c02b  09b42b  6a01                     PUSH 0x1
63d2c02d  09b42d  8d45c8                   LEA EAX,[EBP + -0x38]
63d2c030  09b430  4b                       DEC EBX
63d2c031  09b431  03d6                     ADD EDX,ESI
63d2c033  09b433  894dc8                   MOV dword ptr [EBP + -0x38],ECX
63d2c036  09b436  50                       PUSH EAX
63d2c037  09b437  4b                       DEC EBX
63d2c038  09b438  8d45e8                   LEA EAX,[EBP + -0x18]
63d2c03b  09b43b  8d4db8                   LEA ECX,[EBP + -0x48]
63d2c03e  09b43e  8db564ffffff             LEA ESI,[EBP + 0xffffff64]
63d2c044  09b444  8955cc                   MOV dword ptr [EBP + -0x34],EDX
63d2c047  09b447  895dd4                   MOV dword ptr [EBP + -0x2c],EBX
63d2c04a  09b44a  c745e8c9a564ff           MOV dword ptr [EBP + -0x18],0xff64a5c9
63d2c051  09b451  c745b8965c00ff           MOV dword ptr [EBP + -0x48],0xff005c96
63d2c058  09b458  e8127bf9ff               CALL 0x63cc3b6f
63d2c05d  09b45d  c645fc02                 MOV byte ptr [EBP + -0x4],0x2
63d2c061  09b461  8b856cffffff             MOV EAX,dword ptr [EBP + 0xffffff6c]
63d2c067  09b467  83a56cffffff00           AND dword ptr [EBP + 0xffffff6c],0x0
63d2c06e  09b46e  85c0                     TEST EAX,EAX
63d2c070  09b470  0f85befeffff             JNZ 0x63d2bf34
63d2c076  09b476  ff75d4                   PUSH dword ptr [EBP + -0x2c]
63d2c079  09b479  8bc6                     MOV EAX,ESI
63d2c07b  09b47b  ff75d0                   PUSH dword ptr [EBP + -0x30]
63d2c07e  09b47e  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c081  09b481  ff75cc                   PUSH dword ptr [EBP + -0x34]
63d2c084  09b484  ff75c8                   PUSH dword ptr [EBP + -0x38]
63d2c087  09b487  e8a7f6f8ff               CALL 0x63cbb733
63d2c08c  09b48c  85c0                     TEST EAX,EAX
63d2c08e  09b48e  0f85a0feffff             JNZ 0x63d2bf34
63d2c094  09b494  8b17                     MOV EDX,dword ptr [EDI]
63d2c096  09b496  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2c099  09b499  8b4f04                   MOV ECX,dword ptr [EDI + 0x4]
63d2c09c  09b49c  2bc2                     SUB EAX,EDX
63d2c09e  09b49e  48                       DEC EAX
63d2c09f  09b49f  48                       DEC EAX
63d2c0a0  09b4a0  894588                   MOV dword ptr [EBP + -0x78],EAX
63d2c0a3  09b4a3  8b45ec                   MOV EAX,dword ptr [EBP + -0x14]
63d2c0a6  09b4a6  41                       INC ECX
63d2c0a7  09b4a7  42                       INC EDX
63d2c0a8  09b4a8  40                       INC EAX
63d2c0a9  09b4a9  89458c                   MOV dword ptr [EBP + -0x74],EAX
63d2c0ac  09b4ac  6a01                     PUSH 0x1
63d2c0ae  09b4ae  8d4580                   LEA EAX,[EBP + -0x80]
63d2c0b1  09b4b1  894d84                   MOV dword ptr [EBP + -0x7c],ECX
63d2c0b4  09b4b4  50                       PUSH EAX
63d2c0b5  09b4b5  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c0b8  09b4b8  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c0bb  09b4bb  8d75b0                   LEA ESI,[EBP + -0x50]
63d2c0be  09b4be  895580                   MOV dword ptr [EBP + -0x80],EDX
63d2c0c1  09b4c1  c745ecd3b380ff           MOV dword ptr [EBP + -0x14],0xff80b3d3
63d2c0c8  09b4c8  c745e8e4cfafff           MOV dword ptr [EBP + -0x18],0xffafcfe4
63d2c0cf  09b4cf  e89b7af9ff               CALL 0x63cc3b6f
63d2c0d4  09b4d4  c645fc03                 MOV byte ptr [EBP + -0x4],0x3
63d2c0d8  09b4d8  8b45b8                   MOV EAX,dword ptr [EBP + -0x48]
63d2c0db  09b4db  8365b800                 AND dword ptr [EBP + -0x48],0x0
63d2c0df  09b4df  85c0                     TEST EAX,EAX
63d2c0e1  09b4e1  0f854dfeffff             JNZ 0x63d2bf34
63d2c0e7  09b4e7  ff758c                   PUSH dword ptr [EBP + -0x74]
63d2c0ea  09b4ea  8bc6                     MOV EAX,ESI
63d2c0ec  09b4ec  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c0ef  09b4ef  6a01                     PUSH 0x1
63d2c0f1  09b4f1  ff7584                   PUSH dword ptr [EBP + -0x7c]
63d2c0f4  09b4f4  ff7580                   PUSH dword ptr [EBP + -0x80]
63d2c0f7  09b4f7  e837f6f8ff               CALL 0x63cbb733
63d2c0fc  09b4fc  85c0                     TEST EAX,EAX
63d2c0fe  09b4fe  0f8530feffff             JNZ 0x63d2bf34
63d2c104  09b504  ff758c                   PUSH dword ptr [EBP + -0x74]
63d2c107  09b507  8b4580                   MOV EAX,dword ptr [EBP + -0x80]
63d2c10a  09b50a  8b4d88                   MOV ECX,dword ptr [EBP + -0x78]
63d2c10d  09b50d  6a01                     PUSH 0x1
63d2c10f  09b50f  ff7584                   PUSH dword ptr [EBP + -0x7c]
63d2c112  09b512  03c1                     ADD EAX,ECX
63d2c114  09b514  48                       DEC EAX
63d2c115  09b515  50                       PUSH EAX
63d2c116  09b516  8d45b0                   LEA EAX,[EBP + -0x50]
63d2c119  09b519  e815f6f8ff               CALL 0x63cbb733
63d2c11e  09b51e  85c0                     TEST EAX,EAX
63d2c120  09b520  0f850efeffff             JNZ 0x63d2bf34
63d2c126  09b526  6a01                     PUSH 0x1
63d2c128  09b528  ff7588                   PUSH dword ptr [EBP + -0x78]
63d2c12b  09b52b  8d45b0                   LEA EAX,[EBP + -0x50]
63d2c12e  09b52e  ff7584                   PUSH dword ptr [EBP + -0x7c]
63d2c131  09b531  ff7580                   PUSH dword ptr [EBP + -0x80]
63d2c134  09b534  e8faf5f8ff               CALL 0x63cbb733
63d2c139  09b539  85c0                     TEST EAX,EAX
63d2c13b  09b53b  0f85f3fdffff             JNZ 0x63d2bf34
63d2c141  09b541  8b0f                     MOV ECX,dword ptr [EDI]
63d2c143  09b543  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2c146  09b546  2bc1                     SUB EAX,ECX
63d2c148  09b548  48                       DEC EAX
63d2c149  09b549  48                       DEC EAX
63d2c14a  09b54a  41                       INC ECX
63d2c14b  09b54b  894d90                   MOV dword ptr [EBP + -0x70],ECX
63d2c14e  09b54e  8b4dcc                   MOV ECX,dword ptr [EBP + -0x34]
63d2c151  09b551  894598                   MOV dword ptr [EBP + -0x68],EAX
63d2c154  09b554  6a01                     PUSH 0x1
63d2c156  09b556  8d4590                   LEA EAX,[EBP + -0x70]
63d2c159  09b559  894d94                   MOV dword ptr [EBP + -0x6c],ECX
63d2c15c  09b55c  50                       PUSH EAX
63d2c15d  09b55d  43                       INC EBX
63d2c15e  09b55e  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c161  09b561  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c164  09b564  8d75bc                   LEA ESI,[EBP + -0x44]
63d2c167  09b567  895d9c                   MOV dword ptr [EBP + -0x64],EBX
63d2c16a  09b56a  c745ece4d1a7ff           MOV dword ptr [EBP + -0x14],0xffa7d1e4
63d2c171  09b571  c745e8b48f55ff           MOV dword ptr [EBP + -0x18],0xff558fb4
63d2c178  09b578  e8f279f9ff               CALL 0x63cc3b6f
63d2c17d  09b57d  c645fc04                 MOV byte ptr [EBP + -0x4],0x4
63d2c181  09b581  8b45c4                   MOV EAX,dword ptr [EBP + -0x3c]
63d2c184  09b584  8365c400                 AND dword ptr [EBP + -0x3c],0x0
63d2c188  09b588  85c0                     TEST EAX,EAX
63d2c18a  09b58a  0f85a4fdffff             JNZ 0x63d2bf34
63d2c190  09b590  ff759c                   PUSH dword ptr [EBP + -0x64]
63d2c193  09b593  8b5d0c                   MOV EBX,dword ptr [EBP + 0xc]
63d2c196  09b596  6a01                     PUSH 0x1
63d2c198  09b598  ff7594                   PUSH dword ptr [EBP + -0x6c]
63d2c19b  09b59b  8bc6                     MOV EAX,ESI
63d2c19d  09b59d  ff7590                   PUSH dword ptr [EBP + -0x70]
63d2c1a0  09b5a0  8bf3                     MOV ESI,EBX
63d2c1a2  09b5a2  e88cf5f8ff               CALL 0x63cbb733
63d2c1a7  09b5a7  85c0                     TEST EAX,EAX
63d2c1a9  09b5a9  0f8585fdffff             JNZ 0x63d2bf34
63d2c1af  09b5af  ff759c                   PUSH dword ptr [EBP + -0x64]
63d2c1b2  09b5b2  8b4590                   MOV EAX,dword ptr [EBP + -0x70]
63d2c1b5  09b5b5  8b4d98                   MOV ECX,dword ptr [EBP + -0x68]
63d2c1b8  09b5b8  6a01                     PUSH 0x1
63d2c1ba  09b5ba  ff7594                   PUSH dword ptr [EBP + -0x6c]
63d2c1bd  09b5bd  03c1                     ADD EAX,ECX
63d2c1bf  09b5bf  48                       DEC EAX
63d2c1c0  09b5c0  50                       PUSH EAX
63d2c1c1  09b5c1  8d45bc                   LEA EAX,[EBP + -0x44]
63d2c1c4  09b5c4  e86af5f8ff               CALL 0x63cbb733
63d2c1c9  09b5c9  85c0                     TEST EAX,EAX
63d2c1cb  09b5cb  0f8563fdffff             JNZ 0x63d2bf34
63d2c1d1  09b5d1  8b459c                   MOV EAX,dword ptr [EBP + -0x64]
63d2c1d4  09b5d4  8b4d94                   MOV ECX,dword ptr [EBP + -0x6c]
63d2c1d7  09b5d7  6a01                     PUSH 0x1
63d2c1d9  09b5d9  ff7598                   PUSH dword ptr [EBP + -0x68]
63d2c1dc  09b5dc  03c1                     ADD EAX,ECX
63d2c1de  09b5de  48                       DEC EAX
63d2c1df  09b5df  50                       PUSH EAX
63d2c1e0  09b5e0  ff7590                   PUSH dword ptr [EBP + -0x70]
63d2c1e3  09b5e3  8d45bc                   LEA EAX,[EBP + -0x44]
63d2c1e6  09b5e6  e848f5f8ff               CALL 0x63cbb733
63d2c1eb  09b5eb  85c0                     TEST EAX,EAX
63d2c1ed  09b5ed  0f8541fdffff             JNZ 0x63d2bf34
63d2c1f3  09b5f3  d9e8                     FLD1
63d2c1f5  09b5f5  51                       PUSH ECX
63d2c1f6  09b5f6  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c1f9  09b5f9  d91c24                   FSTP float ptr [ESP]
63d2c1fc  09b5fc  8db55cffffff             LEA ESI,[EBP + 0xffffff5c]
63d2c202  09b602  c745ec999999ff           MOV dword ptr [EBP + -0x14],0xff999999
63d2c209  09b609  e8abbdf9ff               CALL 0x63cc7fb9
63d2c20e  09b60e  c645fc05                 MOV byte ptr [EBP + -0x4],0x5
63d2c212  09b612  8b8560ffffff             MOV EAX,dword ptr [EBP + 0xffffff60]
63d2c218  09b618  83a560ffffff00           AND dword ptr [EBP + 0xffffff60],0x0
63d2c21f  09b61f  85c0                     TEST EAX,EAX
63d2c221  09b621  0f850dfdffff             JNZ 0x63d2bf34
63d2c227  09b627  8b4704                   MOV EAX,dword ptr [EDI + 0x4]
63d2c22a  09b62a  8b570c                   MOV EDX,dword ptr [EDI + 0xc]
63d2c22d  09b62d  8b0f                     MOV ECX,dword ptr [EDI]
63d2c22f  09b62f  2bd0                     SUB EDX,EAX
63d2c231  09b631  4a                       DEC EDX
63d2c232  09b632  52                       PUSH EDX
63d2c233  09b633  8b5708                   MOV EDX,dword ptr [EDI + 0x8]
63d2c236  09b636  2bd1                     SUB EDX,ECX
63d2c238  09b638  4a                       DEC EDX
63d2c239  09b639  52                       PUSH EDX
63d2c23a  09b63a  51                       PUSH ECX
63d2c23b  09b63b  50                       PUSH EAX
63d2c23c  09b63c  8bc6                     MOV EAX,ESI
63d2c23e  09b63e  8bf3                     MOV ESI,EBX
63d2c240  09b640  e839bdf9ff               CALL 0x63cc7f7e
63d2c245  09b645  85c0                     TEST EAX,EAX
63d2c247  09b647  0f85e7fcffff             JNZ 0x63d2bf34
63d2c24d  09b64d  8b7508                   MOV ESI,dword ptr [EBP + 0x8]
63d2c250  09b650  39860c250000             CMP dword ptr [ESI + 0x250c],EAX
63d2c256  09b656  7526                     JNZ 0x63d2c27e
63d2c258  09b658  68f5360000               PUSH 0x36f5
63d2c25d  09b65d  e869b1fbff               CALL 0x63ce73cb
63d2c262  09b662  8b8e0c250000             MOV ECX,dword ptr [ESI + 0x250c]
63d2c268  09b668  8bd8                     MOV EBX,EAX
63d2c26a  09b66a  3bcb                     CMP ECX,EBX
63d2c26c  09b66c  7410                     JZ 0x63d2c27e
63d2c26e  09b66e  85c9                     TEST ECX,ECX
63d2c270  09b670  7406                     JZ 0x63d2c278
63d2c272  09b672  8b01                     MOV EAX,dword ptr [ECX]
63d2c274  09b674  6a01                     PUSH 0x1
63d2c276  09b676  ff10                     CALL dword ptr [EAX]
63d2c278  09b678  899e0c250000             MOV dword ptr [ESI + 0x250c],EBX
63d2c27e  09b67e  ffb55cffffff             PUSH dword ptr [EBP + 0xffffff5c]
63d2c284  09b684  8bb60c250000             MOV ESI,dword ptr [ESI + 0x250c]
63d2c28a  09b68a  e83bf00800               CALL 0x63dbb2ca
63d2c28f  09b68f  ff75c0                   PUSH dword ptr [EBP + -0x40]
63d2c292  09b692  e8d3ef0800               CALL 0x63dbb26a
63d2c297  09b697  ff75b4                   PUSH dword ptr [EBP + -0x4c]
63d2c29a  09b69a  e8cbef0800               CALL 0x63dbb26a
63d2c29f  09b69f  ffb568ffffff             PUSH dword ptr [EBP + 0xffffff68]
63d2c2a5  09b6a5  e8c0ef0800               CALL 0x63dbb26a
63d2c2aa  09b6aa  ffb578ffffff             PUSH dword ptr [EBP + 0xffffff78]
63d2c2b0  09b6b0  e8b5ef0800               CALL 0x63dbb26a
63d2c2b5  09b6b5  8b5d08                   MOV EBX,dword ptr [EBP + 0x8]
63d2c2b8  09b6b8  e985020000               JMP 0x63d2c542
63d2c2bd  09b6bd  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c2c0  09b6c0  8b37                     MOV ESI,dword ptr [EDI]
63d2c2c2  09b6c2  2bc2                     SUB EAX,EDX
63d2c2c4  09b6c4  48                       DEC EAX
63d2c2c5  09b6c5  48                       DEC EAX
63d2c2c6  09b6c6  2bce                     SUB ECX,ESI
63d2c2c8  09b6c8  8945e4                   MOV dword ptr [EBP + -0x1c],EAX
63d2c2cb  09b6cb  6a01                     PUSH 0x1
63d2c2cd  09b6cd  8d45d8                   LEA EAX,[EBP + -0x28]
63d2c2d0  09b6d0  8975d8                   MOV dword ptr [EBP + -0x28],ESI
63d2c2d3  09b6d3  894de0                   MOV dword ptr [EBP + -0x20],ECX
63d2c2d6  09b6d6  50                       PUSH EAX
63d2c2d7  09b6d7  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c2da  09b6da  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c2dd  09b6dd  8db558ffffff             LEA ESI,[EBP + 0xffffff58]
63d2c2e3  09b6e3  8955dc                   MOV dword ptr [EBP + -0x24],EDX
63d2c2e6  09b6e6  c745ecceaa6cff           MOV dword ptr [EBP + -0x14],0xff6caace
63d2c2ed  09b6ed  c745e8965c00ff           MOV dword ptr [EBP + -0x18],0xff005c96
63d2c2f4  09b6f4  e87678f9ff               CALL 0x63cc3b6f
63d2c2f9  09b6f9  c745fc06000000           MOV dword ptr [EBP + -0x4],0x6
63d2c300  09b700  8b8560ffffff             MOV EAX,dword ptr [EBP + 0xffffff60]
63d2c306  09b706  83a560ffffff00           AND dword ptr [EBP + 0xffffff60],0x0
63d2c30d  09b70d  85c0                     TEST EAX,EAX
63d2c30f  09b70f  7416                     JZ 0x63d2c327
63d2c311  09b711  8bf8                     MOV EDI,EAX
63d2c313  09b713  8d75c8                   LEA ESI,[EBP + -0x38]
63d2c316  09b716  e8dcfef8ff               CALL 0x63cbc1f7
63d2c31b  09b71b  68f815dd63               PUSH 0x63dd15f8
63d2c320  09b720  8bc6                     MOV EAX,ESI
63d2c322  09b722  e91efcffff               JMP 0x63d2bf45
63d2c327  09b727  ff75e4                   PUSH dword ptr [EBP + -0x1c]
63d2c32a  09b72a  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c32d  09b72d  ff75e0                   PUSH dword ptr [EBP + -0x20]
63d2c330  09b730  8d8558ffffff             LEA EAX,[EBP + 0xffffff58]
63d2c336  09b736  ff75dc                   PUSH dword ptr [EBP + -0x24]
63d2c339  09b739  ff75d8                   PUSH dword ptr [EBP + -0x28]
63d2c33c  09b73c  e8f2f3f8ff               CALL 0x63cbb733
63d2c341  09b741  85c0                     TEST EAX,EAX
63d2c343  09b743  75cc                     JNZ 0x63d2c311
63d2c345  09b745  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c348  09b748  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c34b  09b74b  8b37                     MOV ESI,dword ptr [EDI]
63d2c34d  09b74d  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2c350  09b750  2bc2                     SUB EAX,EDX
63d2c352  09b752  2bce                     SUB ECX,ESI
63d2c354  09b754  8945d4                   MOV dword ptr [EBP + -0x2c],EAX
63d2c357  09b757  6a01                     PUSH 0x1
63d2c359  09b759  8d45c8                   LEA EAX,[EBP + -0x38]
63d2c35c  09b75c  8975c8                   MOV dword ptr [EBP + -0x38],ESI
63d2c35f  09b75f  894dd0                   MOV dword ptr [EBP + -0x30],ECX
63d2c362  09b762  50                       PUSH EAX
63d2c363  09b763  bbe5d2a9ff               MOV EBX,0xffa9d2e5
63d2c368  09b768  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c36b  09b76b  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c36e  09b76e  8db564ffffff             LEA ESI,[EBP + 0xffffff64]
63d2c374  09b774  895dec                   MOV dword ptr [EBP + -0x14],EBX
63d2c377  09b777  c745e8b48f55ff           MOV dword ptr [EBP + -0x18],0xff558fb4
63d2c37e  09b77e  8955cc                   MOV dword ptr [EBP + -0x34],EDX
63d2c381  09b781  e8e977f9ff               CALL 0x63cc3b6f
63d2c386  09b786  c645fc07                 MOV byte ptr [EBP + -0x4],0x7
63d2c38a  09b78a  8b856cffffff             MOV EAX,dword ptr [EBP + 0xffffff6c]
63d2c390  09b790  83a56cffffff00           AND dword ptr [EBP + 0xffffff6c],0x0
63d2c397  09b797  85c0                     TEST EAX,EAX
63d2c399  09b799  7416                     JZ 0x63d2c3b1
63d2c39b  09b79b  8bf8                     MOV EDI,EAX
63d2c39d  09b79d  8d75a0                   LEA ESI,[EBP + -0x60]
63d2c3a0  09b7a0  e852fef8ff               CALL 0x63cbc1f7
63d2c3a5  09b7a5  68f815dd63               PUSH 0x63dd15f8
63d2c3aa  09b7aa  8bc6                     MOV EAX,ESI
63d2c3ac  09b7ac  e994fbffff               JMP 0x63d2bf45
63d2c3b1  09b7b1  8b4f04                   MOV ECX,dword ptr [EDI + 0x4]
63d2c3b4  09b7b4  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c3b7  09b7b7  8b17                     MOV EDX,dword ptr [EDI]
63d2c3b9  09b7b9  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c3bc  09b7bc  2bc1                     SUB EAX,ECX
63d2c3be  09b7be  48                       DEC EAX
63d2c3bf  09b7bf  50                       PUSH EAX
63d2c3c0  09b7c0  6a01                     PUSH 0x1
63d2c3c2  09b7c2  51                       PUSH ECX
63d2c3c3  09b7c3  52                       PUSH EDX
63d2c3c4  09b7c4  8d8564ffffff             LEA EAX,[EBP + 0xffffff64]
63d2c3ca  09b7ca  e864f3f8ff               CALL 0x63cbb733
63d2c3cf  09b7cf  85c0                     TEST EAX,EAX
63d2c3d1  09b7d1  75c8                     JNZ 0x63d2c39b
63d2c3d3  09b7d3  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c3d6  09b7d6  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c3d9  09b7d9  8b37                     MOV ESI,dword ptr [EDI]
63d2c3db  09b7db  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2c3de  09b7de  2bc2                     SUB EAX,EDX
63d2c3e0  09b7e0  2bce                     SUB ECX,ESI
63d2c3e2  09b7e2  8945d4                   MOV dword ptr [EBP + -0x2c],EAX
63d2c3e5  09b7e5  6a01                     PUSH 0x1
63d2c3e7  09b7e7  8d45c8                   LEA EAX,[EBP + -0x38]
63d2c3ea  09b7ea  8975c8                   MOV dword ptr [EBP + -0x38],ESI
63d2c3ed  09b7ed  894dd0                   MOV dword ptr [EBP + -0x30],ECX
63d2c3f0  09b7f0  50                       PUSH EAX
63d2c3f1  09b7f1  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c3f4  09b7f4  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c3f7  09b7f7  8db574ffffff             LEA ESI,[EBP + 0xffffff74]
63d2c3fd  09b7fd  895dec                   MOV dword ptr [EBP + -0x14],EBX
63d2c400  09b800  c745e8b48f55ff           MOV dword ptr [EBP + -0x18],0xff558fb4
63d2c407  09b807  8955cc                   MOV dword ptr [EBP + -0x34],EDX
63d2c40a  09b80a  e86077f9ff               CALL 0x63cc3b6f
63d2c40f  09b80f  c645fc08                 MOV byte ptr [EBP + -0x4],0x8
63d2c413  09b813  8b857cffffff             MOV EAX,dword ptr [EBP + 0xffffff7c]
63d2c419  09b819  83a57cffffff00           AND dword ptr [EBP + 0xffffff7c],0x0
63d2c420  09b820  85c0                     TEST EAX,EAX
63d2c422  09b822  0f8573ffffff             JNZ 0x63d2c39b
63d2c428  09b828  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c42b  09b82b  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c42e  09b82e  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2c431  09b831  2bc2                     SUB EAX,EDX
63d2c433  09b833  48                       DEC EAX
63d2c434  09b834  50                       PUSH EAX
63d2c435  09b835  6a01                     PUSH 0x1
63d2c437  09b837  49                       DEC ECX
63d2c438  09b838  52                       PUSH EDX
63d2c439  09b839  8bc6                     MOV EAX,ESI
63d2c43b  09b83b  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c43e  09b83e  51                       PUSH ECX
63d2c43f  09b83f  e8eff2f8ff               CALL 0x63cbb733
63d2c444  09b844  85c0                     TEST EAX,EAX
63d2c446  09b846  0f854fffffff             JNZ 0x63d2c39b
63d2c44c  09b84c  d9e8                     FLD1
63d2c44e  09b84e  51                       PUSH ECX
63d2c44f  09b84f  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c452  09b852  d91c24                   FSTP float ptr [ESP]
63d2c455  09b855  8d75c0                   LEA ESI,[EBP + -0x40]
63d2c458  09b858  895dec                   MOV dword ptr [EBP + -0x14],EBX
63d2c45b  09b85b  e859bbf9ff               CALL 0x63cc7fb9
63d2c460  09b860  c645fc09                 MOV byte ptr [EBP + -0x4],0x9
63d2c464  09b864  8b45c4                   MOV EAX,dword ptr [EBP + -0x3c]
63d2c467  09b867  8365c400                 AND dword ptr [EBP + -0x3c],0x0
63d2c46b  09b86b  85c0                     TEST EAX,EAX
63d2c46d  09b86d  0f859efeffff             JNZ 0x63d2c311
63d2c473  09b873  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c476  09b876  83c0fe                   ADD EAX,-0x2
63d2c479  09b879  50                       PUSH EAX
63d2c47a  09b87a  ff7708                   PUSH dword ptr [EDI + 0x8]
63d2c47d  09b87d  50                       PUSH EAX
63d2c47e  09b87e  ff37                     PUSH dword ptr [EDI]
63d2c480  09b880  8bc6                     MOV EAX,ESI
63d2c482  09b882  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c485  09b885  e89caffaff               CALL 0x63cd7426
63d2c48a  09b88a  85c0                     TEST EAX,EAX
63d2c48c  09b88c  0f857ffeffff             JNZ 0x63d2c311
63d2c492  09b892  d9e8                     FLD1
63d2c494  09b894  51                       PUSH ECX
63d2c495  09b895  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c498  09b898  d91c24                   FSTP float ptr [ESP]
63d2c49b  09b89b  8d75b4                   LEA ESI,[EBP + -0x4c]
63d2c49e  09b89e  c745ec707070ff           MOV dword ptr [EBP + -0x14],0xff707070
63d2c4a5  09b8a5  e80fbbf9ff               CALL 0x63cc7fb9
63d2c4aa  09b8aa  c645fc0a                 MOV byte ptr [EBP + -0x4],0xa
63d2c4ae  09b8ae  8b45b8                   MOV EAX,dword ptr [EBP + -0x48]
63d2c4b1  09b8b1  8365b800                 AND dword ptr [EBP + -0x48],0x0
63d2c4b5  09b8b5  85c0                     TEST EAX,EAX
63d2c4b7  09b8b7  0f8554feffff             JNZ 0x63d2c311
63d2c4bd  09b8bd  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c4c0  09b8c0  48                       DEC EAX
63d2c4c1  09b8c1  50                       PUSH EAX
63d2c4c2  09b8c2  ff7708                   PUSH dword ptr [EDI + 0x8]
63d2c4c5  09b8c5  50                       PUSH EAX
63d2c4c6  09b8c6  ff37                     PUSH dword ptr [EDI]
63d2c4c8  09b8c8  8bc6                     MOV EAX,ESI
63d2c4ca  09b8ca  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c4cd  09b8cd  e854affaff               CALL 0x63cd7426
63d2c4d2  09b8d2  85c0                     TEST EAX,EAX
63d2c4d4  09b8d4  0f8537feffff             JNZ 0x63d2c311
63d2c4da  09b8da  8b5d08                   MOV EBX,dword ptr [EBP + 0x8]
63d2c4dd  09b8dd  398310250000             CMP dword ptr [EBX + 0x2510],EAX
63d2c4e3  09b8e3  7526                     JNZ 0x63d2c50b
63d2c4e5  09b8e5  68f6360000               PUSH 0x36f6
63d2c4ea  09b8ea  e8dcaefbff               CALL 0x63ce73cb
63d2c4ef  09b8ef  8b8b10250000             MOV ECX,dword ptr [EBX + 0x2510]
63d2c4f5  09b8f5  8bf0                     MOV ESI,EAX
63d2c4f7  09b8f7  3bce                     CMP ECX,ESI
63d2c4f9  09b8f9  7410                     JZ 0x63d2c50b
63d2c4fb  09b8fb  85c9                     TEST ECX,ECX
63d2c4fd  09b8fd  7406                     JZ 0x63d2c505
63d2c4ff  09b8ff  8b01                     MOV EAX,dword ptr [ECX]
63d2c501  09b901  6a01                     PUSH 0x1
63d2c503  09b903  ff10                     CALL dword ptr [EAX]
63d2c505  09b905  89b310250000             MOV dword ptr [EBX + 0x2510],ESI
63d2c50b  09b90b  ff75b4                   PUSH dword ptr [EBP + -0x4c]
63d2c50e  09b90e  8bb310250000             MOV ESI,dword ptr [EBX + 0x2510]
63d2c514  09b914  e8b1ed0800               CALL 0x63dbb2ca
63d2c519  09b919  ff75c0                   PUSH dword ptr [EBP + -0x40]
63d2c51c  09b91c  e8a9ed0800               CALL 0x63dbb2ca
63d2c521  09b921  ffb578ffffff             PUSH dword ptr [EBP + 0xffffff78]
63d2c527  09b927  e83eed0800               CALL 0x63dbb26a
63d2c52c  09b92c  ffb568ffffff             PUSH dword ptr [EBP + 0xffffff68]
63d2c532  09b932  e833ed0800               CALL 0x63dbb26a
63d2c537  09b937  ffb55cffffff             PUSH dword ptr [EBP + 0xffffff5c]
63d2c53d  09b93d  e828ed0800               CALL 0x63dbb26a
63d2c542  09b942  83bb0025000000           CMP dword ptr [EBX + 0x2500],0x0
63d2c549  09b949  7e5a                     JLE 0x63d2c5a5
63d2c54b  09b94b  85f6                     TEST ESI,ESI
63d2c54d  09b94d  7456                     JZ 0x63d2c5a5
63d2c54f  09b94f  8b5f0c                   MOV EBX,dword ptr [EDI + 0xc]
63d2c552  09b952  2b5f04                   SUB EBX,dword ptr [EDI + 0x4]
63d2c555  09b955  83eb04                   SUB EBX,0x4
63d2c558  09b958  e8d8b8f9ff               CALL 0x63cc7e35
63d2c55d  09b95d  8b4d08                   MOV ECX,dword ptr [EBP + 0x8]
63d2c560  09b960  8b8900250000             MOV ECX,dword ptr [ECX + 0x2500]
63d2c566  09b966  898d70ffffff             MOV dword ptr [EBP + 0xffffff70],ECX
63d2c56c  09b96c  8b4f04                   MOV ECX,dword ptr [EDI + 0x4]
63d2c56f  09b96f  41                       INC ECX
63d2c570  09b970  41                       INC ECX
63d2c571  09b971  898d74ffffff             MOV dword ptr [EBP + 0xffffff74],ECX
63d2c577  09b977  898578ffffff             MOV dword ptr [EBP + 0xffffff78],EAX
63d2c57d  09b97d  899d7cffffff             MOV dword ptr [EBP + 0xffffff7c],EBX
63d2c583  09b983  e8d4b8f9ff               CALL 0x63cc7e5c
63d2c588  09b988  50                       PUSH EAX
63d2c589  09b989  e8a7b8f9ff               CALL 0x63cc7e35
63d2c58e  09b98e  50                       PUSH EAX
63d2c58f  09b98f  6a00                     PUSH 0x0
63d2c591  09b991  8bfe                     MOV EDI,ESI
63d2c593  09b993  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c596  09b996  6a00                     PUSH 0x0
63d2c598  09b998  33c9                     XOR ECX,ECX
63d2c59a  09b99a  8d8570ffffff             LEA EAX,[EBP + 0xffffff70]
63d2c5a0  09b9a0  e8ddf3fbff               CALL 0x63ceb982
63d2c5a5  09b9a5  e8271e0900               CALL 0x63dbe3d1
63d2c5aa  09b9aa  c20800                   RET 0x8

; ===== FUN_63d2bed5 @ 63d2bed5  conv __thiscall  purge 8
63d2bed5  09b2d5  689c000000               PUSH 0x9c
63d2beda  09b2da  b8b84edc63               MOV EAX,0x63dc4eb8
63d2bedf  09b2df  e801240900               CALL 0x63dbe2e5
63d2bee4  09b2e4  8bf9                     MOV EDI,ECX
63d2bee6  09b2e6  e89d500200               CALL 0x63d50f88
63d2beeb  09b2eb  84c0                     TEST AL,AL
63d2beed  09b2ed  0f8487000000             JZ 0x63d2bf7a
63d2bef3  09b2f3  6a05                     PUSH 0x5
63d2bef5  09b2f5  ff151416c963             CALL dword ptr [0x63c91614]
63d2befb  09b2fb  0fb6c8                   MOVZX ECX,AL
63d2befe  09b2fe  81c900ffffff             OR ECX,0xffffff00
63d2bf04  09b304  0fb6d4                   MOVZX EDX,AH
63d2bf07  09b307  c1e108                   SHL ECX,0x8
63d2bf0a  09b30a  c1e810                   SHR EAX,0x10
63d2bf0d  09b30d  0bca                     OR ECX,EDX
63d2bf0f  09b30f  0fb6c0                   MOVZX EAX,AL
63d2bf12  09b312  c1e108                   SHL ECX,0x8
63d2bf15  09b315  0bc8                     OR ECX,EAX
63d2bf17  09b317  8d4508                   LEA EAX,[EBP + 0x8]
63d2bf1a  09b31a  8d75bc                   LEA ESI,[EBP + -0x44]
63d2bf1d  09b31d  894d08                   MOV dword ptr [EBP + 0x8],ECX
63d2bf20  09b320  e8baf8f8ff               CALL 0x63cbb7df
63d2bf25  09b325  8365fc00                 AND dword ptr [EBP + -0x4],0x0
63d2bf29  09b329  8b45c4                   MOV EAX,dword ptr [EBP + -0x3c]
63d2bf2c  09b32c  8365c400                 AND dword ptr [EBP + -0x3c],0x0
63d2bf30  09b330  85c0                     TEST EAX,EAX
63d2bf32  09b332  7417                     JZ 0x63d2bf4b
63d2bf34  09b334  8bf8                     MOV EDI,EAX
63d2bf36  09b336  8d75d8                   LEA ESI,[EBP + -0x28]
63d2bf39  09b339  e8b902f9ff               CALL 0x63cbc1f7
63d2bf3e  09b33e  68f815dd63               PUSH 0x63dd15f8
63d2bf43  09b343  8bc6                     MOV EAX,ESI
63d2bf45  09b345  50                       PUSH EAX
63d2bf46  09b346  e883230900               CALL 0x63dbe2ce
63d2bf4b  09b34b  8b0f                     MOV ECX,dword ptr [EDI]
63d2bf4d  09b34d  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2bf50  09b350  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2bf53  09b353  8b7f0c                   MOV EDI,dword ptr [EDI + 0xc]
63d2bf56  09b356  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2bf59  09b359  2bfa                     SUB EDI,EDX
63d2bf5b  09b35b  57                       PUSH EDI
63d2bf5c  09b35c  2bc1                     SUB EAX,ECX
63d2bf5e  09b35e  50                       PUSH EAX
63d2bf5f  09b35f  52                       PUSH EDX
63d2bf60  09b360  51                       PUSH ECX
63d2bf61  09b361  8d45bc                   LEA EAX,[EBP + -0x44]
63d2bf64  09b364  e8caf7f8ff               CALL 0x63cbb733
63d2bf69  09b369  85c0                     TEST EAX,EAX
63d2bf6b  09b36b  75c7                     JNZ 0x63d2bf34
63d2bf6d  09b36d  ff75c0                   PUSH dword ptr [EBP + -0x40]
63d2bf70  09b370  e8f5f20800               CALL 0x63dbb26a
63d2bf75  09b375  e92b060000               JMP 0x63d2c5a5
63d2bf7a  09b37a  8b4508                   MOV EAX,dword ptr [EBP + 0x8]
63d2bf7d  09b37d  0504250000               ADD EAX,0x2504
63d2bf82  09b382  e8ca410200               CALL 0x63d50151
63d2bf87  09b387  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2bf8a  09b38a  84c0                     TEST AL,AL
63d2bf8c  09b38c  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2bf8f  09b38f  0f8428030000             JZ 0x63d2c2bd
63d2bf95  09b395  8b7704                   MOV ESI,dword ptr [EDI + 0x4]
63d2bf98  09b398  2bc6                     SUB EAX,ESI
63d2bf9a  09b39a  99                       CDQ
63d2bf9b  09b39b  2bc2                     SUB EAX,EDX
63d2bf9d  09b39d  8b17                     MOV EDX,dword ptr [EDI]
63d2bf9f  09b39f  d1f8                     SAR EAX,0x1
63d2bfa1  09b3a1  48                       DEC EAX
63d2bfa2  09b3a2  48                       DEC EAX
63d2bfa3  09b3a3  33db                     XOR EBX,EBX
63d2bfa5  09b3a5  8945ec                   MOV dword ptr [EBP + -0x14],EAX
63d2bfa8  09b3a8  8945ac                   MOV dword ptr [EBP + -0x54],EAX
63d2bfab  09b3ab  2bca                     SUB ECX,EDX
63d2bfad  09b3ad  43                       INC EBX
63d2bfae  09b3ae  83c602                   ADD ESI,0x2
63d2bfb1  09b3b1  53                       PUSH EBX
63d2bfb2  09b3b2  8d45a0                   LEA EAX,[EBP + -0x60]
63d2bfb5  09b3b5  8975a4                   MOV dword ptr [EBP + -0x5c],ESI
63d2bfb8  09b3b8  894da8                   MOV dword ptr [EBP + -0x58],ECX
63d2bfbb  09b3bb  50                       PUSH EAX
63d2bfbc  09b3bc  8d45b8                   LEA EAX,[EBP + -0x48]
63d2bfbf  09b3bf  8d4de8                   LEA ECX,[EBP + -0x18]
63d2bfc2  09b3c2  8db574ffffff             LEA ESI,[EBP + 0xffffff74]
63d2bfc8  09b3c8  8955a0                   MOV dword ptr [EBP + -0x60],EDX
63d2bfcb  09b3cb  c745b8b98635ff           MOV dword ptr [EBP + -0x48],0xff3586b9
63d2bfd2  09b3d2  c745e8d2b17dff           MOV dword ptr [EBP + -0x18],0xff7db1d2
63d2bfd9  09b3d9  e8917bf9ff               CALL 0x63cc3b6f
63d2bfde  09b3de  895dfc                   MOV dword ptr [EBP + -0x4],EBX
63d2bfe1  09b3e1  8b857cffffff             MOV EAX,dword ptr [EBP + 0xffffff7c]
63d2bfe7  09b3e7  83a57cffffff00           AND dword ptr [EBP + 0xffffff7c],0x0
63d2bfee  09b3ee  85c0                     TEST EAX,EAX
63d2bff0  09b3f0  0f853effffff             JNZ 0x63d2bf34
63d2bff6  09b3f6  ff75ac                   PUSH dword ptr [EBP + -0x54]
63d2bff9  09b3f9  8bc6                     MOV EAX,ESI
63d2bffb  09b3fb  ff75a8                   PUSH dword ptr [EBP + -0x58]
63d2bffe  09b3fe  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c001  09b401  ff75a4                   PUSH dword ptr [EBP + -0x5c]
63d2c004  09b404  ff75a0                   PUSH dword ptr [EBP + -0x60]
63d2c007  09b407  e827f7f8ff               CALL 0x63cbb733
63d2c00c  09b40c  85c0                     TEST EAX,EAX
63d2c00e  09b40e  0f8520ffffff             JNZ 0x63d2bf34
63d2c014  09b414  8b55ac                   MOV EDX,dword ptr [EBP + -0x54]
63d2c017  09b417  8b0f                     MOV ECX,dword ptr [EDI]
63d2c019  09b419  8b5f0c                   MOV EBX,dword ptr [EDI + 0xc]
63d2c01c  09b41c  8b75a4                   MOV ESI,dword ptr [EBP + -0x5c]
63d2c01f  09b41f  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2c022  09b422  2bda                     SUB EBX,EDX
63d2c024  09b424  2bc1                     SUB EAX,ECX
63d2c026  09b426  2bde                     SUB EBX,ESI
63d2c028  09b428  8945d0                   MOV dword ptr [EBP + -0x30],EAX
63d2c02b  09b42b  6a01                     PUSH 0x1
63d2c02d  09b42d  8d45c8                   LEA EAX,[EBP + -0x38]
63d2c030  09b430  4b                       DEC EBX
63d2c031  09b431  03d6                     ADD EDX,ESI
63d2c033  09b433  894dc8                   MOV dword ptr [EBP + -0x38],ECX
63d2c036  09b436  50                       PUSH EAX
63d2c037  09b437  4b                       DEC EBX
63d2c038  09b438  8d45e8                   LEA EAX,[EBP + -0x18]
63d2c03b  09b43b  8d4db8                   LEA ECX,[EBP + -0x48]
63d2c03e  09b43e  8db564ffffff             LEA ESI,[EBP + 0xffffff64]
63d2c044  09b444  8955cc                   MOV dword ptr [EBP + -0x34],EDX
63d2c047  09b447  895dd4                   MOV dword ptr [EBP + -0x2c],EBX
63d2c04a  09b44a  c745e8c9a564ff           MOV dword ptr [EBP + -0x18],0xff64a5c9
63d2c051  09b451  c745b8965c00ff           MOV dword ptr [EBP + -0x48],0xff005c96
63d2c058  09b458  e8127bf9ff               CALL 0x63cc3b6f
63d2c05d  09b45d  c645fc02                 MOV byte ptr [EBP + -0x4],0x2
63d2c061  09b461  8b856cffffff             MOV EAX,dword ptr [EBP + 0xffffff6c]
63d2c067  09b467  83a56cffffff00           AND dword ptr [EBP + 0xffffff6c],0x0
63d2c06e  09b46e  85c0                     TEST EAX,EAX
63d2c070  09b470  0f85befeffff             JNZ 0x63d2bf34
63d2c076  09b476  ff75d4                   PUSH dword ptr [EBP + -0x2c]
63d2c079  09b479  8bc6                     MOV EAX,ESI
63d2c07b  09b47b  ff75d0                   PUSH dword ptr [EBP + -0x30]
63d2c07e  09b47e  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c081  09b481  ff75cc                   PUSH dword ptr [EBP + -0x34]
63d2c084  09b484  ff75c8                   PUSH dword ptr [EBP + -0x38]
63d2c087  09b487  e8a7f6f8ff               CALL 0x63cbb733
63d2c08c  09b48c  85c0                     TEST EAX,EAX
63d2c08e  09b48e  0f85a0feffff             JNZ 0x63d2bf34
63d2c094  09b494  8b17                     MOV EDX,dword ptr [EDI]
63d2c096  09b496  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2c099  09b499  8b4f04                   MOV ECX,dword ptr [EDI + 0x4]
63d2c09c  09b49c  2bc2                     SUB EAX,EDX
63d2c09e  09b49e  48                       DEC EAX
63d2c09f  09b49f  48                       DEC EAX
63d2c0a0  09b4a0  894588                   MOV dword ptr [EBP + -0x78],EAX
63d2c0a3  09b4a3  8b45ec                   MOV EAX,dword ptr [EBP + -0x14]
63d2c0a6  09b4a6  41                       INC ECX
63d2c0a7  09b4a7  42                       INC EDX
63d2c0a8  09b4a8  40                       INC EAX
63d2c0a9  09b4a9  89458c                   MOV dword ptr [EBP + -0x74],EAX
63d2c0ac  09b4ac  6a01                     PUSH 0x1
63d2c0ae  09b4ae  8d4580                   LEA EAX,[EBP + -0x80]
63d2c0b1  09b4b1  894d84                   MOV dword ptr [EBP + -0x7c],ECX
63d2c0b4  09b4b4  50                       PUSH EAX
63d2c0b5  09b4b5  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c0b8  09b4b8  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c0bb  09b4bb  8d75b0                   LEA ESI,[EBP + -0x50]
63d2c0be  09b4be  895580                   MOV dword ptr [EBP + -0x80],EDX
63d2c0c1  09b4c1  c745ecd3b380ff           MOV dword ptr [EBP + -0x14],0xff80b3d3
63d2c0c8  09b4c8  c745e8e4cfafff           MOV dword ptr [EBP + -0x18],0xffafcfe4
63d2c0cf  09b4cf  e89b7af9ff               CALL 0x63cc3b6f
63d2c0d4  09b4d4  c645fc03                 MOV byte ptr [EBP + -0x4],0x3
63d2c0d8  09b4d8  8b45b8                   MOV EAX,dword ptr [EBP + -0x48]
63d2c0db  09b4db  8365b800                 AND dword ptr [EBP + -0x48],0x0
63d2c0df  09b4df  85c0                     TEST EAX,EAX
63d2c0e1  09b4e1  0f854dfeffff             JNZ 0x63d2bf34
63d2c0e7  09b4e7  ff758c                   PUSH dword ptr [EBP + -0x74]
63d2c0ea  09b4ea  8bc6                     MOV EAX,ESI
63d2c0ec  09b4ec  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c0ef  09b4ef  6a01                     PUSH 0x1
63d2c0f1  09b4f1  ff7584                   PUSH dword ptr [EBP + -0x7c]
63d2c0f4  09b4f4  ff7580                   PUSH dword ptr [EBP + -0x80]
63d2c0f7  09b4f7  e837f6f8ff               CALL 0x63cbb733
63d2c0fc  09b4fc  85c0                     TEST EAX,EAX
63d2c0fe  09b4fe  0f8530feffff             JNZ 0x63d2bf34
63d2c104  09b504  ff758c                   PUSH dword ptr [EBP + -0x74]
63d2c107  09b507  8b4580                   MOV EAX,dword ptr [EBP + -0x80]
63d2c10a  09b50a  8b4d88                   MOV ECX,dword ptr [EBP + -0x78]
63d2c10d  09b50d  6a01                     PUSH 0x1
63d2c10f  09b50f  ff7584                   PUSH dword ptr [EBP + -0x7c]
63d2c112  09b512  03c1                     ADD EAX,ECX
63d2c114  09b514  48                       DEC EAX
63d2c115  09b515  50                       PUSH EAX
63d2c116  09b516  8d45b0                   LEA EAX,[EBP + -0x50]
63d2c119  09b519  e815f6f8ff               CALL 0x63cbb733
63d2c11e  09b51e  85c0                     TEST EAX,EAX
63d2c120  09b520  0f850efeffff             JNZ 0x63d2bf34
63d2c126  09b526  6a01                     PUSH 0x1
63d2c128  09b528  ff7588                   PUSH dword ptr [EBP + -0x78]
63d2c12b  09b52b  8d45b0                   LEA EAX,[EBP + -0x50]
63d2c12e  09b52e  ff7584                   PUSH dword ptr [EBP + -0x7c]
63d2c131  09b531  ff7580                   PUSH dword ptr [EBP + -0x80]
63d2c134  09b534  e8faf5f8ff               CALL 0x63cbb733
63d2c139  09b539  85c0                     TEST EAX,EAX
63d2c13b  09b53b  0f85f3fdffff             JNZ 0x63d2bf34
63d2c141  09b541  8b0f                     MOV ECX,dword ptr [EDI]
63d2c143  09b543  8b4708                   MOV EAX,dword ptr [EDI + 0x8]
63d2c146  09b546  2bc1                     SUB EAX,ECX
63d2c148  09b548  48                       DEC EAX
63d2c149  09b549  48                       DEC EAX
63d2c14a  09b54a  41                       INC ECX
63d2c14b  09b54b  894d90                   MOV dword ptr [EBP + -0x70],ECX
63d2c14e  09b54e  8b4dcc                   MOV ECX,dword ptr [EBP + -0x34]
63d2c151  09b551  894598                   MOV dword ptr [EBP + -0x68],EAX
63d2c154  09b554  6a01                     PUSH 0x1
63d2c156  09b556  8d4590                   LEA EAX,[EBP + -0x70]
63d2c159  09b559  894d94                   MOV dword ptr [EBP + -0x6c],ECX
63d2c15c  09b55c  50                       PUSH EAX
63d2c15d  09b55d  43                       INC EBX
63d2c15e  09b55e  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c161  09b561  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c164  09b564  8d75bc                   LEA ESI,[EBP + -0x44]
63d2c167  09b567  895d9c                   MOV dword ptr [EBP + -0x64],EBX
63d2c16a  09b56a  c745ece4d1a7ff           MOV dword ptr [EBP + -0x14],0xffa7d1e4
63d2c171  09b571  c745e8b48f55ff           MOV dword ptr [EBP + -0x18],0xff558fb4
63d2c178  09b578  e8f279f9ff               CALL 0x63cc3b6f
63d2c17d  09b57d  c645fc04                 MOV byte ptr [EBP + -0x4],0x4
63d2c181  09b581  8b45c4                   MOV EAX,dword ptr [EBP + -0x3c]
63d2c184  09b584  8365c400                 AND dword ptr [EBP + -0x3c],0x0
63d2c188  09b588  85c0                     TEST EAX,EAX
63d2c18a  09b58a  0f85a4fdffff             JNZ 0x63d2bf34
63d2c190  09b590  ff759c                   PUSH dword ptr [EBP + -0x64]
63d2c193  09b593  8b5d0c                   MOV EBX,dword ptr [EBP + 0xc]
63d2c196  09b596  6a01                     PUSH 0x1
63d2c198  09b598  ff7594                   PUSH dword ptr [EBP + -0x6c]
63d2c19b  09b59b  8bc6                     MOV EAX,ESI
63d2c19d  09b59d  ff7590                   PUSH dword ptr [EBP + -0x70]
63d2c1a0  09b5a0  8bf3                     MOV ESI,EBX
63d2c1a2  09b5a2  e88cf5f8ff               CALL 0x63cbb733
63d2c1a7  09b5a7  85c0                     TEST EAX,EAX
63d2c1a9  09b5a9  0f8585fdffff             JNZ 0x63d2bf34
63d2c1af  09b5af  ff759c                   PUSH dword ptr [EBP + -0x64]
63d2c1b2  09b5b2  8b4590                   MOV EAX,dword ptr [EBP + -0x70]
63d2c1b5  09b5b5  8b4d98                   MOV ECX,dword ptr [EBP + -0x68]
63d2c1b8  09b5b8  6a01                     PUSH 0x1
63d2c1ba  09b5ba  ff7594                   PUSH dword ptr [EBP + -0x6c]
63d2c1bd  09b5bd  03c1                     ADD EAX,ECX
63d2c1bf  09b5bf  48                       DEC EAX
63d2c1c0  09b5c0  50                       PUSH EAX
63d2c1c1  09b5c1  8d45bc                   LEA EAX,[EBP + -0x44]
63d2c1c4  09b5c4  e86af5f8ff               CALL 0x63cbb733
63d2c1c9  09b5c9  85c0                     TEST EAX,EAX
63d2c1cb  09b5cb  0f8563fdffff             JNZ 0x63d2bf34
63d2c1d1  09b5d1  8b459c                   MOV EAX,dword ptr [EBP + -0x64]
63d2c1d4  09b5d4  8b4d94                   MOV ECX,dword ptr [EBP + -0x6c]
63d2c1d7  09b5d7  6a01                     PUSH 0x1
63d2c1d9  09b5d9  ff7598                   PUSH dword ptr [EBP + -0x68]
63d2c1dc  09b5dc  03c1                     ADD EAX,ECX
63d2c1de  09b5de  48                       DEC EAX
63d2c1df  09b5df  50                       PUSH EAX
63d2c1e0  09b5e0  ff7590                   PUSH dword ptr [EBP + -0x70]
63d2c1e3  09b5e3  8d45bc                   LEA EAX,[EBP + -0x44]
63d2c1e6  09b5e6  e848f5f8ff               CALL 0x63cbb733
63d2c1eb  09b5eb  85c0                     TEST EAX,EAX
63d2c1ed  09b5ed  0f8541fdffff             JNZ 0x63d2bf34
63d2c1f3  09b5f3  d9e8                     FLD1
63d2c1f5  09b5f5  51                       PUSH ECX
63d2c1f6  09b5f6  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c1f9  09b5f9  d91c24                   FSTP float ptr [ESP]
63d2c1fc  09b5fc  8db55cffffff             LEA ESI,[EBP + 0xffffff5c]
63d2c202  09b602  c745ec999999ff           MOV dword ptr [EBP + -0x14],0xff999999
63d2c209  09b609  e8abbdf9ff               CALL 0x63cc7fb9
63d2c20e  09b60e  c645fc05                 MOV byte ptr [EBP + -0x4],0x5
63d2c212  09b612  8b8560ffffff             MOV EAX,dword ptr [EBP + 0xffffff60]
63d2c218  09b618  83a560ffffff00           AND dword ptr [EBP + 0xffffff60],0x0
63d2c21f  09b61f  85c0                     TEST EAX,EAX
63d2c221  09b621  0f850dfdffff             JNZ 0x63d2bf34
63d2c227  09b627  8b4704                   MOV EAX,dword ptr [EDI + 0x4]
63d2c22a  09b62a  8b570c                   MOV EDX,dword ptr [EDI + 0xc]
63d2c22d  09b62d  8b0f                     MOV ECX,dword ptr [EDI]
63d2c22f  09b62f  2bd0                     SUB EDX,EAX
63d2c231  09b631  4a                       DEC EDX
63d2c232  09b632  52                       PUSH EDX
63d2c233  09b633  8b5708                   MOV EDX,dword ptr [EDI + 0x8]
63d2c236  09b636  2bd1                     SUB EDX,ECX
63d2c238  09b638  4a                       DEC EDX
63d2c239  09b639  52                       PUSH EDX
63d2c23a  09b63a  51                       PUSH ECX
63d2c23b  09b63b  50                       PUSH EAX
63d2c23c  09b63c  8bc6                     MOV EAX,ESI
63d2c23e  09b63e  8bf3                     MOV ESI,EBX
63d2c240  09b640  e839bdf9ff               CALL 0x63cc7f7e
63d2c245  09b645  85c0                     TEST EAX,EAX
63d2c247  09b647  0f85e7fcffff             JNZ 0x63d2bf34
63d2c24d  09b64d  8b7508                   MOV ESI,dword ptr [EBP + 0x8]
63d2c250  09b650  39860c250000             CMP dword ptr [ESI + 0x250c],EAX
63d2c256  09b656  7526                     JNZ 0x63d2c27e
63d2c258  09b658  68f5360000               PUSH 0x36f5
63d2c25d  09b65d  e869b1fbff               CALL 0x63ce73cb
63d2c262  09b662  8b8e0c250000             MOV ECX,dword ptr [ESI + 0x250c]
63d2c268  09b668  8bd8                     MOV EBX,EAX
63d2c26a  09b66a  3bcb                     CMP ECX,EBX
63d2c26c  09b66c  7410                     JZ 0x63d2c27e
63d2c26e  09b66e  85c9                     TEST ECX,ECX
63d2c270  09b670  7406                     JZ 0x63d2c278
63d2c272  09b672  8b01                     MOV EAX,dword ptr [ECX]
63d2c274  09b674  6a01                     PUSH 0x1
63d2c276  09b676  ff10                     CALL dword ptr [EAX]
63d2c278  09b678  899e0c250000             MOV dword ptr [ESI + 0x250c],EBX
63d2c27e  09b67e  ffb55cffffff             PUSH dword ptr [EBP + 0xffffff5c]
63d2c284  09b684  8bb60c250000             MOV ESI,dword ptr [ESI + 0x250c]
63d2c28a  09b68a  e83bf00800               CALL 0x63dbb2ca
63d2c28f  09b68f  ff75c0                   PUSH dword ptr [EBP + -0x40]
63d2c292  09b692  e8d3ef0800               CALL 0x63dbb26a
63d2c297  09b697  ff75b4                   PUSH dword ptr [EBP + -0x4c]
63d2c29a  09b69a  e8cbef0800               CALL 0x63dbb26a
63d2c29f  09b69f  ffb568ffffff             PUSH dword ptr [EBP + 0xffffff68]
63d2c2a5  09b6a5  e8c0ef0800               CALL 0x63dbb26a
63d2c2aa  09b6aa  ffb578ffffff             PUSH dword ptr [EBP + 0xffffff78]
63d2c2b0  09b6b0  e8b5ef0800               CALL 0x63dbb26a
63d2c2b5  09b6b5  8b5d08                   MOV EBX,dword ptr [EBP + 0x8]
63d2c2b8  09b6b8  e985020000               JMP 0x63d2c542
63d2c2bd  09b6bd  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c2c0  09b6c0  8b37                     MOV ESI,dword ptr [EDI]
63d2c2c2  09b6c2  2bc2                     SUB EAX,EDX
63d2c2c4  09b6c4  48                       DEC EAX
63d2c2c5  09b6c5  48                       DEC EAX
63d2c2c6  09b6c6  2bce                     SUB ECX,ESI
63d2c2c8  09b6c8  8945e4                   MOV dword ptr [EBP + -0x1c],EAX
63d2c2cb  09b6cb  6a01                     PUSH 0x1
63d2c2cd  09b6cd  8d45d8                   LEA EAX,[EBP + -0x28]
63d2c2d0  09b6d0  8975d8                   MOV dword ptr [EBP + -0x28],ESI
63d2c2d3  09b6d3  894de0                   MOV dword ptr [EBP + -0x20],ECX
63d2c2d6  09b6d6  50                       PUSH EAX
63d2c2d7  09b6d7  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c2da  09b6da  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c2dd  09b6dd  8db558ffffff             LEA ESI,[EBP + 0xffffff58]
63d2c2e3  09b6e3  8955dc                   MOV dword ptr [EBP + -0x24],EDX
63d2c2e6  09b6e6  c745ecceaa6cff           MOV dword ptr [EBP + -0x14],0xff6caace
63d2c2ed  09b6ed  c745e8965c00ff           MOV dword ptr [EBP + -0x18],0xff005c96
63d2c2f4  09b6f4  e87678f9ff               CALL 0x63cc3b6f
63d2c2f9  09b6f9  c745fc06000000           MOV dword ptr [EBP + -0x4],0x6
63d2c300  09b700  8b8560ffffff             MOV EAX,dword ptr [EBP + 0xffffff60]
63d2c306  09b706  83a560ffffff00           AND dword ptr [EBP + 0xffffff60],0x0
63d2c30d  09b70d  85c0                     TEST EAX,EAX
63d2c30f  09b70f  7416                     JZ 0x63d2c327
63d2c311  09b711  8bf8                     MOV EDI,EAX
63d2c313  09b713  8d75c8                   LEA ESI,[EBP + -0x38]
63d2c316  09b716  e8dcfef8ff               CALL 0x63cbc1f7
63d2c31b  09b71b  68f815dd63               PUSH 0x63dd15f8
63d2c320  09b720  8bc6                     MOV EAX,ESI
63d2c322  09b722  e91efcffff               JMP 0x63d2bf45
63d2c327  09b727  ff75e4                   PUSH dword ptr [EBP + -0x1c]
63d2c32a  09b72a  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c32d  09b72d  ff75e0                   PUSH dword ptr [EBP + -0x20]
63d2c330  09b730  8d8558ffffff             LEA EAX,[EBP + 0xffffff58]
63d2c336  09b736  ff75dc                   PUSH dword ptr [EBP + -0x24]
63d2c339  09b739  ff75d8                   PUSH dword ptr [EBP + -0x28]
63d2c33c  09b73c  e8f2f3f8ff               CALL 0x63cbb733
63d2c341  09b741  85c0                     TEST EAX,EAX
63d2c343  09b743  75cc                     JNZ 0x63d2c311
63d2c345  09b745  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c348  09b748  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c34b  09b74b  8b37                     MOV ESI,dword ptr [EDI]
63d2c34d  09b74d  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2c350  09b750  2bc2                     SUB EAX,EDX
63d2c352  09b752  2bce                     SUB ECX,ESI
63d2c354  09b754  8945d4                   MOV dword ptr [EBP + -0x2c],EAX
63d2c357  09b757  6a01                     PUSH 0x1
63d2c359  09b759  8d45c8                   LEA EAX,[EBP + -0x38]
63d2c35c  09b75c  8975c8                   MOV dword ptr [EBP + -0x38],ESI
63d2c35f  09b75f  894dd0                   MOV dword ptr [EBP + -0x30],ECX
63d2c362  09b762  50                       PUSH EAX
63d2c363  09b763  bbe5d2a9ff               MOV EBX,0xffa9d2e5
63d2c368  09b768  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c36b  09b76b  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c36e  09b76e  8db564ffffff             LEA ESI,[EBP + 0xffffff64]
63d2c374  09b774  895dec                   MOV dword ptr [EBP + -0x14],EBX
63d2c377  09b777  c745e8b48f55ff           MOV dword ptr [EBP + -0x18],0xff558fb4
63d2c37e  09b77e  8955cc                   MOV dword ptr [EBP + -0x34],EDX
63d2c381  09b781  e8e977f9ff               CALL 0x63cc3b6f
63d2c386  09b786  c645fc07                 MOV byte ptr [EBP + -0x4],0x7
63d2c38a  09b78a  8b856cffffff             MOV EAX,dword ptr [EBP + 0xffffff6c]
63d2c390  09b790  83a56cffffff00           AND dword ptr [EBP + 0xffffff6c],0x0
63d2c397  09b797  85c0                     TEST EAX,EAX
63d2c399  09b799  7416                     JZ 0x63d2c3b1
63d2c39b  09b79b  8bf8                     MOV EDI,EAX
63d2c39d  09b79d  8d75a0                   LEA ESI,[EBP + -0x60]
63d2c3a0  09b7a0  e852fef8ff               CALL 0x63cbc1f7
63d2c3a5  09b7a5  68f815dd63               PUSH 0x63dd15f8
63d2c3aa  09b7aa  8bc6                     MOV EAX,ESI
63d2c3ac  09b7ac  e994fbffff               JMP 0x63d2bf45
63d2c3b1  09b7b1  8b4f04                   MOV ECX,dword ptr [EDI + 0x4]
63d2c3b4  09b7b4  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c3b7  09b7b7  8b17                     MOV EDX,dword ptr [EDI]
63d2c3b9  09b7b9  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c3bc  09b7bc  2bc1                     SUB EAX,ECX
63d2c3be  09b7be  48                       DEC EAX
63d2c3bf  09b7bf  50                       PUSH EAX
63d2c3c0  09b7c0  6a01                     PUSH 0x1
63d2c3c2  09b7c2  51                       PUSH ECX
63d2c3c3  09b7c3  52                       PUSH EDX
63d2c3c4  09b7c4  8d8564ffffff             LEA EAX,[EBP + 0xffffff64]
63d2c3ca  09b7ca  e864f3f8ff               CALL 0x63cbb733
63d2c3cf  09b7cf  85c0                     TEST EAX,EAX
63d2c3d1  09b7d1  75c8                     JNZ 0x63d2c39b
63d2c3d3  09b7d3  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c3d6  09b7d6  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c3d9  09b7d9  8b37                     MOV ESI,dword ptr [EDI]
63d2c3db  09b7db  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2c3de  09b7de  2bc2                     SUB EAX,EDX
63d2c3e0  09b7e0  2bce                     SUB ECX,ESI
63d2c3e2  09b7e2  8945d4                   MOV dword ptr [EBP + -0x2c],EAX
63d2c3e5  09b7e5  6a01                     PUSH 0x1
63d2c3e7  09b7e7  8d45c8                   LEA EAX,[EBP + -0x38]
63d2c3ea  09b7ea  8975c8                   MOV dword ptr [EBP + -0x38],ESI
63d2c3ed  09b7ed  894dd0                   MOV dword ptr [EBP + -0x30],ECX
63d2c3f0  09b7f0  50                       PUSH EAX
63d2c3f1  09b7f1  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c3f4  09b7f4  8d4de8                   LEA ECX,[EBP + -0x18]
63d2c3f7  09b7f7  8db574ffffff             LEA ESI,[EBP + 0xffffff74]
63d2c3fd  09b7fd  895dec                   MOV dword ptr [EBP + -0x14],EBX
63d2c400  09b800  c745e8b48f55ff           MOV dword ptr [EBP + -0x18],0xff558fb4
63d2c407  09b807  8955cc                   MOV dword ptr [EBP + -0x34],EDX
63d2c40a  09b80a  e86077f9ff               CALL 0x63cc3b6f
63d2c40f  09b80f  c645fc08                 MOV byte ptr [EBP + -0x4],0x8
63d2c413  09b813  8b857cffffff             MOV EAX,dword ptr [EBP + 0xffffff7c]
63d2c419  09b819  83a57cffffff00           AND dword ptr [EBP + 0xffffff7c],0x0
63d2c420  09b820  85c0                     TEST EAX,EAX
63d2c422  09b822  0f8573ffffff             JNZ 0x63d2c39b
63d2c428  09b828  8b5704                   MOV EDX,dword ptr [EDI + 0x4]
63d2c42b  09b82b  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c42e  09b82e  8b4f08                   MOV ECX,dword ptr [EDI + 0x8]
63d2c431  09b831  2bc2                     SUB EAX,EDX
63d2c433  09b833  48                       DEC EAX
63d2c434  09b834  50                       PUSH EAX
63d2c435  09b835  6a01                     PUSH 0x1
63d2c437  09b837  49                       DEC ECX
63d2c438  09b838  52                       PUSH EDX
63d2c439  09b839  8bc6                     MOV EAX,ESI
63d2c43b  09b83b  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c43e  09b83e  51                       PUSH ECX
63d2c43f  09b83f  e8eff2f8ff               CALL 0x63cbb733
63d2c444  09b844  85c0                     TEST EAX,EAX
63d2c446  09b846  0f854fffffff             JNZ 0x63d2c39b
63d2c44c  09b84c  d9e8                     FLD1
63d2c44e  09b84e  51                       PUSH ECX
63d2c44f  09b84f  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c452  09b852  d91c24                   FSTP float ptr [ESP]
63d2c455  09b855  8d75c0                   LEA ESI,[EBP + -0x40]
63d2c458  09b858  895dec                   MOV dword ptr [EBP + -0x14],EBX
63d2c45b  09b85b  e859bbf9ff               CALL 0x63cc7fb9
63d2c460  09b860  c645fc09                 MOV byte ptr [EBP + -0x4],0x9
63d2c464  09b864  8b45c4                   MOV EAX,dword ptr [EBP + -0x3c]
63d2c467  09b867  8365c400                 AND dword ptr [EBP + -0x3c],0x0
63d2c46b  09b86b  85c0                     TEST EAX,EAX
63d2c46d  09b86d  0f859efeffff             JNZ 0x63d2c311
63d2c473  09b873  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c476  09b876  83c0fe                   ADD EAX,-0x2
63d2c479  09b879  50                       PUSH EAX
63d2c47a  09b87a  ff7708                   PUSH dword ptr [EDI + 0x8]
63d2c47d  09b87d  50                       PUSH EAX
63d2c47e  09b87e  ff37                     PUSH dword ptr [EDI]
63d2c480  09b880  8bc6                     MOV EAX,ESI
63d2c482  09b882  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c485  09b885  e89caffaff               CALL 0x63cd7426
63d2c48a  09b88a  85c0                     TEST EAX,EAX
63d2c48c  09b88c  0f857ffeffff             JNZ 0x63d2c311
63d2c492  09b892  d9e8                     FLD1
63d2c494  09b894  51                       PUSH ECX
63d2c495  09b895  8d45ec                   LEA EAX,[EBP + -0x14]
63d2c498  09b898  d91c24                   FSTP float ptr [ESP]
63d2c49b  09b89b  8d75b4                   LEA ESI,[EBP + -0x4c]
63d2c49e  09b89e  c745ec707070ff           MOV dword ptr [EBP + -0x14],0xff707070
63d2c4a5  09b8a5  e80fbbf9ff               CALL 0x63cc7fb9
63d2c4aa  09b8aa  c645fc0a                 MOV byte ptr [EBP + -0x4],0xa
63d2c4ae  09b8ae  8b45b8                   MOV EAX,dword ptr [EBP + -0x48]
63d2c4b1  09b8b1  8365b800                 AND dword ptr [EBP + -0x48],0x0
63d2c4b5  09b8b5  85c0                     TEST EAX,EAX
63d2c4b7  09b8b7  0f8554feffff             JNZ 0x63d2c311
63d2c4bd  09b8bd  8b470c                   MOV EAX,dword ptr [EDI + 0xc]
63d2c4c0  09b8c0  48                       DEC EAX
63d2c4c1  09b8c1  50                       PUSH EAX
63d2c4c2  09b8c2  ff7708                   PUSH dword ptr [EDI + 0x8]
63d2c4c5  09b8c5  50                       PUSH EAX
63d2c4c6  09b8c6  ff37                     PUSH dword ptr [EDI]
63d2c4c8  09b8c8  8bc6                     MOV EAX,ESI
63d2c4ca  09b8ca  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c4cd  09b8cd  e854affaff               CALL 0x63cd7426
63d2c4d2  09b8d2  85c0                     TEST EAX,EAX
63d2c4d4  09b8d4  0f8537feffff             JNZ 0x63d2c311
63d2c4da  09b8da  8b5d08                   MOV EBX,dword ptr [EBP + 0x8]
63d2c4dd  09b8dd  398310250000             CMP dword ptr [EBX + 0x2510],EAX
63d2c4e3  09b8e3  7526                     JNZ 0x63d2c50b
63d2c4e5  09b8e5  68f6360000               PUSH 0x36f6
63d2c4ea  09b8ea  e8dcaefbff               CALL 0x63ce73cb
63d2c4ef  09b8ef  8b8b10250000             MOV ECX,dword ptr [EBX + 0x2510]
63d2c4f5  09b8f5  8bf0                     MOV ESI,EAX
63d2c4f7  09b8f7  3bce                     CMP ECX,ESI
63d2c4f9  09b8f9  7410                     JZ 0x63d2c50b
63d2c4fb  09b8fb  85c9                     TEST ECX,ECX
63d2c4fd  09b8fd  7406                     JZ 0x63d2c505
63d2c4ff  09b8ff  8b01                     MOV EAX,dword ptr [ECX]
63d2c501  09b901  6a01                     PUSH 0x1
63d2c503  09b903  ff10                     CALL dword ptr [EAX]
63d2c505  09b905  89b310250000             MOV dword ptr [EBX + 0x2510],ESI
63d2c50b  09b90b  ff75b4                   PUSH dword ptr [EBP + -0x4c]
63d2c50e  09b90e  8bb310250000             MOV ESI,dword ptr [EBX + 0x2510]
63d2c514  09b914  e8b1ed0800               CALL 0x63dbb2ca
63d2c519  09b919  ff75c0                   PUSH dword ptr [EBP + -0x40]
63d2c51c  09b91c  e8a9ed0800               CALL 0x63dbb2ca
63d2c521  09b921  ffb578ffffff             PUSH dword ptr [EBP + 0xffffff78]
63d2c527  09b927  e83eed0800               CALL 0x63dbb26a
63d2c52c  09b92c  ffb568ffffff             PUSH dword ptr [EBP + 0xffffff68]
63d2c532  09b932  e833ed0800               CALL 0x63dbb26a
63d2c537  09b937  ffb55cffffff             PUSH dword ptr [EBP + 0xffffff5c]
63d2c53d  09b93d  e828ed0800               CALL 0x63dbb26a
63d2c542  09b942  83bb0025000000           CMP dword ptr [EBX + 0x2500],0x0
63d2c549  09b949  7e5a                     JLE 0x63d2c5a5
63d2c54b  09b94b  85f6                     TEST ESI,ESI
63d2c54d  09b94d  7456                     JZ 0x63d2c5a5
63d2c54f  09b94f  8b5f0c                   MOV EBX,dword ptr [EDI + 0xc]
63d2c552  09b952  2b5f04                   SUB EBX,dword ptr [EDI + 0x4]
63d2c555  09b955  83eb04                   SUB EBX,0x4
63d2c558  09b958  e8d8b8f9ff               CALL 0x63cc7e35
63d2c55d  09b95d  8b4d08                   MOV ECX,dword ptr [EBP + 0x8]
63d2c560  09b960  8b8900250000             MOV ECX,dword ptr [ECX + 0x2500]
63d2c566  09b966  898d70ffffff             MOV dword ptr [EBP + 0xffffff70],ECX
63d2c56c  09b96c  8b4f04                   MOV ECX,dword ptr [EDI + 0x4]
63d2c56f  09b96f  41                       INC ECX
63d2c570  09b970  41                       INC ECX
63d2c571  09b971  898d74ffffff             MOV dword ptr [EBP + 0xffffff74],ECX
63d2c577  09b977  898578ffffff             MOV dword ptr [EBP + 0xffffff78],EAX
63d2c57d  09b97d  899d7cffffff             MOV dword ptr [EBP + 0xffffff7c],EBX
63d2c583  09b983  e8d4b8f9ff               CALL 0x63cc7e5c
63d2c588  09b988  50                       PUSH EAX
63d2c589  09b989  e8a7b8f9ff               CALL 0x63cc7e35
63d2c58e  09b98e  50                       PUSH EAX
63d2c58f  09b98f  6a00                     PUSH 0x0
63d2c591  09b991  8bfe                     MOV EDI,ESI
63d2c593  09b993  8b750c                   MOV ESI,dword ptr [EBP + 0xc]
63d2c596  09b996  6a00                     PUSH 0x0
63d2c598  09b998  33c9                     XOR ECX,ECX
63d2c59a  09b99a  8d8570ffffff             LEA EAX,[EBP + 0xffffff70]
63d2c5a0  09b9a0  e8ddf3fbff               CALL 0x63ceb982
63d2c5a5  09b9a5  e8271e0900               CALL 0x63dbe3d1
63d2c5aa  09b9aa  c20800                   RET 0x8
