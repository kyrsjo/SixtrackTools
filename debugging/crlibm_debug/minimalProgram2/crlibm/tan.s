	.file	"tan.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H tan.c
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
.globl scs_tan
	.type	scs_tan, @function
scs_tan:
.LFB7:
	.file 1 "tan.c"
	.loc 1 49 0
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
	subl	$140, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	.loc 1 54 0
	movl	8(%ebp), %eax	# x_scs,
	movl	%eax, 4(%esp)	#,
	leal	-120(%ebp), %eax	#, tmp127
	movl	%eax, (%esp)	# tmp127,
	call	scs_square@PLT	#
	.loc 1 58 0
	movl	8(%ebp), %eax	# x_scs,
	cmpl	$100100999, 36(%eax)	#, <variable>.exception.i
	jg	.L2	#,
	.loc 1 59 0
	leal	-120(%ebp), %eax	#,
	movl	%eax, -124(%ebp)	#, %sfp
	movl	%eax, 8(%esp)	#,
	leal	cste_poly@GOTOFF(%ebx), %edi	#, tmp129
	movl	%edi, 4(%esp)	# tmp129,
	leal	-72(%ebp), %esi	#, tmp130
	movl	%esi, (%esp)	# tmp130,
	call	scs_mul@PLT	#
	.loc 1 60 0
	movl	%esi, 8(%esp)	# tmp130,
	leal	48(%edi), %eax	#, tmp132
	movl	%eax, 4(%esp)	# tmp132,
	movl	%esi, (%esp)	# tmp130,
	call	scs_add@PLT	#
	.loc 1 61 0
	movl	-124(%ebp), %eax	# %sfp,
	movl	%eax, 8(%esp)	#,
	movl	%esi, 4(%esp)	# tmp130,
	movl	%esi, (%esp)	# tmp130,
	call	scs_mul@PLT	#
	.loc 1 62 0
	movl	%esi, 8(%esp)	# tmp130,
	leal	96(%edi), %eax	#, tmp138
	movl	%eax, 4(%esp)	# tmp138,
	movl	%esi, (%esp)	# tmp130,
	call	scs_add@PLT	#
	.loc 1 63 0
	movl	-124(%ebp), %eax	# %sfp,
	movl	%eax, 8(%esp)	#,
	movl	%esi, 4(%esp)	# tmp130,
	movl	%esi, (%esp)	# tmp130,
	call	scs_mul@PLT	#
	.loc 1 64 0
	movl	%esi, 8(%esp)	# tmp130,
	movl	8(%ebp), %eax	# x_scs,
	movl	%eax, 4(%esp)	#,
	movl	%esi, (%esp)	# tmp130,
	call	scs_mul@PLT	#
	.loc 1 65 0
	movl	%esi, 8(%esp)	# tmp130,
	movl	8(%ebp), %eax	# x_scs,
	movl	%eax, 4(%esp)	#,
	movl	%eax, (%esp)	#,
	call	scs_add@PLT	#
	.loc 1 66 0
	jmp	.L5	#
.L2:
	.loc 1 72 0
	leal	-120(%ebp), %eax	#, tmp146
	movl	%eax, 8(%esp)	# tmp146,
	leal	constant_poly@GOTOFF(%ebx), %esi	#, tmp147
	movl	%esi, 4(%esp)	# tmp147,
	leal	-72(%ebp), %eax	#, tmp148
	movl	%eax, (%esp)	# tmp148,
	call	scs_mul@PLT	#
.LVL1:
	leal	48(%esi), %edi	#, ivtmp.41
	.loc 1 49 0
	leal	1584(%esi), %esi	#,
	movl	%esi, -124(%ebp)	#, %sfp
	.loc 1 75 0
	leal	-72(%ebp), %esi	#, tmp157
	.loc 1 76 0
	leal	-120(%ebp), %eax	#,
	movl	%eax, -128(%ebp)	#, %sfp
