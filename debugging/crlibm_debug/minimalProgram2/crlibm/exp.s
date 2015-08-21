	.file	"exp.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H exp.c
# -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow -Wpointer-arith
# -Wcast-align -Wconversion -Waggregate-return -Wstrict-prototypes
# -Wnested-externs -Wlong-long -Winline -pedantic -std=c99 -fPIC
# -fno-strict-aliasing -fverbose-asm
# options enabled:  -fPIC -falign-loops -fargument-alias -fauto-inc-dec
# -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -ffunction-cse -fgcse-lm -fguess-branch-probability -fident
# -fif-conversion -fif-conversion2 -finline -finline-functions-called-once
# -fipa-pure-const -fipa-reference -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fpcc-struct-return -fpeephole -fsched-interblock
# -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -ftoplevel-reorder
# -ftrapping-math -ftree-ccp -ftree-ch -ftree-coalesce-vars
# -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-sra
# -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version
# -funit-at-a-time -fvar-tracking -fvar-tracking-assignments
# -fvect-cost-model -fverbose-asm -fzero-initialized-in-bss -m32 -m80387
# -m96bit-long-double -maccumulate-outgoing-args -malign-stringops
# -mfancy-math-387 -mfp-ret-in-387 -mfused-madd -mglibc -mieee-fp
# -mno-red-zone -mno-sse4 -mpush-args -msahf -mtls-direct-seg-refs

	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
# Compiler executable checksum: c4107769ffcd19d44690c951fbc131c4

	.cfi_sections	.debug_frame
.globl exp_SC
	.type	exp_SC, @function
exp_SC:
.LFB7:
	.file 1 "exp.c"
	.loc 1 69 0
	.cfi_startproc
.LVL0:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$204, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	movl	8(%ebp), %esi	# res_scs, res_scs
	.loc 1 77 0
	fldl	12(%ebp)	# x
	fstpl	-176(%ebp)	# %sfp
	.loc 1 78 0
	subl	$9437184, -172(%ebp)	#, %sfp
	.loc 1 79 0
	fldl	-176(%ebp)	# %sfp
	fstpl	4(%esp)	#
	leal	-72(%ebp), %eax	#, tmp146
	movl	%eax, (%esp)	# tmp146,
	call	scs_set_d@PLT	#
.LBB3:
	.loc 1 82 0
	fldl	-176(%ebp)	# %sfp
	fmull	iln2_o512@GOTOFF(%ebx)	# iln2_o512.d
	fadds	.LC0@GOTOFF(%ebx)	#
	fstpl	-192(%ebp)	# %sfp
.LVL1:
.LBE3:
	.loc 1 86 0
	leal	sc_ln2_o512_1@GOTOFF(%ebx), %eax	#, tmp152
	movl	%eax, 4(%esp)	# tmp152,
	leal	-120(%ebp), %eax	#, tmp153
	movl	%eax, (%esp)	# tmp153,
	call	scs_set@PLT	#
	.loc 1 87 0
	leal	sc_ln2_o512_2@GOTOFF(%ebx), %eax	#, tmp154
	movl	%eax, 4(%esp)	# tmp154,
	leal	-168(%ebp), %eax	#, tmp155
	movl	%eax, (%esp)	# tmp155,
	call	scs_set@PLT	#
	.loc 1 88 0
	cmpl	$0, -192(%ebp)	#, %sfp
	jle	.L2	#,
	.loc 1 89 0
	movl	-192(%ebp), %eax	# %sfp,
	movl	%eax, 4(%esp)	#,
	leal	-120(%ebp), %eax	#, tmp156
	movl	%eax, (%esp)	# tmp156,
	call	scs_mul_ui@PLT	#
	.loc 1 90 0
	movl	-192(%ebp), %eax	# %sfp,
	movl	%eax, 4(%esp)	#,
	leal	-168(%ebp), %eax	#, tmp157
	movl	%eax, (%esp)	# tmp157,
	call	scs_mul_ui@PLT	#
	jmp	.L3	#
