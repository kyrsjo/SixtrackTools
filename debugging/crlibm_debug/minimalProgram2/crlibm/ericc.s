	.file	"ericc.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H ericc.c
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
.globl cosh_rn_
	.type	cosh_rn_, @function
cosh_rn_:
.LFB15:
	.file 1 "ericc.c"
	.loc 1 74 0
	.cfi_startproc
.LVL0:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
.LVL1:
	.loc 1 77 0
	movl	8(%ebp), %eax	# pointx, pointx
	fldl	(%eax)	#* pointx
	fstpl	(%esp)	#
	call	cosh_rn@PLT	#
.LVL2:
	.loc 1 79 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	cosh_rn_, .-cosh_rn_
.globl sinh_rn_
	.type	sinh_rn_, @function
sinh_rn_:
.LFB14:
	.loc 1 67 0
	.cfi_startproc
.LVL3:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
.LVL4:
	.loc 1 70 0
	movl	8(%ebp), %eax	# pointx, pointx
	fldl	(%eax)	#* pointx
	fstpl	(%esp)	#
	call	sinh_rn@PLT	#
.LVL5:
	.loc 1 72 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	sinh_rn_, .-sinh_rn_
.globl cos_rn_
	.type	cos_rn_, @function
cos_rn_:
.LFB13:
	.loc 1 60 0
	.cfi_startproc
.LVL6:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
.LVL7:
	.loc 1 63 0
	movl	8(%ebp), %eax	# pointx, pointx
	fldl	(%eax)	#* pointx
	fstpl	(%esp)	#
	call	cos_rn@PLT	#
.LVL8:
	.loc 1 65 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	cos_rn_, .-cos_rn_
.globl sin_rn_
	.type	sin_rn_, @function
sin_rn_:
.LFB12:
	.loc 1 53 0
	.cfi_startproc
.LVL9:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
.LVL10:
	.loc 1 56 0
	movl	8(%ebp), %eax	# pointx, pointx
	fldl	(%eax)	#* pointx
	fstpl	(%esp)	#
	call	sin_rn@PLT	#
.LVL11:
	.loc 1 58 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	sin_rn_, .-sin_rn_
.globl tan_rn_
	.type	tan_rn_, @function
tan_rn_:
.LFB11:
	.loc 1 46 0
	.cfi_startproc
.LVL12:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
.LVL13:
	.loc 1 49 0
	movl	8(%ebp), %eax	# pointx, pointx
	fldl	(%eax)	#* pointx
	fstpl	(%esp)	#
	call	tan_rn@PLT	#
.LVL14:
	.loc 1 51 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	tan_rn_, .-tan_rn_
.globl atan_rn_
	.type	atan_rn_, @function
atan_rn_:
.LFB10:
	.loc 1 39 0
	.cfi_startproc
.LVL15:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
.LVL16:
	.loc 1 42 0
	movl	8(%ebp), %eax	# pointx, pointx
	fldl	(%eax)	#* pointx
	fstpl	(%esp)	#
	call	atan_rn@PLT	#
.LVL17:
	.loc 1 44 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	atan_rn_, .-atan_rn_
.globl log10_rn_
	.type	log10_rn_, @function
log10_rn_:
.LFB9:
	.loc 1 32 0
	.cfi_startproc
.LVL18:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
.LVL19:
	.loc 1 35 0
	movl	8(%ebp), %eax	# pointx, pointx
	fldl	(%eax)	#* pointx
	fstpl	(%esp)	#
	call	log10_rn@PLT	#
.LVL20:
	.loc 1 37 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	log10_rn_, .-log10_rn_
.globl log_rn_
	.type	log_rn_, @function
log_rn_:
.LFB8:
	.loc 1 25 0
	.cfi_startproc
.LVL21:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
.LVL22:
	.loc 1 28 0
	movl	8(%ebp), %eax	# pointx, pointx
	fldl	(%eax)	#* pointx
	fstpl	(%esp)	#
	call	log_rn@PLT	#
