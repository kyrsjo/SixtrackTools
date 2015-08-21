	.file	"atan.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H atan.c
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
.globl scs_atan
	.type	scs_atan, @function
scs_atan:
.LFB7:
	.file 1 "atan.c"
	.loc 1 61 0
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
	subl	$588, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	movl	8(%ebp), %esi	# res_scs, res_scs
	.loc 1 69 0
	movl	12(%ebp), %eax	# x,
	movl	%eax, 4(%esp)	#,
	leal	-568(%ebp), %eax	#, tmp196
	movl	%eax, (%esp)	# tmp196,
	call	scs_get_d@PLT	#
	.loc 1 72 0
	movl	crlibm_second_step_taken@GOT(%ebx), %eax	#, tmp197
	addl	$1, (%eax)	#, crlibm_second_step_taken
	.loc 1 76 0
	fldl	-568(%ebp)	# db.d
	fldl	.LC0@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L32	#,
.LVL1:
.LBB3:
	.loc 1 79 0
	fldl	992+arctan_table@GOTOFF(%ebx)	# <variable>.d
	fucomip	%st(1), %st	#,
	movl	$47, %eax	#, tmp271
	movl	$15, %ecx	#, tmp270
	cmovbe	%eax, %ecx	# tmp270,, tmp271, i
.LVL2:
	.loc 1 81 0
	movl	%ecx, %eax	# i, tmp205
	sall	$5, %eax	#, tmp205
	fldl	arctan_table@GOTOFF(%ebx,%eax)	# <variable>.d
	.loc 1 82 0
	leal	8(%ecx), %eax	#, tmp277
	leal	-8(%ecx), %edx	#, tmp278
	fucomip	%st(1), %st	#,
	cmovbe	%eax, %edx	# tmp278,, tmp277, i.45
.LVL3:
	.loc 1 83 0
	movl	%edx, %eax	# i.45, tmp208
	sall	$5, %eax	#, tmp208
	fldl	arctan_table@GOTOFF(%ebx,%eax)	# <variable>.d
	.loc 1 84 0
	leal	4(%edx), %ecx	#, tmp272
	leal	-4(%edx), %eax	#, tmp273
	fucomip	%st(1), %st	#,
	cmovbe	%ecx, %eax	# tmp273,, tmp272, i.46
.LVL4:
	.loc 1 85 0
	movl	%eax, %edx	# i.46, tmp211
	sall	$5, %edx	#, tmp211
	fldl	arctan_table@GOTOFF(%ebx,%edx)	# <variable>.d
	.loc 1 86 0
	leal	2(%eax), %edx	#, tmp279
	subl	$2, %eax	#, tmp280
.LVL5:
	fucomip	%st(1), %st	#,
	cmova	%eax, %edx	# tmp280,, tmp279
.LVL6:
	movl	%edx, -580(%ebp)	# tmp279, %sfp
.LVL7:
	.loc 1 87 0
	movl	%edx, %eax	# tmp279, tmp214
	sall	$5, %eax	#, tmp214
	fldl	arctan_table@GOTOFF(%ebx,%eax)	# <variable>.d
	fucomip	%st(1), %st	#,
	jbe	.L33	#,
	subl	$1, -580(%ebp)	#, %sfp
.LVL8:
	jmp	.L17	#
.LVL9:
.L33:
	.loc 1 88 0
	cmpl	$60, -580(%ebp)	#, %sfp
	setle	%al	#, tmp275
	movzbl	%al, %eax	# tmp275, tmp274
	addl	%eax, -580(%ebp)	# tmp274, %sfp
.LVL10:
.L17:
	.loc 1 89 0
	movl	-580(%ebp), %eax	# %sfp, tmp217
	sall	$5, %eax	#, tmp217
	fldl	arctan_table@GOTOFF(%ebx,%eax)	# <variable>.d
	movl	-580(%ebp), %eax	# %sfp, tmp276
	subl	$1, %eax	#, tmp276
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	cmovbe	-580(%ebp), %eax	# %sfp,, tmp276
	movl	%eax, -580(%ebp)	# tmp276, %sfp
.LVL11:
	.loc 1 92 0
	leal	1(,%eax,4), %eax	#, tmp220
.LVL12:
	fldl	arctan_table@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	4(%esp)	#
	leal	-320(%ebp), %edi	#, tmp224
	movl	%edi, (%esp)	# tmp224,
	call	scs_set_d@PLT	#
	.loc 1 94 0
	movl	12(%ebp), %edx	# x,
	movl	%edx, 8(%esp)	#,
	movl	%edi, 4(%esp)	# tmp224,
	leal	-416(%ebp), %eax	#,
	movl	%eax, -572(%ebp)	#, %sfp
	movl	%eax, (%esp)	#,
	call	scs_mul@PLT	#
	.loc 1 95 0
	leal	scs_one@GOTOFF(%ebx), %eax	#, tmp227
	movl	%eax, 8(%esp)	# tmp227,
	movl	-572(%ebp), %edx	# %sfp,
	movl	%edx, 4(%esp)	#,
	leal	-464(%ebp), %eax	#,
	movl	%eax, -572(%ebp)	#, %sfp
	movl	%eax, (%esp)	#,
	call	scs_add@PLT	#
	.loc 1 96 0
	movl	%edi, 8(%esp)	# tmp224,
	movl	12(%ebp), %edx	# x,
	movl	%edx, 4(%esp)	#,
	leal	-368(%ebp), %edi	#, tmp231
	movl	%edi, (%esp)	# tmp231,
	call	scs_sub@PLT	#
	.loc 1 97 0
	movl	-572(%ebp), %eax	# %sfp,
	movl	%eax, 8(%esp)	#,
	movl	%edi, 4(%esp)	# tmp231,
	movl	%edi, (%esp)	# tmp231,
	call	scs_div@PLT	#
	.loc 1 99 0
	movl	%edi, 4(%esp)	# tmp231,
	leal	-272(%ebp), %eax	#, tmp236
	movl	%eax, (%esp)	# tmp236,
	call	scs_get_d@PLT	#
	.loc 1 102 0
	movl	%edi, 4(%esp)	# tmp231,
	leal	-560(%ebp), %eax	#, tmp238
	movl	%eax, (%esp)	# tmp238,
	call	scs_square@PLT	#
	.loc 1 103 0
	leal	constant_poly@GOTOFF(%ebx), %edx	#,
	movl	%edx, -576(%ebp)	#, %sfp
	movl	%edx, 4(%esp)	#,
	movl	%esi, (%esp)	# res_scs,
	call	scs_set@PLT	#
