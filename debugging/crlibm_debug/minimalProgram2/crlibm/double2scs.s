	.file	"double2scs.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# double2scs.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
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
.globl scs_set_d
	.type	scs_set_d, @function
scs_set_d:
.LFB0:
	.file 1 "double2scs.c"
	.loc 1 36 0
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
	subl	$20, %esp	#,
	movl	8(%ebp), %ebx	# result, result
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	fldl	12(%ebp)	# x
	.loc 1 41 0
	fldz
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jb	.L13	#,
	movl	$1, 44(%ebx)	#, <variable>.sign
	fstl	-24(%ebp)	# %sfp
	jmp	.L4	#
.L13:
	.loc 1 42 0
	movl	$-1, 44(%ebx)	#, <variable>.sign
	fld	%st(0)	#
	fchs
	fstpl	-24(%ebp)	# %sfp
.L4:
	.loc 1 44 0
	movl	-20(%ebp), %esi	# %sfp, exponent
	andl	$2146435072, %esi	#, exponent
.LVL1:
	.loc 1 46 0
	cmpl	$2146435072, %esi	#, exponent
	jne	.L5	#,
	.loc 1 50 0
	fstpl	32(%ebx)	# <variable>.exception.d
.LVL2:
	movl	$0, %eax	#, i
.LVL3:
.L6:
	.loc 1 52 0
	movl	$0, (%ebx,%eax,4)	#, <variable>.h_word
	.loc 1 51 0
	addl	$1, %eax	#, i
.LVL4:
	cmpl	$8, %eax	#, i
	jne	.L6	#,
	.loc 1 54 0
	movl	$0, 40(%ebx)	#, <variable>.index
	.loc 1 55 0
	movl	$1, 44(%ebx)	#, <variable>.sign
	jmp	.L10	#
.LVL5:
.L5:
	fstp	%st(0)	#
	.loc 1 61 0
	fld1
	fstpl	32(%ebx)	# <variable>.exception.d
	.loc 1 65 0
	testl	%esi, %esi	# exponent
	jne	.L8	#,
	.loc 1 67 0
	fldl	-24(%ebp)	# %sfp
	fmull	radix_two_double	# radix_two_double.d
	fstpl	-24(%ebp)	# %sfp
	.loc 1 68 0
	movl	-20(%ebp), %esi	# %sfp, exponent
.LVL6:
	andl	$2146435072, %esi	#, exponent
.LVL7:
	.loc 1 69 0
	movl	$-2, 40(%ebx)	#, <variable>.index
	jmp	.L9	#
.L8:
	.loc 1 71 0
	movl	$0, 40(%ebx)	#, <variable>.index
.L9:
	.loc 1 74 0
	sarl	$20, %esi	#, exponent.25
.LVL8:
	.loc 1 76 0
	leal	1977(%esi), %ecx	#, tmp89
	movl	$-2004318071, %edx	#, tmp92
	movl	%ecx, %eax	# tmp89,
	imull	%edx	# tmp92
	addl	%ecx, %edx	# tmp89, tmp93
	sarl	$4, %edx	#, tmp94
	movl	%ecx, %eax	# tmp89, tmp95
	sarl	$31, %eax	#, tmp95
	movl	%edx, %ecx	# tmp94, tmp90
	subl	%eax, %ecx	# tmp95, tmp90
	subl	$100, %ecx	#, ind
.LVL9:
	.loc 1 81 0
	imull	$-30, %ecx, %eax	#, ind, tmp97
	leal	-1022(%esi,%eax), %eax	#,
	movl	%eax, -28(%ebp)	#, %sfp
.LVL10:
	.loc 1 83 0
	addl	%ecx, 40(%ebx)	# ind, <variable>.index
	.loc 1 86 0
	movl	-24(%ebp), %edi	# %sfp, tmp108
	movl	-20(%ebp), %ecx	# %sfp, tmp109
.LVL11:
	andl	$1048575, %ecx	#, tmp109
	movl	%edi, %eax	# tmp108, D.1372
.LVL12:
	movl	%ecx, %edx	# tmp109,
	orl	$1048576, %edx	#,
	.loc 1 91 0
	movl	$53, %ecx	#, tmp100
	subl	-28(%ebp), %ecx	# %sfp, tmp99
	movl	%edi, %esi	# D.1372,