.L2:
	.loc 1 92 0
	movl	-192(%ebp), %edi	# %sfp, D.1857
	negl	%edi	# D.1857
	movl	%edi, 4(%esp)	# D.1857,
	leal	-120(%ebp), %eax	#, tmp158
	movl	%eax, (%esp)	# tmp158,
	call	scs_mul_ui@PLT	#
	.loc 1 93 0
	movl	%edi, 4(%esp)	# D.1857,
	leal	-168(%ebp), %eax	#, tmp159
	movl	%eax, (%esp)	# tmp159,
	call	scs_mul_ui@PLT	#
	.loc 1 94 0
	negl	-76(%ebp)	# <variable>.sign
	.loc 1 95 0
	negl	-124(%ebp)	# <variable>.sign
.L3:
	.loc 1 98 0
	leal	-120(%ebp), %edi	#, tmp160
	movl	%edi, 8(%esp)	# tmp160,
	leal	-72(%ebp), %eax	#, tmp161
	movl	%eax, 4(%esp)	# tmp161,
	movl	%edi, (%esp)	# tmp160,
	call	scs_sub@PLT	#
	.loc 1 99 0
	leal	-168(%ebp), %eax	#, tmp163
	movl	%eax, 8(%esp)	# tmp163,
	movl	%edi, 4(%esp)	# tmp160,
	movl	%edi, (%esp)	# tmp160,
	call	scs_sub@PLT	#
	.loc 1 104 0
	movl	%edi, 8(%esp)	# tmp160,
	leal	constant_poly@GOTOFF(%ebx), %eax	#,
	movl	%eax, -176(%ebp)	#, %sfp
	movl	%eax, 4(%esp)	#,
	movl	%esi, (%esp)	# res_scs,
	call	scs_mul@PLT	#
.LVL2:
	movl	-176(%ebp), %eax	# %sfp,
	leal	48(%eax), %edi	#, ivtmp.37
	.loc 1 69 0
	leal	480(%eax), %eax	#,
	movl	%eax, -176(%ebp)	#, %sfp
	.loc 1 107 0
	leal	-120(%ebp), %eax	#,
	movl	%eax, -180(%ebp)	#, %sfp
.LVL3:
.L4:
	.loc 1 106 0
	movl	%esi, 8(%esp)	# res_scs,
	movl	%edi, 4(%esp)	# ivtmp.37,
	movl	%esi, (%esp)	# res_scs,
	call	scs_add@PLT	#
	.loc 1 107 0
	movl	%esi, 8(%esp)	# res_scs,
	movl	-180(%ebp), %eax	# %sfp,
	movl	%eax, 4(%esp)	#,
	movl	%esi, (%esp)	# res_scs,
	call	scs_mul@PLT	#
	addl	$48, %edi	#, ivtmp.37
	.loc 1 105 0
	cmpl	-176(%ebp), %edi	# %sfp, ivtmp.37
	jne	.L4	#,
	.loc 1 110 0
	movl	%esi, 8(%esp)	# res_scs,
	leal	scs_one@GOTOFF(%ebx), %edi	#, tmp169
	movl	%edi, 4(%esp)	# tmp169,
	movl	%esi, (%esp)	# res_scs,
	call	scs_add@PLT	#
	.loc 1 111 0
	movl	%esi, 8(%esp)	# res_scs,
	leal	-120(%ebp), %eax	#, tmp170
	movl	%eax, 4(%esp)	# tmp170,
	movl	%esi, (%esp)	# res_scs,
	call	scs_mul@PLT	#
	.loc 1 112 0
	movl	%esi, 8(%esp)	# res_scs,
	movl	%edi, 4(%esp)	# tmp169,
	movl	%esi, (%esp)	# res_scs,
	call	scs_add@PLT	#
.LVL4:
	movl	$0, %edi	#, i
.LVL5:
.L5:
	.loc 1 116 0
	movl	%esi, 4(%esp)	# res_scs,
	movl	%esi, (%esp)	# res_scs,
	call	scs_square@PLT	#
	.loc 1 115 0
	addl	$1, %edi	#, i
.LVL6:
	cmpl	$9, %edi	#, i
	jne	.L5	#,
	.loc 1 119 0
	movl	$-2004318071, %edx	#, tmp174
	movl	-192(%ebp), %eax	# %sfp,
	imull	%edx	# tmp174
	addl	-192(%ebp), %edx	# %sfp, tmp175
	sarl	$4, %edx	#, tmp176
	movl	-192(%ebp), %eax	# %sfp, tmp177
	sarl	$31, %eax	#, tmp177
	subl	%eax, %edx	# tmp177, tmp172
	movl	%edx, %edi	# tmp172, D.1867