.LVL2:
.L4:
	.loc 1 75 0
	movl	%esi, 8(%esp)	# tmp157,
	movl	%edi, 4(%esp)	# ivtmp.41,
	movl	%esi, (%esp)	# tmp157,
	call	scs_add@PLT	#
	.loc 1 76 0
	movl	-128(%ebp), %eax	# %sfp,
	movl	%eax, 8(%esp)	#,
	movl	%esi, 4(%esp)	# tmp157,
	movl	%esi, (%esp)	# tmp157,
	call	scs_mul@PLT	#
	addl	$48, %edi	#, ivtmp.41
	.loc 1 74 0
	cmpl	-124(%ebp), %edi	# %sfp, ivtmp.41
	jne	.L4	#,
	.loc 1 79 0
	movl	8(%ebp), %eax	# x_scs,
	movl	%eax, 8(%esp)	#,
	leal	-72(%ebp), %esi	#, tmp154
	movl	%esi, 4(%esp)	# tmp154,
	movl	%esi, (%esp)	# tmp154,
	call	scs_mul@PLT	#
	.loc 1 80 0
	movl	%esi, 8(%esp)	# tmp154,
	movl	8(%ebp), %eax	# x_scs,
	movl	%eax, 4(%esp)	#,
	movl	%eax, (%esp)	#,
	call	scs_add@PLT	#
.L5:
	.loc 1 85 0
	addl	$140, %esp	#,
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
	.size	scs_tan, .-scs_tan
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"ERREUR: %d is not a valid value in su_tan \n"
	.text
.globl scs_tan_rz
	.type	scs_tan_rz, @function
scs_tan_rz:
.LFB11:
	.loc 1 199 0
	.cfi_startproc
.LVL3:
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
	.loc 1 204 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp63
	movl	%esi, (%esp)	# tmp63,
	call	scs_set_d@PLT	#
	.loc 1 205 0
	movl	%esi, 4(%esp)	# tmp63,
	leal	-104(%ebp), %eax	#, tmp65
	movl	%eax, (%esp)	# tmp65,
	call	rem_pio2_scs@PLT	#
.LVL4:
	.loc 1 208 0
	andl	$1, %eax	#, N.58
.LVL5:
	je	.L9	#,
	cmpl	$1, %eax	#, N.58
	jne	.L13	#,
	.p2align 4,,5
	jmp	.L14	#
.L9:
	.loc 1 210 0
	leal	-104(%ebp), %esi	#, tmp66
	movl	%esi, (%esp)	# tmp66,
	call	scs_tan@PLT	#
.LVL6:
	.loc 1 211 0
	movl	%esi, 4(%esp)	# tmp66,
	leal	-112(%ebp), %eax	#, tmp68
	movl	%eax, (%esp)	# tmp68,
	call	scs_get_d_zero@PLT	#
.LVL7:
	.loc 1 212 0
	fldl	-112(%ebp)	# resd
	jmp	.L11	#
.LVL8:
.L14:
	.loc 1 215 0
	leal	-104(%ebp), %esi	#, tmp69
	movl	%esi, (%esp)	# tmp69,
	call	scs_tan@PLT	#
.LVL9:
	.loc 1 216 0
	movl	%esi, 4(%esp)	# tmp69,
	movl	%esi, (%esp)	# tmp69,
	call	scs_inv@PLT	#
	.loc 1 217 0
	movl	%esi, 4(%esp)	# tmp69,
	leal	-112(%ebp), %eax	#, tmp73
	movl	%eax, (%esp)	# tmp73,
	call	scs_get_d_zero@PLT	#
.LVL10:
	.loc 1 218 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L11	#
.LVL11:
.L13:
	.loc 1 221 0
	movl	%eax, 8(%esp)	# N.58,
	leal	.LC0@GOTOFF(%ebx), %eax	#, tmp75
.LVL12:
	movl	%eax, 4(%esp)	# tmp75,
	movl	stderr@GOT(%ebx), %eax	#, tmp76
	movl	(%eax), %eax	# stderr, stderr
	movl	%eax, (%esp)	# stderr,
	call	fprintf@PLT	#