.LVL13:
	movl	-576(%ebp), %eax	# %sfp,
	leal	48(%eax), %edi	#, ivtmp.30
	.loc 1 61 0
	leal	480(%eax), %edx	#,
	movl	%edx, -576(%ebp)	#, %sfp
	.loc 1 106 0
	leal	-560(%ebp), %eax	#,
	movl	%eax, -572(%ebp)	#, %sfp
.LVL14:
.L20:
	movl	-572(%ebp), %edx	# %sfp,
	movl	%edx, 8(%esp)	#,
	movl	%esi, 4(%esp)	# res_scs,
	movl	%esi, (%esp)	# res_scs,
	call	scs_mul@PLT	#
	.loc 1 107 0
	movl	%esi, 8(%esp)	# res_scs,
	movl	%edi, 4(%esp)	# ivtmp.30,
	movl	%esi, (%esp)	# res_scs,
	call	scs_add@PLT	#
	addl	$48, %edi	#, ivtmp.30
	.loc 1 104 0
	cmpl	-576(%ebp), %edi	# %sfp, ivtmp.30
	jne	.L20	#,
	.loc 1 109 0
	leal	-368(%ebp), %eax	#, tmp241
	movl	%eax, 8(%esp)	# tmp241,
	movl	%esi, 4(%esp)	# res_scs,
	leal	-512(%ebp), %eax	#,
	movl	%eax, -576(%ebp)	#, %sfp
	movl	%eax, (%esp)	#,
	call	scs_mul@PLT	#
	.loc 1 114 0
	movl	-580(%ebp), %edx	# %sfp,
	leal	1(%edx,%edx), %eax	#, tmp244
	leal	arctan_table@GOTOFF(%ebx), %edi	#, tmp245
	sall	$4, %eax	#, tmp246
	fldl	(%eax,%edi)	# <variable>.d
	fstpl	4(%esp)	#
	leal	-72(%ebp), %eax	#,
	movl	%eax, -572(%ebp)	#, %sfp
	movl	%eax, (%esp)	#,
	call	scs_set_d@PLT	#
	.loc 1 115 0
	movl	-580(%ebp), %eax	# %sfp, tmp250
	sall	$5, %eax	#, tmp250
	fldl	24(%edi,%eax)	# <variable>.d
	fstpl	4(%esp)	#
	leal	-120(%ebp), %edi	#, tmp254
	movl	%edi, (%esp)	# tmp254,
	call	scs_set_d@PLT	#
	.loc 1 116 0
	movl	-580(%ebp), %edx	# %sfp,
	fldl	atan_blolo@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	4(%esp)	#
	leal	-168(%ebp), %eax	#,
	movl	%eax, -580(%ebp)	#, %sfp
	movl	%eax, (%esp)	#,
	call	scs_set_d@PLT	#
	.loc 1 117 0
	movl	%edi, 8(%esp)	# tmp254,
	movl	-572(%ebp), %edx	# %sfp,
	movl	%edx, 4(%esp)	#,
	leal	-216(%ebp), %edi	#, tmp261
	movl	%edi, (%esp)	# tmp261,
	call	scs_add@PLT	#
	.loc 1 118 0
	movl	-580(%ebp), %eax	# %sfp,
	movl	%eax, 8(%esp)	#,
	movl	%edi, 4(%esp)	# tmp261,
	leal	-264(%ebp), %edi	#, tmp264
	movl	%edi, (%esp)	# tmp264,
	call	scs_add@PLT	#
	.loc 1 119 0
	movl	-576(%ebp), %edx	# %sfp,
	movl	%edx, 8(%esp)	#,
	movl	%edi, 4(%esp)	# tmp264,
	movl	%esi, (%esp)	# res_scs,
	call	scs_add@PLT	#
	.loc 1 120 0
	jmp	.L23	#
.LVL15:
.L32:
	fstp	%st(0)	#
.LBE3:
	.loc 1 127 0
	movl	12(%ebp), %eax	# x,
	movl	%eax, 4(%esp)	#,
	leal	-560(%ebp), %eax	#, tmp267
	movl	%eax, (%esp)	# tmp267,
	call	scs_square@PLT	#
	.loc 1 128 0
	leal	constant_poly@GOTOFF(%ebx), %edx	#,
	movl	%edx, -580(%ebp)	#, %sfp
	movl	%edx, 4(%esp)	#,
	movl	%esi, (%esp)	# res_scs,
	call	scs_set@PLT	#
.LVL16:
	movl	-580(%ebp), %eax	# %sfp,
	leal	48(%eax), %edi	#, ivtmp.41
	.loc 1 61 0
	leal	480(%eax), %edx	#,
	movl	%edx, -580(%ebp)	#, %sfp
	.loc 1 131 0
	leal	-560(%ebp), %eax	#,
	movl	%eax, -572(%ebp)	#, %sfp
.LVL17:
.L22:
	movl	-572(%ebp), %edx	# %sfp,
	movl	%edx, 8(%esp)	#,
	movl	%esi, 4(%esp)	# res_scs,
	movl	%esi, (%esp)	# res_scs,
	call	scs_mul@PLT	#
	.loc 1 132 0
	movl	%esi, 8(%esp)	# res_scs,
	movl	%edi, 4(%esp)	# ivtmp.41,
	movl	%esi, (%esp)	# res_scs,
	call	scs_add@PLT	#
	addl	$48, %edi	#, ivtmp.41
	.loc 1 129 0
	cmpl	-580(%ebp), %edi	# %sfp, ivtmp.41
	jne	.L22	#,
	.loc 1 134 0
	movl	12(%ebp), %eax	# x,
	movl	%eax, 8(%esp)	#,
	movl	%esi, 4(%esp)	# res_scs,
	movl	%esi, (%esp)	# res_scs,
	call	scs_mul@PLT	#
