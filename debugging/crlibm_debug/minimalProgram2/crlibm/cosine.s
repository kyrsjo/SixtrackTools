	.file	"cosine.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# cosine.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
# -Wpointer-arith -Wcast-align -Wconversion -Waggregate-return
# -Wstrict-prototypes -Wnested-externs -Wlong-long -Winline -pedantic
# -std=c99 -fPIC -fno-strict-aliasing -fverbose-asm
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
.globl cosine
	.type	cosine, @function
cosine:
.LFB7:
	.file 1 "cosine.c"
	.loc 1 32 0
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
	.loc 1 38 0
	movl	8(%ebp), %eax	# x,
	cmpl	$-3, 40(%eax)	#, <variable>.index
	jge	.L2	#,
	.loc 1 39 0
	movl	%eax, 8(%esp)	#,
	leal	scs_one@GOTOFF(%ebx), %eax	#, tmp127
	movl	%eax, 4(%esp)	# tmp127,
	movl	8(%ebp), %eax	# x,
	movl	%eax, (%esp)	#,
	call	scs_sub@PLT	#
	.loc 1 40 0
	jmp	.L5	#
.L2:
	.loc 1 45 0
	movl	8(%ebp), %eax	# x,
	movl	%eax, 4(%esp)	#,
	leal	-120(%ebp), %esi	#, tmp128
	movl	%esi, (%esp)	# tmp128,
	call	scs_square@PLT	#
	.loc 1 46 0
	movl	%esi, 8(%esp)	# tmp128,
	leal	constt_poly@GOTOFF(%ebx), %esi	#, tmp130
	movl	%esi, 4(%esp)	# tmp130,
	leal	-72(%ebp), %eax	#, tmp131
	movl	%eax, (%esp)	# tmp131,
	call	scs_mul@PLT	#
.LVL1:
	leal	48(%esi), %edi	#, ivtmp.49
	.loc 1 32 0
	leal	768(%esi), %esi	#,
	movl	%esi, -124(%ebp)	#, %sfp
	.loc 1 48 0
	leal	-72(%ebp), %esi	#, tmp139
	.loc 1 49 0
	leal	-120(%ebp), %eax	#,
	movl	%eax, -128(%ebp)	#, %sfp
.LVL2:
.L4:
	.loc 1 48 0
	movl	%esi, 8(%esp)	# tmp139,
	movl	%edi, 4(%esp)	# ivtmp.49,
	movl	%esi, (%esp)	# tmp139,
	call	scs_add@PLT	#
	.loc 1 49 0
	movl	-128(%ebp), %eax	# %sfp,
	movl	%eax, 8(%esp)	#,
	movl	%esi, 4(%esp)	# tmp139,
	movl	%esi, (%esp)	# tmp139,
	call	scs_mul@PLT	#
	addl	$48, %edi	#, ivtmp.49
	.loc 1 47 0
	cmpl	-124(%ebp), %edi	# %sfp, ivtmp.49
	jne	.L4	#,
	.loc 1 51 0
	leal	scs_one@GOTOFF(%ebx), %eax	#, tmp137
	movl	%eax, 8(%esp)	# tmp137,
	leal	-72(%ebp), %eax	#, tmp138
	movl	%eax, 4(%esp)	# tmp138,
	movl	8(%ebp), %eax	# x,
	movl	%eax, (%esp)	#,
	call	scs_add@PLT	#
.L5:
	.loc 1 54 0
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
	.size	cosine, .-cosine
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"ERREUR: %d is not a valid value in s_cos \n"
	.text
.globl scs_cos_rz
	.type	scs_cos_rz, @function
scs_cos_rz:
.LFB11:
	.loc 1 188 0
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
	.loc 1 193 0
	movl	crlibm_second_step_taken@GOT(%ebx), %eax	#, tmp63
	addl	$1, (%eax)	#, crlibm_second_step_taken
	.loc 1 196 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp67
	movl	%esi, (%esp)	# tmp67,
	call	scs_set_d@PLT	#
	.loc 1 197 0
	movl	%esi, 4(%esp)	# tmp67,
	leal	-104(%ebp), %eax	#, tmp69
	movl	%eax, (%esp)	# tmp69,
	call	rem_pio2_scs@PLT	#
