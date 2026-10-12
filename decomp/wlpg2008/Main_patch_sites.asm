; program: WLXPhotoLibraryMain.dll  image base 63c90000

; ===== FUN_63d4dfb8 @ 63d4dfb8  conv __stdcall  purge 4
63d4dfb8  0bd3b8  8bff                     MOV EDI,EDI
63d4dfba  0bd3ba  55                       PUSH EBP
63d4dfbb  0bd3bb  8bec                     MOV EBP,ESP
63d4dfbd  0bd3bd  83ec14                   SUB ESP,0x14
63d4dfc0  0bd3c0  53                       PUSH EBX
63d4dfc1  0bd3c1  57                       PUSH EDI
63d4dfc2  0bd3c2  687837c963               PUSH 0x63c93778
63d4dfc7  0bd3c7  ff7508                   PUSH dword ptr [EBP + 0x8]
63d4dfca  0bd3ca  ff15fc17c963             CALL dword ptr [0x63c917fc]
63d4dfd0  0bd3d0  33db                     XOR EBX,EBX
63d4dfd2  0bd3d2  3bc3                     CMP EAX,EBX
63d4dfd4  0bd3d4  8945fc                   MOV dword ptr [EBP + -0x4],EAX
63d4dfd7  0bd3d7  0f8417010000             JZ 0x63d4e0f4
63d4dfdd  0bd3dd  8b3d0418c963             MOV EDI,dword ptr [0x63c91804]
63d4dfe3  0bd3e3  8d4d08                   LEA ECX,[EBP + 0x8]
63d4dfe6  0bd3e6  51                       PUSH ECX
63d4dfe7  0bd3e7  68ef0e0000               PUSH 0xeef
63d4dfec  0bd3ec  53                       PUSH EBX
63d4dfed  0bd3ed  53                       PUSH EBX
63d4dfee  0bd3ee  50                       PUSH EAX
63d4dfef  0bd3ef  895df8                   MOV dword ptr [EBP + -0x8],EBX
63d4dff2  0bd3f2  895df4                   MOV dword ptr [EBP + -0xc],EBX
63d4dff5  0bd3f5  895df0                   MOV dword ptr [EBP + -0x10],EBX
63d4dff8  0bd3f8  895dec                   MOV dword ptr [EBP + -0x14],EBX
63d4dffb  0bd3fb  895d08                   MOV dword ptr [EBP + 0x8],EBX
63d4dffe  0bd3fe  ffd7                     CALL EDI
63d4e000  0bd400  3bc3                     CMP EAX,EBX
63d4e002  0bd402  0f8cec000000             JL 0x63d4e0f4
63d4e008  0bd408  50                       PUSH EAX
63d4e009  0bd409  8d45f8                   LEA EAX,[EBP + -0x8]
63d4e00c  0bd40c  50                       PUSH EAX
63d4e00d  0bd40d  8d4508                   LEA EAX,[EBP + 0x8]
63d4e010  0bd410  e844ffffff               CALL 0x63d4df59
63d4e015  0bd415  3bc3                     CMP EAX,EBX
63d4e017  0bd417  0f8cd7000000             JL 0x63d4e0f4
63d4e01d  0bd41d  8d4508                   LEA EAX,[EBP + 0x8]
63d4e020  0bd420  50                       PUSH EAX
63d4e021  0bd421  68ed0e0000               PUSH 0xeed
63d4e026  0bd426  53                       PUSH EBX
63d4e027  0bd427  53                       PUSH EBX
63d4e028  0bd428  ff75fc                   PUSH dword ptr [EBP + -0x4]
63d4e02b  0bd42b  895d08                   MOV dword ptr [EBP + 0x8],EBX
63d4e02e  0bd42e  ffd7                     CALL EDI
63d4e030  0bd430  3bc3                     CMP EAX,EBX
63d4e032  0bd432  0f8cbc000000             JL 0x63d4e0f4
63d4e038  0bd438  50                       PUSH EAX
63d4e039  0bd439  8d45f4                   LEA EAX,[EBP + -0xc]
63d4e03c  0bd43c  50                       PUSH EAX
63d4e03d  0bd43d  8d4508                   LEA EAX,[EBP + 0x8]
63d4e040  0bd440  e814ffffff               CALL 0x63d4df59
63d4e045  0bd445  3bc3                     CMP EAX,EBX
63d4e047  0bd447  0f8ca7000000             JL 0x63d4e0f4
63d4e04d  0bd44d  8d4508                   LEA EAX,[EBP + 0x8]
63d4e050  0bd450  50                       PUSH EAX
63d4e051  0bd451  68e80e0000               PUSH 0xee8
63d4e056  0bd456  53                       PUSH EBX
63d4e057  0bd457  53                       PUSH EBX
63d4e058  0bd458  ff75fc                   PUSH dword ptr [EBP + -0x4]
63d4e05b  0bd45b  895d08                   MOV dword ptr [EBP + 0x8],EBX
63d4e05e  0bd45e  ffd7                     CALL EDI
63d4e060  0bd460  3bc3                     CMP EAX,EBX
63d4e062  0bd462  0f8c8c000000             JL 0x63d4e0f4
63d4e068  0bd468  50                       PUSH EAX
63d4e069  0bd469  8d45f0                   LEA EAX,[EBP + -0x10]
63d4e06c  0bd46c  50                       PUSH EAX
63d4e06d  0bd46d  8d4508                   LEA EAX,[EBP + 0x8]
63d4e070  0bd470  e8e4feffff               CALL 0x63d4df59
63d4e075  0bd475  3bc3                     CMP EAX,EBX
63d4e077  0bd477  7c7b                     JL 0x63d4e0f4
63d4e079  0bd479  8d4508                   LEA EAX,[EBP + 0x8]
63d4e07c  0bd47c  50                       PUSH EAX
63d4e07d  0bd47d  68df0e0000               PUSH 0xedf
63d4e082  0bd482  53                       PUSH EBX
63d4e083  0bd483  53                       PUSH EBX
63d4e084  0bd484  ff75fc                   PUSH dword ptr [EBP + -0x4]
63d4e087  0bd487  895d08                   MOV dword ptr [EBP + 0x8],EBX
63d4e08a  0bd48a  ffd7                     CALL EDI
63d4e08c  0bd48c  3bc3                     CMP EAX,EBX
63d4e08e  0bd48e  7c64                     JL 0x63d4e0f4
63d4e090  0bd490  50                       PUSH EAX
63d4e091  0bd491  8d45ec                   LEA EAX,[EBP + -0x14]
63d4e094  0bd494  50                       PUSH EAX
63d4e095  0bd495  8d4508                   LEA EAX,[EBP + 0x8]
63d4e098  0bd498  e8bcfeffff               CALL 0x63d4df59
63d4e09d  0bd49d  3bc3                     CMP EAX,EBX
63d4e09f  0bd49f  7c53                     JL 0x63d4e0f4
63d4e0a1  0bd4a1  8b45f8                   MOV EAX,dword ptr [EBP + -0x8]
63d4e0a4  0bd4a4  8b4df0                   MOV ECX,dword ptr [EBP + -0x10]
63d4e0a7  0bd4a7  8b7df4                   MOV EDI,dword ptr [EBP + -0xc]
63d4e0aa  0bd4aa  8b55ec                   MOV EDX,dword ptr [EBP + -0x14]
63d4e0ad  0bd4ad  68b3000000               PUSH 0xb3
63d4e0b2  0bd4b2  8906                     MOV dword ptr [ESI],EAX
63d4e0b4  0bd4b4  897e04                   MOV dword ptr [ESI + 0x4],EDI
63d4e0b7  0bd4b7  894608                   MOV dword ptr [ESI + 0x8],EAX
63d4e0ba  0bd4ba  894e10                   MOV dword ptr [ESI + 0x10],ECX
63d4e0bd  0bd4bd  e8f598faff               CALL 0x63cf79b7
63d4e0c2  0bd4c2  897e20                   MOV dword ptr [ESI + 0x20],EDI
63d4e0c5  0bd4c5  894618                   MOV dword ptr [ESI + 0x18],EAX
63d4e0c8  0bd4c8  33ff                     XOR EDI,EDI
63d4e0ca  0bd4ca  83ff01                   CMP EDI,0x1
63d4e0cd  0bd4cd  7508                     JNZ 0x63d4e0d7
63d4e0cf  0bd4cf  8b4610                   MOV EAX,dword ptr [ESI + 0x10]
63d4e0d2  0bd4d2  894614                   MOV dword ptr [ESI + 0x14],EAX
63d4e0d5  0bd4d5  eb12                     JMP 0x63d4e0e9
63d4e0d7  0bd4d7  8b5604                   MOV EDX,dword ptr [ESI + 0x4]
63d4e0da  0bd4da  8b44fe08                 MOV EAX,dword ptr [ESI + EDI*0x8 + 0x8]
63d4e0de  0bd4de  6a40                     PUSH 0x40
63d4e0e0  0bd4e0  e8d298faff               CALL 0x63cf79b7
63d4e0e5  0bd4e5  8944fe0c                 MOV dword ptr [ESI + EDI*0x8 + 0xc],EAX
63d4e0e9  0bd4e9  47                       INC EDI
63d4e0ea  0bd4ea  83ff04                   CMP EDI,0x4
63d4e0ed  0bd4ed  72db                     JC 0x63d4e0ca
63d4e0ef  0bd4ef  e9a4000000               JMP 0x63d4e198
63d4e0f4  0bd4f4  8b1d1416c963             MOV EBX,dword ptr [0x63c91614]
63d4e0fa  0bd4fa  6a05                     PUSH 0x5
63d4e0fc  0bd4fc  ffd3                     CALL EBX
63d4e0fe  0bd4fe  0fb6c8                   MOVZX ECX,AL
63d4e101  0bd501  0fb6fc                   MOVZX EDI,AH
63d4e104  0bd504  81c900ffffff             OR ECX,0xffffff00
63d4e10a  0bd50a  c1e108                   SHL ECX,0x8
63d4e10d  0bd50d  c1e810                   SHR EAX,0x10
63d4e110  0bd510  0bf9                     OR EDI,ECX
63d4e112  0bd512  0fb6c0                   MOVZX EAX,AL
63d4e115  0bd515  c1e708                   SHL EDI,0x8
63d4e118  0bd518  6a1b                     PUSH 0x1b
63d4e11a  0bd51a  0bf8                     OR EDI,EAX
63d4e11c  0bd51c  ffd3                     CALL EBX
63d4e11e  0bd51e  0fb6c8                   MOVZX ECX,AL
63d4e121  0bd521  0fb6dc                   MOVZX EBX,AH
63d4e124  0bd524  81c900ffffff             OR ECX,0xffffff00
63d4e12a  0bd52a  c1e108                   SHL ECX,0x8
63d4e12d  0bd52d  c1e810                   SHR EAX,0x10
63d4e130  0bd530  0bd9                     OR EBX,ECX
63d4e132  0bd532  0fb6c0                   MOVZX EAX,AL
63d4e135  0bd535  c1e308                   SHL EBX,0x8
63d4e138  0bd538  0bd8                     OR EBX,EAX
63d4e13a  0bd53a  e8492e0000               CALL 0x63d50f88
63d4e13f  0bd53f  84c0                     TEST AL,AL
63d4e141  0bd541  88450b                   MOV byte ptr [EBP + 0xb],AL
63d4e144  0bd544  7404                     JZ 0x63d4e14a
63d4e146  0bd546  8bc7                     MOV EAX,EDI
63d4e148  0bd548  eb0b                     JMP 0x63d4e155
63d4e14a  0bd54a  6a32                     PUSH 0x32
63d4e14c  0bd54c  8bd7                     MOV EDX,EDI
63d4e14e  0bd54e  8bc3                     MOV EAX,EBX
63d4e150  0bd550  e86298faff               CALL 0x63cf79b7
63d4e155  0bd555  807d0b00                 CMP byte ptr [EBP + 0xb],0x0
63d4e159  0bd559  8906                     MOV dword ptr [ESI],EAX
63d4e15b  0bd55b  894604                   MOV dword ptr [ESI + 0x4],EAX
63d4e15e  0bd55e  8bc3                     MOV EAX,EBX
63d4e160  0bd560  7502                     JNZ 0x63d4e164
63d4e162  0bd562  8bc7                     MOV EAX,EDI
63d4e164  0bd564  807d0b00                 CMP byte ptr [EBP + 0xb],0x0
63d4e168  0bd568  894608                   MOV dword ptr [ESI + 0x8],EAX
63d4e16b  0bd56b  8bc3                     MOV EAX,EBX
63d4e16d  0bd56d  750c                     JNZ 0x63d4e17b
63d4e16f  0bd56f  68cc000000               PUSH 0xcc
63d4e174  0bd574  8bd7                     MOV EDX,EDI
63d4e176  0bd576  e83c98faff               CALL 0x63cf79b7
63d4e17b  0bd57b  83662000                 AND dword ptr [ESI + 0x20],0x0
63d4e17f  0bd57f  6a04                     PUSH 0x4
63d4e181  0bd581  894610                   MOV dword ptr [ESI + 0x10],EAX
63d4e184  0bd584  897e18                   MOV dword ptr [ESI + 0x18],EDI
63d4e187  0bd587  8d460c                   LEA EAX,[ESI + 0xc]
63d4e18a  0bd58a  59                       POP ECX
63d4e18b  0bd58b  8b50fc                   MOV EDX,dword ptr [EAX + -0x4]
63d4e18e  0bd58e  8910                     MOV dword ptr [EAX],EDX
63d4e190  0bd590  83c008                   ADD EAX,0x8
63d4e193  0bd593  49                       DEC ECX
63d4e194  0bd594  75f5                     JNZ 0x63d4e18b
63d4e196  0bd596  33db                     XOR EBX,EBX
63d4e198  0bd598  395dfc                   CMP dword ptr [EBP + -0x4],EBX
63d4e19b  0bd59b  5f                       POP EDI
63d4e19c  0bd59c  5b                       POP EBX
63d4e19d  0bd59d  7409                     JZ 0x63d4e1a8
63d4e19f  0bd59f  ff75fc                   PUSH dword ptr [EBP + -0x4]
63d4e1a2  0bd5a2  ff15f417c963             CALL dword ptr [0x63c917f4]
63d4e1a8  0bd5a8  c9                       LEAVE
63d4e1a9  0bd5a9  c20400                   RET 0x4

