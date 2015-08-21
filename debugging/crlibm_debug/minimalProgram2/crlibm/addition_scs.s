	.file	"addition_scs.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# addition_scs.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
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
.globl scs_set
	.type	scs_set, @function
scs_set:
.LFB0:
	.file 1 "addition_scs.c"
	.loc 1 56 0
	.cfi_startproc
.LVL0:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax	# result, result
	movl	12(%ebp), %edx	# x, x
	.loc 1 63 0
	movl	(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, (%eax)	# <variable>.h_word, <variable>.h_word
	movl	4(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 4(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 64 0
	movl	8(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 8(%eax)	# <variable>.h_word, <variable>.h_word
	movl	12(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 12(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 65 0
	movl	16(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 16(%eax)	# <variable>.h_word, <variable>.h_word
	movl	20(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 20(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 66 0
	movl	24(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 24(%eax)	# <variable>.h_word, <variable>.h_word
	movl	28(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 28(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 71 0
	fldl	32(%edx)	# <variable>.exception.d
	fstpl	32(%eax)	# <variable>.exception.d
	.loc 1 72 0
	movl	40(%edx), %ecx	# <variable>.index, <variable>.index
	movl	%ecx, 40(%eax)	# <variable>.index, <variable>.index
	.loc 1 73 0
	movl	44(%edx), %edx	# <variable>.sign, <variable>.sign
	movl	%edx, 44(%eax)	# <variable>.sign, <variable>.sign
	.loc 1 74 0
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	scs_set, .-scs_set
.globl scs_renorm
	.type	scs_renorm, @function
scs_renorm:
.LFB1:
	.loc 1 88 0
	.cfi_startproc
.LVL1:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	movl	8(%ebp), %edx	# result, result
.LVL2:
	.loc 1 88 0
	movl	$7, %eax	#, i
.LVL3:
.L4:
	.loc 1 99 0
	movl	(%edx,%eax,4), %ecx	# <variable>.h_word, tmp94
.LVL4:
	.loc 1 100 0
	subl	$1, %eax	#, i
.LVL5:
	shrl	$30, %ecx	#, tmp95
	addl	%ecx, (%edx,%eax,4)	# tmp95, <variable>.h_word
	.loc 1 101 0
	andl	$1073741823, 4(%edx,%eax,4)	#, <variable>.h_word
.LVL6:
	.loc 1 98 0
	testl	%eax, %eax	# i
	jne	.L4	#,
	.cfi_offset 3, -12
	.loc 1 104 0
	movl	(%edx), %ecx	# <variable>.h_word, D.1379
	cmpl	$1073741823, %ecx	#, D.1379
	jbe	.L5	#,
.LVL7:
	.loc 1 109 0
	movl	24(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 28(%edx)	# <variable>.h_word, <variable>.h_word
.LVL8:
	movl	20(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 24(%edx)	# <variable>.h_word, <variable>.h_word
.LVL9:
	movl	16(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 20(%edx)	# <variable>.h_word, <variable>.h_word
.LVL10:
	movl	12(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 16(%edx)	# <variable>.h_word, <variable>.h_word
.LVL11:
	movl	8(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 12(%edx)	# <variable>.h_word, <variable>.h_word
.LVL12:
	movl	4(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 8(%edx)	# <variable>.h_word, <variable>.h_word
.LVL13:
	.loc 1 111 0
	movl	%ecx, %eax	# D.1379, <variable>.h_word
	andl	$1073741823, %eax	#, tmp102
	movl	%eax, 4(%edx)	# tmp102, <variable>.h_word
	.loc 1 112 0
	shrl	$30, %ecx	#, tmp104
	movl	%ecx, (%edx)	# tmp104, <variable>.h_word
	.loc 1 113 0
	addl	$1, 40(%edx)	#, <variable>.index
	jmp	.L12	#
.LVL14:
.L5:
	.loc 1 117 0
	testl	%ecx, %ecx	# D.1379
	jne	.L12	#,
.LVL15:
	.loc 1 120 0
	cmpl	$0, 4(%edx)	#, <variable>.h_word
	jne	.L7	#,
	movb	$1, %cl	#,
.LVL16:
.L8:
	.loc 1 121 0
	addl	$1, %ecx	#, k
.LVL17:
	.loc 1 120 0
	cmpl	$0, (%edx,%ecx,4)	#, <variable>.h_word
	jne	.L13	#,
	cmpl	$8, %ecx	#, k
	jle	.L8	#,
.L13:
	.loc 1 123 0
	subl	%ecx, 40(%edx)	# k, <variable>.index
.LVL18:
	.loc 1 125 0
	cmpl	$7, %ecx	#, k
	jg	.L14	#,
.LVL19:
.L15:
	.loc 1 126 0
	movl	(%edx,%ecx,4), %ebx	# <variable>.h_word, tmp105
	movl	%ebx, (%edx,%eax,4)	# tmp105, <variable>.h_word
	.loc 1 125 0
	addl	$1, %ecx	#, j
.LVL20:
	addl	$1, %eax	#, i
.LVL21:
	cmpl	$7, %ecx	#, j
	jle	.L15	#,
	.loc 1 128 0
	cmpl	$7, %eax	#, i
	jg	.L12	#,
.LVL22:
.L14:
	.loc 1 129 0
	movl	$0, (%edx,%eax,4)	#, <variable>.h_word
	.loc 1 128 0
	addl	$1, %eax	#, i
.LVL23:
	cmpl	$7, %eax	#, i
	jle	.L14	#,
	jmp	.L12	#
.LVL24:
.L7:
	.loc 1 123 0
	subl	$1, 40(%edx)	#, <variable>.index
.LVL25:
	movl	$1, %ecx	#, j
	jmp	.L15	#
.LVL26:
.L12:
	.loc 1 133 0
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	scs_renorm, .-scs_renorm
.globl scs_renorm_no_cancel_check
	.type	scs_renorm_no_cancel_check, @function
scs_renorm_no_cancel_check:
.LFB2:
	.loc 1 145 0
	.cfi_startproc
.LVL27:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$20, %esp	#,
	movl	%ebx, -12(%ebp)	#,
	movl	%esi, -8(%ebp)	#,
	movl	%edi, -4(%ebp)	#,
	movl	8(%ebp), %eax	# result, result
.LVL28:
	.loc 1 156 0
	movl	28(%eax), %edi	# <variable>.h_word, <variable>.h_word
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	shrl	$30, %edi	#, tmp72
	addl	24(%eax), %edi	# <variable>.h_word, D.1403
	andl	$1073741823, 28(%eax)	#, <variable>.h_word
.LVL29:
	.loc 1 158 0
	movl	%edi, %esi	# D.1403, tmp74
	shrl	$30, %esi	#, tmp74
	addl	20(%eax), %esi	# <variable>.h_word, D.1406
	andl	$1073741823, %edi	#, D.1407
.LVL30:
	movl	%edi, 24(%eax)	# D.1407, <variable>.h_word
.LVL31:
	.loc 1 160 0
	movl	%esi, %ebx	# D.1406, tmp75
	shrl	$30, %ebx	#, tmp75
	addl	16(%eax), %ebx	# <variable>.h_word, D.1409
	andl	$1073741823, %esi	#, D.1410
.LVL32:
	movl	%esi, 20(%eax)	# D.1410, <variable>.h_word
.LVL33:
	.loc 1 162 0
	movl	%ebx, %ecx	# D.1409, tmp76
	shrl	$30, %ecx	#, tmp76
	addl	12(%eax), %ecx	# <variable>.h_word, D.1412
	andl	$1073741823, %ebx	#, D.1413
.LVL34:
	movl	%ebx, 16(%eax)	# D.1413, <variable>.h_word
.LVL35:
	.loc 1 164 0
	movl	%ecx, %edx	# D.1412, tmp77
	shrl	$30, %edx	#, tmp77
	addl	8(%eax), %edx	# <variable>.h_word, D.1415
	andl	$1073741823, %ecx	#, D.1412
.LVL36:
	movl	%ecx, -20(%ebp)	# D.1412, %sfp
	movl	%ecx, 12(%eax)	# D.1412, <variable>.h_word
.LVL37:
	.loc 1 166 0
	movl	%edx, %ecx	# D.1415, tmp78
	shrl	$30, %ecx	#, tmp78
	addl	4(%eax), %ecx	# <variable>.h_word, D.1418
	andl	$1073741823, %edx	#, D.1415
.LVL38:
	movl	%edx, -16(%ebp)	# D.1415, %sfp
	movl	%edx, 8(%eax)	# D.1415, <variable>.h_word
.LVL39:
	.loc 1 168 0
	movl	%ecx, %edx	# D.1418, tmp79
	shrl	$30, %edx	#, tmp79
	addl	(%eax), %edx	# <variable>.h_word, D.1421
	movl	%edx, (%eax)	# D.1421, <variable>.h_word
	andl	$1073741823, %ecx	#, D.1422
.LVL40:
	movl	%ecx, 4(%eax)	# D.1422, <variable>.h_word
	.loc 1 177 0
	cmpl	$1073741823, %edx	#, D.1421
	jbe	.L22	#,
.LVL41:
	.loc 1 182 0
	movl	%edi, 28(%eax)	# D.1407, <variable>.h_word
	movl	%esi, 24(%eax)	# D.1410, <variable>.h_word
	.loc 1 183 0
	movl	%ebx, 20(%eax)	# D.1413, <variable>.h_word
	movl	-20(%ebp), %ebx	# %sfp,
	movl	%ebx, 16(%eax)	#, <variable>.h_word
	.loc 1 184 0
	movl	-16(%ebp), %ebx	# %sfp,
	movl	%ebx, 12(%eax)	#, <variable>.h_word
	movl	%ecx, 8(%eax)	# D.1422, <variable>.h_word
	.loc 1 189 0
	movl	%edx, %ecx	# D.1421, tmp80
	andl	$1073741823, %ecx	#, tmp80
	movl	%ecx, 4(%eax)	# tmp80, <variable>.h_word
	.loc 1 190 0
	shrl	$30, %edx	#, tmp81
.LVL42:
	movl	%edx, (%eax)	# tmp81, <variable>.h_word
	.loc 1 191 0
	addl	$1, 40(%eax)	#, <variable>.index
.LVL43:
.L22:
	.loc 1 194 0
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
.LFE2:
	.size	scs_renorm_no_cancel_check, .-scs_renorm_no_cancel_check
.globl do_add_no_renorm
	.type	do_add_no_renorm, @function
do_add_no_renorm:
.LFB3:
	.loc 1 208 0
	.cfi_startproc
.LVL44:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$32, %esp	#,
	movl	8(%ebp), %edx	# result, result
	movl	12(%ebp), %ebx	# x, x
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	16(%ebp), %ecx	# y, y
	.loc 1 212 0
	cmpl	$0, 36(%ebx)	#, <variable>.exception.i
	jne	.L24	#,
.LVL45:
.LBB18:
.LBB19:
	.loc 1 63 0
	movl	(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, (%edx)	# <variable>.h_word, <variable>.h_word
	movl	4(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 4(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 64 0
	movl	8(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 8(%edx)	# <variable>.h_word, <variable>.h_word
	movl	12(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 12(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 65 0
	movl	16(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 16(%edx)	# <variable>.h_word, <variable>.h_word
	movl	20(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 20(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 66 0
	movl	24(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 24(%edx)	# <variable>.h_word, <variable>.h_word
	movl	28(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 28(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 71 0
	fldl	32(%ecx)	# <variable>.exception.d
	fstpl	32(%edx)	# <variable>.exception.d
	.loc 1 72 0
	movl	40(%ecx), %eax	# <variable>.index, <variable>.index
	movl	%eax, 40(%edx)	# <variable>.index, <variable>.index
	.loc 1 73 0
	movl	44(%ecx), %eax	# <variable>.sign, <variable>.sign
	movl	%eax, 44(%edx)	# <variable>.sign, <variable>.sign
.LBE19:
.LBE18:
	.loc 1 212 0
	jmp	.L31	#
.LVL46:
.L24:
	.loc 1 213 0
	movl	$0, %eax	#, i
	.loc 1 216 0
	leal	-44(%ebp), %edi	#, tmp129
	.loc 1 213 0
	cmpl	$0, 36(%ecx)	#, <variable>.exception.i
	jne	.L32	#,
.LVL47:
.LBB20:
.LBB21:
	.loc 1 63 0
	movl	(%ebx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, (%edx)	# <variable>.h_word, <variable>.h_word
	movl	4(%ebx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 4(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 64 0
	movl	8(%ebx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 8(%edx)	# <variable>.h_word, <variable>.h_word
	movl	12(%ebx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 12(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 65 0
	movl	16(%ebx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 16(%edx)	# <variable>.h_word, <variable>.h_word
	movl	20(%ebx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 20(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 66 0
	movl	24(%ebx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 24(%edx)	# <variable>.h_word, <variable>.h_word
	movl	28(%ebx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 28(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 71 0
	fldl	32(%ebx)	# <variable>.exception.d
	fstpl	32(%edx)	# <variable>.exception.d
	.loc 1 72 0
	movl	40(%ebx), %eax	# <variable>.index, <variable>.index
	movl	%eax, 40(%edx)	# <variable>.index, <variable>.index
	.loc 1 73 0
	movl	44(%ebx), %eax	# <variable>.sign, <variable>.sign
	movl	%eax, 44(%edx)	# <variable>.sign, <variable>.sign
.LBE21:
.LBE20:
	.loc 1 213 0
	jmp	.L31	#
.LVL48:
.L32:
	.loc 1 216 0
	movl	(%ebx,%eax,4), %esi	# <variable>.h_word, tmp110
	movl	%esi, (%edi,%eax,4)	# tmp110, RES
	.loc 1 215 0
	addl	$1, %eax	#, i
.LVL49:
	cmpl	$8, %eax	#, i
	jne	.L32	#,
	.loc 1 218 0
	movl	40(%ebx), %eax	# <variable>.index, <variable>.index
.LVL50:
	subl	40(%ecx), %eax	# <variable>.index, Diff
.LVL51:
	.loc 1 219 0
	fldl	32(%ebx)	# <variable>.exception.d
	faddl	32(%ecx)	# <variable>.exception.d
	fsubs	.LC1	#
	fstpl	32(%edx)	# <variable>.exception.d
	.loc 1 220 0
	movl	40(%ebx), %esi	# <variable>.index, <variable>.index
	movl	%esi, 40(%edx)	# <variable>.index, <variable>.index
	.loc 1 221 0
	movl	44(%ebx), %ebx	# <variable>.sign, <variable>.sign
	movl	%ebx, 44(%edx)	# <variable>.sign, <variable>.sign
.LVL52:
	.loc 1 223 0
	cmpl	$7, %eax	#, Diff
	ja	.L28	#,
	.loc 1 224 0
	leal	-44(%ebp), %ebx	#, tmp128
.LVL53:
.L29:
	movl	(%ecx), %esi	# <variable>.h_word, tmp124
	addl	%esi, (%ebx,%eax,4)	# tmp124, RES
	.loc 1 223 0
	addl	$1, %eax	#, i.150
.LVL54:
	addl	$4, %ecx	#, ivtmp.138
	cmpl	$8, %eax	#, i.150
	jne	.L29	#,
.L28:
.LVL55:
	movl	$0, %eax	#, i.152
	.loc 1 227 0
	leal	-44(%ebp), %ebx	#, tmp127
.LVL56:
.L30:
	movl	(%ebx,%eax,4), %ecx	# RES, tmp126
	movl	%ecx, (%edx,%eax,4)	# tmp126, <variable>.h_word
	.loc 1 226 0
	addl	$1, %eax	#, i.152
.LVL57:
	cmpl	$8, %eax	#, i.152
	jne	.L30	#,
.LVL58:
.L31:
	.loc 1 230 0
	addl	$32, %esp	#,
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
.LFE3:
	.size	do_add_no_renorm, .-do_add_no_renorm
.globl scs_add_no_renorm
	.type	scs_add_no_renorm, @function
scs_add_no_renorm:
.LFB4:
	.loc 1 242 0
	.cfi_startproc
.LVL59:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$12, %esp	#,
	movl	8(%ebp), %ecx	# result, result
	movl	12(%ebp), %edx	# x, x
	movl	16(%ebp), %eax	# y, y
	.loc 1 243 0
	movl	40(%edx), %ebx	# <variable>.index, <variable>.index
	.cfi_offset 3, -12
	cmpl	40(%eax), %ebx	# <variable>.index, <variable>.index
	jl	.L37	#,
	.loc 1 244 0
	movl	%eax, 8(%esp)	# y,
	movl	%edx, 4(%esp)	# x,
	movl	%ecx, (%esp)	# result,
	call	do_add_no_renorm	#
	jmp	.L39	#
.L37:
	.loc 1 246 0
	movl	%edx, 8(%esp)	# x,
	movl	%eax, 4(%esp)	# y,
	movl	%ecx, (%esp)	# result,
	call	do_add_no_renorm	#
.L39:
	.loc 1 248 0
	addl	$12, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	scs_add_no_renorm, .-scs_add_no_renorm
.globl do_add
	.type	do_add, @function
do_add:
.LFB5:
	.loc 1 258 0
	.cfi_startproc
.LVL60:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$32, %esp	#,
	movl	8(%ebp), %edx	# result, result
	movl	12(%ebp), %eax	# x, x
	movl	16(%ebp), %ecx	# y, y
	.loc 1 263 0
	movl	40(%eax), %ebx	# <variable>.index, <variable>.index
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	40(%ecx), %ebx	# <variable>.index, Diff
.LVL61:
	.loc 1 264 0
	fldl	32(%eax)	# <variable>.exception.d
	faddl	32(%ecx)	# <variable>.exception.d
	fsubs	.LC1	#
	fstpl	32(%edx)	# <variable>.exception.d
	.loc 1 265 0
	movl	40(%eax), %esi	# <variable>.index,
	movl	%esi, -20(%ebp)	#, %sfp
	movl	%esi, 40(%edx)	#, <variable>.index
	.loc 1 266 0
	movl	44(%eax), %esi	# <variable>.sign, <variable>.sign
	movl	%esi, 44(%edx)	# <variable>.sign, <variable>.sign
	.loc 1 344 0
	cmpl	$7, %ebx	#, Diff
	ja	.L41	#,
	jmp	*.L50(,%ebx,4)	#
	.section	.rodata
	.align 4
	.align 4
.L50:
	.long	.L42
	.long	.L43
	.long	.L44
	.long	.L45
	.long	.L46
	.long	.L47
	.long	.L48
	.long	.L49
	.text
.L42:
	.loc 1 346 0
	movl	(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
.LVL62:
	addl	(%eax), %ebx	# <variable>.h_word, <variable>.h_word
	movl	%ebx, -44(%ebp)	# <variable>.h_word, %sfp
.LVL63:
	movl	4(%ecx), %esi	# <variable>.h_word, <variable>.h_word
	addl	4(%eax), %esi	# <variable>.h_word, <variable>.h_word
	movl	%esi, -40(%ebp)	# <variable>.h_word, %sfp
.LVL64:
	.loc 1 347 0
	movl	8(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
.LVL65:
	addl	8(%eax), %ebx	# <variable>.h_word, <variable>.h_word
	movl	%ebx, -36(%ebp)	# <variable>.h_word, %sfp
.LVL66:
	movl	12(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
.LVL67:
	addl	12(%eax), %ebx	# <variable>.h_word, <variable>.h_word
	movl	%ebx, -16(%ebp)	# <variable>.h_word, %sfp
.LVL68:
	.loc 1 348 0
	movl	16(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
.LVL69:
	addl	16(%eax), %ebx	# <variable>.h_word, r4
.LVL70:
	movl	20(%ecx), %esi	# <variable>.h_word, <variable>.h_word
.LVL71:
	addl	20(%eax), %esi	# <variable>.h_word, r5
.LVL72:
	.loc 1 349 0
	movl	24(%ecx), %edi	# <variable>.h_word, <variable>.h_word
	addl	24(%eax), %edi	# <variable>.h_word, r6
.LVL73:
	movl	28(%ecx), %ecx	# <variable>.h_word, <variable>.h_word
	addl	28(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, -24(%ebp)	# <variable>.h_word, %sfp
.LVL74:
	jmp	.L51	#
.LVL75:
.L43:
	.loc 1 351 0
	movl	(%eax), %edi	# <variable>.h_word,
	movl	%edi, -44(%ebp)	#, %sfp
.LVL76:
	movl	(%ecx), %esi	# <variable>.h_word, <variable>.h_word
	addl	4(%eax), %esi	# <variable>.h_word, <variable>.h_word
	movl	%esi, -40(%ebp)	# <variable>.h_word, %sfp
.LVL77:
	.loc 1 352 0
	movl	4(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
.LVL78:
	addl	8(%eax), %ebx	# <variable>.h_word, <variable>.h_word
	movl	%ebx, -36(%ebp)	# <variable>.h_word, %sfp
.LVL79:
	movl	8(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
.LVL80:
	addl	12(%eax), %ebx	# <variable>.h_word, <variable>.h_word
	movl	%ebx, -16(%ebp)	# <variable>.h_word, %sfp
.LVL81:
	.loc 1 353 0
	movl	12(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
.LVL82:
	addl	16(%eax), %ebx	# <variable>.h_word, r4
.LVL83:
	movl	16(%ecx), %esi	# <variable>.h_word, <variable>.h_word
.LVL84:
	addl	20(%eax), %esi	# <variable>.h_word, r5
.LVL85:
	.loc 1 354 0
	movl	20(%ecx), %edi	# <variable>.h_word, <variable>.h_word
	addl	24(%eax), %edi	# <variable>.h_word, r6
.LVL86:
	movl	24(%ecx), %ecx	# <variable>.h_word, <variable>.h_word
	addl	28(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, -24(%ebp)	# <variable>.h_word, %sfp
.LVL87:
	jmp	.L51	#
.LVL88:
.L44:
	.loc 1 356 0
	movl	(%eax), %ebx	# <variable>.h_word,
.LVL89:
	movl	%ebx, -44(%ebp)	#, %sfp
.LVL90:
	movl	4(%eax), %esi	# <variable>.h_word,
	movl	%esi, -40(%ebp)	#, %sfp
.LVL91:
	.loc 1 357 0
	movl	(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
	addl	8(%eax), %ebx	# <variable>.h_word, <variable>.h_word
	movl	%ebx, -36(%ebp)	# <variable>.h_word, %sfp
.LVL92:
	movl	4(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
.LVL93:
	addl	12(%eax), %ebx	# <variable>.h_word, <variable>.h_word
	movl	%ebx, -16(%ebp)	# <variable>.h_word, %sfp
.LVL94:
	.loc 1 358 0
	movl	8(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
.LVL95:
	addl	16(%eax), %ebx	# <variable>.h_word, r4
.LVL96:
	movl	12(%ecx), %esi	# <variable>.h_word, <variable>.h_word
	addl	20(%eax), %esi	# <variable>.h_word, r5
.LVL97:
	.loc 1 359 0
	movl	16(%ecx), %edi	# <variable>.h_word, <variable>.h_word
	addl	24(%eax), %edi	# <variable>.h_word, r6
.LVL98:
	movl	20(%ecx), %ecx	# <variable>.h_word, <variable>.h_word
	addl	28(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, -24(%ebp)	# <variable>.h_word, %sfp
.LVL99:
	jmp	.L51	#
.LVL100:
.L45:
	.loc 1 361 0
	movl	(%eax), %edi	# <variable>.h_word,
	movl	%edi, -44(%ebp)	#, %sfp
.LVL101:
	movl	4(%eax), %ebx	# <variable>.h_word,
.LVL102:
	movl	%ebx, -40(%ebp)	#, %sfp
.LVL103:
	.loc 1 362 0
	movl	8(%eax), %esi	# <variable>.h_word,
	movl	%esi, -36(%ebp)	#, %sfp
.LVL104:
	movl	(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
	addl	12(%eax), %ebx	# <variable>.h_word, <variable>.h_word
	movl	%ebx, -16(%ebp)	# <variable>.h_word, %sfp
.LVL105:
	.loc 1 363 0
	movl	4(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
.LVL106:
	addl	16(%eax), %ebx	# <variable>.h_word, r4
.LVL107:
	movl	8(%ecx), %esi	# <variable>.h_word, <variable>.h_word
	addl	20(%eax), %esi	# <variable>.h_word, r5
.LVL108:
	.loc 1 364 0
	movl	12(%ecx), %edi	# <variable>.h_word, <variable>.h_word
	addl	24(%eax), %edi	# <variable>.h_word, r6
.LVL109:
	movl	16(%ecx), %ecx	# <variable>.h_word, <variable>.h_word
	addl	28(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, -24(%ebp)	# <variable>.h_word, %sfp
.LVL110:
	jmp	.L51	#
.LVL111:
.L46:
	.loc 1 366 0
	movl	(%eax), %edi	# <variable>.h_word,
	movl	%edi, -44(%ebp)	#, %sfp
.LVL112:
	movl	4(%eax), %ebx	# <variable>.h_word,
.LVL113:
	movl	%ebx, -40(%ebp)	#, %sfp
.LVL114:
	.loc 1 367 0
	movl	8(%eax), %esi	# <variable>.h_word,
	movl	%esi, -36(%ebp)	#, %sfp
.LVL115:
	movl	12(%eax), %edi	# <variable>.h_word,
	movl	%edi, -16(%ebp)	#, %sfp
.LVL116:
	.loc 1 368 0
	movl	(%ecx), %ebx	# <variable>.h_word, <variable>.h_word
	addl	16(%eax), %ebx	# <variable>.h_word, r4
.LVL117:
	movl	4(%ecx), %esi	# <variable>.h_word, <variable>.h_word
	addl	20(%eax), %esi	# <variable>.h_word, r5
.LVL118:
	.loc 1 369 0
	movl	8(%ecx), %edi	# <variable>.h_word, <variable>.h_word
	addl	24(%eax), %edi	# <variable>.h_word, r6
.LVL119:
	movl	12(%ecx), %ecx	# <variable>.h_word, <variable>.h_word
	addl	28(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, -24(%ebp)	# <variable>.h_word, %sfp
.LVL120:
	jmp	.L51	#
.LVL121:
.L47:
	.loc 1 371 0
	movl	(%eax), %ebx	# <variable>.h_word,
.LVL122:
	movl	%ebx, -44(%ebp)	#, %sfp
.LVL123:
	movl	4(%eax), %esi	# <variable>.h_word,
	movl	%esi, -40(%ebp)	#, %sfp
.LVL124:
	.loc 1 372 0
	movl	8(%eax), %edi	# <variable>.h_word,
	movl	%edi, -36(%ebp)	#, %sfp
.LVL125:
	movl	12(%eax), %ebx	# <variable>.h_word,
	movl	%ebx, -16(%ebp)	#, %sfp
.LVL126:
	.loc 1 373 0
	movl	16(%eax), %ebx	# <variable>.h_word, r4
.LVL127:
	movl	(%ecx), %esi	# <variable>.h_word, <variable>.h_word
	addl	20(%eax), %esi	# <variable>.h_word, r5
.LVL128:
	.loc 1 374 0
	movl	4(%ecx), %edi	# <variable>.h_word, <variable>.h_word
	addl	24(%eax), %edi	# <variable>.h_word, r6
.LVL129:
	movl	8(%ecx), %ecx	# <variable>.h_word, <variable>.h_word
	addl	28(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, -24(%ebp)	# <variable>.h_word, %sfp
.LVL130:
	jmp	.L51	#
.LVL131:
.L48:
	.loc 1 376 0
	movl	(%eax), %esi	# <variable>.h_word,
	movl	%esi, -44(%ebp)	#, %sfp
.LVL132:
	movl	4(%eax), %edi	# <variable>.h_word,
	movl	%edi, -40(%ebp)	#, %sfp
.LVL133:
	.loc 1 377 0
	movl	8(%eax), %ebx	# <variable>.h_word,
.LVL134:
	movl	%ebx, -36(%ebp)	#, %sfp
.LVL135:
	movl	12(%eax), %esi	# <variable>.h_word,
	movl	%esi, -16(%ebp)	#, %sfp
.LVL136:
	.loc 1 378 0
	movl	16(%eax), %ebx	# <variable>.h_word, r4
.LVL137:
	movl	20(%eax), %esi	# <variable>.h_word, r5
.LVL138:
	.loc 1 379 0
	movl	(%ecx), %edi	# <variable>.h_word, <variable>.h_word
	addl	24(%eax), %edi	# <variable>.h_word, r6
.LVL139:
	movl	4(%ecx), %ecx	# <variable>.h_word, <variable>.h_word
	addl	28(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, -24(%ebp)	# <variable>.h_word, %sfp
.LVL140:
	jmp	.L51	#
.LVL141:
.L49:
	.loc 1 381 0
	movl	(%eax), %edi	# <variable>.h_word,
	movl	%edi, -44(%ebp)	#, %sfp
.LVL142:
	movl	4(%eax), %ebx	# <variable>.h_word,
.LVL143:
	movl	%ebx, -40(%ebp)	#, %sfp
.LVL144:
	.loc 1 382 0
	movl	8(%eax), %esi	# <variable>.h_word,
	movl	%esi, -36(%ebp)	#, %sfp
.LVL145:
	movl	12(%eax), %edi	# <variable>.h_word,
	movl	%edi, -16(%ebp)	#, %sfp
.LVL146:
	.loc 1 383 0
	movl	16(%eax), %ebx	# <variable>.h_word, r4
.LVL147:
	movl	20(%eax), %esi	# <variable>.h_word, r5
.LVL148:
	.loc 1 384 0
	movl	24(%eax), %edi	# <variable>.h_word, r6
.LVL149:
	movl	(%ecx), %ecx	# <variable>.h_word, <variable>.h_word
	addl	28(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, -24(%ebp)	# <variable>.h_word, %sfp
.LVL150:
	jmp	.L51	#
.LVL151:
.L41:
	.loc 1 387 0
	movl	(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, (%edx)	# <variable>.h_word, <variable>.h_word
	movl	4(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 4(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 388 0
	movl	8(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 8(%edx)	# <variable>.h_word, <variable>.h_word
	movl	12(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 12(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 389 0
	movl	16(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 16(%edx)	# <variable>.h_word, <variable>.h_word
	movl	20(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 20(%edx)	# <variable>.h_word, <variable>.h_word
	.loc 1 390 0
	movl	24(%eax), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 24(%edx)	# <variable>.h_word, <variable>.h_word
	movl	28(%eax), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 28(%edx)	# <variable>.h_word, <variable>.h_word
	jmp	.L54	#
.LVL152:
.L51:
	.loc 1 396 0
	movl	-24(%ebp), %eax	# %sfp, tmp174
	sarl	$30, %eax	#, tmp174
	leal	(%eax,%edi), %edi	#, r6.270
.LVL153:
	.loc 1 397 0
	movl	%edi, %eax	# r6.270, tmp175
	sarl	$30, %eax	#, tmp175
	leal	(%eax,%esi), %esi	#, r5.273
.LVL154:
	andl	$1073741823, %edi	#, r6.270
.LVL155:
	movl	%edi, -32(%ebp)	# r6.270, %sfp
.LVL156:
	.loc 1 398 0
	movl	%esi, %eax	# r5.273, tmp176
	sarl	$30, %eax	#, tmp176
	leal	(%eax,%ebx), %ebx	#, r4.276
.LVL157:
	andl	$1073741823, %esi	#, r5.273
.LVL158:
	movl	%esi, -28(%ebp)	# r5.273, %sfp
.LVL159:
	.loc 1 399 0
	movl	%ebx, %ecx	# r4.276, tmp177
	sarl	$30, %ecx	#, tmp177
	addl	-16(%ebp), %ecx	# %sfp, r3.279
.LVL160:
	andl	$1073741823, %ebx	#, r4.276
.LVL161:
	movl	%ebx, -16(%ebp)	# r4.276, %sfp
.LVL162:
	.loc 1 400 0
	movl	%ecx, %ebx	# r3.279, tmp178
.LVL163:
	sarl	$30, %ebx	#, tmp178
	addl	-36(%ebp), %ebx	# %sfp, r2.282
.LVL164:
	andl	$1073741823, %ecx	#, r3.283
.LVL165:
	.loc 1 401 0
	movl	%ebx, %esi	# r2.282, tmp179
.LVL166:
	sarl	$30, %esi	#, tmp179
	addl	-40(%ebp), %esi	# %sfp, r1.285
.LVL167:
	andl	$1073741823, %ebx	#, r2.286
.LVL168:
	.loc 1 402 0
	movl	%esi, %eax	# r1.285, tmp180
	sarl	$30, %eax	#, tmp180
	addl	-44(%ebp), %eax	# %sfp, r0.288
.LVL169:
	andl	$1073741823, %esi	#, r1.289
.LVL170:
	.loc 1 403 0
	movl	%eax, %edi	# r0.288, tmp181
.LVL171:
	sarl	$30, %edi	#, tmp181
	.loc 1 405 0
	testl	%edi, %edi	# tmp181
	je	.L53	#,
	.loc 1 406 0
	movl	-32(%ebp), %edi	# %sfp,
	movl	%edi, 28(%edx)	#, <variable>.h_word
	movl	-28(%ebp), %edi	# %sfp,
	movl	%edi, 24(%edx)	#, <variable>.h_word
	movl	-16(%ebp), %edi	# %sfp,
	movl	%edi, 20(%edx)	#, <variable>.h_word
	movl	%ecx, 16(%edx)	# r3.283, <variable>.h_word
	.loc 1 407 0
	movl	%ebx, 12(%edx)	# r2.286, <variable>.h_word
	movl	%esi, 8(%edx)	# r1.289, <variable>.h_word
	andl	$1073741823, %eax	#, tmp182
.LVL172:
	movl	%eax, 4(%edx)	# tmp182, <variable>.h_word
	.loc 1 408 0
	movl	$1, (%edx)	#, <variable>.h_word
	.loc 1 409 0
	movl	-20(%ebp), %eax	# %sfp, tmp183
	addl	$1, %eax	#, tmp183
	movl	%eax, 40(%edx)	# tmp183, <variable>.index
	jmp	.L54	#
.LVL173:
.L53:
	.loc 1 412 0
	movl	%eax, (%edx)	# r0.288, <variable>.h_word
	movl	%esi, 4(%edx)	# r1.289, <variable>.h_word
	movl	%ebx, 8(%edx)	# r2.286, <variable>.h_word
	movl	%ecx, 12(%edx)	# r3.283, <variable>.h_word
	.loc 1 413 0
	movl	-16(%ebp), %eax	# %sfp,
.LVL174:
	movl	%eax, 16(%edx)	#, <variable>.h_word
	movl	-28(%ebp), %ebx	# %sfp,
.LVL175:
	movl	%ebx, 20(%edx)	#, <variable>.h_word
	movl	-32(%ebp), %esi	# %sfp,
.LVL176:
	movl	%esi, 24(%edx)	#, <variable>.h_word
	movl	-24(%ebp), %eax	# %sfp, tmp184
	andl	$1073741823, %eax	#, tmp184
	movl	%eax, 28(%edx)	# tmp184, <variable>.h_word
.LVL177:
.L54:
	.loc 1 463 0
	addl	$32, %esp	#,
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
.LFE5:
	.size	do_add, .-do_add
.globl scs_cmp_mant
	.type	scs_cmp_mant, @function
scs_cmp_mant:
.LFB6:
	.loc 1 481 0
	.cfi_startproc
.LVL178:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$8, %esp	#,
	movl	%ebx, (%esp)	#,
	movl	%esi, 4(%esp)	#,
	movl	8(%ebp), %ecx	# x, x
	movl	12(%ebp), %ebx	# y, y
	.cfi_offset 6, -12
	.cfi_offset 3, -16
.LVL179:
	.loc 1 488 0
	movl	(%ecx), %eax	# <variable>.h_word, D.1584
	movl	(%ebx), %edx	# <variable>.h_word, D.1585
	cmpl	%edx, %eax	# D.1585, D.1584
	jne	.L56	#,
	movl	$1, %esi	#, i
.LVL180:
.L57:
	movl	(%ecx,%esi,4), %eax	# <variable>.h_word, D.1584
	movl	(%ebx,%esi,4), %edx	# <variable>.h_word, D.1585
	cmpl	%edx, %eax	# D.1585, D.1584
	jne	.L56	#,
	.loc 1 487 0
	addl	$1, %esi	#, i
.LVL181:
	cmpl	$8, %esi	#, i
	jne	.L57	#,
	movl	$0, %eax	#, D.1590
	jmp	.L58	#
.LVL182:
.L56:
	.loc 1 489 0
	cmpl	%eax, %edx	# D.1584, D.1585
	sbbl	%eax, %eax	# D.1590
	andl	$2, %eax	#, D.1590
	subl	$1, %eax	#, D.1590
.L58:
	.loc 1 492 0
	movl	(%esp), %ebx	#,
	movl	4(%esp), %esi	#,
	movl	%ebp, %esp	#,
	.cfi_def_cfa_register 4
	.cfi_restore 6
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE6:
	.size	scs_cmp_mant, .-scs_cmp_mant
.globl do_sub
	.type	do_sub, @function
do_sub:
.LFB7:
	.loc 1 507 0
	.cfi_startproc
.LVL183:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$76, %esp	#,
	movl	8(%ebp), %eax	# result, result
	movl	12(%ebp), %edx	# x, x
	movl	16(%ebp), %edi	# y, y
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.loc 1 512 0
	fldl	32(%edx)	# <variable>.exception.d
	faddl	32(%edi)	# <variable>.exception.d
	fsubs	.LC1	#
	fstpl	32(%eax)	# <variable>.exception.d
	.loc 1 513 0
	movl	40(%edx), %ecx	# <variable>.index, D.1628
	movl	%ecx, %esi	# D.1628, Diff
	subl	40(%edi), %esi	# <variable>.index, Diff
.LVL184:
	.loc 1 514 0
	movl	%ecx, 40(%eax)	# D.1628, <variable>.index
	.loc 1 517 0
	cmpl	$7, %esi	#, Diff
	jle	.L63	#,
.LVL185:
.LBB26:
.LBB27:
	.loc 1 63 0
	movl	(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, (%eax)	# <variable>.h_word, <variable>.h_word
	movl	4(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 4(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 64 0
	movl	8(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 8(%eax)	# <variable>.h_word, <variable>.h_word
	movl	12(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 12(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 65 0
	movl	16(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 16(%eax)	# <variable>.h_word, <variable>.h_word
	movl	20(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 20(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 66 0
	movl	24(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 24(%eax)	# <variable>.h_word, <variable>.h_word
	movl	28(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 28(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 71 0
	fldl	32(%edx)	# <variable>.exception.d
	fstpl	32(%eax)	# <variable>.exception.d
	.loc 1 72 0
	movl	40(%edx), %ecx	# <variable>.index, <variable>.index
	movl	%ecx, 40(%eax)	# <variable>.index, <variable>.index
	.loc 1 73 0
	movl	44(%edx), %edx	# <variable>.sign, <variable>.sign
	movl	%edx, 44(%eax)	# <variable>.sign, <variable>.sign
.LBE27:
.LBE26:
	.loc 1 518 0
	jmp	.L83	#
.LVL186:
.L63:
	.loc 1 524 0
	testl	%esi, %esi	# Diff
	jne	.L65	#,
.LVL187:
.LBB28:
.LBB29:
	.loc 1 488 0
	movl	(%edx), %ebx	# <variable>.h_word, D.2536
	movl	(%edi), %ecx	# <variable>.h_word, D.2535
	cmpl	%ecx, %ebx	# D.2535, D.2536
	jne	.L66	#,
	movw	$1, %si	#,
.LVL188:
.L67:
	movl	(%edx,%esi,4), %ebx	# <variable>.h_word, D.2536
	movl	(%edi,%esi,4), %ecx	# <variable>.h_word, D.2535
	cmpl	%ecx, %ebx	# D.2535, D.2536
	jne	.L66	#,
	.loc 1 487 0
	addl	$1, %esi	#, i
.LVL189:
	cmpl	$8, %esi	#, i
	jne	.L67	#,
	jmp	.L98	#
.LVL190:
.L66:
	.loc 1 489 0
	cmpl	%ecx, %ebx	# D.2535, D.2536
	.p2align 4,,3
	jbe	.L69	#,
.LVL191:
.LBE29:
.LBE28:
	.loc 1 536 0
	movl	44(%edx), %ecx	# <variable>.sign, <variable>.sign
	movl	%ecx, 44(%eax)	# <variable>.sign, <variable>.sign
.LVL192:
	movl	$7, %ecx	#, i
	movl	$0, %esi	#, carry
	.loc 1 540 0
	movl	%eax, -60(%ebp)	# result, %sfp
.LVL193:
.L70:
	.loc 1 538 0
	movl	(%edx,%ecx,4), %eax	# <variable>.h_word, tmp189
	subl	(%edi,%ecx,4), %eax	# <variable>.h_word, tmp187
	subl	%esi, %eax	# carry, s.428
.LVL194:
	.loc 1 539 0
	movl	%eax, %ebx	# s.428, D.1646
	andl	$1073741824, %ebx	#, D.1646
	movl	%ebx, %esi	# D.1646, carry
	sarl	$30, %esi	#, carry
.LVL195:
	.loc 1 540 0
	leal	(%ebx,%eax), %eax	#, tmp191
.LVL196:
	movl	%eax, -56(%ebp,%ecx,4)	# tmp191, res
	.loc 1 537 0
	subl	$1, %ecx	#, i
.LVL197:
	cmpl	$-1, %ecx	#, i
	jne	.L70	#,
	movl	-60(%ebp), %eax	# %sfp, result
	jmp	.L71	#
.LVL198:
.L72:
	.loc 1 548 0
	movl	(%edi,%ecx,4), %eax	# <variable>.h_word, tmp194
	subl	(%edx,%ecx,4), %eax	# <variable>.h_word, tmp192
	subl	%esi, %eax	# carry.435, s.433
.LVL199:
	.loc 1 549 0
	movl	%eax, %ebx	# s.433, temp.434
	andl	$1073741824, %ebx	#, temp.434
	movl	%ebx, %esi	# temp.434, carry.435
	sarl	$30, %esi	#, carry.435
.LVL200:
	.loc 1 550 0
	leal	(%ebx,%eax), %eax	#, tmp196
.LVL201:
	movl	%eax, -56(%ebp,%ecx,4)	# tmp196, res
	.loc 1 547 0
	subl	$1, %ecx	#, i.437
.LVL202:
	cmpl	$-1, %ecx	#, i.437
	jne	.L72	#,
	movl	-60(%ebp), %eax	# %sfp, result
	jmp	.L71	#
.LVL203:
.L65:
	.loc 1 559 0
	movl	44(%edx), %ecx	# <variable>.sign, <variable>.sign
	movl	%ecx, 44(%eax)	# <variable>.sign, <variable>.sign
.LVL204:
	.loc 1 560 0
	movl	$7, %ebx	#, tmp198
	subl	%esi, %ebx	# Diff, j.439
.LVL205:
	movl	$7, %ecx	#, i.447
	movl	$0, %esi	#, carry.445
.LVL206:
	.loc 1 566 0
	movl	%eax, -60(%ebp)	# result, %sfp
.LVL207:
.L75:
	.loc 1 561 0
	testl	%ebx, %ebx	# j.439
	js	.L73	#,
	.loc 1 562 0
	movl	(%edx,%ecx,4), %eax	# <variable>.h_word, tmp201
	subl	(%edi,%ebx,4), %eax	# <variable>.h_word, tmp199
	subl	%esi, %eax	# carry.445, s
.LVL208:
	jmp	.L74	#
.LVL209:
.L73:
	.loc 1 564 0
	movl	(%edx,%ecx,4), %eax	# <variable>.h_word, tmp202
	subl	%esi, %eax	# carry.445, s
.LVL210:
.L74:
	.loc 1 565 0
	movl	%eax, %esi	# s, temp.444
	andl	$1073741824, %esi	#, temp.444
.LVL211:
	.loc 1 566 0
	leal	(%esi,%eax), %eax	#, tmp204
.LVL212:
	movl	%eax, -56(%ebp,%ecx,4)	# tmp204, res
	.loc 1 560 0
	subl	$1, %ecx	#, i.447
.LVL213:
	cmpl	$-1, %ecx	#, i.447
	je	.L96	#,
	.loc 1 565 0
	sarl	$30, %esi	#, carry.445
.LVL214:
	.loc 1 560 0
	subl	$1, %ebx	#, j.439
.LVL215:
	jmp	.L75	#
.LVL216:
.L96:
	movl	-60(%ebp), %eax	# %sfp, result
.LVL217:
.L71:
	.loc 1 571 0
	cmpl	$0, -56(%ebp)	#, res
	jne	.L76	#,
	movl	$0, %edx	#, i.448
	leal	-56(%ebp), %ecx	#, tmp215
.LVL218:
.L77:
	addl	$1, %edx	#, i.448
.LVL219:
	cmpl	$0, (%ecx,%edx,4)	#, res
	jne	.L84	#,
	cmpl	$7, %edx	#, i.448
	jle	.L77	#,
.L84:
	movl	%edx, %edi	# i.448, i.454
	.loc 1 573 0
	testl	%edx, %edx	# i.448
	jle	.L76	#,
	.loc 1 574 0
	subl	%edx, 40(%eax)	# i.454, <variable>.index
.LVL220:
	.loc 1 575 0
	movl	%eax, %ebx	# result, ivtmp.351
	movl	$0, %ecx	#, j
	cmpl	$7, %edx	#, i.454
	jg	.L85	#,
	leal	-56(%ebp), %ecx	#, tmp213
.LVL221:
.L86:
	movl	(%ecx,%edx,4), %esi	# res, tmp207
	movl	%esi, (%ebx)	# tmp207, <variable>.h_word
	addl	$1, %edx	#, i.448
.LVL222:
	addl	$4, %ebx	#, ivtmp.351
	cmpl	$8, %edx	#, i.448
	jne	.L86	#,
	notl	%edi	# tmp208
	leal	9(%edi), %ecx	#, j
.LVL223:
	.loc 1 576 0
	cmpl	$7, %ecx	#, j
	jg	.L83	#,
.LVL224:
.L85:
	movl	$0, (%eax,%ecx,4)	#, <variable>.h_word
	addl	$1, %ecx	#, j
.LVL225:
	cmpl	$7, %ecx	#, j
	jle	.L85	#,
	jmp	.L83	#
.LVL226:
.L76:
	movl	$0, %edx	#, i.452
	.loc 1 580 0
	leal	-56(%ebp), %ebx	#, tmp214
.L82:
	movl	(%ebx,%edx,4), %ecx	# res, tmp210
	movl	%ecx, (%eax,%edx,4)	# tmp210, <variable>.h_word
	.loc 1 579 0
	addl	$1, %edx	#, i.452
.LVL227:
	cmpl	$8, %edx	#, i.452
	jne	.L82	#,
	jmp	.L83	#
.LVL228:
.L98:
	.loc 1 529 0
	movl	%eax, (%esp)	# result,
	call	scs_zero	#
	.p2align 4,,5
	jmp	.L83	#
.LVL229:
.L69:
	.loc 1 546 0
	movl	44(%edx), %ecx	# <variable>.sign, <variable>.sign
	negl	%ecx	# tmp211
	movl	%ecx, 44(%eax)	# tmp211, <variable>.sign
.LVL230:
	movl	$7, %ecx	#, i.437
	movl	$0, %esi	#, carry.435
	movl	%eax, -60(%ebp)	# result, %sfp
	jmp	.L72	#
.LVL231:
.L83:
	.loc 1 584 0
	addl	$76, %esp	#,
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
	.size	do_sub, .-do_sub
.globl scs_sub
	.type	scs_sub, @function
scs_sub:
.LFB9:
	.loc 1 630 0
	.cfi_startproc
.LVL232:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	movl	8(%ebp), %ebx	# result, result
	.cfi_offset 3, -12
	movl	12(%ebp), %edx	# x, x
	movl	16(%ebp), %eax	# y, y
	.loc 1 631 0
	cmpl	$0, 36(%edx)	#, <variable>.exception.i
	jne	.L100	#,
.LVL233:
.LBB34:
.LBB35:
	.loc 1 63 0
	movl	(%eax), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, (%ebx)	# <variable>.h_word, <variable>.h_word
	movl	4(%eax), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 4(%ebx)	# <variable>.h_word, <variable>.h_word
	.loc 1 64 0
	movl	8(%eax), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 8(%ebx)	# <variable>.h_word, <variable>.h_word
	movl	12(%eax), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 12(%ebx)	# <variable>.h_word, <variable>.h_word
	.loc 1 65 0
	movl	16(%eax), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 16(%ebx)	# <variable>.h_word, <variable>.h_word
	movl	20(%eax), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 20(%ebx)	# <variable>.h_word, <variable>.h_word
	.loc 1 66 0
	movl	24(%eax), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 24(%ebx)	# <variable>.h_word, <variable>.h_word
	movl	28(%eax), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 28(%ebx)	# <variable>.h_word, <variable>.h_word
	.loc 1 71 0
	fldl	32(%eax)	# <variable>.exception.d
	fstpl	32(%ebx)	# <variable>.exception.d
	.loc 1 72 0
	movl	40(%eax), %edx	# <variable>.index, <variable>.index
	movl	%edx, 40(%ebx)	# <variable>.index, <variable>.index
.LBE35:
.LBE34:
	.loc 1 632 0
	movl	44(%eax), %eax	# <variable>.sign, <variable>.sign
	negl	%eax	# tmp71
	movl	%eax, 44(%ebx)	# tmp71, <variable>.sign
	jmp	.L106	#
.LVL234:
.L100:
	.loc 1 633 0
	cmpl	$0, 36(%eax)	#, <variable>.exception.i
	jne	.L102	#,
.LVL235:
.LBB36:
.LBB37:
	.loc 1 63 0
	movl	(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, (%ebx)	# <variable>.h_word, <variable>.h_word
	movl	4(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 4(%ebx)	# <variable>.h_word, <variable>.h_word
	.loc 1 64 0
	movl	8(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 8(%ebx)	# <variable>.h_word, <variable>.h_word
	movl	12(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 12(%ebx)	# <variable>.h_word, <variable>.h_word
	.loc 1 65 0
	movl	16(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 16(%ebx)	# <variable>.h_word, <variable>.h_word
	movl	20(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 20(%ebx)	# <variable>.h_word, <variable>.h_word
	.loc 1 66 0
	movl	24(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 24(%ebx)	# <variable>.h_word, <variable>.h_word
	movl	28(%edx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, 28(%ebx)	# <variable>.h_word, <variable>.h_word
	.loc 1 71 0
	fldl	32(%edx)	# <variable>.exception.d
	fstpl	32(%ebx)	# <variable>.exception.d
	.loc 1 72 0
	movl	40(%edx), %eax	# <variable>.index, <variable>.index
	movl	%eax, 40(%ebx)	# <variable>.index, <variable>.index
	.loc 1 73 0
	movl	44(%edx), %eax	# <variable>.sign, <variable>.sign
	movl	%eax, 44(%ebx)	# <variable>.sign, <variable>.sign
.LBE37:
.LBE36:
	.loc 1 634 0
	jmp	.L106	#
.LVL236:
.L102:
	.loc 1 636 0
	movl	44(%edx), %ecx	# <variable>.sign, <variable>.sign
	cmpl	44(%eax), %ecx	# <variable>.sign, <variable>.sign
	jne	.L103	#,
	.loc 1 638 0
	movl	40(%edx), %ecx	# <variable>.index, <variable>.index
	cmpl	40(%eax), %ecx	# <variable>.index, <variable>.index
	jl	.L104	#,
	.loc 1 639 0
	movl	%eax, 8(%esp)	# y,
	movl	%edx, 4(%esp)	# x,
	movl	%ebx, (%esp)	# result,
	call	do_sub	#
	jmp	.L106	#
.L104:
	.loc 1 641 0
	movl	%edx, 8(%esp)	# x,
	movl	%eax, 4(%esp)	# y,
	movl	%ebx, (%esp)	# result,
	call	do_sub	#
	.loc 1 642 0
	negl	44(%ebx)	# <variable>.sign
	jmp	.L106	#
.L103:
	.loc 1 645 0
	movl	40(%edx), %ecx	# <variable>.index, <variable>.index
	cmpl	40(%eax), %ecx	# <variable>.index, <variable>.index
	jl	.L105	#,
	.loc 1 646 0
	movl	%eax, 8(%esp)	# y,
	movl	%edx, 4(%esp)	# x,
	movl	%ebx, (%esp)	# result,
	call	do_add	#
	jmp	.L106	#
.L105:
	.loc 1 648 0
	movl	%edx, 8(%esp)	# x,
	movl	%eax, 4(%esp)	# y,
	movl	%ebx, (%esp)	# result,
	call	do_add	#
	.loc 1 649 0
	negl	44(%ebx)	# <variable>.sign
.L106:
	.loc 1 653 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	scs_sub, .-scs_sub
.globl scs_add
	.type	scs_add, @function
scs_add:
.LFB8:
	.loc 1 601 0
	.cfi_startproc
.LVL237:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	movl	8(%ebp), %eax	# result, result
	movl	12(%ebp), %ecx	# x, x
	movl	16(%ebp), %edx	# y, y
	.loc 1 603 0
	cmpl	$0, 36(%ecx)	#, <variable>.exception.i
	jne	.L108	#,
	.cfi_offset 3, -12
.LVL238:
.LBB42:
.LBB43:
	.loc 1 63 0
	movl	(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, (%eax)	# <variable>.h_word, <variable>.h_word
	movl	4(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 4(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 64 0
	movl	8(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 8(%eax)	# <variable>.h_word, <variable>.h_word
	movl	12(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 12(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 65 0
	movl	16(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 16(%eax)	# <variable>.h_word, <variable>.h_word
	movl	20(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 20(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 66 0
	movl	24(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 24(%eax)	# <variable>.h_word, <variable>.h_word
	movl	28(%edx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, 28(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 71 0
	fldl	32(%edx)	# <variable>.exception.d
	fstpl	32(%eax)	# <variable>.exception.d
	.loc 1 72 0
	movl	40(%edx), %ecx	# <variable>.index, <variable>.index
	movl	%ecx, 40(%eax)	# <variable>.index, <variable>.index
	.loc 1 73 0
	movl	44(%edx), %edx	# <variable>.sign, <variable>.sign
	movl	%edx, 44(%eax)	# <variable>.sign, <variable>.sign
.LBE43:
.LBE42:
	.loc 1 603 0
	jmp	.L114	#
.LVL239:
.L108:
	.loc 1 604 0
	cmpl	$0, 36(%edx)	#, <variable>.exception.i
	jne	.L110	#,
.LVL240:
.LBB44:
.LBB45:
	.loc 1 63 0
	movl	(%ecx), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, (%eax)	# <variable>.h_word, <variable>.h_word
	movl	4(%ecx), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 4(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 64 0
	movl	8(%ecx), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 8(%eax)	# <variable>.h_word, <variable>.h_word
	movl	12(%ecx), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 12(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 65 0
	movl	16(%ecx), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 16(%eax)	# <variable>.h_word, <variable>.h_word
	movl	20(%ecx), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 20(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 66 0
	movl	24(%ecx), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 24(%eax)	# <variable>.h_word, <variable>.h_word
	movl	28(%ecx), %edx	# <variable>.h_word, <variable>.h_word
	movl	%edx, 28(%eax)	# <variable>.h_word, <variable>.h_word
	.loc 1 71 0
	fldl	32(%ecx)	# <variable>.exception.d
	fstpl	32(%eax)	# <variable>.exception.d
	.loc 1 72 0
	movl	40(%ecx), %edx	# <variable>.index, <variable>.index
	movl	%edx, 40(%eax)	# <variable>.index, <variable>.index
	.loc 1 73 0
	movl	44(%ecx), %edx	# <variable>.sign, <variable>.sign
	movl	%edx, 44(%eax)	# <variable>.sign, <variable>.sign
.LBE45:
.LBE44:
	.loc 1 604 0
	jmp	.L114	#
.LVL241:
.L110:
	.loc 1 606 0
	movl	44(%ecx), %ebx	# <variable>.sign, <variable>.sign
	cmpl	44(%edx), %ebx	# <variable>.sign, <variable>.sign
	jne	.L111	#,
	.loc 1 607 0
	movl	40(%ecx), %ebx	# <variable>.index, <variable>.index
	cmpl	40(%edx), %ebx	# <variable>.index, <variable>.index
	jl	.L112	#,
	.loc 1 608 0
	movl	%edx, 8(%esp)	# y,
	movl	%ecx, 4(%esp)	# x,
	movl	%eax, (%esp)	# result,
	call	do_add	#
	jmp	.L114	#
.L112:
	.loc 1 610 0
	movl	%ecx, 8(%esp)	# x,
	movl	%edx, 4(%esp)	# y,
	movl	%eax, (%esp)	# result,
	call	do_add	#
	jmp	.L114	#
.L111:
	.loc 1 612 0
	movl	40(%ecx), %ebx	# <variable>.index, <variable>.index
	cmpl	40(%edx), %ebx	# <variable>.index, <variable>.index
	jl	.L113	#,
	.loc 1 613 0
	movl	%edx, 8(%esp)	# y,
	movl	%ecx, 4(%esp)	# x,
	movl	%eax, (%esp)	# result,
	call	do_sub	#
	jmp	.L114	#
.L113:
	.loc 1 615 0
	movl	%ecx, 8(%esp)	# x,
	movl	%edx, 4(%esp)	# y,
	movl	%eax, (%esp)	# result,
	call	do_sub	#
.L114:
	.loc 1 618 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	scs_add, .-scs_add
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1065353216
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x11
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x11
	.sleb128 -1073741824
	.byte	0x1a
	.byte	0x9f
	.long	.LVL5-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x11
	.byte	0x70
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x11
	.sleb128 -1073741824
	.byte	0x1a
	.byte	0x9f
	.long	.LVL7-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0xe
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x6
	.byte	0x11
	.sleb128 -1073741824
	.byte	0x1a
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.long	.LVL14-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x11
	.byte	0x70
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x11
	.sleb128 -1073741824
	.byte	0x1a
	.byte	0x9f
	.long	.LVL24-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x11
	.byte	0x70
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x11
	.sleb128 -1073741824
	.byte	0x1a
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL8-.Ltext0
	.long	.LVL9-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL14-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL23-.Ltext0
	.long	.LVL25-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL25-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL20-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL25-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL17-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL24-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x6
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.long	.LVL29-.Ltext0
	.long	.LVL30-.Ltext0
	.value	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.long	.LVL31-.Ltext0
	.long	.LVL32-.Ltext0
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.long	.LVL33-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.long	.LVL35-.Ltext0
	.long	.LVL36-.Ltext0
	.value	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.long	.LVL37-.Ltext0
	.long	.LVL38-.Ltext0
	.value	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.long	.LVL39-.Ltext0
	.long	.LVL40-.Ltext0
	.value	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL41-.Ltext0
	.long	.LVL42-.Ltext0
	.value	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.long	.LVL42-.Ltext0
	.long	.LVL43-.Ltext0
	.value	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x6
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL52-.Ltext0
	.long	.LVL55-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL55-.Ltext0
	.long	.LVL56-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL57-.Ltext0
	.long	.LVL58-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL52-.Ltext0
	.long	.LVL53-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL51-.Ltext0
	.long	.LVL53-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL45-.Ltext0
	.long	.LVL46-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL45-.Ltext0
	.long	.LVL46-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL47-.Ltext0
	.long	.LVL48-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL47-.Ltext0
	.long	.LVL48-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL152-.Ltext0
	.long	.LVL153-.Ltext0
	.value	0x6
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x4e
	.byte	0x26
	.byte	0x9f
	.long	.LVL153-.Ltext0
	.long	.LVL155-.Ltext0
	.value	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x4e
	.byte	0x26
	.byte	0x9f
	.long	.LVL155-.Ltext0
	.long	.LVL156-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL156-.Ltext0
	.long	.LVL158-.Ltext0
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4e
	.byte	0x26
	.byte	0x9f
	.long	.LVL158-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL159-.Ltext0
	.long	.LVL161-.Ltext0
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x4e
	.byte	0x26
	.byte	0x9f
	.long	.LVL162-.Ltext0
	.long	.LVL165-.Ltext0
	.value	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x4e
	.byte	0x26
	.byte	0x9f
	.long	.LVL165-.Ltext0
	.long	.LVL168-.Ltext0
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x4e
	.byte	0x26
	.byte	0x9f
	.long	.LVL168-.Ltext0
	.long	.LVL170-.Ltext0
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4e
	.byte	0x26
	.byte	0x9f
	.long	.LVL170-.Ltext0
	.long	.LVL172-.Ltext0
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4e
	.byte	0x26
	.byte	0x9f
	.long	.LVL173-.Ltext0
	.long	.LVL177-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL61-.Ltext0
	.long	.LVL62-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL75-.Ltext0
	.long	.LVL78-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL88-.Ltext0
	.long	.LVL89-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL100-.Ltext0
	.long	.LVL102-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL111-.Ltext0
	.long	.LVL113-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL121-.Ltext0
	.long	.LVL122-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL131-.Ltext0
	.long	.LVL134-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL141-.Ltext0
	.long	.LVL143-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL151-.Ltext0
	.long	.LVL152-.Ltext0
	.value	0x1
	.byte	0x53
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL63-.Ltext0
	.long	.LVL65-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL65-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	.LVL76-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	.LVL90-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	.LVL101-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	.LVL112-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	.LVL123-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	.LVL132-.Ltext0
	.long	.LVL141-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	.LVL142-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	.LVL152-.Ltext0
	.long	.LVL169-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	.LVL169-.Ltext0
	.long	.LVL172-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL173-.Ltext0
	.long	.LVL174-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL174-.Ltext0
	.long	.LVL177-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL64-.Ltext0
	.long	.LVL71-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL71-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL77-.Ltext0
	.long	.LVL84-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL84-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL91-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	.LVL103-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	.LVL114-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	.LVL124-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	.LVL133-.Ltext0
	.long	.LVL141-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	.LVL144-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	.LVL152-.Ltext0
	.long	.LVL167-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL167-.Ltext0
	.long	.LVL176-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL176-.Ltext0
	.long	.LVL177-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL66-.Ltext0
	.long	.LVL67-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL67-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL79-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL80-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL92-.Ltext0
	.long	.LVL93-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL93-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL104-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	.LVL115-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	.LVL125-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	.LVL135-.Ltext0
	.long	.LVL141-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	.LVL145-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	.LVL152-.Ltext0
	.long	.LVL164-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL164-.Ltext0
	.long	.LVL175-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL175-.Ltext0
	.long	.LVL177-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL68-.Ltext0
	.long	.LVL69-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL69-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL81-.Ltext0
	.long	.LVL82-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL82-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL94-.Ltext0
	.long	.LVL95-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL95-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL105-.Ltext0
	.long	.LVL106-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL106-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL116-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.long	.LVL126-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.long	.LVL136-.Ltext0
	.long	.LVL141-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.long	.LVL146-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.long	.LVL152-.Ltext0
	.long	.LVL160-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL160-.Ltext0
	.long	.LVL177-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL70-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL83-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL96-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL107-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL117-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL127-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.long	.LVL137-.Ltext0
	.long	.LVL141-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.long	.LVL147-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.long	.LVL152-.Ltext0
	.long	.LVL161-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL162-.Ltext0
	.long	.LVL163-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL163-.Ltext0
	.long	.LVL177-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL72-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL85-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL97-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL108-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL118-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL128-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL138-.Ltext0
	.long	.LVL141-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.long	.LVL148-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.long	.LVL152-.Ltext0
	.long	.LVL158-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL159-.Ltext0
	.long	.LVL166-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL166-.Ltext0
	.long	.LVL177-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL73-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL86-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL98-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL109-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL119-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL129-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL139-.Ltext0
	.long	.LVL141-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL149-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.long	.LVL152-.Ltext0
	.long	.LVL155-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL156-.Ltext0
	.long	.LVL171-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL171-.Ltext0
	.long	.LVL177-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL74-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL87-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL99-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL110-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL120-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL130-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL140-.Ltext0
	.long	.LVL141-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL150-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL152-.Ltext0
	.long	.LVL153-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	.LVL153-.Ltext0
	.long	.LVL177-.Ltext0
	.value	0xa
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0xc
	.long	0x3fffffff
	.byte	0x1a
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL179-.Ltext0
	.long	.LVL180-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL181-.Ltext0
	.long	.LVL182-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL194-.Ltext0
	.long	.LVL196-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL199-.Ltext0
	.long	.LVL201-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL208-.Ltext0
	.long	.LVL209-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL210-.Ltext0
	.long	.LVL212-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL186-.Ltext0
	.long	.LVL193-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL195-.Ltext0
	.long	.LVL198-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL200-.Ltext0
	.long	.LVL203-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL203-.Ltext0
	.long	.LVL207-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL211-.Ltext0
	.long	.LVL214-.Ltext0
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4e
	.byte	0x26
	.byte	0x9f
	.long	.LVL214-.Ltext0
	.long	.LVL216-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL216-.Ltext0
	.long	.LVL217-.Ltext0
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x4e
	.byte	0x26
	.byte	0x9f
	.long	.LVL228-.Ltext0
	.long	.LVL231-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL184-.Ltext0
	.long	.LVL188-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL203-.Ltext0
	.long	.LVL206-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL192-.Ltext0
	.long	.LVL193-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL197-.Ltext0
	.long	.LVL198-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL202-.Ltext0
	.long	.LVL203-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL204-.Ltext0
	.long	.LVL207-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL213-.Ltext0
	.long	.LVL217-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL217-.Ltext0
	.long	.LVL218-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL219-.Ltext0
	.long	.LVL226-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL227-.Ltext0
	.long	.LVL228-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL230-.Ltext0
	.long	.LVL231-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL205-.Ltext0
	.long	.LVL207-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL213-.Ltext0
	.long	.LVL215-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL215-.Ltext0
	.long	.LVL216-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL216-.Ltext0
	.long	.LVL217-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL220-.Ltext0
	.long	.LVL221-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL223-.Ltext0
	.long	.LVL224-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL225-.Ltext0
	.long	.LVL226-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL191-.Ltext0
	.long	.LVL198-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL198-.Ltext0
	.long	.LVL203-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL228-.Ltext0
	.long	.LVL229-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL229-.Ltext0
	.long	.LVL231-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL185-.Ltext0
	.long	.LVL186-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL185-.Ltext0
	.long	.LVL186-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL187-.Ltext0
	.long	.LVL188-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL190-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL228-.Ltext0
	.long	.LVL229-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL233-.Ltext0
	.long	.LVL234-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL233-.Ltext0
	.long	.LVL234-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL235-.Ltext0
	.long	.LVL236-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL235-.Ltext0
	.long	.LVL236-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL238-.Ltext0
	.long	.LVL239-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL238-.Ltext0
	.long	.LVL239-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL240-.Ltext0
	.long	.LVL241-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LVL240-.Ltext0
	.long	.LVL241-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
	.file 2 "scs.h"
	.file 3 "scs_private.h"
	.section	.debug_info
	.long	0x677
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF28
	.byte	0x1
	.long	.LASF29
	.long	.LASF30
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
	.long	.LASF31
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.long	0x101
	.uleb128 0xd
	.long	.LASF9
	.byte	0x1
	.byte	0x38
	.long	0xcd
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x38
	.long	0xcd
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.value	0x1e1
	.byte	0x1
	.long	0x60
	.byte	0x3
	.long	0x133
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.value	0x1e1
	.long	0xcd
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.value	0x1e1
	.long	0xcd
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x1e5
	.long	0x60
	.byte	0x0
	.uleb128 0x12
	.long	0xde
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.long	0x157
	.uleb128 0x13
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	0xf7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF10
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.long	0x1b1
	.uleb128 0x15
	.long	.LASF9
	.byte	0x1
	.byte	0x58
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.byte	0x5c
	.long	0x59
	.long	.LLST0
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.long	0x60
	.long	.LLST1
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x5d
	.long	0x60
	.long	.LLST2
	.uleb128 0x16
	.string	"k"
	.byte	0x1
	.byte	0x5d
	.long	0x60
	.long	.LLST3
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.long	0x1f4
	.uleb128 0x15
	.long	.LASF9
	.byte	0x1
	.byte	0x91
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF12
	.byte	0x1
	.byte	0x96
	.long	0x59
	.long	.LLST4
	.uleb128 0x16
	.string	"c0"
	.byte	0x1
	.byte	0x96
	.long	0x59
	.long	.LLST5
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.long	0x2b1
	.uleb128 0x15
	.long	.LASF9
	.byte	0x1
	.byte	0xd0
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0xd0
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.byte	0xd0
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.string	"RES"
	.byte	0x1
	.byte	0xd1
	.long	0xbd
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xd2
	.long	0x59
	.long	.LLST6
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0xd2
	.long	0x59
	.long	.LLST7
	.uleb128 0x17
	.long	.LASF14
	.byte	0x1
	.byte	0xd2
	.long	0x59
	.long	.LLST8
	.uleb128 0x1a
	.long	0xde
	.long	.LBB18
	.long	.LBE18
	.byte	0x1
	.byte	0xd4
	.long	0x28e
	.uleb128 0x1b
	.long	0xf7
	.long	.LLST9
	.uleb128 0x1b
	.long	0xec
	.long	.LLST10
	.byte	0x0
	.uleb128 0x1c
	.long	0xde
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.byte	0xd5
	.uleb128 0x1b
	.long	0xf7
	.long	.LLST11
	.uleb128 0x1b
	.long	0xec
	.long	.LLST12
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.long	0x2ef
	.uleb128 0x15
	.long	.LASF9
	.byte	0x1
	.byte	0xed
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0xed
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.byte	0xed
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.value	0x101
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.long	0x3c9
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x101
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.value	0x101
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.value	0x101
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.long	.LASF12
	.byte	0x1
	.value	0x104
	.long	0x60
	.long	.LLST13
	.uleb128 0x20
	.long	.LASF14
	.byte	0x1
	.value	0x104
	.long	0x60
	.long	.LLST14
	.uleb128 0x21
	.string	"r0"
	.byte	0x1
	.value	0x105
	.long	0x60
	.long	.LLST15
	.uleb128 0x21
	.string	"r1"
	.byte	0x1
	.value	0x105
	.long	0x60
	.long	.LLST16
	.uleb128 0x21
	.string	"r2"
	.byte	0x1
	.value	0x105
	.long	0x60
	.long	.LLST17
	.uleb128 0x21
	.string	"r3"
	.byte	0x1
	.value	0x105
	.long	0x60
	.long	.LLST18
	.uleb128 0x21
	.string	"r4"
	.byte	0x1
	.value	0x105
	.long	0x60
	.long	.LLST19
	.uleb128 0x21
	.string	"r5"
	.byte	0x1
	.value	0x105
	.long	0x60
	.long	.LLST20
	.uleb128 0x21
	.string	"r6"
	.byte	0x1
	.value	0x105
	.long	0x60
	.long	.LLST21
	.uleb128 0x21
	.string	"r7"
	.byte	0x1
	.value	0x105
	.long	0x60
	.long	.LLST22
	.byte	0x0
	.uleb128 0x12
	.long	0x101
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.long	0x3f6
	.uleb128 0x13
	.long	0x114
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	0x11e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	0x128
	.long	.LLST23
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.value	0x1fb
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0x4f5
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x1fb
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.value	0x1fb
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.value	0x1fb
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x1fc
	.long	0x60
	.long	.LLST24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x1
	.value	0x1fc
	.long	0x60
	.long	.LLST25
	.uleb128 0x20
	.long	.LASF14
	.byte	0x1
	.value	0x1fd
	.long	0x60
	.long	.LLST26
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x1fd
	.long	0x60
	.long	.LLST27
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.value	0x1fd
	.long	0x60
	.long	.LLST28
	.uleb128 0x21
	.string	"cp"
	.byte	0x1
	.value	0x1fd
	.long	0x60
	.long	.LLST29
	.uleb128 0x23
	.string	"res"
	.byte	0x1
	.value	0x1fe
	.long	0x4f5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	0xde
	.long	.LBB26
	.long	.LBE26
	.byte	0x1
	.value	0x206
	.long	0x4c6
	.uleb128 0x1b
	.long	0xf7
	.long	.LLST30
	.uleb128 0x1b
	.long	0xec
	.long	.LLST31
	.byte	0x0
	.uleb128 0x25
	.long	0x101
	.long	.LBB28
	.long	.LBE28
	.byte	0x1
	.value	0x20d
	.uleb128 0x26
	.long	0x11e
	.uleb128 0x26
	.long	0x114
	.uleb128 0x27
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x22
	.long	0x128
	.long	.LLST32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x60
	.long	0x505
	.uleb128 0x5
	.long	0x59
	.byte	0x7
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.value	0x272
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0x591
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x272
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.value	0x272
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.value	0x272
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	0xde
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.value	0x278
	.long	0x56d
	.uleb128 0x1b
	.long	0xf7
	.long	.LLST33
	.uleb128 0x1b
	.long	0xec
	.long	.LLST34
	.byte	0x0
	.uleb128 0x25
	.long	0xde
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.value	0x27a
	.uleb128 0x1b
	.long	0xf7
	.long	.LLST35
	.uleb128 0x1b
	.long	0xec
	.long	.LLST36
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.value	0x255
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0x61d
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x255
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.value	0x255
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"y"
	.byte	0x1
	.value	0x255
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	0xde
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.value	0x25b
	.long	0x5f9
	.uleb128 0x1b
	.long	0xf7
	.long	.LLST37
	.uleb128 0x1b
	.long	0xec
	.long	.LLST38
	.byte	0x0
	.uleb128 0x25
	.long	0xde
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.value	0x25c
	.uleb128 0x1b
	.long	0xf7
	.long	.LLST39
	.uleb128 0x1b
	.long	0xec
	.long	.LLST40
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LASF20
	.byte	0x3
	.byte	0x47
	.long	0x628
	.uleb128 0x29
	.long	0x75
	.uleb128 0x28
	.long	.LASF21
	.byte	0x3
	.byte	0x48
	.long	0x628
	.uleb128 0x28
	.long	.LASF22
	.byte	0x3
	.byte	0x49
	.long	0x628
	.uleb128 0x28
	.long	.LASF23
	.byte	0x3
	.byte	0x4a
	.long	0x628
	.uleb128 0x28
	.long	.LASF24
	.byte	0x3
	.byte	0x4b
	.long	0x628
	.uleb128 0x28
	.long	.LASF25
	.byte	0x3
	.byte	0x4c
	.long	0x628
	.uleb128 0x28
	.long	.LASF26
	.byte	0x3
	.byte	0x4d
	.long	0x628
	.uleb128 0x28
	.long	.LASF27
	.byte	0x3
	.byte	0x4e
	.long	0x628
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x34
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
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xb2
	.value	0x2
	.long	.Ldebug_info0
	.long	0x67b
	.long	0x133
	.string	"scs_set"
	.long	0x157
	.string	"scs_renorm"
	.long	0x1b1
	.string	"scs_renorm_no_cancel_check"
	.long	0x1f4
	.string	"do_add_no_renorm"
	.long	0x2b1
	.string	"scs_add_no_renorm"
	.long	0x2ef
	.string	"do_add"
	.long	0x3c9
	.string	"scs_cmp_mant"
	.long	0x3f6
	.string	"do_sub"
	.long	0x505
	.string	"scs_sub"
	.long	0x591
	.string	"scs_add"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x30
	.value	0x2
	.long	.Ldebug_info0
	.long	0x67b
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
.LASF29:
	.string	"addition_scs.c"
.LASF30:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF16:
	.string	"do_add"
.LASF22:
	.string	"radix_mone_double"
.LASF12:
	.string	"carry"
.LASF18:
	.string	"scs_sub"
.LASF6:
	.string	"sign"
.LASF13:
	.string	"do_add_no_renorm"
.LASF17:
	.string	"do_sub"
.LASF2:
	.string	"double"
.LASF26:
	.string	"max_double"
.LASF19:
	.string	"scs_add"
.LASF15:
	.string	"scs_add_no_renorm"
.LASF21:
	.string	"radix_two_double"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"long long unsigned int"
.LASF9:
	.string	"result"
.LASF4:
	.string	"exception"
.LASF32:
	.string	"scs_cmp_mant"
.LASF28:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF23:
	.string	"radix_mtwo_double"
.LASF5:
	.string	"index"
.LASF8:
	.string	"scs_ptr"
.LASF24:
	.string	"radix_rng_double"
.LASF3:
	.string	"h_word"
.LASF11:
	.string	"scs_renorm_no_cancel_check"
.LASF14:
	.string	"Diff"
.LASF31:
	.string	"scs_set"
.LASF27:
	.string	"min_double"
.LASF7:
	.string	"db_number"
.LASF25:
	.string	"radix_mrng_double"
.LASF10:
	.string	"scs_renorm"
.LASF20:
	.string	"radix_one_double"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