.LVL7:
	addl	40(%esi), %edi	# <variable>.index, D.1867
	movl	%edi, 40(%esi)	# D.1867, <variable>.index
	.loc 1 120 0
	imull	$30, %edx, %ecx	#, tmp172, tmp186
	movl	-192(%ebp), %eax	# %sfp,
	subl	%ecx, %eax	# tmp186,
	movl	%eax, %ecx	#, D.1868
	testl	%eax, %eax	# D.1868
	jle	.L6	#,
	.loc 1 121 0
	movl	$1, %eax	#, tmp188
	sall	%cl, %eax	# D.1868, tmp187
	movl	%eax, 4(%esp)	# tmp187,
	movl	%esi, (%esp)	# res_scs,
	call	scs_mul_ui@PLT	#
	jmp	.L8	#
.L6:
	.loc 1 122 0
	testl	%eax, %eax	# D.1868
	jns	.L8	#,
	.loc 1 123 0
	subl	$1, %edi	#, tmp189
	movl	%edi, 40(%esi)	# tmp189, <variable>.index
	.loc 1 124 0
	addl	$30, %ecx	#, tmp190
	movl	$1, %eax	#, tmp192
	sall	%cl, %eax	# tmp190, tmp191
	movl	%eax, 4(%esp)	# tmp191,
	movl	%esi, (%esp)	# res_scs,
	call	scs_mul_ui@PLT	#
.L8:
	.loc 1 126 0
	addl	$204, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%esi	#
	.cfi_restore 6
	popl	%edi	#
	.cfi_restore 7
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	exp_SC, .-exp_SC
.globl scs_exp_ru
	.type	scs_exp_ru, @function
scs_exp_ru:
.LFB10:
	.loc 1 174 0
	.cfi_startproc
.LVL8:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$88, %esp	#,
	movl	%ebx, -8(%ebp)	#,
	movl	%esi, -4(%ebp)	#,
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	.loc 1 178 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp60
	movl	%esi, (%esp)	# tmp60,
	call	exp_SC@PLT	#
	.loc 1 179 0
	movl	%esi, 4(%esp)	# tmp60,
	leal	-64(%ebp), %eax	#, tmp62
	movl	%eax, (%esp)	# tmp62,
	call	scs_get_d_pinf@PLT	#
	.loc 1 182 0
	fldl	-64(%ebp)	# res.d
	movl	-8(%ebp), %ebx	#,
	movl	-4(%ebp), %esi	#,
	movl	%ebp, %esp	#,
	.cfi_def_cfa_register 4
	.cfi_restore 6
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE10:
	.size	scs_exp_ru, .-scs_exp_ru
.globl scs_exp_rd
	.type	scs_exp_rd, @function
scs_exp_rd:
.LFB9:
	.loc 1 158 0
	.cfi_startproc
.LVL9:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$88, %esp	#,
	movl	%ebx, -8(%ebp)	#,
	movl	%esi, -4(%ebp)	#,
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	.loc 1 162 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp60
	movl	%esi, (%esp)	# tmp60,
	call	exp_SC@PLT	#
	.loc 1 163 0
	movl	%esi, 4(%esp)	# tmp60,
	leal	-64(%ebp), %eax	#, tmp62
	movl	%eax, (%esp)	# tmp62,
	call	scs_get_d_minf@PLT	#
	.loc 1 166 0
	fldl	-64(%ebp)	# res.d
	movl	-8(%ebp), %ebx	#,
	movl	-4(%ebp), %esi	#,
	movl	%ebp, %esp	#,
	.cfi_def_cfa_register 4
	.cfi_restore 6
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE9:
	.size	scs_exp_rd, .-scs_exp_rd
.globl scs_exp_rn
	.type	scs_exp_rn, @function
scs_exp_rn:
.LFB8:
	.loc 1 134 0
	.cfi_startproc