.L23:
	.loc 1 137 0
	addl	$588, %esp	#,
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
	.size	scs_atan, .-scs_atan
.globl scs_atan_ru
	.type	scs_atan_ru, @function
scs_atan_ru:
.LFB10:
	.loc 1 207 0
	.cfi_startproc
.LVL18:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%esi	#
	pushl	%ebx	#
	addl	$-128, %esp	#,
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
.LVL19:
	.loc 1 213 0
	fstl	-112(%ebp)	# res.d
	.loc 1 216 0
	fldz
	fucomip	%st(1), %st	#,
	jbe	.L40	#,
.LVL20:
	.loc 1 221 0
	fchs
.LVL21:
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp64
	movl	%esi, (%esp)	# tmp64,
	call	scs_set_d@PLT	#
	.loc 1 222 0
	movl	%esi, 4(%esp)	# tmp64,
	leal	-104(%ebp), %esi	#, tmp66
	movl	%esi, (%esp)	# tmp66,
	call	scs_atan@PLT	#
	.loc 1 224 0
	movl	%esi, 4(%esp)	# tmp66,
	leal	-112(%ebp), %eax	#, tmp68
	movl	%eax, (%esp)	# tmp68,
	call	scs_get_d_minf@PLT	#
	.loc 1 225 0
	fldl	-112(%ebp)	# res.d
	fchs
	.loc 1 226 0
	jmp	.L37	#
.LVL22:
.L40:
	.loc 1 221 0
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp70
	movl	%esi, (%esp)	# tmp70,
	call	scs_set_d@PLT	#
.LVL23:
	.loc 1 222 0
	movl	%esi, 4(%esp)	# tmp70,
	leal	-104(%ebp), %esi	#, tmp72
	movl	%esi, (%esp)	# tmp72,
	call	scs_atan@PLT	#
	.loc 1 229 0
	movl	%esi, 4(%esp)	# tmp72,
	leal	-112(%ebp), %eax	#, tmp74
	movl	%eax, (%esp)	# tmp74,
	call	scs_get_d_pinf@PLT	#
	.loc 1 230 0
	fldl	-112(%ebp)	# res.d
.LVL24:
.L37:
	.loc 1 232 0
	subl	$-128, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%esi	#
	.cfi_restore 6
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	scs_atan_ru, .-scs_atan_ru
.globl scs_atan_rd
	.type	scs_atan_rd, @function
scs_atan_rd:
.LFB9:
	.loc 1 175 0
	.cfi_startproc
.LVL25:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%esi	#
	pushl	%ebx	#
	addl	$-128, %esp	#,
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
.LVL26:
	.loc 1 181 0
	fstl	-112(%ebp)	# res.d
	.loc 1 184 0
	fldz
	fucomip	%st(1), %st	#,
	jbe	.L47	#,
.LVL27:
	.loc 1 188 0
	fchs
.LVL28:
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp64
	movl	%esi, (%esp)	# tmp64,
	call	scs_set_d@PLT	#
	.loc 1 189 0
	movl	%esi, 4(%esp)	# tmp64,
	leal	-104(%ebp), %esi	#, tmp66
	movl	%esi, (%esp)	# tmp66,
	call	scs_atan@PLT	#
	.loc 1 191 0
	movl	%esi, 4(%esp)	# tmp66,
	leal	-112(%ebp), %eax	#, tmp68
	movl	%eax, (%esp)	# tmp68,
	call	scs_get_d_pinf@PLT	#
	.loc 1 192 0
	fldl	-112(%ebp)	# res.d
	fchs
	.loc 1 193 0
	jmp	.L44	#
.LVL29:
.L47:
	.loc 1 188 0
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp70
	movl	%esi, (%esp)	# tmp70,
	call	scs_set_d@PLT	#
.LVL30:
	.loc 1 189 0
	movl	%esi, 4(%esp)	# tmp70,
	leal	-104(%ebp), %esi	#, tmp72
	movl	%esi, (%esp)	# tmp72,
	call	scs_atan@PLT	#
	.loc 1 196 0
	movl	%esi, 4(%esp)	# tmp72,
	leal	-112(%ebp), %eax	#, tmp74
	movl	%eax, (%esp)	# tmp74,
	call	scs_get_d_minf@PLT	#
	.loc 1 197 0
	fldl	-112(%ebp)	# res.d
.LVL31:
.L44:
	.loc 1 199 0
	subl	$-128, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%esi	#
	.cfi_restore 6
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	scs_atan_rd, .-scs_atan_rd
.globl scs_atan_rn
	.type	scs_atan_rn, @function
scs_atan_rn:
.LFB8:
	.loc 1 145 0
	.cfi_startproc
.LVL32:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$168, %esp	#,
	movl	%ebx, -12(%ebp)	#,
	movl	%esi, -8(%ebp)	#,
	movl	%edi, -4(%ebp)	#,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
.LVL33:
	.loc 1 156 0
	fld	%st(0)	#
	movl	$1, %edi	#, sign
	fldz
	fucomip	%st(2), %st	#,
	jbe	.L52	#,
.LVL34:
	.loc 1 158 0
	fchs
	fxch	%st(1)	#
.LVL35:
	movl	$-1, %edi	#, sign
	jmp	.L50	#
.LVL36:
.L52:
	fxch	%st(1)	#
.LVL37:
.L50:
	.loc 1 154 0
	fstpl	-128(%ebp)	# res.d
	.loc 1 160 0
	fstpl	4(%esp)	#
	leal	-72(%ebp), %esi	#, tmp64
	movl	%esi, (%esp)	# tmp64,
	call	scs_set_d@PLT	#