.LVL13:
	.loc 1 222 0
	movl	$1, (%esp)	#,
	call	exit@PLT	#
.LVL14:
.L11:
	.loc 1 225 0
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
.LFE11:
	.size	scs_tan_rz, .-scs_tan_rz
.globl scs_tan_ru
	.type	scs_tan_ru, @function
scs_tan_ru:
.LFB10:
	.loc 1 166 0
	.cfi_startproc
.LVL15:
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
	.loc 1 171 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp63
	movl	%esi, (%esp)	# tmp63,
	call	scs_set_d@PLT	#
	.loc 1 172 0
	movl	%esi, 4(%esp)	# tmp63,
	leal	-104(%ebp), %eax	#, tmp65
	movl	%eax, (%esp)	# tmp65,
	call	rem_pio2_scs@PLT	#
.LVL16:
	.loc 1 175 0
	andl	$1, %eax	#, N.71
.LVL17:
	je	.L17	#,
	cmpl	$1, %eax	#, N.71
	jne	.L21	#,
	.p2align 4,,5
	jmp	.L22	#
.L17:
	.loc 1 177 0
	leal	-104(%ebp), %esi	#, tmp66
	movl	%esi, (%esp)	# tmp66,
	call	scs_tan@PLT	#
.LVL18:
	.loc 1 178 0
	movl	%esi, 4(%esp)	# tmp66,
	leal	-112(%ebp), %eax	#, tmp68
	movl	%eax, (%esp)	# tmp68,
	call	scs_get_d_pinf@PLT	#
.LVL19:
	.loc 1 179 0
	fldl	-112(%ebp)	# resd
	jmp	.L19	#
.LVL20:
.L22:
	.loc 1 182 0
	leal	-104(%ebp), %esi	#, tmp69
	movl	%esi, (%esp)	# tmp69,
	call	scs_tan@PLT	#
.LVL21:
	.loc 1 183 0
	movl	%esi, 4(%esp)	# tmp69,
	movl	%esi, (%esp)	# tmp69,
	call	scs_inv@PLT	#
	.loc 1 184 0
	movl	%esi, 4(%esp)	# tmp69,
	leal	-112(%ebp), %eax	#, tmp73
	movl	%eax, (%esp)	# tmp73,
	call	scs_get_d_minf@PLT	#
.LVL22:
	.loc 1 185 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L19	#
.LVL23:
.L21:
	.loc 1 188 0
	movl	%eax, 8(%esp)	# N.71,
	leal	.LC0@GOTOFF(%ebx), %eax	#, tmp75
.LVL24:
	movl	%eax, 4(%esp)	# tmp75,
	movl	stderr@GOT(%ebx), %eax	#, tmp76
	movl	(%eax), %eax	# stderr, stderr
	movl	%eax, (%esp)	# stderr,
	call	fprintf@PLT	#
.LVL25:
	.loc 1 189 0
	movl	$1, (%esp)	#,
	call	exit@PLT	#
.LVL26:
.L19:
	.loc 1 192 0
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
	.size	scs_tan_ru, .-scs_tan_ru
	.section	.rodata.str1.4
	.align 4
.LC1:
	.string	"ERREUR: %d is not a valid value in tan_rd \n"
	.text
.globl scs_tan_rd
	.type	scs_tan_rd, @function
scs_tan_rd:
.LFB9:
	.loc 1 132 0
	.cfi_startproc
.LVL27:
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
	.loc 1 137 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp63
	movl	%esi, (%esp)	# tmp63,
	call	scs_set_d@PLT	#
	.loc 1 138 0
	movl	%esi, 4(%esp)	# tmp63,
	leal	-104(%ebp), %eax	#, tmp65
	movl	%eax, (%esp)	# tmp65,
	call	rem_pio2_scs@PLT	#
.LVL28:
	.loc 1 141 0
	andl	$1, %eax	#, N.84