.LVL13:
	movl	%edx, %edi	# D.1372,
	shrdl	%edx, %esi	# tmp99, tmp5,
	shrl	%cl, %edi	# tmp99,
	testb	$32, %cl	#, tmp99
	je	.L14	#,
	movl	%edi, %esi	#,
.L14:
	movl	%esi, (%ebx)	#, <variable>.h_word
	.loc 1 94 0
	movl	-28(%ebp), %ecx	# %sfp, tmp102
	addl	$11, %ecx	#, tmp102
	movl	%eax, %esi	# D.1372, D.1378
	movl	%edx, %edi	# D.1372, D.1378
	shldl	%eax, %edi	# tmp102, D.1378, D.1378
	sall	%cl, %esi	# tmp102, D.1378
	testb	$32, %cl	#, tmp102
	je	.L15	#,
	movl	%esi, %edi	# D.1378, D.1378
	xorl	%esi, %esi	# D.1378
.L15:
	movl	%edi, %edx	# D.1378, mantissa
.LVL14:
	.loc 1 95 0
	shrl	$2, %edx	#, tmp103
	movl	%edx, 4(%ebx)	# tmp103, <variable>.h_word
	.loc 1 96 0
	shldl	$30, %esi, %edi	#, tmp104,
	movl	%edi, %edx	#, mantissa
	.loc 1 97 0
	shrl	$2, %edx	#, tmp105
	movl	%edx, 8(%ebx)	# tmp105, <variable>.h_word
	.loc 1 102 0
	movl	$0, 12(%ebx)	#, <variable>.h_word
	.loc 1 106 0
	movl	$0, 16(%ebx)	#, <variable>.h_word
	movl	$0, 20(%ebx)	#, <variable>.h_word
	movl	$0, 24(%ebx)	#, <variable>.h_word
	movl	$0, 28(%ebx)	#, <variable>.h_word
.LVL15:
.L10:
	.loc 1 141 0
	addl	$20, %esp	#,
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
.LFE0:
	.size	scs_set_d, .-scs_set_d
.globl scs_set_si
	.type	scs_set_si, @function
scs_set_si:
.LFB1:
	.loc 1 148 0
	.cfi_startproc
.LVL16:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	movl	8(%ebp), %eax	# result, result
	movl	12(%ebp), %edx	# x, x
	.loc 1 152 0
	testl	%edx, %edx	# x
	js	.L17	#,
	.cfi_offset 3, -12
	movl	$1, 44(%eax)	#, <variable>.sign
	movl	%edx, %ecx	# x, ux
.LVL17:
	jmp	.L18	#
.LVL18:
.L17:
	.loc 1 153 0
	movl	$-1, 44(%eax)	#, <variable>.sign
	movl	%edx, %ecx	# x, ux
	negl	%ecx	# ux
.LVL19:
.L18:
	.loc 1 156 0
	cmpl	$1073741824, %ecx	#, ux
	jbe	.L19	#,
	.loc 1 157 0
	movl	$1, 40(%eax)	#, <variable>.index
	.loc 1 158 0
	leal	-1073741824(%ecx), %ebx	#, tmp62
	shrl	$30, %ebx	#, D.1399
	movl	%ebx, (%eax)	# D.1399, <variable>.h_word
	.loc 1 159 0
	sall	$30, %ebx	#, tmp63
	subl	%ebx, %ecx	# tmp63, tmp64
.LVL20:
	movl	%ecx, 4(%eax)	# tmp64, <variable>.h_word
	jmp	.L20	#
.LVL21:
.L19:
	.loc 1 161 0
	movl	$0, 40(%eax)	#, <variable>.index
	.loc 1 162 0
	movl	%ecx, (%eax)	# ux, <variable>.h_word
	.loc 1 163 0
	movl	$0, 4(%eax)	#, <variable>.h_word
.LVL22:
.L20:
	.loc 1 167 0
	movl	$0, 8(%eax)	#, <variable>.h_word
.LVL23:
	movl	$0, 12(%eax)	#, <variable>.h_word
.LVL24:
	movl	$0, 16(%eax)	#, <variable>.h_word
.LVL25:
	movl	$0, 20(%eax)	#, <variable>.h_word
.LVL26:
	movl	$0, 24(%eax)	#, <variable>.h_word
.LVL27:
	movl	$0, 28(%eax)	#, <variable>.h_word
.LVL28:
	.loc 1 169 0
	testl	%edx, %edx	# x
	je	.L21	#,
	fld1
	fstpl	32(%eax)	# <variable>.exception.d
	jmp	.L23	#