.LVL10:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$88, %esp	#,
	movl	%ebx, -8(%ebp)	#,
	movl	%esi, -4(%ebp)	#,
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	.loc 1 139 0
	movl	crlibm_second_step_taken@GOT(%ebx), %eax	#, tmp60
	addl	$1, (%eax)	#, crlibm_second_step_taken
	.loc 1 146 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp64
	movl	%esi, (%esp)	# tmp64,
	call	exp_SC@PLT	#
	.loc 1 147 0
	movl	%esi, 4(%esp)	# tmp64,
	leal	-64(%ebp), %eax	#, tmp66
	movl	%eax, (%esp)	# tmp66,
	call	scs_get_d@PLT	#
	.loc 1 150 0
	fldl	-64(%ebp)	# res.d
	movl	-8(%ebp), %ebx	#,
	movl	-4(%ebp), %esi	#,
	movl	%ebp, %esp	#,
	.cfi_def_cfa_register 4
	.cfi_restore 6
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE8:
	.size	scs_exp_rn, .-scs_exp_rn
	.section	.rodata
	.align 4
	.type	iln2_o512, @object
	.size	iln2_o512, 8
iln2_o512:
# i:
	.long	1697350398
	.long	1082594631
	.align 32
	.type	sc_ln2_o512_1, @object
	.size	sc_ln2_o512_1, 48
sc_ln2_o512_1:
# h_word:
	.long	1453634
	.long	1069452923
	.long	861377479
	.long	432800249
	.long	517335070
	.long	437859220
	.long	829184788
	.long	0
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
	.align 32
	.type	sc_ln2_o512_2, @object
	.size	sc_ln2_o512_2, 48
sc_ln2_o512_2:
# h_word:
	.long	109817285
	.long	895436156
	.long	1036235011
	.long	467097904
	.long	717924733
	.long	694109026
	.long	124351857
	.long	729968706
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-8
# sign:
	.long	1
	.align 32
	.type	constant_poly, @object
	.size	constant_poly, 480
constant_poly:
# h_word:
	.long	26
	.long	965827302
	.long	656096038
	.long	1002686678
	.long	847194260
	.long	444644262
	.long	763093321
	.long	345682530
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	295
	.long	960424103
	.long	642230021
	.long	58390872
	.long	209010611
	.long	155312425
	.long	320218488
	.long	393434511
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	2958
	.long	1014278872
	.long	966442237
	.long	304472139
	.long	781052435
	.long	59475223
	.long	840093390
	.long	750090181
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	26630
	.long	538575264
	.long	107891638
	.long	359032534
	.long	859642544
	.long	108470913
	.long	72238456
	.long	81319437
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	213044
	.long	13634816
	.long	872628276
	.long	38339707
	.long	954575319
	.long	813717575
	.long	861900898
	.long	543924961
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	1491308
	.long	95443717
	.long	739688812
	.long	303991499
	.long	635082254
	.long	697917805
	.long	725280780
	.long	437733149
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	8947848
	.long	572662306
	.long	143165576
	.long	572662304
	.long	120219166
	.long	368092623
	.long	1069891201
	.long	1034324036
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	44739242
	.long	715827882
	.long	715827882
	.long	715827870
	.long	775461239
	.long	134000513
	.long	134144771
	.long	334148508
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	178956970
	.long	715827882
	.long	715827882
	.long	715827882
	.long	715827932
	.long	419567439
	.long	854878249
	.long	334660955
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	536870912
	.long	0
	.long	0
	.long	0
	.long	117
	.long	568715714
	.long	513138745
	.long	400218037
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
	.align 32
	.type	scs_one, @object
	.size	scs_one, 48