.LVL29:
	je	.L25	#,
	cmpl	$1, %eax	#, N.84
	jne	.L29	#,
	.p2align 4,,5
	jmp	.L30	#
.L25:
	.loc 1 143 0
	leal	-104(%ebp), %esi	#, tmp66
	movl	%esi, (%esp)	# tmp66,
	call	scs_tan@PLT	#
.LVL30:
	.loc 1 144 0
	movl	%esi, 4(%esp)	# tmp66,
	leal	-112(%ebp), %eax	#, tmp68
	movl	%eax, (%esp)	# tmp68,
	call	scs_get_d_minf@PLT	#
.LVL31:
	.loc 1 145 0
	fldl	-112(%ebp)	# resd
	jmp	.L27	#
.LVL32:
.L30:
	.loc 1 148 0
	leal	-104(%ebp), %esi	#, tmp69
	movl	%esi, (%esp)	# tmp69,
	call	scs_tan@PLT	#
.LVL33:
	.loc 1 149 0
	movl	%esi, 4(%esp)	# tmp69,
	movl	%esi, (%esp)	# tmp69,
	call	scs_inv@PLT	#
	.loc 1 150 0
	movl	%esi, 4(%esp)	# tmp69,
	leal	-112(%ebp), %eax	#, tmp73
	movl	%eax, (%esp)	# tmp73,
	call	scs_get_d_pinf@PLT	#
.LVL34:
	.loc 1 151 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L27	#
.LVL35:
.L29:
	.loc 1 154 0
	movl	%eax, 8(%esp)	# N.84,
	leal	.LC1@GOTOFF(%ebx), %eax	#, tmp75
.LVL36:
	movl	%eax, 4(%esp)	# tmp75,
	movl	stderr@GOT(%ebx), %eax	#, tmp76
	movl	(%eax), %eax	# stderr, stderr
	movl	%eax, (%esp)	# stderr,
	call	fprintf@PLT	#
.LVL37:
	.loc 1 155 0
	movl	$1, (%esp)	#,
	call	exit@PLT	#
.LVL38:
.L27:
	.loc 1 158 0
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
	.size	scs_tan_rd, .-scs_tan_rd
	.section	.rodata.str1.4
	.align 4
.LC2:
	.string	"ERREUR: %d is not a valid value in sn_tan \n"
	.text
.globl scs_tan_rn
	.type	scs_tan_rn, @function
scs_tan_rn:
.LFB8:
	.loc 1 94 0
	.cfi_startproc
.LVL39:
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
	.loc 1 104 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp63
	movl	%esi, (%esp)	# tmp63,
	call	scs_set_d@PLT	#
	.loc 1 105 0
	movl	%esi, 4(%esp)	# tmp63,
	leal	-104(%ebp), %eax	#, tmp65
	movl	%eax, (%esp)	# tmp65,
	call	rem_pio2_scs@PLT	#
.LVL40:
	.loc 1 108 0
	andl	$1, %eax	#, N.97
.LVL41:
	je	.L33	#,
	cmpl	$1, %eax	#, N.97
	jne	.L37	#,
	.p2align 4,,5
	jmp	.L38	#
.L33:
	.loc 1 110 0
	leal	-104(%ebp), %esi	#, tmp66
	movl	%esi, (%esp)	# tmp66,
	call	scs_tan@PLT	#
.LVL42:
	.loc 1 111 0
	movl	%esi, 4(%esp)	# tmp66,
	leal	-112(%ebp), %eax	#, tmp68
	movl	%eax, (%esp)	# tmp68,
	call	scs_get_d@PLT	#
.LVL43:
	.loc 1 112 0
	fldl	-112(%ebp)	# resd
	jmp	.L35	#
.LVL44:
.L38:
	.loc 1 115 0
	leal	-104(%ebp), %esi	#, tmp69
	movl	%esi, (%esp)	# tmp69,
	call	scs_tan@PLT	#
