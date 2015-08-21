	.file	"scs2double.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# scs2double.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
# -Wpointer-arith -Wcast-align -Wconversion -Waggregate-return
# -Wstrict-prototypes -Wnested-externs -Wlong-long -Winline -fverbose-asm
# options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
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
.globl scs_get_d
	.type	scs_get_d, @function
scs_get_d:
.LFB0:
	.file 1 "scs2double.c"
	.loc 1 50 0
	.cfi_startproc
.LVL0:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$56, %esp	#,
	movl	%ebx, -12(%ebp)	#,
	movl	%esi, -8(%ebp)	#,
	movl	%edi, -4(%ebp)	#,
	movl	12(%ebp), %eax	# x, x
	.loc 1 57 0
	movl	(%eax), %edx	# <variable>.h_word, D.1346
	.loc 1 60 0
	movl	4(%eax), %esi	# <variable>.h_word, D.1348
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.LVL1:
	.loc 1 61 0
	movl	8(%eax), %ecx	# <variable>.h_word, D.1350
	.loc 1 69 0
	fldl	32(%eax)	# <variable>.exception.d
	fld1
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jp	.L22	#,
	je	.L17	#,
.L22:
	.loc 1 70 0
	movl	8(%ebp), %eax	# result,
	fstpl	(%eax)	#
	.loc 1 71 0
	jmp	.L15	#
.LVL2:
.L17:
	fstp	%st(0)	#
	.loc 1 57 0
	movl	%edx, -32(%ebp)	# D.1346, %sfp
	movl	$0, -28(%ebp)	#, %sfp
	fildll	-32(%ebp)	# %sfp
	fstl	-40(%ebp)	# %sfp
	fstpl	-32(%ebp)	# %sfp
	.loc 1 75 0
	movl	-28(%ebp), %edx	# %sfp, tmp82
	andl	$2146435072, %edx	#, tmp82
	sarl	$20, %edx	#, tmp83
	subl	$1023, %edx	#,
	movl	%edx, -32(%ebp)	#, %sfp
.LVL3:
	.loc 1 78 0
	imull	$30, 40(%eax), %ebx	#, <variable>.index, D.1359
	addl	%ebx, %edx	# D.1359, expofinal
.LVL4:
	.loc 1 81 0
	cmpl	$1023, %edx	#, expofinal
	jle	.L5	#,
	.loc 1 83 0
	fldl	radix_rng_double	# radix_rng_double.d
	fmul	%st(0), %st	#,
.LVL5:
	jmp	.L6	#
.LVL6:
.L5:
	.loc 1 61 0
	movl	%esi, -48(%ebp)	# D.1348, %sfp
	movl	$0, -44(%ebp)	#, %sfp
	movl	-48(%ebp), %esi	# %sfp,
	movl	-44(%ebp), %edi	# %sfp,
	shldl	$30, %esi, %edi	#,,
	sall	$30, %esi	#,
	movl	%ecx, -56(%ebp)	# D.1350, %sfp
	movl	$0, -52(%ebp)	#, %sfp
	addl	-56(%ebp), %esi	# %sfp,
	adcl	-52(%ebp), %edi	# %sfp,
	movl	%esi, -48(%ebp)	#, %sfp
	movl	%edi, -44(%ebp)	#, %sfp
	.loc 1 87 0
	cmpl	$-1022, %edx	#, expofinal
	jl	.L7	#,
	.loc 1 91 0
	movl	-32(%ebp), %ecx	# %sfp, tmp93
	addl	$7, %ecx	#, tmp93
	shrdl	%edi, %esi	# tmp93, lowpart.17, lowpart.17
	shrl	%cl, %edi	# tmp93, lowpart.17
	testb	$32, %cl	#, tmp93
	je	.L20	#,
	movl	%edi, %esi	# lowpart.17, lowpart.17
	xorl	%edi, %edi	# lowpart.17
.L20:
.LVL7:
	.loc 1 93 0
	movl	%esi, %edx	#, tmp94
