	.file	"division_scs.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# division_scs.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
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
.globl scs_inv
	.type	scs_inv, @function
scs_inv:
.LFB0:
	.file 1 "division_scs.c"
	.loc 1 38 0
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
	subl	$236, %esp	#,
	movl	12(%ebp), %edi	# x, x
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.loc 1 42 0
	movl	%edi, 4(%esp)	# x,
	leal	-72(%ebp), %ebx	#, tmp60
	movl	%ebx, (%esp)	# tmp60,
	call	scs_set	#
	movl	$0, -32(%ebp)	#, <variable>.index
	movl	%ebx, 4(%esp)	# tmp60,
	leal	-224(%ebp), %eax	#, tmp62
	movl	%eax, (%esp)	# tmp62,
	call	scs_get_d	#
	.loc 1 44 0
	movl	$2, 4(%esp)	#,
	leal	-216(%ebp), %eax	#,
	movl	%eax, (%esp)	#,
	call	scs_set_si	#
.LVL1:
	.loc 1 48 0
	fld1
	fdivl	-224(%ebp)	# app_x
	fstpl	4(%esp)	#
	leal	-120(%ebp), %esi	#, tmp67
	movl	%esi, (%esp)	# tmp67,
	call	scs_set_d	#
.LVL2:
	.loc 1 49 0
	movl	40(%edi), %eax	# <variable>.index, <variable>.index
	subl	%eax, -80(%ebp)	# <variable>.index, <variable>.index
	.loc 1 52 0
	movl	%esi, 8(%esp)	# tmp67,
	movl	%edi, 4(%esp)	# x,
	leal	-168(%ebp), %ebx	#, tmp70
	movl	%ebx, (%esp)	# tmp70,
	call	scs_mul	#
	.loc 1 53 0
	movl	%ebx, 8(%esp)	# tmp70,
	leal	-216(%ebp), %eax	#,
	movl	%eax, 4(%esp)	#,
	movl	%ebx, (%esp)	# tmp70,
	call	scs_sub	#
	.loc 1 54 0
	movl	%ebx, 8(%esp)	# tmp70,
	movl	%esi, 4(%esp)	# tmp67,
	movl	%esi, (%esp)	# tmp67,
	call	scs_mul	#
	.loc 1 57 0
	movl	%esi, 8(%esp)	# tmp67,
	movl	%edi, 4(%esp)	# x,
	movl	%ebx, (%esp)	# tmp70,
	call	scs_mul	#
	.loc 1 58 0
	movl	%ebx, 8(%esp)	# tmp70,
	leal	-216(%ebp), %eax	#,
	movl	%eax, 4(%esp)	#,
	movl	%ebx, (%esp)	# tmp70,
	call	scs_sub	#
	.loc 1 59 0
	movl	%ebx, 8(%esp)	# tmp70,
	movl	%esi, 4(%esp)	# tmp67,
	movl	8(%ebp), %eax	# result, result
	movl	%eax, (%esp)	# result,
	call	scs_mul	#
	.loc 1 62 0
	addl	$236, %esp	#,
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
	.size	scs_inv, .-scs_inv
.globl scs_div
	.type	scs_div, @function
scs_div:
.LFB1:
	.loc 1 67 0
	.cfi_startproc
.LVL3:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$88, %esp	#,
	movl	%ebx, -12(%ebp)	#,
	movl	%esi, -8(%ebp)	#,
	movl	%edi, -4(%ebp)	#,
	movl	8(%ebp), %edi	# result, result
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %ebx	# x, x
	movl	16(%ebp), %eax	# y, y
	.loc 1 70 0
	fldl	32(%ebx)	# <variable>.exception.d
	fld1
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jp	.L11	#,
	je	.L9	#,
.L11:
	.loc 1 71 0
	fdivl	32(%eax)	# <variable>.exception.d
	fstpl	32(%edi)	# <variable>.exception.d
	.loc 1 72 0
	jmp	.L7	#
.L9:
	fstp	%st(0)	#
	.loc 1 75 0
	movl	%eax, 4(%esp)	# y,
	leal	-72(%ebp), %esi	#, tmp65
	movl	%esi, (%esp)	# tmp65,
	call	scs_inv	#
	.loc 1 76 0
	movl	%ebx, 8(%esp)	# x,
	movl	%esi, 4(%esp)	# tmp65,
	movl	%edi, (%esp)	# result,
	call	scs_mul	#