.LVL23:
	.loc 1 30 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	log_rn_, .-log_rn_
.globl exp_rn_
	.type	exp_rn_, @function
exp_rn_:
.LFB7:
	.loc 1 17 0
	.cfi_startproc
.LVL24:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
.LVL25:
	.loc 1 20 0
	movl	8(%ebp), %eax	# pointx, pointx
	fldl	(%eax)	#* pointx
	fstpl	(%esp)	#
	call	exp_rn@PLT	#
.LVL26:
	.loc 1 22 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	exp_rn_, .-exp_rn_
	.comm	crlibm_second_step_taken,4,4
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
.LFB16:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE16:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1-.Ltext0
	.long	.LVL2-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL4-.Ltext0
	.long	.LVL5-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL7-.Ltext0
	.long	.LVL8-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL10-.Ltext0
	.long	.LVL11-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL13-.Ltext0
	.long	.LVL14-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL16-.Ltext0
	.long	.LVL17-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL19-.Ltext0
	.long	.LVL20-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL22-.Ltext0
	.long	.LVL23-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL25-.Ltext0
	.long	.LVL26-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0x0
	.long	0x0
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "scs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "scs_private.h"
	.file 8 "crlibm_private.h"
	.section	.debug_info
	.long	0x67d
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF81
	.byte	0xc
	.long	.LASF82
	.long	.LASF83
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
	.long	.LASF84
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
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	0x2d8
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.long	0x37b
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x4a
	.long	0x37b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x4b
	.long	0x2d8
	.long	.LLST0
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x4b
	.long	0x2d8
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x2d8
	.uleb128 0x11
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0x2d8
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.long	0x3c5
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x43
	.long	0x37b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x44
	.long	0x2d8
	.long	.LLST1
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x44
	.long	0x2d8
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	0x2d8
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.long	0x409
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x3c
	.long	0x37b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x3d
	.long	0x2d8
	.long	.LLST2
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x3d
	.long	0x2d8
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	0x2d8
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.long	0x44d
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x35
	.long	0x37b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x36
	.long	0x2d8
	.long	.LLST3
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x36
	.long	0x2d8
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.long	0x2d8
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.long	0x491
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x2e
	.long	0x37b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x2f
	.long	0x2d8
	.long	.LLST4
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x2f
	.long	0x2d8
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0x2d8
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.long	0x4d5
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x27
	.long	0x37b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x28
	.long	0x2d8
	.long	.LLST5
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x28
	.long	0x2d8
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.long	0x2d8
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0x519
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x20
	.long	0x37b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x21
	.long	0x2d8
	.long	.LLST6
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x21
	.long	0x2d8
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0x2d8
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0x55d
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x19
	.long	0x37b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x1a
	.long	0x2d8
	.long	.LLST7
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x1a
	.long	0x2d8
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	0x2d8
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0x5a1
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x11
	.long	0x37b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x12
	.long	0x2d8
	.long	.LLST8
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x12
	.long	0x2d8
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x15
	.long	.LASF65
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	.LASF66
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	.LASF67
	.byte	0x7
	.byte	0x47
	.long	0x5c6
	.uleb128 0x17
	.long	0x2df
	.uleb128 0x16
	.long	.LASF68
	.byte	0x7
	.byte	0x48
	.long	0x5c6
	.uleb128 0x16
	.long	.LASF69
	.byte	0x7
	.byte	0x49
	.long	0x5c6
	.uleb128 0x16
	.long	.LASF70
	.byte	0x7
	.byte	0x4a
	.long	0x5c6
	.uleb128 0x16
	.long	.LASF71
	.byte	0x7
	.byte	0x4b
	.long	0x5c6
	.uleb128 0x16
	.long	.LASF72
	.byte	0x7
	.byte	0x4c
	.long	0x5c6
	.uleb128 0x16
	.long	.LASF73
	.byte	0x7
	.byte	0x4d
	.long	0x5c6
	.uleb128 0x16
	.long	.LASF74
	.byte	0x7
	.byte	0x4e
	.long	0x5c6
	.uleb128 0x16
	.long	.LASF75
	.byte	0x8
	.byte	0xca
	.long	0x623
	.uleb128 0x17
	.long	0x2ea
	.uleb128 0x16
	.long	.LASF76
	.byte	0x8
	.byte	0xce
	.long	0x623
	.uleb128 0x16
	.long	.LASF77
	.byte	0x8
	.byte	0xd2
	.long	0x623
	.uleb128 0x16
	.long	.LASF78
	.byte	0x8
	.byte	0xd6
	.long	0x623
	.uleb128 0x16
	.long	.LASF79
	.byte	0x8
	.byte	0xda
	.long	0x623
	.uleb128 0x15
	.long	.LASF65
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	.LASF66
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.long	.LASF80
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
	.uleb128 0x12
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x9c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x681
	.long	0x337
	.string	"cosh_rn_"
	.long	0x381
	.string	"sinh_rn_"
	.long	0x3c5
	.string	"cos_rn_"
	.long	0x409
	.string	"sin_rn_"
	.long	0x44d
	.string	"tan_rn_"
	.long	0x491
	.string	"atan_rn_"
	.long	0x4d5
	.string	"log10_rn_"
	.long	0x519
	.string	"log_rn_"
	.long	0x55d
	.string	"exp_rn_"
	.long	0x66e
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x81
	.value	0x2
	.long	.Ldebug_info0
	.long	0x681
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
.LASF56:
	.string	"sinh_rn_"