.LVL38:
	.loc 1 161 0
	movl	%esi, 4(%esp)	# tmp64,
	leal	-120(%ebp), %esi	#, tmp66
	movl	%esi, (%esp)	# tmp66,
	call	scs_atan@PLT	#
	.loc 1 162 0
	movl	%esi, 4(%esp)	# tmp66,
	leal	-128(%ebp), %eax	#, tmp68
	movl	%eax, (%esp)	# tmp68,
	call	scs_get_d@PLT	#
	movl	%edi, -140(%ebp)	# sign,
	fildl	-140(%ebp)	#
	fmull	-128(%ebp)	# res.d
	.loc 1 167 0
	movl	-12(%ebp), %ebx	#,
	movl	-8(%ebp), %esi	#,
	movl	-4(%ebp), %edi	#,
.LVL39:
	movl	%ebp, %esp	#,
	.cfi_def_cfa_register 4
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE8:
	.size	scs_atan_rn, .-scs_atan_rn
	.section	.rodata
	.align 32
	.type	arctan_table, @object
	.size	arctan_table, 1984
arctan_table:
# i:
	.long	-1127328963
	.long	1066008056
# i:
	.long	662044679
	.long	1067056907
# i:
	.long	1231681900
	.long	1067056541
# i:
	.long	1963361770
	.long	-1137698409
# i:
	.long	-1865499599
	.long	1067679903
# i:
	.long	-481002302
	.long	1068106581
# i:
	.long	1228285485
	.long	1068105117
# i:
	.long	976031577
	.long	-1135861866
# i:
	.long	1761322278
	.long	1068516377
# i:
	.long	-1409826887
	.long	1068730336
# i:
	.long	-155066260
	.long	1068727861
# i:
	.long	-2089230300
	.long	-1135253744
# i:
	.long	-1412564443
	.long	1068944710
# i:
	.long	-496650069
	.long	1069159569
# i:
	.long	1221532054
	.long	1069153693
# i:
	.long	-1220809412
	.long	-1136434980
# i:
	.long	1831773510
	.long	1069374985
# i:
	.long	-1859857301
	.long	1069569274
# i:
	.long	1298235734
	.long	1069563522
# i:
	.long	1235772228
	.long	1013080142
# i:
	.long	-695080815
	.long	1069677646
# i:
	.long	1375039555
	.long	1069786406
# i:
	.long	-162596802
	.long	1069776437
# i:
	.long	-1264230746
	.long	1012869907
# i:
	.long	1394565387
	.long	1069895590
# i:
	.long	-1180752383
	.long	1070005236
# i:
	.long	-1624234971
	.long	1069989353
# i:
	.long	-992792370
	.long	-1138510294
# i:
	.long	89189105
	.long	1070115384
# i:
	.long	1641666109
	.long	1070226071
# i:
	.long	1208303560
	.long	1070202269
# i:
	.long	-1740158223
	.long	-1134059220
# i:
	.long	-1198040103
	.long	1070337338
# i:
	.long	-1128305988
	.long	1070449226
# i:
	.long	-254898727
	.long	1070415184
# i:
	.long	976343891
	.long	1013903959
# i:
	.long	-18585467
	.long	1070561776
# i:
	.long	-50959483
	.long	1070635563
# i:
	.long	1288055915
	.long	1070612098
# i:
	.long	-1782127486
	.long	1012770196
# i:
	.long	-1808632630
	.long	1070692565
# i:
	.long	-1992038909
	.long	1070749963
# i:
	.long	555710825
	.long	1070718556
# i:
	.long	184676164
	.long	1010585223
# i:
	.long	-1295010313
	.long	1070807780
# i:
	.long	-2119118369
	.long	1070866040
# i:
	.long	-176989535
	.long	1070825013
# i:
	.long	-1924957463
	.long	-1133040379
# i:
	.long	232000091
	.long	1070924767
# i:
	.long	515286617
	.long	1070983985
# i:
	.long	-910032800
	.long	1070931471
# i:
	.long	549091963
	.long	-1133768877
# i:
	.long	966319380
	.long	1071043720
# i:
	.long	-1426561615
	.long	1071103998
# i:
	.long	-1643405721
	.long	1071037929
# i:
	.long	-2029166962
	.long	1014593426
# i:
	.long	-1773486171
	.long	1071164847
# i:
	.long	10941518
	.long	1071226295
# i:
	.long	1917873098
	.long	1071144387
# i:
	.long	1134676899
	.long	1014107089
# i:
	.long	-499052210
	.long	1071288369
# i:
	.long	847187600
	.long	1071351102
# i:
	.long	1183883976
	.long	1071250845
# i:
	.long	-273207244
	.long	-1133902706
# i:
	.long	-75975651
	.long	1071414522
# i:
	.long	1740518202
	.long	1071478664
# i:
	.long	449609894
	.long	1071357303
# i:
	.long	-386198195
	.long	1013619671
# i:
	.long	-668230202
	.long	1071543559
# i:
	.long	-206263604
	.long	1071609243
# i:
	.long	-284932727
	.long	1071463760
# i:
	.long	166225198
	.long	1012357207
# i:
	.long	1609872043
	.long	1071660212
# i:
	.long	-644535313
	.long	1071693897
# i:
	.long	-1019726774
	.long	1071570218
# i:
	.long	-2125385070
	.long	1008977799
# i:
	.long	-400104214
	.long	1071728033
# i:
	.long	-572953120
	.long	1071762640
# i:
	.long	1270106403
	.long	1071660674
# i:
	.long	1239353944
	.long	1015852801
# i:
	.long	-314168404
	.long	1071797739
# i:
	.long	900759964
	.long	1071833353
# i:
	.long	902484893
	.long	1071713903
# i:
	.long	220115819
	.long	1011211059
# i:
	.long	-724706900
	.long	1071869503
# i:
	.long	-183355943
	.long	1071906215
# i:
	.long	534765188
	.long	1071767132
# i:
	.long	-745399130
	.long	1015479279
# i:
	.long	-503633519
	.long	1071943514
# i:
	.long	416337072
	.long	1071981427
# i:
	.long	166957001
	.long	1071820361
# i:
	.long	92308678
	.long	-1132151883
# i:
	.long	1609068071
	.long	1072019980
# i:
	.long	-631730879
	.long	1072059203
# i:
	.long	-200929731
	.long	1071873589