.LVL4:
	.loc 1 198 0
	andl	$3, %eax	#, N.66
.LVL5:
	.loc 1 199 0
	cmpl	$1, %eax	#, N.66
	je	.L10	#,
	cmpl	$1, %eax	#, N.66
	jg	.L13	#,
	testl	%eax, %eax	# N.66
	je	.L9	#,
	.p2align 4,,6
	jmp	.L8	#
.L13:
	cmpl	$2, %eax	#, N.66
	.p2align 4,,6
	je	.L11	#,
	cmpl	$3, %eax	#, N.66
	.p2align 4,,5
	jne	.L8	#,
	.p2align 4,,5
	jmp	.L16	#
.L9:
	.loc 1 201 0
	leal	-104(%ebp), %esi	#, tmp70
	movl	%esi, (%esp)	# tmp70,
	call	cosine@PLT	#
.LVL6:
	.loc 1 202 0
	movl	%esi, 4(%esp)	# tmp70,
	leal	-112(%ebp), %eax	#, tmp72
	movl	%eax, (%esp)	# tmp72,
	call	scs_get_d_zero@PLT	#
.LVL7:
	.loc 1 203 0
	fldl	-112(%ebp)	# resd
	jmp	.L14	#
.LVL8:
.L10:
	.loc 1 206 0
	leal	-104(%ebp), %esi	#, tmp73
	movl	%esi, (%esp)	# tmp73,
	call	sine@PLT	#
.LVL9:
	.loc 1 207 0
	movl	%esi, 4(%esp)	# tmp73,
	leal	-112(%ebp), %eax	#, tmp75
	movl	%eax, (%esp)	# tmp75,
	call	scs_get_d_zero@PLT	#
.LVL10:
	.loc 1 208 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L14	#
.LVL11:
.L11:
	.loc 1 210 0
	leal	-104(%ebp), %esi	#, tmp77
	movl	%esi, (%esp)	# tmp77,
	call	cosine@PLT	#
.LVL12:
	.loc 1 211 0
	movl	%esi, 4(%esp)	# tmp77,
	leal	-112(%ebp), %eax	#, tmp79
	movl	%eax, (%esp)	# tmp79,
	call	scs_get_d_zero@PLT	#
.LVL13:
	.loc 1 212 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L14	#
.LVL14:
.L16:
	.loc 1 214 0
	leal	-104(%ebp), %esi	#, tmp81
	movl	%esi, (%esp)	# tmp81,
	call	sine@PLT	#
.LVL15:
	.loc 1 215 0
	movl	%esi, 4(%esp)	# tmp81,
	leal	-112(%ebp), %eax	#, tmp83
	movl	%eax, (%esp)	# tmp83,
	call	scs_get_d_zero@PLT	#
.LVL16:
	.loc 1 216 0
	fldl	-112(%ebp)	# resd
	jmp	.L14	#
.LVL17:
.L8:
	.loc 1 218 0
	movl	%eax, 8(%esp)	# N.66,
	leal	.LC0@GOTOFF(%ebx), %eax	#, tmp84
.LVL18:
	movl	%eax, 4(%esp)	# tmp84,
	movl	stderr@GOT(%ebx), %eax	#, tmp85
	movl	(%eax), %eax	# stderr, stderr
	movl	%eax, (%esp)	# stderr,
	call	fprintf@PLT	#
.LVL19:
	.loc 1 219 0
	movl	$1, (%esp)	#,
	call	exit@PLT	#
.LVL20:
.L14:
	.loc 1 222 0
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
	.size	scs_cos_rz, .-scs_cos_rz
.globl scs_cos_ru
	.type	scs_cos_ru, @function
scs_cos_ru:
.LFB10:
	.loc 1 146 0
	.cfi_startproc