.LVL45:
	.loc 1 116 0
	movl	%esi, 4(%esp)	# tmp69,
	movl	%esi, (%esp)	# tmp69,
	call	scs_inv@PLT	#
	.loc 1 117 0
	movl	%esi, 4(%esp)	# tmp69,
	leal	-112(%ebp), %eax	#, tmp73
	movl	%eax, (%esp)	# tmp73,
	call	scs_get_d@PLT	#
.LVL46:
	.loc 1 118 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L35	#
.LVL47:
.L37:
	.loc 1 121 0
	movl	%eax, 8(%esp)	# N.97,
	leal	.LC2@GOTOFF(%ebx), %eax	#, tmp75
.LVL48:
	movl	%eax, 4(%esp)	# tmp75,
	movl	stderr@GOT(%ebx), %eax	#, tmp76
	movl	(%eax), %eax	# stderr, stderr
	movl	%eax, (%esp)	# stderr,
	call	fprintf@PLT	#
.LVL49:
	fldz
.LVL50:
.L35:
	.loc 1 124 0
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
.LFE8:
	.size	scs_tan_rn, .-scs_tan_rn
	.section	.rodata
	.align 32
	.type	cste_poly, @object
	.size	cste_poly, 144
cste_poly:
# h_word:
	.long	57947971
	.long	487444701
	.long	57947971
	.long	487444701
	.long	57947971
	.long	487444701
	.long	57947971
	.long	487444701
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	143165576
	.long	572662306
	.long	143165576
	.long	572662306
	.long	143165576
	.long	572662306
	.long	143165576
	.long	572662306
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
	.long	1
	.align 32
	.type	constant_poly, @object
	.size	constant_poly, 1632