scs_one:
# h_word:
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	0
# sign:
	.long	1
	.comm	crlibm_second_step_taken,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1505755136
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
.LFB11:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE11:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "scs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "scs_private.h"
	.file 8 "crlibm_private.h"
	.file 9 "exp.h"
	.section	.debug_info
	.long	0x645
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF84
	.byte	0xc
	.long	.LASF85
	.long	.LASF86
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd3
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x38
	.long	0x61
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x8d
	.long	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x8e
	.long	0x6f
	.uleb128 0x5
	.long	0x5a
	.long	0xa7
	.uleb128 0x6
	.long	0x30
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.long	0xaf
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x9
	.long	.LASF43
	.byte	0x94
	.byte	0x4
	.value	0x10f
	.long	0x24a
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.value	0x110
	.long	0x5a
	.sleb128 0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.value	0x115
	.long	0xa9
	.sleb128 4
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x116
	.long	0xa9
	.sleb128 8
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x117
	.long	0xa9
	.sleb128 12
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x118
	.long	0xa9
	.sleb128 16
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x119
	.long	0xa9
	.sleb128 20
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x11a
	.long	0xa9
	.sleb128 24
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x11b
	.long	0xa9
	.sleb128 28
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x11c
	.long	0xa9
	.sleb128 32
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x11e
	.long	0xa9
	.sleb128 36
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x11f
	.long	0xa9
	.sleb128 40
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x120
	.long	0xa9
	.sleb128 44
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x122
	.long	0x282
	.sleb128 48
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.value	0x124
	.long	0x288
	.sleb128 52
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.value	0x126
	.long	0x5a
	.sleb128 56
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.value	0x12a
	.long	0x5a
	.sleb128 60
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.value	0x12c
	.long	0x7a
	.sleb128 64
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.value	0x130
	.long	0x3e
	.sleb128 68
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.value	0x131
	.long	0x4c
	.sleb128 70
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.value	0x132
	.long	0x28e
	.sleb128 71
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.value	0x136
	.long	0x29e
	.sleb128 72
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.value	0x13f
	.long	0x8c
	.sleb128 76
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.value	0x148
	.long	0xa7
	.sleb128 84
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.value	0x149
	.long	0xa7
	.sleb128 88
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.value	0x14a
	.long	0xa7
	.sleb128 92
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.value	0x14b
	.long	0xa7
	.sleb128 96
	.uleb128 0xa
	.long	.LASF40
	.byte	0x4
	.value	0x14c
	.long	0x25
	.sleb128 100
	.uleb128 0xa
	.long	.LASF41
	.byte	0x4
	.value	0x14e
	.long	0x5a
	.sleb128 104
	.uleb128 0xa
	.long	.LASF42
	.byte	0x4
	.value	0x150
	.long	0x2a4
	.sleb128 108
	.byte	0x0
	.uleb128 0xb
	.long	.LASF87
	.byte	0x4
	.byte	0xb4
	.uleb128 0xc
	.long	.LASF44
	.byte	0xc
	.byte	0x4
	.byte	0xba
	.long	0x282
	.uleb128 0xd
	.long	.LASF45
	.byte	0x4
	.byte	0xbb
	.long	0x282
	.sleb128 0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x4
	.byte	0xbc
	.long	0x288
	.sleb128 4
	.uleb128 0xd
	.long	.LASF47
	.byte	0x4
	.byte	0xc0
	.long	0x5a
	.sleb128 8
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x251
	.uleb128 0x8
	.byte	0x4
	.long	0xb6
	.uleb128 0x5
	.long	0xaf
	.long	0x29e
	.uleb128 0x6
	.long	0x30
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x24a
	.uleb128 0x5
	.long	0xaf
	.long	0x2b4
	.uleb128 0x6
	.long	0x30
	.byte	0x27
	.byte	0x0
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.byte	0x38
	.long	0x2d8
	.uleb128 0xf
	.string	"i"
	.byte	0x5
	.byte	0x39
	.long	0x97
	.uleb128 0xf
	.string	"l"
	.byte	0x5
	.byte	0x3a
	.long	0x68
	.uleb128 0xf
	.string	"d"
	.byte	0x5
	.byte	0x3b
	.long	0x2d8
	.byte	0x0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF48
	.uleb128 0x2
	.long	.LASF49
	.byte	0x5
	.byte	0x3c
	.long	0x2b4
	.uleb128 0x10
	.string	"scs"
	.byte	0x30
	.byte	0x5
	.byte	0x64
	.long	0x327
	.uleb128 0xd
	.long	.LASF50
	.byte	0x5
	.byte	0x66
	.long	0x327
	.sleb128 0
	.uleb128 0xd
	.long	.LASF51
	.byte	0x5
	.byte	0x68
	.long	0x2df
	.sleb128 32
	.uleb128 0xd
	.long	.LASF52
	.byte	0x5
	.byte	0x6b
	.long	0x5a
	.sleb128 40
	.uleb128 0xd
	.long	.LASF53
	.byte	0x5
	.byte	0x6d
	.long	0x5a
	.sleb128 44
	.byte	0x0
	.uleb128 0x5
	.long	0x30
	.long	0x337
	.uleb128 0x6
	.long	0x30
	.byte	0x7
	.byte	0x0
	.uleb128 0x11
	.string	"scs"
	.byte	0x5
	.byte	0x71
	.long	0x2ea
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.byte	0x76
	.long	0x34d
	.uleb128 0x8
	.byte	0x4
	.long	0x2ea
	.uleb128 0x2
	.long	.LASF55
	.byte	0x5
	.byte	0x7f
	.long	0x35e
	.uleb128 0x5
	.long	0x2ea
	.long	0x36e
	.uleb128 0x6
	.long	0x30
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0x40d
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x45
	.long	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x45
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"sc1"
	.byte	0x1
	.byte	0x46
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.string	"red"
	.byte	0x1
	.byte	0x46
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.byte	0x46
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x15
	.string	"db"
	.byte	0x1
	.byte	0x47
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -176
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x48
	.long	0x5a
	.long	.LLST0
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.byte	0x48
	.long	0x5a
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x18
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x15
	.string	"_t"
	.byte	0x1
	.byte	0x52
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -192
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	0x2d8
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.long	0x452
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0xae
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0xaf
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"res"
	.byte	0x1
	.byte	0xb0
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.long	0x2d8
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0x497
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x9e
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0x9f
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"res"
	.byte	0x1
	.byte	0xa0
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.long	0x2d8
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0x4dc
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x86
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0x87
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"res"
	.byte	0x1
	.byte	0x88
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x7
	.byte	0x47
	.long	0x501
	.uleb128 0x1c
	.long	0x2df
	.uleb128 0x1b
	.long	.LASF64
	.byte	0x7
	.byte	0x48
	.long	0x501
	.uleb128 0x1b
	.long	.LASF65
	.byte	0x7
	.byte	0x49
	.long	0x501
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x7
	.byte	0x4a
	.long	0x501
	.uleb128 0x1b
	.long	.LASF67
	.byte	0x7
	.byte	0x4b
	.long	0x501
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x7
	.byte	0x4c
	.long	0x501
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x7
	.byte	0x4d
	.long	0x501
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x7
	.byte	0x4e
	.long	0x501
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x8
	.byte	0x32
	.long	0x5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x8
	.byte	0xca
	.long	0x56b
	.uleb128 0x1c
	.long	0x2ea
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x8
	.byte	0xce
	.long	0x56b
	.uleb128 0x16
	.long	.LASF74
	.byte	0x8
	.byte	0xd2
	.long	0x56b
	.byte	0x5
	.byte	0x3
	.long	scs_one
	.uleb128 0x1b
	.long	.LASF75
	.byte	0x8
	.byte	0xd6
	.long	0x56b
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x8
	.byte	0xda
	.long	0x56b
	.uleb128 0x16
	.long	.LASF77
	.byte	0x9
	.byte	0x10
	.long	0x501
	.byte	0x5
	.byte	0x3
	.long	iln2_o512
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x9
	.byte	0x11
	.long	0x501
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x9
	.byte	0x12
	.long	0x501
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x9
	.byte	0x13
	.long	0x501
	.uleb128 0x16
	.long	.LASF81
	.byte	0x9
	.byte	0x17
	.long	0x56b
	.byte	0x5
	.byte	0x3
	.long	sc_ln2_o512_1
	.uleb128 0x16
	.long	.LASF82
	.byte	0x9
	.byte	0x1a
	.long	0x56b
	.byte	0x5
	.byte	0x3
	.long	sc_ln2_o512_2
	.uleb128 0x5
	.long	0x337
	.long	0x606
	.uleb128 0x6
	.long	0x30
	.byte	0x9
	.byte	0x0
	.uleb128 0x16
	.long	.LASF83
	.byte	0x9
	.byte	0x23
	.long	0x617
	.byte	0x5
	.byte	0x3
	.long	constant_poly
	.uleb128 0x1c
	.long	0x5f6
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF71
	.byte	0x8
	.byte	0x32
	.long	0x5a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	crlibm_second_step_taken
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x63
	.value	0x2
	.long	.Ldebug_info0
	.long	0x649
	.long	0x36e
	.string	"exp_SC"
	.long	0x40d
	.string	"scs_exp_ru"
	.long	0x452
	.string	"scs_exp_rd"
	.long	0x497
	.string	"scs_exp_rn"
	.long	0x636
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x9f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x649
	.long	0x25
	.string	"size_t"
	.long	0x6f
	.string	"__quad_t"
	.long	0x7a
	.string	"__off_t"
	.long	0x8c
	.string	"__off64_t"
	.long	0x24a
	.string	"_IO_lock_t"
	.long	0x251
	.string	"_IO_marker"
	.long	0xb6
	.string	"_IO_FILE"
	.long	0x2df
	.string	"db_number"
	.long	0x2ea
	.string	"scs"
	.long	0x337
	.string	"scs"
	.long	0x342
	.string	"scs_ptr"
	.long	0x353
	.string	"scs_t"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.value	0x0
	.value	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"_IO_buf_end"