.LVL21:
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
	.loc 1 151 0
	movl	crlibm_second_step_taken@GOT(%ebx), %eax	#, tmp63
	addl	$1, (%eax)	#, crlibm_second_step_taken
	.loc 1 154 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp67
	movl	%esi, (%esp)	# tmp67,
	call	scs_set_d@PLT	#
	.loc 1 155 0
	movl	%esi, 4(%esp)	# tmp67,
	leal	-104(%ebp), %eax	#, tmp69
	movl	%eax, (%esp)	# tmp69,
	call	rem_pio2_scs@PLT	#
.LVL22:
	.loc 1 156 0
	andl	$3, %eax	#, N.80
.LVL23:
	.loc 1 157 0
	cmpl	$1, %eax	#, N.80
	je	.L20	#,
	cmpl	$1, %eax	#, N.80
	jg	.L23	#,
	testl	%eax, %eax	# N.80
	je	.L19	#,
	.p2align 4,,6
	jmp	.L18	#
.L23:
	cmpl	$2, %eax	#, N.80
	.p2align 4,,6
	je	.L21	#,
	cmpl	$3, %eax	#, N.80
	.p2align 4,,5
	jne	.L18	#,
	.p2align 4,,5
	jmp	.L26	#
.L19:
	.loc 1 159 0
	leal	-104(%ebp), %esi	#, tmp70
	movl	%esi, (%esp)	# tmp70,
	call	cosine@PLT	#
.LVL24:
	.loc 1 160 0
	movl	%esi, 4(%esp)	# tmp70,
	leal	-112(%ebp), %eax	#, tmp72
	movl	%eax, (%esp)	# tmp72,
	call	scs_get_d_pinf@PLT	#
.LVL25:
	.loc 1 161 0
	fldl	-112(%ebp)	# resd
	jmp	.L24	#
.LVL26:
.L20:
	.loc 1 164 0
	leal	-104(%ebp), %esi	#, tmp73
	movl	%esi, (%esp)	# tmp73,
	call	sine@PLT	#
.LVL27:
	.loc 1 165 0
	movl	%esi, 4(%esp)	# tmp73,
	leal	-112(%ebp), %eax	#, tmp75
	movl	%eax, (%esp)	# tmp75,
	call	scs_get_d_minf@PLT	#
.LVL28:
	.loc 1 166 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L24	#
.LVL29:
.L21:
	.loc 1 168 0
	leal	-104(%ebp), %esi	#, tmp77
	movl	%esi, (%esp)	# tmp77,
	call	cosine@PLT	#
.LVL30:
	.loc 1 169 0
	movl	%esi, 4(%esp)	# tmp77,
	leal	-112(%ebp), %eax	#, tmp79
	movl	%eax, (%esp)	# tmp79,
	call	scs_get_d_minf@PLT	#
.LVL31:
	.loc 1 170 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L24	#
.LVL32:
.L26:
	.loc 1 172 0
	leal	-104(%ebp), %esi	#, tmp81
	movl	%esi, (%esp)	# tmp81,
	call	sine@PLT	#
.LVL33:
	.loc 1 173 0
	movl	%esi, 4(%esp)	# tmp81,
	leal	-112(%ebp), %eax	#, tmp83
	movl	%eax, (%esp)	# tmp83,
	call	scs_get_d_pinf@PLT	#
.LVL34:
	.loc 1 174 0
	fldl	-112(%ebp)	# resd
	jmp	.L24	#
.LVL35:
.L18:
	.loc 1 176 0
	movl	%eax, 8(%esp)	# N.80,
	leal	.LC0@GOTOFF(%ebx), %eax	#, tmp84
.LVL36:
	movl	%eax, 4(%esp)	# tmp84,
	movl	stderr@GOT(%ebx), %eax	#, tmp85
	movl	(%eax), %eax	# stderr, stderr
	movl	%eax, (%esp)	# stderr,
	call	fprintf@PLT	#