.LVL8:
	andl	$1, %edx	#, tmp94
	testl	%edx, %edx	# tmp94
	je	.L8	#,
	.loc 1 95 0
	movl	$0, -48(%ebp)	#, %sfp
	.loc 1 96 0
	movl	-32(%ebp), %edx	# %sfp, tmp95
	addl	$971, %edx	#, tmp95
	sall	$20, %edx	#, tmp95
	movl	%edx, -44(%ebp)	# tmp95, %sfp
	jmp	.L9	#
.L8:
	.loc 1 99 0
	fldz
	fstpl	-48(%ebp)	# %sfp
.L9:
.LVL9:
	.loc 1 103 0
	shrdl	$1, %edi, %esi	#,, tmp98
.LVL10:
	shrl	%edi	#
	movl	-40(%ebp), %edx	# %sfp,
	orl	%esi, %edx	# tmp98,
	movl	-36(%ebp), %ecx	# %sfp,
	orl	%edi, %ecx	#,
	movl	%edx, -32(%ebp)	# D.1376, %sfp
	movl	%ecx, -28(%ebp)	# D.1376, %sfp
	.loc 1 104 0
	fldl	-48(%ebp)	# %sfp
	faddl	-32(%ebp)	# %sfp
.LVL11:
	.loc 1 109 0
	leal	1023(%ebx), %edx	#, D.1379
	testl	%edx, %edx	# D.1379
	jle	.L10	#,
	.loc 1 111 0
	sall	$20, %edx	#, D.1379
	movl	%edx, -28(%ebp)	# D.1379, %sfp
	.loc 1 112 0
	movl	$0, -32(%ebp)	#, %sfp
	.loc 1 113 0
	fmull	-32(%ebp)	# %sfp
.LVL12:
	jmp	.L6	#
.L10:
	.loc 1 117 0
	addl	$1083, %ebx	#, tmp100
	sall	$20, %ebx	#, tmp100
	movl	%ebx, -28(%ebp)	# tmp100, %sfp
	.loc 1 118 0
	movl	$0, -32(%ebp)	#, %sfp
	.loc 1 119 0
	fmull	radix_mtwo_double	# radix_mtwo_double.d
.LVL13:
	.loc 1 120 0
	fmull	-32(%ebp)	# %sfp
.LVL14:
	jmp	.L6	#
.LVL15:
.L7:
	.loc 1 129 0
	cmpl	$-1075, %edx	#, expofinal
	jge	.L11	#,
	fldz
	jmp	.L6	#
.L11:
.LVL16:
	.loc 1 144 0
	movl	-32(%ebp), %edi	# %sfp, tmp104
	addl	$8, %edi	#, tmp104
	movl	-48(%ebp), %ebx	# %sfp,
	movl	-44(%ebp), %esi	# %sfp,
	movl	%edi, %ecx	#,
	shrdl	%esi, %ebx	#,,
	shrl	%cl, %esi	#,
	testb	$32, %cl	#,
	je	.L18	#,
	movl	%esi, %ebx	#,
	xorl	%esi, %esi	#
.L18:
	movl	%esi, -28(%ebp)	#, %sfp
	movl	-28(%ebp), %ecx	# %sfp, tmp118
	orl	-36(%ebp), %ecx	# %sfp, tmp118
	andl	$1048575, %ecx	#, tmp120
	orl	-40(%ebp), %ebx	# %sfp,
	movl	%ebx, -48(%ebp)	#, %sfp
	orl	$1048576, %ecx	#, tmp120
	movl	%ecx, -44(%ebp)	# tmp120, %sfp
	movl	$-1023, %ecx	#, tmp110
	movl	%ecx, %edi	# tmp110, tmp109
	subl	%edx, %edi	# expofinal, tmp109
	movl	-48(%ebp), %ebx	# %sfp,
	movl	-44(%ebp), %esi	# %sfp,
	movl	%edi, %ecx	#,
	shrdl	%esi, %ebx	#,,
	shrl	%cl, %esi	#,
	testb	$32, %cl	#,
	je	.L19	#,
	movl	%esi, %ebx	#,
	xorl	%esi, %esi	#
.L19:
	movl	%ebx, -32(%ebp)	#, %sfp
	movl	%esi, -28(%ebp)	#, %sfp
	.loc 1 146 0
	movl	-32(%ebp), %edx	# %sfp, tmp111