# i:
	.long	-1373259337
	.long	1005986652
# i:
	.long	583113309
	.long	1072099128
# i:
	.long	1653605052
	.long	1072139785
# i:
	.long	-568884865
	.long	1071926818
# i:
	.long	443360739
	.long	-1132071826
# i:
	.long	1895393213
	.long	1072181209
# i:
	.long	-292842155
	.long	1072223435
# i:
	.long	-936898084
	.long	1071980047
# i:
	.long	-54955508
	.long	-1132344073
# i:
	.long	1765087757
	.long	1072266502
# i:
	.long	2098028906
	.long	1072310448
# i:
	.long	-1304958920
	.long	1072033276
# i:
	.long	-118321080
	.long	-1132249432
# i:
	.long	-26013747
	.long	1072355315
# i:
	.long	557014589
	.long	1072401149
# i:
	.long	-1673056783
	.long	1072086505
# i:
	.long	-2132880823
	.long	1012826407
# i:
	.long	-1442155714
	.long	1072447994
# i:
	.long	496662121
	.long	1072495902
# i:
	.long	-2041180987
	.long	1072139734
# i:
	.long	-1818831599
	.long	-1132554705
# i:
	.long	-85005601
	.long	1072544923
# i:
	.long	-200009241
	.long	1072595115
# i:
	.long	1885646516
	.long	1072192963
# i:
	.long	1378200785
	.long	1014481148
# i:
	.long	866941194
	.long	1072646537
# i:
	.long	1354444034
	.long	1072696249
# i:
	.long	1517501929
	.long	1072246192
# i:
	.long	-1558654911
	.long	-1134192439
# i:
	.long	-1698094412
	.long	1072723285
# i:
	.long	636795991
	.long	1072751037
# i:
	.long	1149363353
	.long	1072299421
# i:
	.long	-1805343731
	.long	-1132271457
# i:
	.long	71362771
	.long	1072779542
# i:
	.long	-557262310
	.long	1072808840
# i:
	.long	781241578
	.long	1072352650
# i:
	.long	-28654789
	.long	1012971739
# i:
	.long	849165784
	.long	1072838977
# i:
	.long	-1885539411
	.long	1072869997
# i:
	.long	413147352
	.long	1072405879
# i:
	.long	1138608110
	.long	1014058659
# i:
	.long	-488935276
	.long	1072901951
# i:
	.long	-997914310
	.long	1072934893
# i:
	.long	45091351
	.long	1072459108
# i:
	.long	-1041929855
	.long	1012725538
# i:
	.long	-745916969
	.long	1072968880
# i:
	.long	383294407
	.long	1073003975
# i:
	.long	-322915848
	.long	1072512336
# i:
	.long	-964055525
	.long	1016069530
# i:
	.long	1866594669
	.long	1073040243
# i:
	.long	298136082
	.long	1073077758
# i:
	.long	-690863791
	.long	1072565565
# i:
	.long	-936331932
	.long	-1134211313
# i:
	.long	375170529
	.long	1073116597
# i:
	.long	320277595
	.long	1073156845
# i:
	.long	-1058742181
	.long	1072618794
# i:
	.long	-1083740162
	.long	-1131418941
# i:
	.long	-790715450
	.long	1073198593
# i:
	.long	301722176
	.long	1073241943
# i:
	.long	-1426540898
	.long	1072672023
# i:
	.long	-425772297
	.long	1015778723
# i:
	.long	2035314513
	.long	1073287001
# i:
	.long	-1963695905
	.long	1073333887
# i:
	.long	1250358635
	.long	1072709250
# i:
	.long	-568462325
	.long	1015825985
# i:
	.long	-682821743
	.long	1073382730
# i:
	.long	1248423700
	.long	1073433673
# i:
	.long	-1080929940
	.long	1072735864
# i:
	.long	1779001007
	.long	-1131309825
# i:
	.long	-1281940922
	.long	1073486870
# i:
	.long	-2131707842
	.long	1073542494
# i:
	.long	882803130
	.long	1072762479
# i:
	.long	1020288019
	.long	1016888594
# i:
	.long	-958719951
	.long	1073600733
# i:
	.long	-1837300836
	.long	1073661797
# i:
	.long	-1448372170
	.long	1072789093
# i:
	.long	2073825627
	.long	-1131262470
# i:
	.long	-1527328718
	.long	1073725917
# i:
	.long	-840146164
	.long	1073767587
# i:
	.long	515483172
	.long	1072815708
# i:
	.long	1499382109
	.long	-1133509898
# i:
	.long	1454308082
	.long	1073803105
# i:
	.long	49954711
	.long	1073840584
# i:
	.long	-1815561176
	.long	1072842322
# i:
	.long	-971078283
	.long	-1131420874
# i:
	.long	-40206143
	.long	1073880203
# i:
	.long	411047360
	.long	1073922168
# i:
	.long	148433463
	.long	1072868937
# i:
	.long	1445467735
	.long	-1130772157
# i:
	.long	2103912092
	.long	1073966705
# i:
	.long	401456115
	.long	1074014076
# i:
	.long	2112503692
	.long	1072895551
# i:
	.long	-1863618021
	.long	1016779561
# i:
	.long	-261492252
	.long	1074064575
# i:
	.long	-1450110023
	.long	1074118543
# i:
	.long	-218314077
	.long	1072922165
# i:
	.long	-1959365388
	.long	-1130969897
# i:
	.long	2013358519
	.long	1074176368
# i:
	.long	-288367047
	.long	1074238499
# i:
	.long	1745918246
	.long	1072948780
# i:
	.long	1180052861
	.long	1016936798
# i:
	.long	832323330
	.long	1074305460
# i:
	.long	877206682
	.long	1074377859
# i:
	.long	-584730640
	.long	1072975394
# i:
	.long	-1775658295
	.long	-1130707960
# i:
	.long	95454026
	.long	1074456414
# i:
	.long	1683076841
	.long	1074541973
# i:
	.long	1379676920
	.long	1073002009
# i:
	.long	-1704134613
	.long	1016608557
# i:
	.long	1939591395
	.long	1074635549