constant_poly:
# h_word:
	.long	1849105
	.long	174470838
	.long	142896235
	.long	194871276
	.long	698421391
	.long	540411474
	.long	893726418
	.long	922444074
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	1
# h_word:
	.long	7649781
	.long	63530693
	.long	829337600
	.long	401528277
	.long	714020295
	.long	193043035
	.long	237518830
	.long	530679284
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	-1
# h_word:
	.long	19620113
	.long	172548684
	.long	991924079
	.long	359843406
	.long	574161720
	.long	750633666
	.long	753820095
	.long	89696592
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	1
# h_word:
	.long	28675284
	.long	27695652
	.long	252386338
	.long	385046208
	.long	1033655318
	.long	194362661
	.long	960320658
	.long	524193162
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	-1
# h_word:
	.long	39361449
	.long	822543916
	.long	521982825
	.long	482541797
	.long	754639123
	.long	298040741
	.long	480406305
	.long	648308899
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	1
# h_word:
	.long	22327398
	.long	666342448
	.long	851695510
	.long	175557172
	.long	715879615
	.long	222568143
	.long	681014700
	.long	896400057
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	-1
# h_word:
	.long	47183772
	.long	583802118
	.long	284210163
	.long	959048554
	.long	804205505
	.long	217268852
	.long	288056657
	.long	140897117
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	1
# h_word:
	.long	45489911
	.long	370532786
	.long	720646687
	.long	856095739
	.long	564073333
	.long	1040103545
	.long	41954313
	.long	272571091
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	1
# h_word:
	.long	152816790
	.long	52294321
	.long	651388184
	.long	350018978
	.long	178447225
	.long	450065347
	.long	502408296
	.long	989799359
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	1
# h_word:
	.long	357665616
	.long	393786321
	.long	49147736
	.long	155644349
	.long	450314400
	.long	656927356
	.long	225415158
	.long	682638564
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	1
# h_word:
	.long	890324845
	.long	980026428
	.long	36124160
	.long	632428858
	.long	223322341
	.long	602885799
	.long	74075360
	.long	547407281
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	1
# h_word:
	.long	2
	.long	46626656
	.long	1020580076
	.long	527016193
	.long	704147762
	.long	94269821
	.long	20501854
	.long	616072651
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	5
	.long	45823783
	.long	92485141
	.long	814649590
	.long	274634976
	.long	595663410
	.long	881814534
	.long	711868940
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	12
	.long	474726734
	.long	968014309
	.long	201576087
	.long	768900348
	.long	689452010
	.long	513672716
	.long	211894840
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	30
	.long	751349648
	.long	354591227
	.long	670002875
	.long	483093909
	.long	951890035
	.long	723074162
	.long	880498116
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	75
	.long	803789158
	.long	966060604
	.long	662127590
	.long	76405935
	.long	1014118603
	.long	859180285
	.long	42381443
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	186
	.long	968674055
	.long	651826053
	.long	1003104867
	.long	82420492
	.long	956778096
	.long	277747447
	.long	767832715
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	461
	.long	174553380
	.long	259891806
	.long	424187599
	.long	569421061
	.long	683144602
	.long	783574605
	.long	914193028
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	1137
	.long	937399746
	.long	510861593
	.long	794749437
	.long	818744964
	.long	908729315
	.long	668805088
	.long	624535532
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	2807
	.long	632589980
	.long	702735876
	.long	67823349
	.long	690268976
	.long	312911056
	.long	439516517
	.long	1038743257
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	6927
	.long	481622921
	.long	248902322
	.long	264472229
	.long	884916917
	.long	1048846924
	.long	265456696
	.long	788680191
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	17092
	.long	852728416
	.long	336580499
	.long	503395107
	.long	633102312
	.long	676229095
	.long	25537114
	.long	244547153
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	42174
	.long	836584612
	.long	748298630
	.long	884018684
	.long	731288232
	.long	761374750
	.long	532709936
	.long	881597713
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	104062
	.long	103543486
	.long	747251176
	.long	508377218
	.long	774673082
	.long	507087055
	.long	551771035
	.long	193199749
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	256762
	.long	999975091
	.long	138630519
	.long	914126923
	.long	46063293
	.long	281984763
	.long	243544049
	.long	700531532
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	633537
	.long	151022824
	.long	579935018
	.long	500481214
	.long	63131808
	.long	53025047
	.long	961458880
	.long	615964597
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	1563190
	.long	290119032
	.long	728374675
	.long	402409161
	.long	1002054353
	.long	965516567
	.long	430711539
	.long	545208220
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	3857018
	.long	118144751
	.long	918525979
	.long	316912837
	.long	745498703
	.long	644992374
	.long	394966662
	.long	228258409
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	9516826
	.long	734889081
	.long	128821473
	.long	854194342
	.long	546689675
	.long	906203575
	.long	610802072
	.long	88327764
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	23482184
	.long	548422631
	.long	858614714
	.long	309813334
	.long	410529935
	.long	697801543
	.long	71852939
	.long	951998003
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	57947971
	.long	487444701
	.long	57947971
	.long	487444701
	.long	67461616
	.long	622558374
	.long	155139052
	.long	616968163
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	143165576
	.long	572662306
	.long	143165576
	.long	572662306
	.long	143155054
	.long	588264164
	.long	1037657337
	.long	53832301
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
	.long	357913943
	.long	290727956
	.long	427806413
	.long	825889411
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
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
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
.LFB12:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE12:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL14-.Ltext0
	.long	.LFE11-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	.LVL5-.Ltext0
	.long	.LVL6-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL8-.Ltext0
	.long	.LVL9-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL12-.Ltext0
	.long	.LVL13-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL19-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL22-.Ltext0
	.long	.LVL23-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL26-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL16-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	.LVL17-.Ltext0
	.long	.LVL18-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL20-.Ltext0
	.long	.LVL21-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL23-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL24-.Ltext0
	.long	.LVL25-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL31-.Ltext0
	.long	.LVL32-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL34-.Ltext0
	.long	.LVL35-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL38-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	.LVL29-.Ltext0
	.long	.LVL30-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL32-.Ltext0
	.long	.LVL33-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL35-.Ltext0
	.long	.LVL36-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL36-.Ltext0
	.long	.LVL37-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL43-.Ltext0
	.long	.LVL44-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL46-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL50-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL40-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	.LVL41-.Ltext0
	.long	.LVL42-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL44-.Ltext0
	.long	.LVL45-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL47-.Ltext0
	.long	.LVL48-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL48-.Ltext0
	.long	.LVL49-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "scs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "scs_private.h"
	.file 8 "crlibm_private.h"
	.file 9 "tan.h"
	.file 10 "coefpi2.h"
	.section	.debug_info
	.long	0x6bf
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF85
	.byte	0xc
	.long	.LASF86
	.long	.LASF87
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
	.long	.LASF88
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
	.long	.LASF89
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0x3be
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x31
	.long	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF56
	.byte	0x1
	.byte	0x32
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.string	"x2"
	.byte	0x1
	.byte	0x33
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x34
	.long	0x5a
	.long	.LLST0
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	0x2d8
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.long	0x41f
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0xc7
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"sc1"
	.byte	0x1
	.byte	0xc8
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"sc2"
	.byte	0x1
	.byte	0xc8
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0xc9
	.long	0x2d8
	.long	.LLST1
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0xca
	.long	0x5a
	.long	.LLST2
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	0x2d8
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.long	0x480
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0xa6
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"sc1"
	.byte	0x1
	.byte	0xa7
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"sc2"
	.byte	0x1
	.byte	0xa7
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0xa8
	.long	0x2d8
	.long	.LLST3
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0xa9
	.long	0x5a
	.long	.LLST4
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.long	0x2d8
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0x4e1
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0x84
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"sc1"
	.byte	0x1
	.byte	0x85
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"sc2"
	.byte	0x1
	.byte	0x85
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0x86
	.long	0x2d8
	.long	.LLST5
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0x87
	.long	0x5a
	.long	.LLST6
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0x2d8
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0x542
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0x5e
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"sc1"
	.byte	0x1
	.byte	0x5f
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"sc2"
	.byte	0x1
	.byte	0x60
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0x61
	.long	0x2d8
	.long	.LLST7
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0x62
	.long	0x5a
	.long	.LLST8
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x6
	.byte	0xa7
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x7
	.byte	0x47
	.long	0x574
	.uleb128 0x1c
	.long	0x2df
	.uleb128 0x1b
	.long	.LASF67
	.byte	0x7
	.byte	0x48
	.long	0x574
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x7
	.byte	0x49
	.long	0x574
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x7
	.byte	0x4a
	.long	0x574
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x7
	.byte	0x4b
	.long	0x574
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x7
	.byte	0x4c
	.long	0x574
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x7
	.byte	0x4d
	.long	0x574
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x7
	.byte	0x4e
	.long	0x574
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x8
	.byte	0xca
	.long	0x5d1
	.uleb128 0x1c
	.long	0x2ea
	.uleb128 0x1b
	.long	.LASF75
	.byte	0x8
	.byte	0xce
	.long	0x5d1
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x8
	.byte	0xd2
	.long	0x5d1
	.uleb128 0x1b
	.long	.LASF77
	.byte	0x8
	.byte	0xd6
	.long	0x5d1
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x8
	.byte	0xda
	.long	0x5d1
	.uleb128 0x5
	.long	0x337
	.long	0x612
	.uleb128 0x6
	.long	0x30
	.byte	0x2
	.byte	0x0
	.uleb128 0x14
	.long	.LASF79
	.byte	0x9
	.byte	0x4
	.long	0x623
	.byte	0x5
	.byte	0x3
	.long	cste_poly
	.uleb128 0x1c
	.long	0x602
	.uleb128 0x5
	.long	0x337
	.long	0x638
	.uleb128 0x6
	.long	0x30
	.byte	0x21
	.byte	0x0
	.uleb128 0x14
	.long	.LASF80
	.byte	0x9
	.byte	0x18
	.long	0x649
	.byte	0x5
	.byte	0x3
	.long	constant_poly
	.uleb128 0x1c
	.long	0x628
	.uleb128 0x5
	.long	0x5a
	.long	0x65e
	.uleb128 0x6
	.long	0x30
	.byte	0x2f
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF81
	.byte	0xa
	.byte	0xb
	.long	0x669
	.uleb128 0x1c
	.long	0x64e
	.uleb128 0x1b
	.long	.LASF82
	.byte	0xa
	.byte	0x1f
	.long	0x679
	.uleb128 0x1c
	.long	0x337
	.uleb128 0x1b
	.long	.LASF83
	.byte	0xa
	.byte	0x29
	.long	0x679
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x6
	.byte	0xa7
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF84
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.long	0x73
	.value	0x2
	.long	.Ldebug_info0
	.long	0x6c3
	.long	0x36e
	.string	"scs_tan"
	.long	0x3be
	.string	"scs_tan_rz"
	.long	0x41f
	.string	"scs_tan_ru"
	.long	0x480
	.string	"scs_tan_rd"
	.long	0x4e1
	.string	"scs_tan_rn"
	.long	0x6b0
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x9f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x6c3
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
.LASF82:
	.string	"Pio2"