.LVL17:
	andl	$1, %edx	#, tmp111
	.loc 1 148 0
	movl	$1, -48(%ebp)	#, %sfp
	movl	$0, -44(%ebp)	#, %sfp
	.loc 1 146 0
	testl	%edx, %edx	# tmp111
	jne	.L13	#,
	.loc 1 151 0
	fldz
	fstpl	-48(%ebp)	# %sfp
.L13:
	.loc 1 154 0
	fldl	-48(%ebp)	# %sfp
	faddl	-32(%ebp)	# %sfp
	fmuls	.LC2	#
.LVL18:
.L6:
	.loc 1 161 0
	cmpl	$0, 44(%eax)	#, <variable>.sign
	jns	.L14	#,
	.loc 1 162 0
	fchs
.LVL19:
	movl	8(%ebp), %eax	# result,
.LVL20:
	fstpl	(%eax)	#
	jmp	.L15	#
.LVL21:
.L14:
	.loc 1 164 0
	movl	8(%ebp), %edx	# result,
	fstpl	(%edx)	#
.LVL22:
.L15:
	.loc 1 165 0
	movl	-12(%ebp), %ebx	#,
	movl	-8(%ebp), %esi	#,
	movl	-4(%ebp), %edi	#,
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
.LFE0:
	.size	scs_get_d, .-scs_get_d
.globl get_d_directed
	.type	get_d_directed, @function
get_d_directed:
.LFB1:
	.loc 1 178 0
	.cfi_startproc
.LVL23:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$52, %esp	#,
	movl	12(%ebp), %eax	# x, x
	.loc 1 185 0
	movl	(%eax), %ebx	# <variable>.h_word, D.1425
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.loc 1 188 0
	movl	4(%eax), %ecx	# <variable>.h_word, D.1427
.LVL24:
	.loc 1 189 0
	movl	8(%eax), %edx	# <variable>.h_word, D.1429
	.loc 1 192 0
	fldl	32(%eax)	# <variable>.exception.d
	fld1
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jp	.L51	#,
	je	.L44	#,
.L51:
	.loc 1 193 0
	movl	8(%ebp), %eax	# result,
	fstpl	(%eax)	#
	.loc 1 194 0
	jmp	.L41	#