# i:
	.long	143338003
	.long	1074738359
# i:
	.long	-950790827
	.long	1073028623
# i:
	.long	-646135433
	.long	-1135763231
# i:
	.long	411483223
	.long	1074821139
# i:
	.long	-1920886460
	.long	1074884157
# i:
	.long	1013803309
	.long	1073055238
# i:
	.long	-640598970
	.long	-1132614755
# i:
	.long	-1949425087
	.long	1074954554
# i:
	.long	-1626452289
	.long	1075033733
# i:
	.long	-1316472908
	.long	1073081852
# i:
	.long	-1132114063
	.long	-1132101120
# i:
	.long	1255067256
	.long	1075123478
# i:
	.long	-204668535
	.long	1075226089
# i:
	.long	648317220
	.long	1073108467
# i:
	.long	250640131
	.long	-1131029292
# i:
	.long	-1792607559
	.long	1075344590
# i:
	.long	-1174046711
	.long	1075483028
# i:
	.long	-1681759049
	.long	1073135081
# i:
	.long	1431839157
	.long	1015259063
# i:
	.long	-527120109
	.long	1075646955
# i:
	.long	-1608582454
	.long	1075841585
# i:
	.long	283234469
	.long	1073161696
# i:
	.long	1457183491
	.long	1015461435
# i:
	.long	571341337
	.long	1075962556
# i:
	.long	-72931176
	.long	1076114501
# i:
	.long	-2046635491
	.long	1073188310
# i:
	.long	1294903008
	.long	-1130375210
# i:
	.long	-801932215
	.long	1076311139
# i:
	.long	1246386717
	.long	1076575687
# i:
	.long	-81433280
	.long	1073214924
# i:
	.long	-1567819908
	.long	1016417950
# i:
	.long	641009942
	.long	1076919182
# i:
	.long	617878975
	.long	1077205974
# i:
	.long	1883874598
	.long	1073241539
# i:
	.long	-382253824
	.long	-1132190491
# i:
	.long	1232859890
	.long	1077699279
# i:
	.long	1816052796
	.long	1078342152
# i:
	.long	-445678638
	.long	1073268153
# i:
	.long	796836179
	.long	-1132341894
# i:
	.long	-90304780
	.long	1079602371
# i:
	.long	2080342825
	.long	1079292612
# i:
	.long	-214709318
	.long	1073279106
# i:
	.long	956939322
	.long	1016407415
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
	.align 32
	.type	constant_poly, @object
	.size	constant_poly, 480
constant_poly:
# h_word:
	.long	56512727
	.long	621640003
	.long	395589093
	.long	56512727
	.long	621640003
	.long	395589093
	.long	56512727
	.long	621640003
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	63161283
	.long	821096688
	.long	1010580540
	.long	252645135
	.long	63161283
	.long	821096688
	.long	1010580540
	.long	252645135
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	71582788
	.long	286331153
	.long	71582788
	.long	286331153
	.long	71582788
	.long	286331153
	.long	71582788
	.long	286331153
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	82595524
	.long	991146299
	.long	82595524
	.long	991146299
	.long	82595524
	.long	991146299
	.long	82595524
	.long	991146299
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	97612893
	.long	97612893
	.long	97612893
	.long	97612893
	.long	97612893
	.long	97612893
	.long	97612893
	.long	97612893
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	119304647
	.long	119304647
	.long	119304647
	.long	119304647
	.long	119304647
	.long	119304647
	.long	119304647
	.long	119304647
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	153391689
	.long	153391689
	.long	153391689
	.long	153391689
	.long	153391689
	.long	153391689
	.long	153391689
	.long	153391689
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	214748364
	.long	858993459
	.long	214748364
	.long	858993459
	.long	214748364
	.long	858993459
	.long	214748364
	.long	858993459
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	357913941
	.long	357913941
	.long	357913941
	.long	357913941
	.long	357913941
	.long	357913941
	.long	357913941
	.long	357913941
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
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
	.align 32
	.type	atan_blolo, @object
	.size	atan_blolo, 496
atan_blolo:
# i:
	.long	-1454912279
	.long	-1194211853
# i:
	.long	1014274118
	.long	-1196402365
# i:
	.long	645353979
	.long	956051242
# i:
	.long	-576445283
	.long	953437793
# i:
	.long	-1515043384
	.long	-1190724614
# i:
	.long	1741340261
	.long	-1193402728
# i:
	.long	1171337288
	.long	951942031
# i:
	.long	598554267
	.long	-1190882250
# i:
	.long	-155509321
	.long	-1191606906
# i:
	.long	-884121063
	.long	-1197749883
# i:
	.long	-1674017548
	.long	-1195114452
# i:
	.long	-1993320231
	.long	957402052
# i:
	.long	-16708683
	.long	-1191886709
# i:
	.long	-1249823368
	.long	-1190635761
# i:
	.long	2123788872
	.long	957701001
# i:
	.long	540143893
	.long	-1194519142
# i:
	.long	264488988
	.long	-1192699450
# i:
	.long	-2112228851
	.long	952151088
# i:
	.long	854444949
	.long	951280902
# i:
	.long	1496508354
	.long	-1191356496
# i:
	.long	-1851598570
	.long	952580135
# i:
	.long	-1631252116
	.long	-1188043251
# i:
	.long	1782287074
	.long	956541663
# i:
	.long	1907915836
	.long	-1198691839
# i:
	.long	-363149080
	.long	-1193184217
# i:
	.long	-143216635
	.long	955575634
# i:
	.long	1976741980
	.long	-1188668637
# i:
	.long	-1343573374
	.long	-1193654822
# i:
	.long	-1122577452
	.long	957542261
# i:
	.long	-385568734
	.long	957002711
# i:
	.long	1067402891
	.long	-1192335221
# i:
	.long	1906935843
	.long	-1188930058
# i:
	.long	1378607352
	.long	-1194556752
# i:
	.long	-2000983541
	.long	-1189957664
# i:
	.long	-2042561819
	.long	953474201
# i:
	.long	1080702011
	.long	-1191088186