.LASF49:
	.string	"db_number"
.LASF48:
	.string	"double"
.LASF55:
	.string	"scs_t"
.LASF78:
	.string	"scs_sixinv"
.LASF68:
	.string	"radix_mone_double"
.LASF25:
	.string	"_IO_save_end"
.LASF83:
	.string	"Pio4"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF61:
	.string	"scs_tan_rd"
.LASF35:
	.string	"_offset"
.LASF58:
	.string	"resd"
.LASF62:
	.string	"scs_tan_rn"
.LASF19:
	.string	"_IO_write_ptr"
.LASF14:
	.string	"_flags"
.LASF60:
	.string	"scs_tan_ru"
.LASF21:
	.string	"_IO_buf_base"
.LASF59:
	.string	"scs_tan_rz"
.LASF26:
	.string	"_markers"
.LASF16:
	.string	"_IO_read_end"
.LASF72:
	.string	"max_double"
.LASF52:
	.string	"index"
.LASF79:
	.string	"cste_poly"
.LASF51:
	.string	"exception"
.LASF86:
	.string	"tan.c"
.LASF65:
	.string	"stderr"
.LASF6:
	.string	"long long int"
.LASF63:
	.string	"stdin"
.LASF34:
	.string	"_lock"
.LASF11:
	.string	"long int"