.L7:
	.loc 1 78 0
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
.LFE1:
	.size	scs_div, .-scs_div
.Letext0:
	.file 2 "scs.h"
	.file 3 "scs_private.h"
	.section	.debug_info
	.long	0x228
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF24
	.byte	0x1
	.long	.LASF25
	.long	.LASF26
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
	.uleb128 0x8
	.long	.LASF9
	.byte	0x2
	.byte	0x7f
	.long	0xe9
	.uleb128 0x4
	.long	0x80
	.long	0xf9
	.uleb128 0x5
	.long	0x59
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.long	0x181
	.uleb128 0xd
	.long	.LASF10
	.byte	0x1
	.byte	0x26
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x26
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.string	"tmp"
	.byte	0x1
	.byte	0x27
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.string	"res"
	.byte	0x1
	.byte	0x27
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.long	.LASF11
	.byte	0x1
	.byte	0x27
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x10
	.long	.LASF12
	.byte	0x1
	.byte	0x27
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x10
	.long	.LASF13
	.byte	0x1
	.byte	0x28
	.long	0x6e
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x11
	.string	"inv"
	.byte	0x1
	.byte	0x28
	.long	0x6e
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.long	0x1ce
	.uleb128 0xd
	.long	.LASF10
	.byte	0x1
	.byte	0x43
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x43
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"y"
	.byte	0x1
	.byte	0x43
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.string	"res"
	.byte	0x1
	.byte	0x44
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x12
	.long	.LASF16
	.byte	0x3
	.byte	0x47
	.long	0x1d9
	.uleb128 0x13
	.long	0x75
	.uleb128 0x12
	.long	.LASF17
	.byte	0x3
	.byte	0x48
	.long	0x1d9
	.uleb128 0x12
	.long	.LASF18
	.byte	0x3
	.byte	0x49
	.long	0x1d9
	.uleb128 0x12
	.long	.LASF19
	.byte	0x3
	.byte	0x4a
	.long	0x1d9
	.uleb128 0x12
	.long	.LASF20
	.byte	0x3
	.byte	0x4b
	.long	0x1d9
	.uleb128 0x12
	.long	.LASF21
	.byte	0x3
	.byte	0x4c
	.long	0x1d9
	.uleb128 0x12
	.long	.LASF22
	.byte	0x3
	.byte	0x4d
	.long	0x1d9
	.uleb128 0x12
	.long	.LASF23
	.byte	0x3
	.byte	0x4e
	.long	0x1d9
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x26
	.value	0x2
	.long	.Ldebug_info0
	.long	0x22c
	.long	0xf9
	.string	"scs_inv"
	.long	0x181
	.string	"scs_div"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x3a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x22c
	.long	0x75
	.string	"db_number"
	.long	0x80
	.string	"scs"
	.long	0xcd
	.string	"scs_ptr"
	.long	0xde
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
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"radix_mrng_double"
.LASF16:
	.string	"radix_one_double"
.LASF25:
	.string	"division_scs.c"
.LASF13:
	.string	"app_x"
.LASF18:
	.string	"radix_mone_double"
.LASF11:
	.string	"res1"
.LASF1:
	.string	"long long unsigned int"
.LASF3:
	.string	"h_word"
.LASF4:
	.string	"exception"
.LASF23:
	.string	"min_double"
.LASF17:
	.string	"radix_two_double"
.LASF26:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF15:
	.string	"scs_div"
.LASF24:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF5:
	.string	"index"
.LASF2:
	.string	"double"
.LASF9:
	.string	"scs_t"
.LASF7:
	.string	"db_number"
.LASF14:
	.string	"scs_inv"
.LASF19:
	.string	"radix_mtwo_double"
.LASF20:
	.string	"radix_rng_double"
.LASF22:
	.string	"max_double"
.LASF6:
	.string	"sign"
.LASF10:
	.string	"result"
.LASF12:
	.string	"scstwo"
.LASF8:
	.string	"scs_ptr"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