# i:
	.long	309315404
	.long	956923980
# i:
	.long	-441412241
	.long	956633139
# i:
	.long	540741964
	.long	-1190081828
# i:
	.long	-109128853
	.long	955239111
# i:
	.long	-1256360012
	.long	-1188797248
# i:
	.long	759825374
	.long	957437939
# i:
	.long	325750238
	.long	-1188308695
# i:
	.long	56489651
	.long	957289748
# i:
	.long	433815099
	.long	-1188690196
# i:
	.long	-845040355
	.long	960172107
# i:
	.long	-125152756
	.long	959838977
# i:
	.long	423662669
	.long	-1189568815
# i:
	.long	953448779
	.long	-1189811982
# i:
	.long	1935154421
	.long	-1187123078
# i:
	.long	1920786700
	.long	-1187397073
# i:
	.long	652322832
	.long	-1192282158
# i:
	.long	1159028138
	.long	958022225
# i:
	.long	-1540552038
	.long	-1189974737
# i:
	.long	1039859621
	.long	-1187205237
# i:
	.long	-1448912847
	.long	957989232
# i:
	.long	-1370364749
	.long	-1188773197
# i:
	.long	233408791
	.long	-1193346179
# i:
	.long	448673595
	.long	-1189680071
# i:
	.long	1094036926
	.long	958159780
# i:
	.long	-686317984
	.long	-1190058350
# i:
	.long	-1127663789
	.long	959420085
	.comm	crlibm_second_step_taken,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	3167638333
	.long	1066008056
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
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL16-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.value	0x2
	.byte	0x4f
	.byte	0x9f
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL8-.Ltext0
	.long	.LVL9-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -588
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -588
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL12-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -588
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL18-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x80000000
	.long	.LVL22-.Ltext0
	.long	.LVL23-1-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL23-1-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL19-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL20-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL22-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL25-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x80000000
	.long	.LVL29-.Ltext0
	.long	.LVL30-1-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL30-1-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL26-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL27-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL29-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL32-.Ltext0
	.long	.LVL35-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL35-.Ltext0
	.long	.LVL36-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL36-.Ltext0
	.long	.LVL37-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL37-.Ltext0
	.long	.LVL38-1-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL33-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL34-.Ltext0
	.long	.LVL36-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL36-.Ltext0
	.long	.LVL37-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL37-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL39-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -148
	.long	0x0
	.long	0x0
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "scs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "scs_private.h"
	.file 8 "crlibm_private.h"
	.file 9 "atan.h"
	.file 10 "atan_fast.h"
	.section	.debug_info
	.long	0x770
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF95
	.byte	0xc
	.long	.LASF96
	.long	.LASF97
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
	.long	.LASF98
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
	.long	.LASF99
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0x485
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x3d
	.long	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x3d
	.long	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.byte	0x3e
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.byte	0x3e
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x15
	.long	.LASF59
	.byte	0x1
	.byte	0x3e
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.byte	0x3e
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x15
	.long	.LASF61
	.byte	0x1
	.byte	0x3e
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.byte	0x3f
	.long	0x2d8
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.byte	0x40
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0x41
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.byte	0x41
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x41
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x41
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x16
	.string	"X2"
	.byte	0x1
	.byte	0x41
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x16
	.string	"db"
	.byte	0x1
	.byte	0x42
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.byte	0x43
	.long	0x5a
	.long	.LLST0
	.uleb128 0x18
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.long	0x5a
	.long	.LLST1
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.long	0x2d8
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.long	0x4e9
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0xcf
	.long	0x2d8
	.long	.LLST2
	.uleb128 0x16
	.string	"sc1"
	.byte	0x1
	.byte	0xd0
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.byte	0xd1
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.byte	0xd2
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.byte	0xd3
	.long	0x5a
	.long	.LLST3
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	0x2d8
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0x54d
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0xaf
	.long	0x2d8
	.long	.LLST4
	.uleb128 0x16
	.string	"sc1"
	.byte	0x1
	.byte	0xb0
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.byte	0xb1
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.byte	0xb2
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.byte	0xb3
	.long	0x5a
	.long	.LLST5
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x2d8
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0x5b2
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0x91
	.long	0x2d8
	.long	.LLST6
	.uleb128 0x16
	.string	"sc1"
	.byte	0x1
	.byte	0x95
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.byte	0x96
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.byte	0x97
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.byte	0x98
	.long	0x5a
	.long	.LLST7
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF71
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF72
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF73
	.byte	0x7
	.byte	0x47
	.long	0x5d7
	.uleb128 0x1e
	.long	0x2df
	.uleb128 0x1d
	.long	.LASF74
	.byte	0x7
	.byte	0x48
	.long	0x5d7
	.uleb128 0x1d
	.long	.LASF75
	.byte	0x7
	.byte	0x49
	.long	0x5d7
	.uleb128 0x1d
	.long	.LASF76
	.byte	0x7
	.byte	0x4a
	.long	0x5d7
	.uleb128 0x1d
	.long	.LASF77
	.byte	0x7
	.byte	0x4b
	.long	0x5d7
	.uleb128 0x1d
	.long	.LASF78
	.byte	0x7
	.byte	0x4c
	.long	0x5d7
	.uleb128 0x1d
	.long	.LASF79
	.byte	0x7
	.byte	0x4d
	.long	0x5d7
	.uleb128 0x1d
	.long	.LASF80
	.byte	0x7
	.byte	0x4e
	.long	0x5d7
	.uleb128 0x1c
	.long	.LASF81
	.byte	0x8
	.byte	0x32
	.long	0x5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF82
	.byte	0x8
	.byte	0xca
	.long	0x641
	.uleb128 0x1e
	.long	0x2ea
	.uleb128 0x1d
	.long	.LASF83
	.byte	0x8
	.byte	0xce
	.long	0x641
	.uleb128 0x15
	.long	.LASF84
	.byte	0x8
	.byte	0xd2
	.long	0x641
	.byte	0x5
	.byte	0x3
	.long	scs_one
	.uleb128 0x1d
	.long	.LASF85
	.byte	0x8
	.byte	0xd6
	.long	0x641
	.uleb128 0x1d
	.long	.LASF86
	.byte	0x8
	.byte	0xda
	.long	0x641
	.uleb128 0x5
	.long	0x337
	.long	0x688
	.uleb128 0x6
	.long	0x30
	.byte	0x9
	.byte	0x0
	.uleb128 0x15
	.long	.LASF87
	.byte	0x9
	.byte	0x5
	.long	0x699
	.byte	0x5
	.byte	0x3
	.long	constant_poly
	.uleb128 0x1e
	.long	0x678
	.uleb128 0x5
	.long	0x2df
	.long	0x6ae
	.uleb128 0x6
	.long	0x30
	.byte	0x3d
	.byte	0x0
	.uleb128 0x15
	.long	.LASF88
	.byte	0x9
	.byte	0x7d
	.long	0x6bf
	.byte	0x5
	.byte	0x3
	.long	atan_blolo
	.uleb128 0x1e
	.long	0x69e
	.uleb128 0x1d
	.long	.LASF89
	.byte	0xa
	.byte	0xb
	.long	0x5d7
	.uleb128 0x1d
	.long	.LASF90
	.byte	0xa
	.byte	0xb
	.long	0x5d7
	.uleb128 0x5
	.long	0x2d8
	.long	0x6ea
	.uleb128 0x6
	.long	0x30
	.byte	0x3
	.byte	0x0
	.uleb128 0x1d
	.long	.LASF91
	.byte	0xa
	.byte	0x10
	.long	0x6f5
	.uleb128 0x1e
	.long	0x6da
	.uleb128 0x1d
	.long	.LASF92
	.byte	0xa
	.byte	0x16
	.long	0x705
	.uleb128 0x1e
	.long	0x6da
	.uleb128 0x1d
	.long	.LASF93
	.byte	0xa
	.byte	0x1d
	.long	0x715
	.uleb128 0x1e
	.long	0x6da
	.uleb128 0x5
	.long	0x2df
	.long	0x730
	.uleb128 0x6
	.long	0x30
	.byte	0x3d
	.uleb128 0x6
	.long	0x30
	.byte	0x3
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF94
	.byte	0xa
	.value	0x169
	.long	0x742
	.byte	0x5
	.byte	0x3
	.long	arctan_table
	.uleb128 0x1e
	.long	0x71a
	.uleb128 0x1c
	.long	.LASF71
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF72
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.long	.LASF81
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
	.uleb128 0x16
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.long	0x68
	.value	0x2
	.long	.Ldebug_info0
	.long	0x774
	.long	0x36e
	.string	"scs_atan"
	.long	0x485
	.string	"scs_atan_ru"
	.long	0x4e9
	.string	"scs_atan_rd"
	.long	0x54d
	.string	"scs_atan_rn"
	.long	0x761
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x9f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x774
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
.LASF10:
	.string	"__off_t"