.LASF79:
	.string	"scs_sixinv"
.LASF69:
	.string	"radix_mone_double"
.LASF25:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF35:
	.string	"_offset"
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
.LASF73:
	.string	"max_double"
.LASF52:
	.string	"index"
.LASF51:
	.string	"exception"
.LASF55:
	.string	"cosh_rn_"
.LASF6:
	.string	"long long int"
.LASF80:
	.string	"crlibm_second_step_taken"
.LASF34:
	.string	"_lock"
.LASF11:
	.string	"long int"
.LASF75:
	.string	"scs_zer"
.LASF31:
	.string	"_cur_column"
.LASF76:
	.string	"scs_half"
.LASF57:
	.string	"pointx"
.LASF47:
	.string	"_pos"
.LASF46:
	.string	"_sbuf"
.LASF43:
	.string	"_IO_FILE"
.LASF58:
	.string	"cos_rn_"
.LASF68:
	.string	"radix_two_double"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF60:
	.string	"tan_rn_"
.LASF64:
	.string	"exp_rn_"
.LASF0:
	.string	"unsigned int"
.LASF44:
	.string	"_IO_marker"
.LASF33:
	.string	"_shortbuf"
.LASF74:
	.string	"min_double"
.LASF18:
	.string	"_IO_write_base"
.LASF42:
	.string	"_unused2"
.LASF15:
	.string	"_IO_read_ptr"
.LASF71:
	.string	"radix_rng_double"
.LASF2:
	.string	"short unsigned int"
.LASF54:
	.string	"resultx"
.LASF13:
	.string	"char"
.LASF63:
	.string	"log_rn_"
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
.LASF62:
	.string	"log10_rn_"
.LASF67:
	.string	"radix_one_double"
.LASF82:
	.string	"ericc.c"
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
.LASF70:
	.string	"radix_mtwo_double"
.LASF24:
	.string	"_IO_backup_base"
.LASF65:
	.string	"stdin"
.LASF29:
	.string	"_flags2"
.LASF61:
	.string	"atan_rn_"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF32:
	.string	"_vtable_offset"
.LASF81:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF23:
	.string	"_IO_save_base"
.LASF28:
	.string	"_fileno"
.LASF59:
	.string	"sin_rn_"
.LASF83:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF72:
	.string	"radix_mrng_double"
.LASF78:
	.string	"scs_two"
.LASF77:
	.string	"scs_one"
.LASF66:
	.string	"stdout"
.LASF84:
	.string	"_IO_lock_t"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