.LASF74:
	.string	"scs_zer"
.LASF31:
	.string	"_cur_column"
.LASF75:
	.string	"scs_half"
.LASF47:
	.string	"_pos"
.LASF46:
	.string	"_sbuf"
.LASF43:
	.string	"_IO_FILE"
.LASF67:
	.string	"radix_two_double"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF44:
	.string	"_IO_marker"
.LASF33:
	.string	"_shortbuf"
.LASF81:
	.string	"two_over_pi"
.LASF73:
	.string	"min_double"
.LASF18:
	.string	"_IO_write_base"
.LASF42:
	.string	"_unused2"
.LASF15:
	.string	"_IO_read_ptr"
.LASF70:
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
.LASF66:
	.string	"radix_one_double"
.LASF89:
	.string	"scs_tan"
.LASF50:
	.string	"h_word"
.LASF3:
	.string	"long unsigned int"
.LASF53:
	.string	"sign"
.LASF20:
	.string	"_IO_write_end"
.LASF12:
	.string	"__off64_t"
.LASF10:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF69:
	.string	"radix_mtwo_double"
.LASF24:
	.string	"_IO_backup_base"
.LASF57:
	.string	"x_scs"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF80:
	.string	"constant_poly"
.LASF32:
	.string	"_vtable_offset"
.LASF85:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF23:
	.string	"_IO_save_base"
.LASF28:
	.string	"_fileno"
.LASF87:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF71:
	.string	"radix_mrng_double"
.LASF77:
	.string	"scs_two"
.LASF76:
	.string	"scs_one"
.LASF64:
	.string	"stdout"
.LASF84:
	.string	"crlibm_second_step_taken"
.LASF88:
	.string	"_IO_lock_t"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