.LVL37:
	.loc 1 177 0
	movl	$1, (%esp)	#,
	call	exit@PLT	#
.LVL38:
.L24:
	.loc 1 180 0
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
	.size	scs_cos_ru, .-scs_cos_ru
.globl scs_cos_rd
	.type	scs_cos_rd, @function
scs_cos_rd:
.LFB9:
	.loc 1 105 0
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
	.loc 1 110 0
	movl	crlibm_second_step_taken@GOT(%ebx), %eax	#, tmp63
	addl	$1, (%eax)	#, crlibm_second_step_taken
	.loc 1 113 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp67
	movl	%esi, (%esp)	# tmp67,
	call	scs_set_d@PLT	#
	.loc 1 114 0
	movl	%esi, 4(%esp)	# tmp67,
	leal	-104(%ebp), %eax	#, tmp69
	movl	%eax, (%esp)	# tmp69,
	call	rem_pio2_scs@PLT	#
.LVL40:
	.loc 1 115 0
	andl	$3, %eax	#, N.94
.LVL41:
	.loc 1 116 0
	cmpl	$1, %eax	#, N.94
	je	.L30	#,
	cmpl	$1, %eax	#, N.94
	jg	.L33	#,
	testl	%eax, %eax	# N.94
	je	.L29	#,
	.p2align 4,,6
	jmp	.L28	#
.L33:
	cmpl	$2, %eax	#, N.94
	.p2align 4,,6
	je	.L31	#,
	cmpl	$3, %eax	#, N.94
	.p2align 4,,5
	jne	.L28	#,
	.p2align 4,,5
	jmp	.L36	#
.L29:
	.loc 1 118 0
	leal	-104(%ebp), %esi	#, tmp70
	movl	%esi, (%esp)	# tmp70,
	call	cosine@PLT	#
.LVL42:
	.loc 1 119 0
	movl	%esi, 4(%esp)	# tmp70,
	leal	-112(%ebp), %eax	#, tmp72
	movl	%eax, (%esp)	# tmp72,
	call	scs_get_d_minf@PLT	#
.LVL43:
	.loc 1 120 0
	fldl	-112(%ebp)	# resd
	jmp	.L34	#
.LVL44:
.L30:
	.loc 1 122 0
	leal	-104(%ebp), %esi	#, tmp73
	movl	%esi, (%esp)	# tmp73,
	call	sine@PLT	#
.LVL45:
	.loc 1 123 0
	movl	%esi, 4(%esp)	# tmp73,
	leal	-112(%ebp), %eax	#, tmp75
	movl	%eax, (%esp)	# tmp75,
	call	scs_get_d_pinf@PLT	#
.LVL46:
	.loc 1 124 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L34	#
.LVL47:
.L31:
	.loc 1 126 0
	leal	-104(%ebp), %esi	#, tmp77
	movl	%esi, (%esp)	# tmp77,
	call	cosine@PLT	#
.LVL48:
	.loc 1 127 0
	movl	%esi, 4(%esp)	# tmp77,
	leal	-112(%ebp), %eax	#, tmp79
	movl	%eax, (%esp)	# tmp79,
	call	scs_get_d_pinf@PLT	#
.LVL49:
	.loc 1 128 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L34	#
.LVL50:
.L36:
	.loc 1 130 0
	leal	-104(%ebp), %esi	#, tmp81
	movl	%esi, (%esp)	# tmp81,
	call	sine@PLT	#
.LVL51:
	.loc 1 131 0
	movl	%esi, 4(%esp)	# tmp81,
	leal	-112(%ebp), %eax	#, tmp83
	movl	%eax, (%esp)	# tmp83,
	call	scs_get_d_minf@PLT	#
.LVL52:
	.loc 1 132 0
	fldl	-112(%ebp)	# resd
	jmp	.L34	#
.LVL53:
.L28:
	.loc 1 134 0
	movl	%eax, 8(%esp)	# N.94,
	leal	.LC0@GOTOFF(%ebx), %eax	#, tmp84