.L21:
	.loc 1 170 0
	fldz
	fstpl	32(%eax)	# <variable>.exception.d
.L23:
	.loc 1 173 0
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	scs_set_si, .-scs_set_si
	.section	.rodata
	.align 4
	.type	radix_two_double, @object
	.size	radix_two_double, 8
radix_two_double:
# i:
	.long	0
	.long	1135607808
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL7-.Ltext0
	.long	.LVL13-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL10-.Ltext0
	.long	.LVL12-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL12-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL9-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL17-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL19-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL22-.Ltext0
	.long	.LVL23-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL23-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL24-.Ltext0
	.long	.LVL25-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL25-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL26-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL28-.Ltext0
	.long	.LFE1-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0x0
	.long	0x0
	.file 2 "scs.h"
	.file 3 "scs_private.h"
	.section	.debug_info
	.long	0x20f
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF23
	.byte	0x1
	.long	.LASF24
	.long	.LASF25
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
	.long	.LASF12
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.long	0x162
	.uleb128 0xd
	.long	.LASF9
	.byte	0x1
	.byte	0x24
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x24
	.long	0x6e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.string	"nb"
	.byte	0x1
	.byte	0x25
	.long	0x75
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF14
	.byte	0x1
	.byte	0x25
	.long	0x75
	.uleb128 0x11
	.long	.LASF10
	.byte	0x1
	.byte	0x26
	.long	0x60
	.long	.LLST0
	.uleb128 0x11
	.long	.LASF11
	.byte	0x1
	.byte	0x26
	.long	0x60
	.long	.LLST1
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.byte	0x27
	.long	0x60
	.long	.LLST2
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x27
	.long	0x60
	.long	.LLST3
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.long	0x1af
	.uleb128 0xd
	.long	.LASF9
	.byte	0x1
	.byte	0x94
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x94
	.long	0x60
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"ux"
	.byte	0x1
	.byte	0x95
	.long	0x59
	.long	.LLST4
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x96
	.long	0x60
	.long	.LLST5
	.byte	0x0
	.uleb128 0x10
	.long	.LASF15
	.byte	0x3
	.byte	0x47
	.long	0x1ba
	.uleb128 0x13
	.long	0x75
	.uleb128 0x14
	.long	.LASF16
	.byte	0x3
	.byte	0x48
	.long	0x1ba
	.byte	0x5
	.byte	0x3
	.long	radix_two_double
	.uleb128 0x10
	.long	.LASF17
	.byte	0x3
	.byte	0x49
	.long	0x1ba
	.uleb128 0x10
	.long	.LASF18
	.byte	0x3
	.byte	0x4a
	.long	0x1ba
	.uleb128 0x10
	.long	.LASF19
	.byte	0x3
	.byte	0x4b
	.long	0x1ba
	.uleb128 0x10
	.long	.LASF20
	.byte	0x3
	.byte	0x4c
	.long	0x1ba
	.uleb128 0x10
	.long	.LASF21
	.byte	0x3
	.byte	0x4d
	.long	0x1ba
	.uleb128 0x10
	.long	.LASF22
	.byte	0x3
	.byte	0x4e
	.long	0x1ba
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x2b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x213
	.long	0xde
	.string	"scs_set_d"
	.long	0x162
	.string	"scs_set_si"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x30
	.value	0x2
	.long	.Ldebug_info0
	.long	0x213
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
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"radix_mrng_double"
.LASF15:
	.string	"radix_one_double"
.LASF11:
	.string	"exponent_remainder"
.LASF24:
	.string	"double2scs.c"
.LASF17:
	.string	"radix_mone_double"
.LASF1:
	.string	"long long unsigned int"
.LASF3:
	.string	"h_word"
.LASF22:
	.string	"min_double"
.LASF4:
	.string	"exception"
.LASF13:
	.string	"scs_set_si"
.LASF10:
	.string	"exponent"
.LASF25:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF16:
	.string	"radix_two_double"
.LASF23:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF5:
	.string	"index"
.LASF2:
	.string	"double"
.LASF14:
	.string	"mantissa"
.LASF7:
	.string	"db_number"
.LASF18:
	.string	"radix_mtwo_double"
.LASF19:
	.string	"radix_rng_double"
.LASF21:
	.string	"max_double"
.LASF6:
	.string	"sign"
.LASF9:
	.string	"result"
.LASF12:
	.string	"scs_set_d"
.LASF8:
	.string	"scs_ptr"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