.LASF82:
	.string	"scs_zer"
.LASF15:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_chain"
.LASF83:
	.string	"scs_half"
.LASF8:
	.string	"size_t"
.LASF77:
	.string	"radix_rng_double"
.LASF33:
	.string	"_shortbuf"
.LASF70:
	.string	"scs_atan_rn"
.LASF79:
	.string	"max_double"
.LASF55:
	.string	"scs_t"
.LASF68:
	.string	"scs_atan_ru"
.LASF21:
	.string	"_IO_buf_base"
.LASF7:
	.string	"long long unsigned int"
.LASF62:
	.string	"test"
.LASF95:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF59:
	.string	"atanblo"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF53:
	.string	"sign"
.LASF88:
	.string	"atan_blolo"
.LASF11:
	.string	"long int"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF9:
	.string	"__quad_t"
.LASF48:
	.string	"double"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF86:
	.string	"scs_sixinv"
.LASF75:
	.string	"radix_mone_double"
.LASF85:
	.string	"scs_two"
.LASF57:
	.string	"atanbhihi"
.LASF44:
	.string	"_IO_marker"
.LASF71:
	.string	"stdin"
.LASF0:
	.string	"unsigned int"
.LASF97:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF3:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF80:
	.string	"min_double"
.LASF46:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF23:
	.string	"_IO_save_base"
.LASF66:
	.string	"denom2_scs"
.LASF51:
	.string	"exception"
.LASF58:
	.string	"atanbhilo"
.LASF81:
	.string	"crlibm_second_step_taken"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF72:
	.string	"stdout"
.LASF50:
	.string	"h_word"
.LASF64:
	.string	"X_scs"
.LASF20:
	.string	"_IO_write_end"
.LASF92:
	.string	"epsilon"
.LASF98:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF96:
	.string	"atan.c"
.LASF47:
	.string	"_pos"
.LASF60:
	.string	"atanbhi"
.LASF26:
	.string	"_markers"
.LASF76:
	.string	"radix_mtwo_double"
.LASF54:
	.string	"scs_ptr"
.LASF73:
	.string	"radix_one_double"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF32:
	.string	"_vtable_offset"
.LASF49:
	.string	"db_number"
.LASF91:
	.string	"rncst"
.LASF13:
	.string	"char"
.LASF87:
	.string	"constant_poly"
.LASF61:
	.string	"atanb"
.LASF52:
	.string	"index"
.LASF65:
	.string	"denom1_scs"
.LASF90:
	.string	"HALFPI_TO_PLUS_INFINITY"
.LASF45:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF78:
	.string	"radix_mrng_double"
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
.LASF42:
	.string	"_unused2"
.LASF94:
	.string	"arctan_table"
.LASF67:
	.string	"poly_scs"
.LASF56:
	.string	"res_scs"
.LASF24:
	.string	"_IO_backup_base"
.LASF69:
	.string	"scs_atan_rd"
.LASF99:
	.string	"scs_atan"
.LASF89:
	.string	"HALFPI"
.LASF74:
	.string	"radix_two_double"
.LASF18:
	.string	"_IO_write_base"
.LASF63:
	.string	"bsc_ptr"
.LASF84:
	.string	"scs_one"
.LASF93:
	.string	"coef_poly"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