.LVL54:
	movl	%eax, 4(%esp)	# tmp84,
	movl	stderr@GOT(%ebx), %eax	#, tmp85
	movl	(%eax), %eax	# stderr, stderr
	movl	%eax, (%esp)	# stderr,
	call	fprintf@PLT	#
.LVL55:
	.loc 1 135 0
	movl	$1, (%esp)	#,
	call	exit@PLT	#
.LVL56:
.L34:
	.loc 1 138 0
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
	.size	scs_cos_rd, .-scs_cos_rd
.globl scs_cos_rn
	.type	scs_cos_rn, @function
scs_cos_rn:
.LFB8:
	.loc 1 64 0
	.cfi_startproc
.LVL57:
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
	.loc 1 69 0
	movl	crlibm_second_step_taken@GOT(%ebx), %eax	#, tmp63
	addl	$1, (%eax)	#, crlibm_second_step_taken
	.loc 1 72 0
	fldl	8(%ebp)	# x
	fstpl	4(%esp)	#
	leal	-56(%ebp), %esi	#, tmp67
	movl	%esi, (%esp)	# tmp67,
	call	scs_set_d@PLT	#
	.loc 1 73 0
	movl	%esi, 4(%esp)	# tmp67,
	leal	-104(%ebp), %eax	#, tmp69
	movl	%eax, (%esp)	# tmp69,
	call	rem_pio2_scs@PLT	#
.LVL58:
	.loc 1 74 0
	andl	$3, %eax	#, N.108
.LVL59:
	.loc 1 75 0
	cmpl	$1, %eax	#, N.108
	je	.L40	#,
	cmpl	$1, %eax	#, N.108
	jg	.L43	#,
	testl	%eax, %eax	# N.108
	je	.L39	#,
	.p2align 4,,6
	jmp	.L38	#
.L43:
	cmpl	$2, %eax	#, N.108
	.p2align 4,,6
	je	.L41	#,
	cmpl	$3, %eax	#, N.108
	.p2align 4,,5
	jne	.L38	#,
	.p2align 4,,5
	jmp	.L46	#
.L39:
	.loc 1 77 0
	leal	-104(%ebp), %esi	#, tmp70
	movl	%esi, (%esp)	# tmp70,
	call	cosine@PLT	#
.LVL60:
	.loc 1 78 0
	movl	%esi, 4(%esp)	# tmp70,
	leal	-112(%ebp), %eax	#, tmp72
	movl	%eax, (%esp)	# tmp72,
	call	scs_get_d@PLT	#
.LVL61:
	.loc 1 79 0
	fldl	-112(%ebp)	# resd
	jmp	.L44	#
.LVL62:
.L40:
	.loc 1 81 0
	leal	-104(%ebp), %esi	#, tmp73
	movl	%esi, (%esp)	# tmp73,
	call	sine@PLT	#
.LVL63:
	.loc 1 82 0
	movl	%esi, 4(%esp)	# tmp73,
	leal	-112(%ebp), %eax	#, tmp75
	movl	%eax, (%esp)	# tmp75,
	call	scs_get_d@PLT	#
.LVL64:
	.loc 1 83 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L44	#
.LVL65:
.L41:
	.loc 1 85 0
	leal	-104(%ebp), %esi	#, tmp77
	movl	%esi, (%esp)	# tmp77,
	call	cosine@PLT	#
.LVL66:
	.loc 1 86 0
	movl	%esi, 4(%esp)	# tmp77,
	leal	-112(%ebp), %eax	#, tmp79
	movl	%eax, (%esp)	# tmp79,
	call	scs_get_d@PLT	#
.LVL67:
	.loc 1 87 0
	fldl	-112(%ebp)	# resd
	fchs
	jmp	.L44	#
.LVL68:
.L46:
	.loc 1 89 0
	leal	-104(%ebp), %esi	#, tmp81
	movl	%esi, (%esp)	# tmp81,
	call	sine@PLT	#