.LASF9:
	.string	"__quad_t"
.LASF30:
	.string	"_old_offset"
.LASF49:
	.string	"db_number"
.LASF48:
	.string	"double"
.LASF55:
	.string	"scs_t"
.LASF80:
	.string	"larg_int"
.LASF76:
	.string	"scs_sixinv"
.LASF65:
	.string	"radix_mone_double"
.LASF25:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF35:
	.string	"_offset"
.LASF83:
	.string	"constant_poly"
.LASF19:
	.string	"_IO_write_ptr"
.LASF14:
	.string	"_flags"
.LASF88:
	.string	"exp_SC"
.LASF21:
	.string	"_IO_buf_base"
.LASF26:
	.string	"_markers"
.LASF16:
	.string	"_IO_read_end"
.LASF69:
	.string	"max_double"
.LASF52:
	.string	"index"
.LASF51:
	.string	"exception"
.LASF85:
	.string	"exp.c"
.LASF59:
	.string	"scs_exp_rd"
.LASF6:
	.string	"long long int"
.LASF60:
	.string	"scs_exp_rn"
.LASF71:
	.string	"crlibm_second_step_taken"
.LASF34:
	.string	"_lock"
.LASF58:
	.string	"scs_exp_ru"
.LASF11:
	.string	"long int"