; ===== FUN_63d4e1b1 @ 63d4e1b1  conv __stdcall  purge 12
63d4e1b1  0bd5b1  8bff                     MOV EDI,EDI
63d4e1b3  0bd5b3  55                       PUSH EBP
63d4e1b4  0bd5b4  8bec                     MOV EBP,ESP
63d4e1b6  0bd5b6  51                       PUSH ECX
63d4e1b7  0bd5b7  8365fc00                 AND dword ptr [EBP + -0x4],0x0
63d4e1bb  0bd5bb  56                       PUSH ESI
63d4e1bc  0bd5bc  57                       PUSH EDI
63d4e1bd  0bd5bd  6834dcc963               PUSH 0x63c9dc34
63d4e1c2  0bd5c2  ff7508                   PUSH dword ptr [EBP + 0x8]
63d4e1c5  0bd5c5  ff15fc17c963             CALL dword ptr [0x63c917fc]
63d4e1cb  0bd5cb  8bf8                     MOV EDI,EAX
63d4e1cd  0bd5cd  85ff                     TEST EDI,EDI
63d4e1cf  0bd5cf  7419                     JZ 0x63d4e1ea
63d4e1d1  0bd5d1  8d45fc                   LEA EAX,[EBP + -0x4]
63d4e1d4  0bd5d4  50                       PUSH EAX
63d4e1d5  0bd5d5  68db0e0000               PUSH 0xedb
63d4e1da  0bd5da  6a00                     PUSH 0x0
63d4e1dc  0bd5dc  ff750c                   PUSH dword ptr [EBP + 0xc]
63d4e1df  0bd5df  57                       PUSH EDI
63d4e1e0  0bd5e0  ff150418c963             CALL dword ptr [0x63c91804]
63d4e1e6  0bd5e6  85c0                     TEST EAX,EAX
63d4e1e8  0bd5e8  7d0e                     JGE 0x63d4e1f8
63d4e1ea  0bd5ea  ff7510                   PUSH dword ptr [EBP + 0x10]
63d4e1ed  0bd5ed  ff151416c963             CALL dword ptr [0x63c91614]
63d4e1f3  0bd5f3  8945fc                   MOV dword ptr [EBP + -0x4],EAX
63d4e1f6  0bd5f6  eb03                     JMP 0x63d4e1fb
63d4e1f8  0bd5f8  8b45fc                   MOV EAX,dword ptr [EBP + -0x4]
63d4e1fb  0bd5fb  0fb6f0                   MOVZX ESI,AL
63d4e1fe  0bd5fe  81ce00ffffff             OR ESI,0xffffff00
63d4e204  0bd604  0fb6cc                   MOVZX ECX,AH
63d4e207  0bd607  c1e608                   SHL ESI,0x8
63d4e20a  0bd60a  c1e810                   SHR EAX,0x10
63d4e20d  0bd60d  0bf1                     OR ESI,ECX
63d4e20f  0bd60f  0fb6c0                   MOVZX EAX,AL
63d4e212  0bd612  c1e608                   SHL ESI,0x8
63d4e215  0bd615  0bf0                     OR ESI,EAX
63d4e217  0bd617  85ff                     TEST EDI,EDI
63d4e219  0bd619  7407                     JZ 0x63d4e222
63d4e21b  0bd61b  57                       PUSH EDI
63d4e21c  0bd61c  ff15f417c963             CALL dword ptr [0x63c917f4]
63d4e222  0bd622  5f                       POP EDI
63d4e223  0bd623  8bc6                     MOV EAX,ESI
63d4e225  0bd625  5e                       POP ESI
63d4e226  0bd626  c9                       LEAVE
63d4e227  0bd627  c20c00                   RET 0xc