.LVL69:
	.loc 1 90 0
	movl	%esi, 4(%esp)	# tmp81,
	leal	-112(%ebp), %eax	#, tmp83
	movl	%eax, (%esp)	# tmp83,
	call	scs_get_d@PLT	#
.LVL70:
	.loc 1 91 0
	fldl	-112(%ebp)	# resd
	jmp	.L44	#
.LVL71:
.L38:
	.loc 1 93 0
	movl	%eax, 8(%esp)	# N.108,
	leal	.LC0@GOTOFF(%ebx), %eax	#, tmp84
.LVL72:
	movl	%eax, 4(%esp)	# tmp84,
	movl	stderr@GOT(%ebx), %eax	#, tmp85
	movl	(%eax), %eax	# stderr, stderr
	movl	%eax, (%esp)	# stderr,
	call	fprintf@PLT	#
.LVL73:
	fldz
.LVL74:
.L44:
	.loc 1 97 0
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
	.size	scs_cos_rn, .-scs_cos_rn
	.section	.rodata
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
	.type	constt_poly, @object
	.size	constt_poly, 768
constt_poly:
# h_word:
	.long	5
	.long	25097768
	.long	533671719
	.long	569362294
	.long	500064015
	.long	264381663
	.long	785691628
	.long	1072437069
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-4
# sign:
	.long	1
# h_word:
	.long	5011
	.long	99699706
	.long	54100912
	.long	1038329830
	.long	523287691
	.long	1000241172
	.long	431733029
	.long	200045222
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-4
# sign:
	.long	-1
# h_word:
	.long	4359720
	.long	494061180
	.long	375902532
	.long	835675166
	.long	954329223
	.long	985283584
	.long	93904998
	.long	587708271
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-4
# sign:
	.long	1
# h_word:
	.long	3
	.long	74723299
	.long	178407499
	.long	94287019
	.long	625343877
	.long	626765972
	.long	338510651
	.long	1030164019
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-3
# sign:
	.long	-1
# h_word:
	.long	1995
	.long	251762479
	.long	232571085
	.long	931955416
	.long	348795268
	.long	638571191
	.long	357070918
	.long	45557574
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-3
# sign:
	.long	1
# h_word:
	.long	1101369
	.long	460193300
	.long	614260905
	.long	675540964
	.long	814523532
	.long	961137751
	.long	157455300
	.long	244375456
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-3
# sign:
	.long	-1
# h_word:
	.long	508832676
	.long	8423745
	.long	950038234
	.long	623345752
	.long	317764880
	.long	349560804
	.long	575048931
	.long	162696010
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-3
# sign:
	.long	1
# h_word:
	.long	180
	.long	82888562
	.long	1053539799
	.long	1072825515
	.long	682148061
	.long	218511647
	.long	934492237
	.long	725813072
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	-1
# h_word:
	.long	55103
	.long	667838320
	.long	260631602
	.long	759015775
	.long	138468449
	.long	183946194
	.long	988051417
	.long	773752183
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	1
# h_word:
	.long	13224869
	.long	293665082
	.long	274558858
	.long	196699766
	.long	682287019
	.long	457528514
	.long	760503060
	.long	570572632
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-2
# sign:
	.long	-1