.LASF72:
	.string	"scs_zer"
.LASF31:
	.string	"_cur_column"
.LASF73:
	.string	"scs_half"
.LASF47:
	.string	"_pos"
.LASF46:
	.string	"_sbuf"
.LASF43:
	.string	"_IO_FILE"
.LASF64:
	.string	"radix_two_double"
.LASF78:
	.string	"tiny_int"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF75:
	.string	"scs_two"
.LASF0:
	.string	"unsigned int"
.LASF44:
	.string	"_IO_marker"
.LASF33:
	.string	"_shortbuf"
.LASF77:
	.string	"iln2_o512"
.LASF70:
	.string	"min_double"
.LASF18:
	.string	"_IO_write_base"
.LASF42:
	.string	"_unused2"
.LASF15:
	.string	"_IO_read_ptr"
.LASF67:
	.string	"radix_rng_double"
.LASF2:
	.string	"short unsigned int"
.LASF54:
	.string	"scs_ptr"
.LASF13:
	.string	"char"
.LASF45:
	.string	"_next"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF56:
	.string	"res_scs"
.LASF63:
	.string	"radix_one_double"
.LASF57:
	.string	"red_low"
.LASF50:
	.string	"h_word"
.LASF3:
	.string	"long unsigned int"
.LASF53:
	.string	"sign"
.LASF20:
	.string	"_IO_write_end"
.LASF79:
	.string	"smll_int"
.LASF12:
	.string	"__off64_t"
.LASF10:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF66:
	.string	"radix_mtwo_double"
.LASF24:
	.string	"_IO_backup_base"
.LASF61:
	.string	"stdin"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF81:
	.string	"sc_ln2_o512_1"
.LASF82:
	.string	"sc_ln2_o512_2"
.LASF32:
	.string	"_vtable_offset"
.LASF84:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF23:
	.string	"_IO_save_base"
.LASF28:
	.string	"_fileno"
.LASF86:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF68:
	.string	"radix_mrng_double"
.LASF74:
	.string	"scs_one"
.LASF62:
	.string	"stdout"
.LASF87:
	.string	"_IO_lock_t"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