; ===== FUN_63d1e8d3 @ 63d1e8d3  conv __thiscall  purge 8
63d1e8d3  08dcd3  8bff                     MOV EDI,EDI
63d1e8d5  08dcd5  55                       PUSH EBP
63d1e8d6  08dcd6  8bec                     MOV EBP,ESP
63d1e8d8  08dcd8  56                       PUSH ESI
63d1e8d9  08dcd9  8bf1                     MOV ESI,ECX
63d1e8db  08dcdb  8b4e6c                   MOV ECX,dword ptr [ESI + 0x6c]
63d1e8de  08dcde  33c0                     XOR EAX,EAX
63d1e8e0  08dce0  2bc8                     SUB ECX,EAX
63d1e8e2  08dce2  7412                     JZ 0x63d1e8f6
63d1e8e4  08dce4  49                       DEC ECX
63d1e8e5  08dce5  7517                     JNZ 0x63d1e8fe
63d1e8e7  08dce7  8b4604                   MOV EAX,dword ptr [ESI + 0x4]
63d1e8ea  08dcea  6a1a                     PUSH 0x1a
63d1e8ec  08dcec  6a06                     PUSH 0x6
63d1e8ee  08dcee  50                       PUSH EAX
63d1e8ef  08dcef  e8bdf80200               CALL 0x63d4e1b1
63d1e8f4  08dcf4  eb08                     JMP 0x63d1e8fe
63d1e8f6  08dcf6  ff7604                   PUSH dword ptr [ESI + 0x4]
63d1e8f9  08dcf9  e831f90200               CALL 0x63d4e22f
63d1e8fe  08dcfe  50                       PUSH EAX
63d1e8ff  08dcff  ff750c                   PUSH dword ptr [EBP + 0xc]
63d1e902  08dd02  ff7508                   PUSH dword ptr [EBP + 0x8]
63d1e905  08dd05  56                       PUSH ESI
63d1e906  08dd06  e88c990300               CALL 0x63d58297
63d1e90b  08dd0b  5e                       POP ESI
63d1e90c  08dd0c  5d                       POP EBP
63d1e90d  08dd0d  c20800                   RET 0x8