# h_word:
	.long	2
	.long	259442559
	.long	833695594
	.long	577588285
	.long	435970201
	.long	689177813
	.long	745029114
	.long	1047407447
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
	.long	960421346
	.long	526152431
	.long	5984169
	.long	645453894
	.long	778821370
	.long	10987597
	.long	679671955
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	26630
	.long	538575264
	.long	109078534
	.long	538575264
	.long	109078392
	.long	850852467
	.long	675053855
	.long	364317554
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
	.long	95443717
	.long	739688808
	.long	833793839
	.long	333911248
	.long	50534131
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	44739242
	.long	715827882
	.long	715827882
	.long	715827882
	.long	715827882
	.long	682965565
	.long	308091892
	.long	535110467
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	536870911
	.long	1073741823
	.long	1073741823
	.long	1073741823
	.long	1073741823
	.long	1073691414
	.long	912157933
	.long	274739214
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
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
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL16-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL20-.Ltext0
	.long	.LFE11-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL4-.Ltext0
	.long	.LVL6-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL8-.Ltext0
	.long	.LVL9-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL11-.Ltext0
	.long	.LVL12-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL14-.Ltext0
	.long	.LVL15-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL17-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL18-.Ltext0
	.long	.LVL19-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL25-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
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
	.long	.LFE10-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL22-.Ltext0
	.long	.LVL24-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL26-.Ltext0
	.long	.LVL27-1-.Ltext0
	.value	0x1
	.byte	0x50
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
.LLST5:
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
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL52-.Ltext0
	.long	.LVL53-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL56-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL40-.Ltext0
	.long	.LVL42-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL44-.Ltext0
	.long	.LVL45-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL47-.Ltext0
	.long	.LVL48-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL50-.Ltext0
	.long	.LVL51-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL53-.Ltext0
	.long	.LVL54-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL54-.Ltext0
	.long	.LVL55-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL61-.Ltext0
	.long	.LVL62-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL64-.Ltext0
	.long	.LVL65-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL67-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL70-.Ltext0
	.long	.LVL71-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL74-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL58-.Ltext0
	.long	.LVL60-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL62-.Ltext0
	.long	.LVL63-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL65-.Ltext0
	.long	.LVL66-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL68-.Ltext0
	.long	.LVL69-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL71-.Ltext0
	.long	.LVL72-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL72-.Ltext0
	.long	.LVL73-1-.Ltext0
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
	.file 9 "cosine.h"
	.section	.debug_info
	.long	0x66f
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF80
	.byte	0xc
	.long	.LASF81
	.long	.LASF82
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
	.long	.LASF83
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
	.long	.LASF84
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0x3bc
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x20
	.long	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF56
	.byte	0x1
	.byte	0x21
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.string	"x2"
	.byte	0x1
	.byte	0x22
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x23
	.long	0x5a
	.long	.LLST0
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.long	0x2d8
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.long	0x41d
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0xbc
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"sc1"
	.byte	0x1
	.byte	0xbd
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"sc2"
	.byte	0x1
	.byte	0xbd
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.long	.LASF57
	.byte	0x1
	.byte	0xbe
	.long	0x2d8
	.long	.LLST1
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0xbf
	.long	0x5a
	.long	.LLST2
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x2d8
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.long	0x47e
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x92
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"sc1"
	.byte	0x1
	.byte	0x93
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"sc2"
	.byte	0x1
	.byte	0x93
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.long	.LASF57
	.byte	0x1
	.byte	0x94
	.long	0x2d8
	.long	.LLST3
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0x95
	.long	0x5a
	.long	.LLST4
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.long	0x2d8
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0x4df
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x69
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"sc1"
	.byte	0x1
	.byte	0x6a
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"sc2"
	.byte	0x1
	.byte	0x6a
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.long	.LASF57
	.byte	0x1
	.byte	0x6b
	.long	0x2d8
	.long	.LLST5
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0x6c
	.long	0x5a
	.long	.LLST6
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	0x2d8
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0x540
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x40
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"sc1"
	.byte	0x1
	.byte	0x41
	.long	0x353
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"sc2"
	.byte	0x1
	.byte	0x41
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.long	.LASF57
	.byte	0x1
	.byte	0x42
	.long	0x2d8
	.long	.LLST7
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0x43
	.long	0x5a
	.long	.LLST8
	.byte	0x0
	.uleb128 0x19
	.long	.LASF62
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF63
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF64
	.byte	0x6
	.byte	0xa7
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x7
	.byte	0x47
	.long	0x572
	.uleb128 0x1b
	.long	0x2df
	.uleb128 0x1a
	.long	.LASF66
	.byte	0x7
	.byte	0x48
	.long	0x572
	.uleb128 0x1a
	.long	.LASF67
	.byte	0x7
	.byte	0x49
	.long	0x572
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x7
	.byte	0x4a
	.long	0x572
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x7
	.byte	0x4b
	.long	0x572
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x7
	.byte	0x4c
	.long	0x572
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x7
	.byte	0x4d
	.long	0x572
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x7
	.byte	0x4e
	.long	0x572
	.uleb128 0x19
	.long	.LASF73
	.byte	0x8
	.byte	0x32
	.long	0x5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x8
	.byte	0xca
	.long	0x5dc
	.uleb128 0x1b
	.long	0x2ea
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x8
	.byte	0xce
	.long	0x5dc
	.uleb128 0x14
	.long	.LASF76
	.byte	0x8
	.byte	0xd2
	.long	0x5dc
	.byte	0x5
	.byte	0x3
	.long	scs_one
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x8
	.byte	0xd6
	.long	0x5dc
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x8
	.byte	0xda
	.long	0x5dc
	.uleb128 0x5
	.long	0x337
	.long	0x623
	.uleb128 0x6
	.long	0x30
	.byte	0xf
	.byte	0x0
	.uleb128 0x14
	.long	.LASF79
	.byte	0x9
	.byte	0x4
	.long	0x634
	.byte	0x5
	.byte	0x3
	.long	constt_poly
	.uleb128 0x1b
	.long	0x613
	.uleb128 0x19
	.long	.LASF62
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF63
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF64
	.byte	0x6
	.byte	0xa7
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF73
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x72
	.value	0x2
	.long	.Ldebug_info0
	.long	0x673
	.long	0x36e
	.string	"cosine"
	.long	0x3bc
	.string	"scs_cos_rz"
	.long	0x41d
	.string	"scs_cos_ru"
	.long	0x47e
	.string	"scs_cos_rd"
	.long	0x4df
	.string	"scs_cos_rn"
	.long	0x660
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x9f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x673
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
.LASF78:
	.string	"scs_sixinv"