.LVL25:
.L44:
	fstp	%st(0)	#
	.loc 1 185 0
	movl	$0, %esi	#, D.1425
	movl	%ebx, -24(%ebp)	# D.1425,
	movl	%esi, -20(%ebp)	# D.1425,
	fildll	-24(%ebp)	#
	fstl	-48(%ebp)	# %sfp
	fstpl	-40(%ebp)	# %sfp
	.loc 1 189 0
	movl	$0, %ebx	#, D.1427
	movl	%ecx, %esi	# D.1427,
	movl	%ebx, %edi	# D.1427,
	shldl	$30, %ecx, %edi	#, tmp4,
	sall	$30, %esi	#,
	movl	%esi, -32(%ebp)	#, %sfp
	movl	%edi, -28(%ebp)	#, %sfp
	movl	%edx, %esi	# D.1429, D.1429
	movl	$0, %edi	#, D.1429
	movl	-32(%ebp), %edx	# %sfp,
	movl	-28(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# D.1429,
	adcl	%edi, %ecx	# D.1429,
	movl	%edx, -32(%ebp)	#, %sfp
	movl	%ecx, -28(%ebp)	#, %sfp
	.loc 1 198 0
	movl	-36(%ebp), %ebx	# %sfp, tmp102
	andl	$2146435072, %ebx	#, tmp102
	sarl	$20, %ebx	#, tmp103
	subl	$1023, %ebx	#, expo
.LVL26:
	.loc 1 199 0
	movl	$56, %esi	#, tmp105
	movl	%esi, %edx	# tmp105, tmp104
	subl	%ebx, %edx	# expo, tmp104
	movl	-32(%ebp), %esi	# %sfp,
	movl	-28(%ebp), %edi	# %sfp,
	movl	%edx, %ecx	#,
	shldl	%esi, %edi	#,,
	sall	%cl, %esi	#,
	testb	$32, %dl	#, tmp2
	je	.L49	#,
	movl	%esi, %edi	#,
	xorl	%esi, %esi	#
.L49:
	orl	%edi, %esi	#,
	setne	%dl	#, tmp108
	movzbl	%dl, %edx	# tmp108, not_null
.LVL27:
	movl	$3, %ecx	#, i
	.loc 1 202 0
	movl	$1, %esi	#, tmp144
.LVL28:
.L28:
	cmpl	$0, (%eax,%ecx,4)	#, <variable>.h_word
	cmovne	%esi, %edx	# not_null,, tmp144, not_null
.LVL29:
	.loc 1 201 0
	addl	$1, %ecx	#, i
.LVL30:
	cmpl	$8, %ecx	#, i
	jne	.L28	#,
	.loc 1 205 0
	imull	$30, 40(%eax), %edi	#, <variable>.index,
	movl	%edi, -60(%ebp)	#, %sfp
	addl	%ebx, %edi	# expo,
	movl	%edi, -56(%ebp)	#, %sfp
.LVL31:
	.loc 1 208 0
	cmpl	$1023, %edi	#,
	jle	.L29	#,
	.loc 1 209 0
	cmpl	$0, 16(%ebp)	#, rndMantissaUp
	je	.L30	#,
	.loc 1 211 0
	fldl	radix_rng_double	# radix_rng_double.d
	fmul	%st(0), %st	#,
.LVL32:
	jmp	.L31	#
.LVL33:
.L30:
	.loc 1 214 0
	fldl	max_double	# max_double.d
.LVL34:
	jmp	.L31	#
.LVL35:
.L29:
	.loc 1 218 0
	cmpl	$-1022, -56(%ebp)	#, %sfp
	jl	.L32	#,
.LVL36:
	.loc 1 224 0
	leal	8(%ebx), %ecx	#, tmp116
.LVL37:
	movl	-32(%ebp), %esi	# %sfp,
	movl	-28(%ebp), %edi	# %sfp,
.LVL38:
	shrdl	%edi, %esi	# tmp116,,
	shrl	%cl, %edi	# tmp116,
	testb	$32, %cl	#, tmp116
	je	.L48	#,
	movl	%edi, %esi	#,
	xorl	%edi, %edi	#
.L48:
	orl	-48(%ebp), %esi	# %sfp,
	movl	%esi, -56(%ebp)	#, %sfp
	orl	-44(%ebp), %edi	# %sfp,
	movl	%edi, -52(%ebp)	#, %sfp
	.loc 1 225 0
	cmpl	$0, 16(%ebp)	#, rndMantissaUp
	je	.L33	#,
	testl	%edx, %edx	# not_null
	je	.L33	#,
	.loc 1 226 0
	movl	$0, -32(%ebp)	#, %sfp
	.loc 1 227 0
	addl	$971, %ebx	#, tmp118
.LVL39:
	sall	$20, %ebx	#, tmp118
.LVL40:
	movl	%ebx, -28(%ebp)	# tmp118, %sfp
	jmp	.L34	#
.L33:
	.loc 1 229 0
	fldz
	fstpl	-32(%ebp)	# %sfp
.L34:
	.loc 1 231 0
	fldl	-32(%ebp)	# %sfp
	faddl	-56(%ebp)	# %sfp
.LVL41:
	.loc 1 236 0
	movl	-60(%ebp), %edx	# %sfp, D.1467
.LVL42:
	addl	$1023, %edx	#, D.1467
	testl	%edx, %edx	# D.1467
	jle	.L35	#,
	.loc 1 238 0
	sall	$20, %edx	#, D.1467
	movl	%edx, -36(%ebp)	# D.1467, %sfp
	.loc 1 239 0
	movl	$0, -40(%ebp)	#, %sfp
	.loc 1 240 0
	fmull	-40(%ebp)	# %sfp
.LVL43:
	jmp	.L31	#
.L35:
	.loc 1 244 0
	movl	-60(%ebp), %edi	# %sfp, tmp122
	addl	$1083, %edi	#, tmp122
	sall	$20, %edi	#, tmp122
	movl	%edi, -36(%ebp)	# tmp122, %sfp
	.loc 1 245 0
	movl	$0, -40(%ebp)	#, %sfp
	.loc 1 246 0
	fmull	radix_mtwo_double	# radix_mtwo_double.d
.LVL44:
	.loc 1 247 0
	fmull	-40(%ebp)	# %sfp
.LVL45:
	jmp	.L31	#
.LVL46:
.L32:
	.loc 1 256 0
	cmpl	$-1075, -56(%ebp)	#, %sfp
	jge	.L36	#,
	.loc 1 257 0
	cmpl	$0, 16(%ebp)	#, rndMantissaUp
	jne	.L37	#,
	fldz
	jmp	.L31	#
.L37:
	.loc 1 258 0
	fldl	min_double	# min_double.d
.LVL47:
	jmp	.L31	#
.LVL48:
.L36:
	.loc 1 271 0
	leal	8(%ebx), %edi	#, tmp127
	movl	-32(%ebp), %ebx	# %sfp,
.LVL49:
	movl	-28(%ebp), %esi	# %sfp,
	movl	%edi, %ecx	#,
.LVL50:
	shrdl	%esi, %ebx	#,,
	shrl	%cl, %esi	#,
	testb	$32, %cl	#,
	je	.L47	#,
.LVL51:
	movl	%esi, %ebx	#,
	xorl	%esi, %esi	#
.L47:
	movl	-44(%ebp), %edi	# %sfp, tmp140
.LVL52:
	orl	%esi, %edi	#, tmp140
	andl	$1048575, %edi	#, tmp142
	movl	-48(%ebp), %esi	# %sfp,
	orl	%ebx, %esi	#,
	movl	%esi, -40(%ebp)	#, %sfp
	orl	$1048576, %edi	#, tmp142
	movl	%edi, -36(%ebp)	# tmp142, %sfp
	.loc 1 273 0
	cmpl	$0, 16(%ebp)	#, rndMantissaUp
	je	.L38	#,
	testl	%edx, %edx	# not_null
	je	.L38	#,
	.loc 1 275 0
	movl	$-1022, %edx	#, tmp132
.LVL53:
	subl	-56(%ebp), %edx	# %sfp, tmp131
	movl	-40(%ebp), %ebx	# %sfp,
	movl	-36(%ebp), %esi	# %sfp,
	movl	%edx, %ecx	#,
	shrdl	%esi, %ebx	#,,
	shrl	%cl, %esi	#,
	testb	$32, %dl	#, tmp2
	je	.L46	#,
	movl	%esi, %ebx	#,
	xorl	%esi, %esi	#
.L46:
	addl	$1, %ebx	#,
	adcl	$0, %esi	#,
	movl	%ebx, -40(%ebp)	#, %sfp
	movl	%esi, -36(%ebp)	#, %sfp
	jmp	.L39	#
.LVL54:
.L38:
	.loc 1 279 0
	movl	$-1022, %ecx	#, tmp136
	subl	-56(%ebp), %ecx	# %sfp, tmp135
	movl	-40(%ebp), %esi	# %sfp,
	movl	-36(%ebp), %edi	# %sfp,
	shrdl	%edi, %esi	# tmp135,,
	shrl	%cl, %edi	# tmp135,
	testb	$32, %cl	#, tmp135
	je	.L45	#,
	movl	%edi, %esi	#,
	xorl	%edi, %edi	#
.L45:
	movl	%esi, -40(%ebp)	#, %sfp
	movl	%edi, -36(%ebp)	#, %sfp
.LVL55:
.L39:
	.loc 1 281 0
	fldl	-40(%ebp)	# %sfp
.LVL56:
.L31:
	.loc 1 288 0
	cmpl	$0, 44(%eax)	#, <variable>.sign
	jns	.L40	#,
	.loc 1 289 0
	fchs
.LVL57:
	movl	8(%ebp), %edi	# result,
	fstpl	(%edi)	#
	jmp	.L41	#
.LVL58:
.L40:
	.loc 1 291 0
	movl	8(%ebp), %eax	# result,
.LVL59:
	fstpl	(%eax)	#
.LVL60:
.L41:
	.loc 1 292 0
	addl	$52, %esp	#,
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
.LFE1:
	.size	get_d_directed, .-get_d_directed
.globl scs_get_d_minf
	.type	scs_get_d_minf, @function
scs_get_d_minf:
.LFB2:
	.loc 1 366 0
	.cfi_startproc
.LVL61:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$16, %esp	#,
	movl	12(%ebp), %eax	# x, x
	.loc 1 369 0
	movl	44(%eax), %edx	# <variable>.sign, <variable>.sign
	shrl	$31, %edx	#, tmp60
	movl	%edx, 8(%esp)	# tmp60,
	movl	%eax, 4(%esp)	# x,
	movl	8(%ebp), %eax	# result, result
	movl	%eax, (%esp)	# result,
	call	get_d_directed	#
	.loc 1 370 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	scs_get_d_minf, .-scs_get_d_minf
.globl scs_get_d_pinf
	.type	scs_get_d_pinf, @function
scs_get_d_pinf:
.LFB3:
	.loc 1 377 0
	.cfi_startproc
.LVL62:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$16, %esp	#,
	movl	12(%ebp), %eax	# x, x
	.loc 1 380 0
	movl	44(%eax), %edx	# <variable>.sign, <variable>.sign
	notl	%edx	# tmp61
	shrl	$31, %edx	#, tmp60
	movl	%edx, 8(%esp)	# tmp60,
	movl	%eax, 4(%esp)	# x,
	movl	8(%ebp), %eax	# result, result
	movl	%eax, (%esp)	# result,
	call	get_d_directed	#
	.loc 1 381 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	scs_get_d_pinf, .-scs_get_d_pinf
.globl scs_get_d_zero
	.type	scs_get_d_zero, @function
scs_get_d_zero:
.LFB4:
	.loc 1 388 0
	.cfi_startproc
.LVL63:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$16, %esp	#,
	.loc 1 390 0
	movl	$0, 8(%esp)	#,
	movl	12(%ebp), %eax	# x, x
	movl	%eax, 4(%esp)	# x,
	movl	8(%ebp), %eax	# result, result
	movl	%eax, (%esp)	# result,
	call	get_d_directed	#
	.loc 1 391 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	scs_get_d_zero, .-scs_get_d_zero
	.section	.rodata
	.align 4
	.type	radix_rng_double, @object
	.size	radix_rng_double, 8
radix_rng_double:
# i:
	.long	0
	.long	2079326208
	.align 4
	.type	max_double, @object
	.size	max_double, 8
max_double:
# i:
	.long	-1
	.long	2146435071
	.align 4
	.type	radix_mtwo_double, @object
	.size	radix_mtwo_double, 8
radix_mtwo_double:
# i:
	.long	0
	.long	1009778688
	.align 4
	.type	min_double, @object
	.size	min_double, 8
min_double:
# i:
	.long	1
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1056964608
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL7-.Ltext0
	.long	.LVL9-.Ltext0
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL4-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL4-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL15-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL11-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL26-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL39-.Ltext0
	.long	.LVL40-.Ltext0
	.value	0x4
	.byte	0x73
	.sleb128 -971
	.byte	0x9f
	.long	.LVL40-.Ltext0
	.long	.LVL46-.Ltext0
	.value	0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.long	.LVL46-.Ltext0
	.long	.LVL49-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL49-.Ltext0
	.long	.LVL52-.Ltext0
	.value	0x3
	.byte	0x77
	.sleb128 -8
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL31-.Ltext0
	.long	.LVL38-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL38-.Ltext0
	.long	.LVL60-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL30-.Ltext0
	.long	.LVL37-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL46-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL27-.Ltext0
	.long	.LVL42-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL46-.Ltext0
	.long	.LVL53-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL54-.Ltext0
	.long	.LVL55-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL32-.Ltext0
	.long	.LVL33-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL34-.Ltext0
	.long	.LVL35-.Ltext0
	.value	0x5
	.byte	0x3
	.long	max_double
	.long	.LVL41-.Ltext0
	.long	.LVL46-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL47-.Ltext0
	.long	.LVL48-.Ltext0
	.value	0x5
	.byte	0x3
	.long	min_double
	.long	.LVL56-.Ltext0
	.long	.LVL57-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL58-.Ltext0
	.long	.LVL60-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
	.file 2 "scs.h"
	.file 3 "scs_private.h"
	.section	.debug_info
	.long	0x341
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF29
	.byte	0x1
	.long	.LASF30
	.long	.LASF31
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x2
	.byte	0x38
	.long	0x49
	.uleb128 0x3
	.string	"i"
	.byte	0x2
	.byte	0x39
	.long	0x49
	.uleb128 0x3
	.string	"l"
	.byte	0x2
	.byte	0x3a
	.long	0x67
	.uleb128 0x3
	.string	"d"
	.byte	0x2
	.byte	0x3b
	.long	0x6e
	.byte	0x0
	.uleb128 0x4
	.long	0x60
	.long	0x59
	.uleb128 0x5
	.long	0x59
	.byte	0x1
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x8
	.long	.LASF7
	.byte	0x2
	.byte	0x3c
	.long	0x25
	.uleb128 0x9
	.string	"scs"
	.byte	0x30
	.byte	0x2
	.byte	0x64
	.long	0xbd
	.uleb128 0xa
	.long	.LASF3
	.byte	0x2
	.byte	0x66
	.long	0xbd
	.sleb128 0
	.uleb128 0xa
	.long	.LASF4
	.byte	0x2
	.byte	0x68
	.long	0x75
	.sleb128 32
	.uleb128 0xa
	.long	.LASF5
	.byte	0x2
	.byte	0x6b
	.long	0x60
	.sleb128 40
	.uleb128 0xa
	.long	.LASF6
	.byte	0x2
	.byte	0x6d
	.long	0x60
	.sleb128 44
	.byte	0x0
	.uleb128 0x4
	.long	0x59
	.long	0xcd
	.uleb128 0x5
	.long	0x59
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.long	.LASF8
	.byte	0x2
	.byte	0x76
	.long	0xd8
	.uleb128 0xb
	.byte	0x4
	.long	0x80
	.uleb128 0xc
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.long	0x171
	.uleb128 0xd
	.long	.LASF9
	.byte	0x1
	.byte	0x32
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x32
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.string	"nb"
	.byte	0x1
	.byte	0x33
	.long	0x75
	.byte	0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF10
	.byte	0x1
	.byte	0x33
	.long	0x75
	.byte	0x2
	.byte	0x75
	.sleb128 -48
	.uleb128 0x11
	.long	.LASF11
	.byte	0x1
	.byte	0x34
	.long	0x67
	.long	.LLST0
	.uleb128 0x12
	.string	"t1"
	.byte	0x1
	.byte	0x34
	.long	0x67
	.uleb128 0x11
	.long	.LASF12
	.byte	0x1
	.byte	0x35
	.long	0x60
	.long	.LLST1
	.uleb128 0x11
	.long	.LASF13
	.byte	0x1
	.byte	0x35
	.long	0x60
	.long	.LLST2
	.uleb128 0x13
	.string	"res"
	.byte	0x1
	.byte	0x36
	.long	0x6e
	.long	.LLST3
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.long	0x6e
	.uleb128 0xc
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.long	0x230
	.uleb128 0xd
	.long	.LASF9
	.byte	0x1
	.byte	0xb2
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0xb2
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.long	.LASF16
	.byte	0x1
	.byte	0xb2
	.long	0x60
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.string	"nb"
	.byte	0x1
	.byte	0xb3
	.long	0x75
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF10
	.byte	0x1
	.byte	0xb3
	.long	0x75
	.byte	0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF11
	.byte	0x1
	.byte	0xb4
	.long	0x67
	.uleb128 0x12
	.string	"t1"
	.byte	0x1
	.byte	0xb4
	.long	0x67
	.uleb128 0x11
	.long	.LASF12
	.byte	0x1
	.byte	0xb5
	.long	0x60
	.long	.LLST4
	.uleb128 0x11
	.long	.LASF13
	.byte	0x1
	.byte	0xb5
	.long	0x60
	.long	.LLST5
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0xb5
	.long	0x60
	.long	.LLST6
	.uleb128 0x11
	.long	.LASF17
	.byte	0x1
	.byte	0xb5
	.long	0x60
	.long	.LLST7
	.uleb128 0x13
	.string	"res"
	.byte	0x1
	.byte	0xb6
	.long	0x6e
	.long	.LLST8
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.value	0x16e
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.long	0x265
	.uleb128 0x16
	.long	.LASF9
	.byte	0x1
	.value	0x16e
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x16e
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.value	0x179
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.long	0x29a
	.uleb128 0x16
	.long	.LASF9
	.byte	0x1
	.value	0x179
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x179
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.value	0x184
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.long	0x2cf
	.uleb128 0x16
	.long	.LASF9
	.byte	0x1
	.value	0x184
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x184
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x14
	.long	.LASF21
	.byte	0x3
	.byte	0x47
	.long	0x2da
	.uleb128 0x18
	.long	0x75
	.uleb128 0x14
	.long	.LASF22
	.byte	0x3
	.byte	0x48
	.long	0x2da
	.uleb128 0x14
	.long	.LASF23
	.byte	0x3
	.byte	0x49
	.long	0x2da
	.uleb128 0x10
	.long	.LASF24
	.byte	0x3
	.byte	0x4a
	.long	0x2da
	.byte	0x5
	.byte	0x3
	.long	radix_mtwo_double
	.uleb128 0x10
	.long	.LASF25
	.byte	0x3
	.byte	0x4b
	.long	0x2da
	.byte	0x5
	.byte	0x3
	.long	radix_rng_double
	.uleb128 0x14
	.long	.LASF26
	.byte	0x3
	.byte	0x4c
	.long	0x2da
	.uleb128 0x10
	.long	.LASF27
	.byte	0x3
	.byte	0x4d
	.long	0x2da
	.byte	0x5
	.byte	0x3
	.long	max_double
	.uleb128 0x10
	.long	.LASF28
	.byte	0x3
	.byte	0x4e
	.long	0x2da
	.byte	0x5
	.byte	0x3
	.long	min_double
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x68
	.value	0x2
	.long	.Ldebug_info0
	.long	0x345
	.long	0xde
	.string	"scs_get_d"
	.long	0x177
	.string	"get_d_directed"
	.long	0x230
	.string	"scs_get_d_minf"
	.long	0x265
	.string	"scs_get_d_pinf"
	.long	0x29a
	.string	"scs_get_d_zero"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x30
	.value	0x2
	.long	.Ldebug_info0
	.long	0x345
	.long	0x75
	.string	"db_number"
	.long	0x80
	.string	"scs"
	.long	0xcd
	.string	"scs_ptr"
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
	.string	"radix_two_double"
.LASF0:
	.string	"unsigned int"
.LASF26:
	.string	"radix_mrng_double"
.LASF21:
	.string	"radix_one_double"
.LASF20:
	.string	"scs_get_d_zero"
.LASF23:
	.string	"radix_mone_double"
.LASF15:
	.string	"get_d_directed"
.LASF1:
	.string	"long long unsigned int"
.LASF3:
	.string	"h_word"
.LASF4:
	.string	"exception"
.LASF28:
	.string	"min_double"
.LASF12:
	.string	"expo"
.LASF19:
	.string	"scs_get_d_pinf"
.LASF11:
	.string	"lowpart"
.LASF13:
	.string	"expofinal"
.LASF31:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF10:
	.string	"rndcorr"
.LASF29:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF2:
	.string	"double"
.LASF18:
	.string	"scs_get_d_minf"
.LASF5:
	.string	"index"
.LASF30:
	.string	"scs2double.c"
.LASF16:
	.string	"rndMantissaUp"
.LASF7:
	.string	"db_number"
.LASF24:
	.string	"radix_mtwo_double"
.LASF25:
	.string	"radix_rng_double"
.LASF17:
	.string	"not_null"
.LASF27:
	.string	"max_double"
.LASF6:
	.string	"sign"
.LASF9:
	.string	"result"
.LASF8:
	.string	"scs_ptr"
.LASF14:
	.string	"scs_get_d"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