; ===== FUN_63d296e7 @ 63d296e7  conv __thiscall  purge 12
63d296e7  098ae7  8bff                     MOV EDI,EDI
63d296e9  098ae9  55                       PUSH EBP
63d296ea  098aea  8bec                     MOV EBP,ESP
63d296ec  098aec  53                       PUSH EBX
63d296ed  098aed  8b5d0c                   MOV EBX,dword ptr [EBP + 0xc]
63d296f0  098af0  33c0                     XOR EAX,EAX
63d296f2  098af2  f6c320                   TEST BL,0x20
63d296f5  098af5  56                       PUSH ESI
63d296f6  098af6  8bf1                     MOV ESI,ECX
63d296f8  098af8  7426                     JZ 0x63d29720
63d296fa  098afa  8b8e74010000             MOV ECX,dword ptr [ESI + 0x174]
63d29700  098b00  2bc8                     SUB ECX,EAX
63d29702  098b02  7412                     JZ 0x63d29716
63d29704  098b04  49                       DEC ECX
63d29705  098b05  753e                     JNZ 0x63d29745
63d29707  098b07  8b4604                   MOV EAX,dword ptr [ESI + 0x4]
63d2970a  098b0a  6a1a                     PUSH 0x1a
63d2970c  098b0c  6a06                     PUSH 0x6
63d2970e  098b0e  50                       PUSH EAX
63d2970f  098b0f  e89d4a0200               CALL 0x63d4e1b1
63d29714  098b14  eb2f                     JMP 0x63d29745
63d29716  098b16  ff7604                   PUSH dword ptr [ESI + 0x4]
63d29719  098b19  e8114b0200               CALL 0x63d4e22f
63d2971e  098b1e  eb25                     JMP 0x63d29745
63d29720  098b20  6a11                     PUSH 0x11
63d29722  098b22  ff151416c963             CALL dword ptr [0x63c91614]
63d29728  098b28  8bc8                     MOV ECX,EAX
63d2972a  098b2a  0fb6c1                   MOVZX EAX,CL
63d2972d  098b2d  0d00ffffff               OR EAX,0xffffff00
63d29732  098b32  0fb6d5                   MOVZX EDX,CH
63d29735  098b35  c1e008                   SHL EAX,0x8
63d29738  098b38  c1e910                   SHR ECX,0x10
63d2973b  098b3b  0bc2                     OR EAX,EDX
63d2973d  098b3d  0fb6c9                   MOVZX ECX,CL
63d29740  098b40  c1e008                   SHL EAX,0x8
63d29743  098b43  0bc1                     OR EAX,ECX
63d29745  098b45  50                       PUSH EAX
63d29746  098b46  ff7510                   PUSH dword ptr [EBP + 0x10]
63d29749  098b49  81e3fff5ffff             AND EBX,0xfffff5ff
63d2974f  098b4f  81cb00200000             OR EBX,0x2000
63d29755  098b55  53                       PUSH EBX
63d29756  098b56  ff7508                   PUSH dword ptr [EBP + 0x8]
63d29759  098b59  56                       PUSH ESI
63d2975a  098b5a  e8a2c20200               CALL 0x63d55a01
63d2975f  098b5f  5e                       POP ESI
63d29760  098b60  5b                       POP EBX
63d29761  098b61  5d                       POP EBP
63d29762  098b62  c20c00                   RET 0xc

; data 63c9b220 -> nearest symbol: UIControls::StaticTextExTransparentBack<PaneStaticText>::vftable @ 63c9b20c

; data 63c9b444 -> nearest symbol: UIControls::ButtonExTransparentBack<ModularWindow::PaneButton>::vftable @ 63c9b428

; data 63c9a9a0 -> nearest symbol: ATL::CComObject<ModularWindow::PaneHideableControl<ModularWindow::PaneLineControl>_>::vftable @ 63c9a988

; data 63c9af4c -> nearest symbol: ATL::CComObject<ModularWindow::PaneLineControl>::vftable @ 63c9af34

; data 63c9ca9c -> nearest symbol: ModularWindow::PaneLineControl::vftable @ 63c9ca84