.LASF67:
	.string	"radix_mone_double"
.LASF25:
	.string	"_IO_save_end"
.LASF79:
	.string	"constt_poly"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF73:
	.string	"crlibm_second_step_taken"
.LASF35:
	.string	"_offset"
.LASF57:
	.string	"resd"
.LASF19:
	.string	"_IO_write_ptr"
.LASF14:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_base"
.LASF26:
	.string	"_markers"
.LASF16:
	.string	"_IO_read_end"
.LASF71:
	.string	"max_double"
.LASF52:
	.string	"index"
.LASF51:
	.string	"exception"
.LASF64:
	.string	"stderr"
.LASF6:
	.string	"long long int"
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
.LASF60:
	.string	"scs_cos_rd"
.LASF46:
	.string	"_sbuf"
.LASF43:
	.string	"_IO_FILE"
.LASF61:
	.string	"scs_cos_rn"
.LASF66:
	.string	"radix_two_double"
.LASF84:
	.string	"cosine"
.LASF1:
	.string	"unsigned char"
.LASF59:
	.string	"scs_cos_ru"
.LASF58:
	.string	"scs_cos_rz"
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
.LASF72:
	.string	"min_double"
.LASF18:
	.string	"_IO_write_base"
.LASF42:
	.string	"_unused2"
.LASF15:
	.string	"_IO_read_ptr"
.LASF69:
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
.LASF65:
	.string	"radix_one_double"
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
.LASF68:
	.string	"radix_mtwo_double"
.LASF24:
	.string	"_IO_backup_base"
.LASF62:
	.string	"stdin"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF32:
	.string	"_vtable_offset"
.LASF80:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF23:
	.string	"_IO_save_base"
.LASF28:
	.string	"_fileno"
.LASF81:
	.string	"cosine.c"
.LASF82:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF70:
	.string	"radix_mrng_double"
.LASF77:
	.string	"scs_two"
.LASF76:
	.string	"scs_one"
.LASF63:
	.string	"stdout"
.LASF83:
	.string	"_IO_lock_t"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
