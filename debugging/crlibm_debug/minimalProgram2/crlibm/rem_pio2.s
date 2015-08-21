	.file	"rem_pio2.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# rem_pio2.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
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
.globl rem_pio2_scs
	.type	rem_pio2_scs, @function
rem_pio2_scs:
.LFB3:
	.file 1 "rem_pio2.c"
	.loc 1 55 0
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
	subl	$188, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	.loc 1 63 0
	movl	12(%ebp), %eax	# x,
	fldl	32(%eax)	# <variable>.exception.d
	fld1
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jne	.L2	#,
	jp	.L2	#,
	movl	40(%eax), %eax	# <variable>.index, D.1736
	cmpl	$-1, %eax	#, D.1736
	jge	.L3	#,
.L2:
	.loc 1 64 0
	movl	12(%ebp), %ecx	# x,
	movl	%ecx, 4(%esp)	#,
	movl	8(%ebp), %esi	# result,
	movl	%esi, (%esp)	#,
	call	scs_set@PLT	#
	movl	$0, %eax	#, D.1737
	.loc 1 65 0
	jmp	.L4	#
.L3:
	.loc 1 71 0
	cmpl	$-1, %eax	#, D.1736
	jne	.L5	#,
	.loc 1 74 0
	movl	$0, -112(%ebp)	#, r
	movl	$0, -108(%ebp)	#, r
	movl	$0, -104(%ebp)	#, r
	movl	$0, -100(%ebp)	#, r
	.loc 1 75 0
	movl	12(%ebp), %edx	# x,
	movl	(%edx), %eax	# <variable>.h_word,
	movl	$0, %edx	#,
	movl	%eax, -136(%ebp)	#, %sfp
	movl	%edx, -132(%ebp)	#, %sfp
	imull	$683565275, %edx, %esi	#,, tmp274
	movl	$683565275, %edi	#, tmp277
	movl	-136(%ebp), %eax	# %sfp,
	mull	%edi	# tmp277
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp274,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	-128(%ebp), %edx	# %sfp,
	movl	-124(%ebp), %ecx	# %sfp,
	movl	%edx, -96(%ebp)	#, r
	movl	%ecx, -92(%ebp)	#, r
	.loc 1 77 0
	movl	12(%ebp), %edx	# x,
	movl	4(%edx), %eax	# <variable>.h_word,
	movl	$0, %edx	#,
	movl	%eax, -144(%ebp)	#, %sfp
	movl	%edx, -140(%ebp)	#, %sfp
	.loc 1 76 0
	imull	$618938706, -132(%ebp), %esi	#, %sfp, tmp278
	movl	$618938706, %ecx	#, tmp281
	movl	-136(%ebp), %eax	# %sfp,
	mull	%ecx	# tmp281
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp278,
	movl	%edx, -124(%ebp)	#, %sfp
	imull	$683565275, -140(%ebp), %ecx	#, %sfp, tmp282
	movl	-144(%ebp), %eax	# %sfp,
	mull	%edi	# tmp277
	movl	%eax, -152(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp282,
	movl	%edx, -148(%ebp)	#, %sfp
	movl	-152(%ebp), %eax	# %sfp, tmp286
	movl	-148(%ebp), %edx	# %sfp,
	addl	-128(%ebp), %eax	# %sfp, tmp286
	adcl	-124(%ebp), %edx	# %sfp,
	movl	%eax, -88(%ebp)	# tmp286, r
	movl	%edx, -84(%ebp)	#, r
	.loc 1 78 0
	movl	12(%ebp), %edx	# x,
	movl	8(%edx), %edx	# <variable>.h_word,
	movl	%edx, -156(%ebp)	#, %sfp
	.loc 1 79 0
	movl	$0, %eax	#, ivtmp.87
	.loc 1 78 0
	testl	%edx, %edx	#
	jne	.L9	#,
	.loc 1 80 0
	leal	-112(%ebp), %ecx	#,
	movl	%ecx, -152(%ebp)	#, %sfp
	leal	two_over_pi@GOTOFF(%ebx), %esi	#,
	movl	%esi, -156(%ebp)	#, %sfp
	movl	%eax, -160(%ebp)	# ivtmp.74, %sfp
.L7:
	movl	-160(%ebp), %ecx	# %sfp, tmp288
	addl	-156(%ebp), %ecx	# %sfp, tmp288
	movl	8(%ecx), %edx	# two_over_pi, tmp292
	movl	%edx, -128(%ebp)	# tmp292, %sfp
	movl	%edx, %edi	# tmp292,
	sarl	$31, %edi	#,
	movl	%edi, -124(%ebp)	#, %sfp
	movl	-124(%ebp), %edi	# %sfp, tmp293
	imull	-136(%ebp), %edi	# %sfp, tmp293
	movl	-132(%ebp), %esi	# %sfp, tmp294
	imull	-128(%ebp), %esi	# %sfp, tmp294
	addl	%esi, %edi	# tmp294, tmp293
	movl	-128(%ebp), %eax	# %sfp,
	mull	-136(%ebp)	# %sfp
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%edi, %edx	# tmp293,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	4(%ecx), %edx	# two_over_pi, tmp300
	movl	%edx, -176(%ebp)	# tmp300, %sfp
	movl	%edx, %ecx	# tmp300,
	sarl	$31, %ecx	#,
	movl	%ecx, -172(%ebp)	#, %sfp
	movl	-144(%ebp), %esi	# %sfp, tmp301
	imull	-172(%ebp), %esi	# %sfp, tmp301
	movl	-140(%ebp), %edi	# %sfp, tmp302
	imull	-176(%ebp), %edi	# %sfp, tmp302
	addl	%edi, %esi	# tmp302, tmp301
	movl	-144(%ebp), %eax	# %sfp,
	mull	-176(%ebp)	# %sfp
	movl	%eax, -176(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp301,
	movl	%edx, -172(%ebp)	#, %sfp
	movl	-176(%ebp), %edx	# %sfp, tmp304
	movl	-172(%ebp), %ecx	# %sfp,
	addl	-128(%ebp), %edx	# %sfp, tmp304
	adcl	-124(%ebp), %ecx	# %sfp,
	movl	-160(%ebp), %esi	# %sfp,
	movl	-152(%ebp), %edi	# %sfp,
	movl	%edx, 32(%edi,%esi,2)	# tmp304, r
	movl	%ecx, 36(%edi,%esi,2)	#, r
	addl	$4, %esi	#,
	movl	%esi, -160(%ebp)	#, %sfp
	.loc 1 79 0
	cmpl	$28, %esi	#,
	jne	.L7	#,
	jmp	.L8	#
.LVL1:
.L9:
	.loc 1 84 0
	leal	-112(%ebp), %edx	#,
	movl	%edx, -160(%ebp)	#, %sfp
	leal	two_over_pi@GOTOFF(%ebx), %ecx	#,
	movl	%ecx, -164(%ebp)	#, %sfp
	movl	%eax, -180(%ebp)	# ivtmp.87, %sfp
.L36:
	movl	-164(%ebp), %esi	# %sfp,
	addl	-180(%ebp), %esi	# %sfp,
	movl	%esi, -152(%ebp)	#, %sfp
	movl	4(%esi), %esi	# two_over_pi, tmp310
	movl	%esi, %edi	# tmp310,
	sarl	$31, %edi	#,
	movl	-144(%ebp), %ecx	# %sfp, tmp311
	imull	%edi, %ecx	#, tmp311
	movl	-140(%ebp), %edx	# %sfp, tmp312
	imull	%esi, %edx	# tmp309, tmp312
	addl	%edx, %ecx	# tmp312, tmp311
	movl	-144(%ebp), %eax	# %sfp,
	mull	%esi	# tmp309
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp311,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	-180(%ebp), %ecx	# %sfp,
	movl	two_over_pi@GOTOFF(%ecx,%ebx), %edx	# two_over_pi, tmp316
	movl	%edx, -176(%ebp)	# tmp316, %sfp
	movl	%edx, %esi	# tmp316,
	sarl	$31, %esi	#,
	movl	%esi, -172(%ebp)	#, %sfp
	movl	-156(%ebp), %esi	# %sfp, tmp318
	imull	-172(%ebp), %esi	# %sfp, tmp318
	movl	-156(%ebp), %eax	# %sfp,
	mull	-176(%ebp)	# %sfp
	movl	%eax, -176(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp318,
	movl	%edx, -172(%ebp)	#, %sfp
	movl	-128(%ebp), %edx	# %sfp,
	movl	-124(%ebp), %ecx	# %sfp,
	addl	-176(%ebp), %edx	# %sfp,
	adcl	-172(%ebp), %ecx	# %sfp,
	movl	%edx, -128(%ebp)	#, %sfp
	movl	%ecx, -124(%ebp)	#, %sfp
	movl	-152(%ebp), %ecx	# %sfp,
	movl	8(%ecx), %edx	# two_over_pi, tmp325
	movl	%edx, -152(%ebp)	# tmp325, %sfp
	movl	%edx, %esi	# tmp325,
	sarl	$31, %esi	#,
	movl	%esi, -148(%ebp)	#, %sfp
	movl	-136(%ebp), %esi	# %sfp, tmp326
	imull	-148(%ebp), %esi	# %sfp, tmp326
	movl	-132(%ebp), %edi	# %sfp, tmp327
	imull	-152(%ebp), %edi	# %sfp, tmp327
	addl	%edi, %esi	# tmp327, tmp326
	movl	-136(%ebp), %eax	# %sfp,
	mull	-152(%ebp)	# %sfp
	movl	%eax, -152(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp326,
	movl	%edx, -148(%ebp)	#, %sfp
	movl	-152(%ebp), %edx	# %sfp, tmp329
	movl	-148(%ebp), %ecx	# %sfp,
	addl	-128(%ebp), %edx	# %sfp, tmp329
	adcl	-124(%ebp), %ecx	# %sfp,
	movl	-180(%ebp), %esi	# %sfp,
	movl	-160(%ebp), %edi	# %sfp,
	movl	%edx, 32(%edi,%esi,2)	# tmp329, r
	movl	%ecx, 36(%edi,%esi,2)	#, r
	addl	$4, %esi	#,
	movl	%esi, -180(%ebp)	#, %sfp
	.loc 1 83 0
	cmpl	$28, %esi	#,
	jne	.L36	#,
	jmp	.L8	#
.L5:
	.loc 1 90 0
	testl	%eax, %eax	# D.1736
	jne	.L10	#,
	.loc 1 91 0
	movl	$0, -112(%ebp)	#, r
	movl	$0, -108(%ebp)	#, r
	.loc 1 92 0
	movl	12(%ebp), %edx	# x,
	movl	(%edx), %eax	# <variable>.h_word,
	movl	$0, %edx	#,
	movl	%eax, -136(%ebp)	#, %sfp
	movl	%edx, -132(%ebp)	#, %sfp
	imull	$683565275, %edx, %esi	#,, tmp330
	movl	$683565275, %edi	#, tmp333
	movl	-136(%ebp), %eax	# %sfp,
	mull	%edi	# tmp333
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp330,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	-128(%ebp), %edx	# %sfp,
	movl	-124(%ebp), %ecx	# %sfp,
	movl	%edx, -104(%ebp)	#, r
	movl	%ecx, -100(%ebp)	#, r
	.loc 1 94 0
	movl	12(%ebp), %edx	# x,
	movl	4(%edx), %eax	# <variable>.h_word,
	movl	$0, %edx	#,
	movl	%eax, -144(%ebp)	#, %sfp
	movl	%edx, -140(%ebp)	#, %sfp
	.loc 1 93 0
	imull	$618938706, -132(%ebp), %esi	#, %sfp, tmp334
	movl	$618938706, %ecx	#, tmp337
	movl	-136(%ebp), %eax	# %sfp,
	mull	%ecx	# tmp337
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp334,
	movl	%edx, -124(%ebp)	#, %sfp
	imull	$683565275, -140(%ebp), %ecx	#, %sfp, tmp338
	movl	-144(%ebp), %eax	# %sfp,
	mull	%edi	# tmp333
	movl	%eax, -152(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp338,
	movl	%edx, -148(%ebp)	#, %sfp
	movl	-152(%ebp), %eax	# %sfp, tmp342
	movl	-148(%ebp), %edx	# %sfp,
	addl	-128(%ebp), %eax	# %sfp, tmp342
	adcl	-124(%ebp), %edx	# %sfp,
	movl	%eax, -96(%ebp)	# tmp342, r
	movl	%edx, -92(%ebp)	#, r
	.loc 1 95 0
	movl	12(%ebp), %edx	# x,
	movl	8(%edx), %edx	# <variable>.h_word,
	movl	%edx, -156(%ebp)	#, %sfp
	.loc 1 96 0
	movl	$0, %eax	#, ivtmp.114
	.loc 1 95 0
	testl	%edx, %edx	#
	jne	.L13	#,
	.loc 1 97 0
	leal	-112(%ebp), %ecx	#,
	movl	%ecx, -152(%ebp)	#, %sfp
	leal	two_over_pi@GOTOFF(%ebx), %esi	#,
	movl	%esi, -156(%ebp)	#, %sfp
	movl	%eax, -160(%ebp)	# ivtmp.101, %sfp
.L12:
	movl	-160(%ebp), %ecx	# %sfp, tmp344
	addl	-156(%ebp), %ecx	# %sfp, tmp344
	movl	8(%ecx), %edx	# two_over_pi, tmp348
	movl	%edx, -128(%ebp)	# tmp348, %sfp
	movl	%edx, %edi	# tmp348,
	sarl	$31, %edi	#,
	movl	%edi, -124(%ebp)	#, %sfp
	movl	-124(%ebp), %edi	# %sfp, tmp349
	imull	-136(%ebp), %edi	# %sfp, tmp349
	movl	-132(%ebp), %esi	# %sfp, tmp350
	imull	-128(%ebp), %esi	# %sfp, tmp350
	addl	%esi, %edi	# tmp350, tmp349
	movl	-128(%ebp), %eax	# %sfp,
	mull	-136(%ebp)	# %sfp
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%edi, %edx	# tmp349,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	4(%ecx), %edx	# two_over_pi, tmp356
	movl	%edx, -176(%ebp)	# tmp356, %sfp
	movl	%edx, %ecx	# tmp356,
	sarl	$31, %ecx	#,
	movl	%ecx, -172(%ebp)	#, %sfp
	movl	-144(%ebp), %esi	# %sfp, tmp357
	imull	-172(%ebp), %esi	# %sfp, tmp357
	movl	-140(%ebp), %edi	# %sfp, tmp358
	imull	-176(%ebp), %edi	# %sfp, tmp358
	addl	%edi, %esi	# tmp358, tmp357
	movl	-144(%ebp), %eax	# %sfp,
	mull	-176(%ebp)	# %sfp
	movl	%eax, -176(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp357,
	movl	%edx, -172(%ebp)	#, %sfp
	movl	-176(%ebp), %edx	# %sfp, tmp360
	movl	-172(%ebp), %ecx	# %sfp,
	addl	-128(%ebp), %edx	# %sfp, tmp360
	adcl	-124(%ebp), %ecx	# %sfp,
	movl	-160(%ebp), %esi	# %sfp,
	movl	-152(%ebp), %edi	# %sfp,
	movl	%edx, 24(%edi,%esi,2)	# tmp360, r
	movl	%ecx, 28(%edi,%esi,2)	#, r
	addl	$4, %esi	#,
	movl	%esi, -160(%ebp)	#, %sfp
	.loc 1 96 0
	cmpl	$32, %esi	#,
	jne	.L12	#,
	jmp	.L8	#
.L13:
	.loc 1 101 0
	leal	-112(%ebp), %edx	#,
	movl	%edx, -160(%ebp)	#, %sfp
	leal	two_over_pi@GOTOFF(%ebx), %ecx	#,
	movl	%ecx, -164(%ebp)	#, %sfp
	movl	%eax, -180(%ebp)	# ivtmp.114, %sfp
.L37:
	movl	-164(%ebp), %esi	# %sfp,
	addl	-180(%ebp), %esi	# %sfp,
	movl	%esi, -152(%ebp)	#, %sfp
	movl	4(%esi), %esi	# two_over_pi, tmp366
	movl	%esi, %edi	# tmp366,
	sarl	$31, %edi	#,
	movl	-144(%ebp), %ecx	# %sfp, tmp367
	imull	%edi, %ecx	#, tmp367
	movl	-140(%ebp), %edx	# %sfp, tmp368
	imull	%esi, %edx	# tmp365, tmp368
	addl	%edx, %ecx	# tmp368, tmp367
	movl	-144(%ebp), %eax	# %sfp,
	mull	%esi	# tmp365
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp367,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	-180(%ebp), %ecx	# %sfp,
	movl	two_over_pi@GOTOFF(%ecx,%ebx), %edx	# two_over_pi, tmp372
	movl	%edx, -176(%ebp)	# tmp372, %sfp
	movl	%edx, %esi	# tmp372,
	sarl	$31, %esi	#,
	movl	%esi, -172(%ebp)	#, %sfp
	movl	-156(%ebp), %esi	# %sfp, tmp374
	imull	-172(%ebp), %esi	# %sfp, tmp374
	movl	-156(%ebp), %eax	# %sfp,
	mull	-176(%ebp)	# %sfp
	movl	%eax, -176(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp374,
	movl	%edx, -172(%ebp)	#, %sfp
	movl	-128(%ebp), %edx	# %sfp,
	movl	-124(%ebp), %ecx	# %sfp,
	addl	-176(%ebp), %edx	# %sfp,
	adcl	-172(%ebp), %ecx	# %sfp,
	movl	%edx, -128(%ebp)	#, %sfp
	movl	%ecx, -124(%ebp)	#, %sfp
	movl	-152(%ebp), %ecx	# %sfp,
	movl	8(%ecx), %edx	# two_over_pi, tmp381
	movl	%edx, -152(%ebp)	# tmp381, %sfp
	movl	%edx, %esi	# tmp381,
	sarl	$31, %esi	#,
	movl	%esi, -148(%ebp)	#, %sfp
	movl	-136(%ebp), %esi	# %sfp, tmp382
	imull	-148(%ebp), %esi	# %sfp, tmp382
	movl	-132(%ebp), %edi	# %sfp, tmp383
	imull	-152(%ebp), %edi	# %sfp, tmp383
	addl	%edi, %esi	# tmp383, tmp382
	movl	-136(%ebp), %eax	# %sfp,
	mull	-152(%ebp)	# %sfp
	movl	%eax, -152(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp382,
	movl	%edx, -148(%ebp)	#, %sfp
	movl	-152(%ebp), %edx	# %sfp, tmp385
	movl	-148(%ebp), %ecx	# %sfp,
	addl	-128(%ebp), %edx	# %sfp, tmp385
	adcl	-124(%ebp), %ecx	# %sfp,
	movl	-180(%ebp), %esi	# %sfp,
	movl	-160(%ebp), %edi	# %sfp,
	movl	%edx, 24(%edi,%esi,2)	# tmp385, r
	movl	%ecx, 28(%edi,%esi,2)	#, r
	addl	$4, %esi	#,
	movl	%esi, -180(%ebp)	#, %sfp
	.loc 1 100 0
	cmpl	$32, %esi	#,
	jne	.L37	#,
	jmp	.L8	#
.L10:
	.loc 1 106 0
	cmpl	$1, %eax	#, D.1736
	jne	.L14	#,
	.loc 1 107 0
	movl	12(%ebp), %edx	# x,
	movl	(%edx), %eax	# <variable>.h_word,
	movl	$0, %edx	#,
	movl	%eax, -136(%ebp)	#, %sfp
	movl	%edx, -132(%ebp)	#, %sfp
	imull	$683565275, %edx, %esi	#,, tmp386
	movl	$683565275, %edi	#, tmp389
	movl	-136(%ebp), %eax	# %sfp,
	mull	%edi	# tmp389
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp386,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	-128(%ebp), %edx	# %sfp,
	movl	-124(%ebp), %ecx	# %sfp,
	movl	%edx, -112(%ebp)	#, r
	movl	%ecx, -108(%ebp)	#, r
	.loc 1 109 0
	movl	12(%ebp), %edx	# x,
	movl	4(%edx), %eax	# <variable>.h_word,
	movl	$0, %edx	#,
	movl	%eax, -144(%ebp)	#, %sfp
	movl	%edx, -140(%ebp)	#, %sfp
	.loc 1 108 0
	imull	$618938706, -132(%ebp), %ecx	#, %sfp, tmp390
	movl	$618938706, %esi	#, tmp393
	movl	-136(%ebp), %eax	# %sfp,
	mull	%esi	# tmp393
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp390,
	movl	%edx, -124(%ebp)	#, %sfp
	imull	$683565275, -140(%ebp), %ecx	#, %sfp, tmp394
	movl	-144(%ebp), %eax	# %sfp,
	mull	%edi	# tmp389
	movl	%eax, -152(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp394,
	movl	%edx, -148(%ebp)	#, %sfp
	movl	-152(%ebp), %eax	# %sfp, tmp398
	movl	-148(%ebp), %edx	# %sfp,
	addl	-128(%ebp), %eax	# %sfp, tmp398
	adcl	-124(%ebp), %edx	# %sfp,
	movl	%eax, -104(%ebp)	# tmp398, r
	movl	%edx, -100(%ebp)	#, r
	.loc 1 110 0
	movl	12(%ebp), %edx	# x,
	movl	8(%edx), %edx	# <variable>.h_word,
	movl	%edx, -156(%ebp)	#, %sfp
	.loc 1 111 0
	movl	$0, %eax	#, ivtmp.141
	.loc 1 110 0
	testl	%edx, %edx	#
	jne	.L17	#,
	.loc 1 112 0
	leal	-112(%ebp), %ecx	#,
	movl	%ecx, -152(%ebp)	#, %sfp
	leal	two_over_pi@GOTOFF(%ebx), %esi	#,
	movl	%esi, -156(%ebp)	#, %sfp
	movl	%eax, -160(%ebp)	# ivtmp.128, %sfp
.L16:
	movl	-160(%ebp), %ecx	# %sfp, tmp400
	addl	-156(%ebp), %ecx	# %sfp, tmp400
	movl	8(%ecx), %edx	# two_over_pi, tmp404
	movl	%edx, -128(%ebp)	# tmp404, %sfp
	movl	%edx, %edi	# tmp404,
	sarl	$31, %edi	#,
	movl	%edi, -124(%ebp)	#, %sfp
	movl	-124(%ebp), %edi	# %sfp, tmp405
	imull	-136(%ebp), %edi	# %sfp, tmp405
	movl	-132(%ebp), %esi	# %sfp, tmp406
	imull	-128(%ebp), %esi	# %sfp, tmp406
	addl	%esi, %edi	# tmp406, tmp405
	movl	-128(%ebp), %eax	# %sfp,
	mull	-136(%ebp)	# %sfp
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%edi, %edx	# tmp405,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	4(%ecx), %edx	# two_over_pi, tmp412
	movl	%edx, -176(%ebp)	# tmp412, %sfp
	movl	%edx, %ecx	# tmp412,
	sarl	$31, %ecx	#,
	movl	%ecx, -172(%ebp)	#, %sfp
	movl	-144(%ebp), %esi	# %sfp, tmp413
	imull	-172(%ebp), %esi	# %sfp, tmp413
	movl	-140(%ebp), %edi	# %sfp, tmp414
	imull	-176(%ebp), %edi	# %sfp, tmp414
	addl	%edi, %esi	# tmp414, tmp413
	movl	-144(%ebp), %eax	# %sfp,
	mull	-176(%ebp)	# %sfp
	movl	%eax, -176(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp413,
	movl	%edx, -172(%ebp)	#, %sfp
	movl	-176(%ebp), %edx	# %sfp, tmp416
	movl	-172(%ebp), %ecx	# %sfp,
	addl	-128(%ebp), %edx	# %sfp, tmp416
	adcl	-124(%ebp), %ecx	# %sfp,
	movl	-160(%ebp), %esi	# %sfp,
	movl	-152(%ebp), %edi	# %sfp,
	movl	%edx, 16(%edi,%esi,2)	# tmp416, r
	movl	%ecx, 20(%edi,%esi,2)	#, r
	addl	$4, %esi	#,
	movl	%esi, -160(%ebp)	#, %sfp
	.loc 1 111 0
	cmpl	$36, %esi	#,
	jne	.L16	#,
	jmp	.L8	#
.L17:
	.loc 1 116 0
	leal	-112(%ebp), %edx	#,
	movl	%edx, -160(%ebp)	#, %sfp
	leal	two_over_pi@GOTOFF(%ebx), %ecx	#,
	movl	%ecx, -164(%ebp)	#, %sfp
	movl	%eax, -180(%ebp)	# ivtmp.141, %sfp
.L38:
	movl	-164(%ebp), %esi	# %sfp,
	addl	-180(%ebp), %esi	# %sfp,
	movl	%esi, -152(%ebp)	#, %sfp
	movl	4(%esi), %esi	# two_over_pi, tmp422
	movl	%esi, %edi	# tmp422,
	sarl	$31, %edi	#,
	movl	-144(%ebp), %ecx	# %sfp, tmp423
	imull	%edi, %ecx	#, tmp423
	movl	-140(%ebp), %edx	# %sfp, tmp424
	imull	%esi, %edx	# tmp421, tmp424
	addl	%edx, %ecx	# tmp424, tmp423
	movl	-144(%ebp), %eax	# %sfp,
	mull	%esi	# tmp421
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp423,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	-180(%ebp), %ecx	# %sfp,
	movl	two_over_pi@GOTOFF(%ecx,%ebx), %edx	# two_over_pi, tmp428
	movl	%edx, -176(%ebp)	# tmp428, %sfp
	movl	%edx, %esi	# tmp428,
	sarl	$31, %esi	#,
	movl	%esi, -172(%ebp)	#, %sfp
	movl	-156(%ebp), %esi	# %sfp, tmp430
	imull	-172(%ebp), %esi	# %sfp, tmp430
	movl	-156(%ebp), %eax	# %sfp,
	mull	-176(%ebp)	# %sfp
	movl	%eax, -176(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp430,
	movl	%edx, -172(%ebp)	#, %sfp
	movl	-128(%ebp), %edx	# %sfp,
	movl	-124(%ebp), %ecx	# %sfp,
	addl	-176(%ebp), %edx	# %sfp,
	adcl	-172(%ebp), %ecx	# %sfp,
	movl	%edx, -128(%ebp)	#, %sfp
	movl	%ecx, -124(%ebp)	#, %sfp
	movl	-152(%ebp), %ecx	# %sfp,
	movl	8(%ecx), %edx	# two_over_pi, tmp437
	movl	%edx, -152(%ebp)	# tmp437, %sfp
	movl	%edx, %esi	# tmp437,
	sarl	$31, %esi	#,
	movl	%esi, -148(%ebp)	#, %sfp
	movl	-136(%ebp), %esi	# %sfp, tmp438
	imull	-148(%ebp), %esi	# %sfp, tmp438
	movl	-132(%ebp), %edi	# %sfp, tmp439
	imull	-152(%ebp), %edi	# %sfp, tmp439
	addl	%edi, %esi	# tmp439, tmp438
	movl	-136(%ebp), %eax	# %sfp,
	mull	-152(%ebp)	# %sfp
	movl	%eax, -152(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp438,
	movl	%edx, -148(%ebp)	#, %sfp
	movl	-152(%ebp), %edx	# %sfp, tmp441
	movl	-148(%ebp), %ecx	# %sfp,
	addl	-128(%ebp), %edx	# %sfp, tmp441
	adcl	-124(%ebp), %ecx	# %sfp,
	movl	-180(%ebp), %esi	# %sfp,
	movl	-160(%ebp), %edi	# %sfp,
	movl	%edx, 16(%edi,%esi,2)	# tmp441, r
	movl	%ecx, 20(%edi,%esi,2)	#, r
	addl	$4, %esi	#,
	movl	%esi, -180(%ebp)	#, %sfp
	.loc 1 115 0
	cmpl	$36, %esi	#,
	jne	.L38	#,
	jmp	.L8	#
.L14:
	.loc 1 121 0
	cmpl	$2, %eax	#, D.1736
	jne	.L18	#,
	.loc 1 123 0
	movl	12(%ebp), %edx	# x,
	movl	4(%edx), %eax	# <variable>.h_word,
	movl	$0, %edx	#,
	movl	%eax, -144(%ebp)	#, %sfp
	movl	%edx, -140(%ebp)	#, %sfp
	movl	12(%ebp), %edi	# x,
	movl	(%edi), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -136(%ebp)	#, %sfp
	movl	%edi, -132(%ebp)	#, %sfp
	.loc 1 122 0
	imull	$618938706, %edi, %ecx	#,, tmp442
	movl	$618938706, %esi	#, tmp445
	movl	-136(%ebp), %eax	# %sfp,
	mull	%esi	# tmp445
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp442,
	movl	%edx, -124(%ebp)	#, %sfp
	imull	$683565275, -140(%ebp), %ecx	#, %sfp, tmp446
	movl	$683565275, %eax	#, tmp449
	mull	-144(%ebp)	# %sfp
	leal	(%ecx,%edx), %edx	#,
	addl	-128(%ebp), %eax	# %sfp, tmp450
	adcl	-124(%ebp), %edx	# %sfp,
	movl	%eax, -112(%ebp)	# tmp450, r
	movl	%edx, -108(%ebp)	#, r
	.loc 1 124 0
	movl	12(%ebp), %edx	# x,
	movl	8(%edx), %edx	# <variable>.h_word,
	movl	%edx, -156(%ebp)	#, %sfp
	.loc 1 125 0
	movl	$0, %eax	#, ivtmp.168
	.loc 1 124 0
	testl	%edx, %edx	#
	jne	.L21	#,
	.loc 1 126 0
	leal	-112(%ebp), %ecx	#,
	movl	%ecx, -152(%ebp)	#, %sfp
	leal	two_over_pi@GOTOFF(%ebx), %esi	#,
	movl	%esi, -156(%ebp)	#, %sfp
	movl	%eax, -160(%ebp)	# ivtmp.155, %sfp
.L20:
	movl	-160(%ebp), %ecx	# %sfp, tmp452
	addl	-156(%ebp), %ecx	# %sfp, tmp452
	movl	8(%ecx), %edx	# two_over_pi, tmp456
	movl	%edx, -128(%ebp)	# tmp456, %sfp
	movl	%edx, %edi	# tmp456,
	sarl	$31, %edi	#,
	movl	%edi, -124(%ebp)	#, %sfp
	movl	-124(%ebp), %edi	# %sfp, tmp457
	imull	-136(%ebp), %edi	# %sfp, tmp457
	movl	-132(%ebp), %esi	# %sfp, tmp458
	imull	-128(%ebp), %esi	# %sfp, tmp458
	addl	%esi, %edi	# tmp458, tmp457
	movl	-128(%ebp), %eax	# %sfp,
	mull	-136(%ebp)	# %sfp
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%edi, %edx	# tmp457,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	4(%ecx), %edx	# two_over_pi, tmp464
	movl	%edx, -176(%ebp)	# tmp464, %sfp
	movl	%edx, %ecx	# tmp464,
	sarl	$31, %ecx	#,
	movl	%ecx, -172(%ebp)	#, %sfp
	movl	-144(%ebp), %esi	# %sfp, tmp465
	imull	-172(%ebp), %esi	# %sfp, tmp465
	movl	-140(%ebp), %edi	# %sfp, tmp466
	imull	-176(%ebp), %edi	# %sfp, tmp466
	addl	%edi, %esi	# tmp466, tmp465
	movl	-144(%ebp), %eax	# %sfp,
	mull	-176(%ebp)	# %sfp
	movl	%eax, -176(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp465,
	movl	%edx, -172(%ebp)	#, %sfp
	movl	-176(%ebp), %edx	# %sfp, tmp468
	movl	-172(%ebp), %ecx	# %sfp,
	addl	-128(%ebp), %edx	# %sfp, tmp468
	adcl	-124(%ebp), %ecx	# %sfp,
	movl	-160(%ebp), %esi	# %sfp,
	movl	-152(%ebp), %edi	# %sfp,
	movl	%edx, 8(%edi,%esi,2)	# tmp468, r
	movl	%ecx, 12(%edi,%esi,2)	#, r
	addl	$4, %esi	#,
	movl	%esi, -160(%ebp)	#, %sfp
	.loc 1 125 0
	cmpl	$40, %esi	#,
	jne	.L20	#,
	jmp	.L8	#
.L21:
	.loc 1 130 0
	leal	-112(%ebp), %edx	#,
	movl	%edx, -160(%ebp)	#, %sfp
	leal	two_over_pi@GOTOFF(%ebx), %ecx	#,
	movl	%ecx, -164(%ebp)	#, %sfp
	movl	%eax, -180(%ebp)	# ivtmp.168, %sfp
.L39:
	movl	-164(%ebp), %esi	# %sfp,
	addl	-180(%ebp), %esi	# %sfp,
	movl	%esi, -152(%ebp)	#, %sfp
	movl	4(%esi), %esi	# two_over_pi, tmp474
	movl	%esi, %edi	# tmp474,
	sarl	$31, %edi	#,
	movl	-144(%ebp), %ecx	# %sfp, tmp475
	imull	%edi, %ecx	#, tmp475
	movl	-140(%ebp), %edx	# %sfp, tmp476
	imull	%esi, %edx	# tmp473, tmp476
	addl	%edx, %ecx	# tmp476, tmp475
	movl	-144(%ebp), %eax	# %sfp,
	mull	%esi	# tmp473
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp475,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	-180(%ebp), %ecx	# %sfp,
	movl	two_over_pi@GOTOFF(%ecx,%ebx), %edx	# two_over_pi, tmp480
	movl	%edx, -176(%ebp)	# tmp480, %sfp
	movl	%edx, %esi	# tmp480,
	sarl	$31, %esi	#,
	movl	%esi, -172(%ebp)	#, %sfp
	movl	-156(%ebp), %esi	# %sfp, tmp482
	imull	-172(%ebp), %esi	# %sfp, tmp482
	movl	-156(%ebp), %eax	# %sfp,
	mull	-176(%ebp)	# %sfp
	movl	%eax, -176(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp482,
	movl	%edx, -172(%ebp)	#, %sfp
	movl	-128(%ebp), %edx	# %sfp,
	movl	-124(%ebp), %ecx	# %sfp,
	addl	-176(%ebp), %edx	# %sfp,
	adcl	-172(%ebp), %ecx	# %sfp,
	movl	%edx, -128(%ebp)	#, %sfp
	movl	%ecx, -124(%ebp)	#, %sfp
	movl	-152(%ebp), %ecx	# %sfp,
	movl	8(%ecx), %edx	# two_over_pi, tmp489
	movl	%edx, -152(%ebp)	# tmp489, %sfp
	movl	%edx, %esi	# tmp489,
	sarl	$31, %esi	#,
	movl	%esi, -148(%ebp)	#, %sfp
	movl	-136(%ebp), %esi	# %sfp, tmp490
	imull	-148(%ebp), %esi	# %sfp, tmp490
	movl	-132(%ebp), %edi	# %sfp, tmp491
	imull	-152(%ebp), %edi	# %sfp, tmp491
	addl	%edi, %esi	# tmp491, tmp490
	movl	-136(%ebp), %eax	# %sfp,
	mull	-152(%ebp)	# %sfp
	movl	%eax, -152(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp490,
	movl	%edx, -148(%ebp)	#, %sfp
	movl	-152(%ebp), %edx	# %sfp, tmp493
	movl	-148(%ebp), %ecx	# %sfp,
	addl	-128(%ebp), %edx	# %sfp, tmp493
	adcl	-124(%ebp), %ecx	# %sfp,
	movl	-180(%ebp), %esi	# %sfp,
	movl	-160(%ebp), %edi	# %sfp,
	movl	%edx, 8(%edi,%esi,2)	# tmp493, r
	movl	%ecx, 12(%edi,%esi,2)	#, r
	addl	$4, %esi	#,
	movl	%esi, -180(%ebp)	#, %sfp
	.loc 1 129 0
	cmpl	$40, %esi	#,
	jne	.L39	#,
	jmp	.L8	#
.L18:
.LVL2:
	.loc 1 136 0
	leal	-12+two_over_pi@GOTOFF(%ebx,%eax,4), %edx	#, two_over_pi_pt
.LVL3:
	.loc 1 137 0
	movl	12(%ebp), %eax	# x,
	movl	8(%eax), %eax	# <variable>.h_word,
	movl	%eax, -156(%ebp)	#, %sfp
	testl	%eax, %eax	#
	jne	.L22	#,
	.loc 1 140 0
	movl	12(%ebp), %edi	# x,
	movl	4(%edi), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -144(%ebp)	#, %sfp
	movl	%edi, -140(%ebp)	#, %sfp
	movl	12(%ebp), %edi	# x,
	movl	(%edi), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -136(%ebp)	#, %sfp
	movl	%edi, -132(%ebp)	#, %sfp
	.loc 1 139 0
	leal	-112(%ebp), %ecx	#,
	movl	%ecx, -156(%ebp)	#, %sfp
	movl	%eax, -164(%ebp)	# i.269, %sfp
	movl	%edx, -152(%ebp)	# two_over_pi_pt, %sfp
.LVL4:
.L23:
	movl	-164(%ebp), %edi	# %sfp,
	movl	-152(%ebp), %eax	# %sfp,
	movl	8(%eax,%edi,4), %esi	#, tmp499
	movl	%esi, %edi	# tmp499,
	sarl	$31, %edi	#,
	movl	-132(%ebp), %edx	# %sfp,
	imull	%esi, %edx	# tmp498,
	movl	-136(%ebp), %ecx	# %sfp, tmp501
	imull	%edi, %ecx	#, tmp501
	addl	%ecx, %edx	# tmp501,
	movl	%edx, -160(%ebp)	#, %sfp
	movl	-136(%ebp), %eax	# %sfp,
	mull	%esi	# tmp498
	movl	%eax, -128(%ebp)	#, %sfp
	movl	-160(%ebp), %ecx	# %sfp,
	addl	%ecx, %edx	#,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	-164(%ebp), %edi	# %sfp,
	movl	-152(%ebp), %eax	# %sfp,
	movl	4(%eax,%edi,4), %esi	#, tmp504
	movl	%esi, %edi	# tmp504,
	sarl	$31, %edi	#,
	movl	-140(%ebp), %edx	# %sfp,
	imull	%esi, %edx	# tmp503,
	movl	-144(%ebp), %ecx	# %sfp, tmp506
	imull	%edi, %ecx	#, tmp506
	addl	%ecx, %edx	# tmp506,
	movl	%edx, -160(%ebp)	#, %sfp
	movl	-144(%ebp), %eax	# %sfp,
	mull	%esi	# tmp503
	movl	%eax, %esi	#, tmp507
	movl	%edx, %edi	#,
	addl	-160(%ebp), %edi	# %sfp,
	addl	-128(%ebp), %esi	# %sfp, tmp508
	adcl	-124(%ebp), %edi	# %sfp,
	movl	-164(%ebp), %edx	# %sfp,
	movl	-156(%ebp), %ecx	# %sfp,
	movl	%esi, (%ecx,%edx,8)	# tmp508, r
	movl	%edi, 4(%ecx,%edx,8)	#, r
	.loc 1 138 0
	addl	$1, %edx	#,
	movl	%edx, -164(%ebp)	#, %sfp
.LVL5:
	cmpl	$11, %edx	#,
	jne	.L23	#,
	jmp	.L8	#
.LVL6:
.L22:
	.loc 1 145 0
	movl	12(%ebp), %edi	# x,
	movl	4(%edi), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -152(%ebp)	#, %sfp
	movl	%edi, -148(%ebp)	#, %sfp
	movl	12(%ebp), %edi	# x,
	movl	(%edi), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -144(%ebp)	#, %sfp
	movl	%edi, -140(%ebp)	#, %sfp
	movl	$0, %eax	#, i.281
	.loc 1 143 0
	leal	-112(%ebp), %ecx	#,
	movl	%ecx, -160(%ebp)	#, %sfp
	movl	%eax, -164(%ebp)	# i.281, %sfp
	movl	%edx, -176(%ebp)	# two_over_pi_pt, %sfp
.LVL7:
.L24:
	movl	-164(%ebp), %esi	# %sfp,
	movl	-176(%ebp), %edi	# %sfp,
	movl	4(%edi,%esi,4), %ecx	#, tmp511
	movl	%ecx, -128(%ebp)	# tmp511, %sfp
	movl	%ecx, %eax	# tmp511,
	sarl	$31, %eax	#,
	movl	%eax, -124(%ebp)	#, %sfp
	movl	-148(%ebp), %ecx	# %sfp, tmp512
	imull	-128(%ebp), %ecx	# %sfp, tmp512
	movl	-124(%ebp), %esi	# %sfp, tmp513
	imull	-152(%ebp), %esi	# %sfp, tmp513
	addl	%esi, %ecx	# tmp513, tmp512
	movl	-152(%ebp), %eax	# %sfp,
	mull	-128(%ebp)	# %sfp
	movl	%eax, -128(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp512,
	movl	%edx, -124(%ebp)	#, %sfp
	movl	-164(%ebp), %edx	# %sfp,
	movl	(%edi,%edx,4), %esi	#, tmp517
	movl	%esi, %edi	# tmp517,
	sarl	$31, %edi	#,
	movl	-156(%ebp), %ecx	# %sfp, tmp519
	imull	%edi, %ecx	#, tmp519
	movl	-156(%ebp), %eax	# %sfp,
	mull	%esi	# tmp516
	movl	%eax, %esi	#, tmp520
	leal	(%ecx,%edx), %edi	#,
	movl	-128(%ebp), %edx	# %sfp,
	movl	-124(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp520,
	adcl	%edi, %ecx	#,
	movl	%edx, -128(%ebp)	#, %sfp
	movl	%ecx, -124(%ebp)	#, %sfp
	movl	-164(%ebp), %esi	# %sfp,
	movl	-176(%ebp), %edi	# %sfp,
	movl	8(%edi,%esi,4), %ecx	#, tmp523
	movl	%ecx, -136(%ebp)	# tmp523, %sfp
	movl	%ecx, %eax	# tmp523,
	sarl	$31, %eax	#,
	movl	%eax, -132(%ebp)	#, %sfp
	movl	-140(%ebp), %ecx	# %sfp, tmp524
	imull	-136(%ebp), %ecx	# %sfp, tmp524
	movl	-132(%ebp), %esi	# %sfp, tmp525
	imull	-144(%ebp), %esi	# %sfp, tmp525
	addl	%esi, %ecx	# tmp525, tmp524
	movl	-144(%ebp), %eax	# %sfp,
	mull	-136(%ebp)	# %sfp
	movl	%eax, %esi	#, tmp526
	leal	(%ecx,%edx), %edi	#,
	addl	-128(%ebp), %esi	# %sfp, tmp527
	adcl	-124(%ebp), %edi	# %sfp,
	movl	-164(%ebp), %edx	# %sfp,
	movl	-160(%ebp), %ecx	# %sfp,
	movl	%esi, (%ecx,%edx,8)	# tmp527, r
	movl	%edi, 4(%ecx,%edx,8)	#, r
	.loc 1 142 0
	addl	$1, %edx	#,
	movl	%edx, -164(%ebp)	#, %sfp
.LVL8:
	cmpl	$11, %edx	#,
	jne	.L24	#,
.LVL9:
.L8:
	.loc 1 154 0
	movl	-32(%ebp), %eax	# r, r
	movl	-28(%ebp), %edx	# r, r
	shrdl	$30, %edx, %eax	#,, tmp528
	shrl	$30, %edx	#,
	addl	%eax, -40(%ebp)	# tmp528, r
	adcl	%edx, -36(%ebp)	#, r
.LVL10:
	leal	-40(%ebp), %eax	#, ivtmp.62
	.loc 1 55 0
	leal	-112(%ebp), %edx	#, r.66
.LVL11:
.L25:
	.loc 1 155 0
	movl	(%eax), %esi	# r, tmp531
	movl	4(%eax), %edi	# r,
	shrdl	$30, %edi, %esi	#, tmp, tmp
	shrl	$30, %edi	#, tmp
.LVL12:
	addl	%esi, -8(%eax)	# tmp, r
	adcl	%edi, -4(%eax)	# tmp, r
	shldl	$30, %esi, %edi	#, tmp532,
	sall	$30, %esi	#, tmp532
.LVL13:
	subl	%esi, (%eax)	# tmp532, r
	sbbl	%edi, 4(%eax)	#, r
	subl	$8, %eax	#, ivtmp.62
	cmpl	%edx, %eax	# r.66, ivtmp.62
	jne	.L25	#,
	.loc 1 158 0
	movl	-112(%ebp), %esi	# r,
	movl	%esi, -128(%ebp)	#, %sfp
.LVL14:
	.loc 1 165 0
	cmpl	$0, -100(%ebp)	#, r
	ja	.L26	#,
	movl	$1, %edi	#, sign
	cmpl	$536870912, -104(%ebp)	#, r
	jbe	.L28	#,
.L26:
.LVL15:
	leal	-104(%ebp), %eax	#, ivtmp.54
	.loc 1 55 0
	addl	$88, %edx	#, D.2791
.LVL16:
.L29:
	.loc 1 168 0
	movl	(%eax), %ecx	# r, tmp535
	notl	%ecx	# tmp534
	andl	$1073741823, %ecx	#, tmp537
	movl	%ecx, (%eax)	# tmp537, r
	movl	$0, 4(%eax)	#, r
	addl	$8, %eax	#, ivtmp.54
	cmpl	%edx, %eax	# D.2791, ivtmp.54
	jne	.L29	#,
	.loc 1 166 0
	addl	$1, -128(%ebp)	#, %sfp
	movl	$-1, %edi	#, sign
.LVL17:
.L28:
	.loc 1 178 0
	movl	$1, %esi	#, i
	movl	-100(%ebp), %eax	# r, r
	orl	-104(%ebp), %eax	# r, r
	jne	.L31	#,
	.loc 1 179 0
	movl	-92(%ebp), %eax	# r, r
	orl	-96(%ebp), %eax	# r, tmp542
	cmpl	$1, %eax	#, tmp542
	sbbl	%esi, %esi	# i
	notl	%esi	# i
	addl	$3, %esi	#, i
.L31:
.LVL18:
	leal	-112(%ebp,%esi,8), %edx	#, ivtmp.42
	movl	$0, %eax	#, j
	movl	%esi, -136(%ebp)	# i, %sfp
	movl	8(%ebp), %esi	# result, result
.LVL19:
.L33:
	.loc 1 183 0
	movl	(%edx), %ecx	# r, tmp547
	movl	%ecx, (%esi,%eax,4)	# tmp547, <variable>.h_word
	addl	$1, %eax	#, j
.LVL20:
	addl	$8, %edx	#, ivtmp.42
	cmpl	$8, %eax	#, j
	jne	.L33	#,
	movl	-136(%ebp), %esi	# %sfp, i
	.loc 1 186 0
	fld1
	movl	8(%ebp), %eax	# result,
.LVL21:
	fstpl	32(%eax)	# <variable>.exception.d
	.loc 1 187 0
	negl	%esi	# tmp549
	movl	%esi, 40(%eax)	# tmp549, <variable>.index
	.loc 1 188 0
	movl	12(%ebp), %eax	# x,
	imull	44(%eax), %edi	# <variable>.sign, tmp550
.LVL22:
	movl	8(%ebp), %edx	# result,
	movl	%edi, 44(%edx)	# tmp550, <variable>.sign
	.loc 1 193 0
	movl	%edx, 8(%esp)	#,
	leal	Pio2@GOTOFF(%ebx), %eax	#, tmp551
	movl	%eax, 4(%esp)	# tmp551,
	movl	%edx, (%esp)	#,
	call	scs_mul@PLT	#
	.loc 1 194 0
	movl	-128(%ebp), %eax	# %sfp, D.1737
	movl	12(%ebp), %ecx	# x,
	imull	44(%ecx), %eax	# <variable>.sign, D.1737
.LVL23:
.L4:
	.loc 1 195 0
	addl	$188, %esp	#,
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
	.size	rem_pio2_scs, .-rem_pio2_scs
	.section	.rodata
	.align 32
	.type	two_over_pi, @object
	.size	two_over_pi, 192
two_over_pi:
	.long	683565275
	.long	618938706
	.long	670080351
	.long	301282525
	.long	808900773
	.long	429114425
	.long	17299781
	.long	598466235
	.long	827878857
	.long	115581988
	.long	927694873
	.long	154069513
	.long	879003455
	.long	568242635
	.long	78028027
	.long	679622133
	.long	196006177
	.long	244958978
	.long	449936889
	.long	20550102
	.long	241226958
	.long	524929093
	.long	1043265508
	.long	674963448
	.long	637532033
	.long	427884274
	.long	1011232104
	.long	174923629
	.long	228570057
	.long	1018207092
	.long	1025047962
	.long	509602349
	.long	491384497
	.long	1052663575
	.long	754195687
	.long	931811986
	.long	983236311
	.long	991033557
	.long	874600460
	.long	809958523
	.long	451607603
	.long	1002572207
	.long	282621607
	.long	596730206
	.long	965132825
	.long	429413873
	.long	310485250
	.long	234870912
	.align 32
	.type	Pio2, @object
	.size	Pio2, 48
Pio2:
# h_word:
	.long	1
	.long	612887889
	.long	70064198
	.long	640037652
	.long	385988665
	.long	680821031
	.long	17911033
	.long	597692509
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
.LFB4:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE4:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
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
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	.LVL15-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x7
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL17-.Ltext0
	.long	.LVL23-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL15-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL17-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL8-.Ltext0
	.long	.LVL9-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL19-.Ltext0
	.long	.LVL23-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -144
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20-.Ltext0
	.long	.LVL21-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL2-.Ltext0
	.long	.LVL9-.Ltext0
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.byte	0x6
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL4-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL7-.Ltext0
	.long	.LVL9-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	0x0
	.long	0x0
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "scs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "scs_private.h"
	.file 8 "crlibm_private.h"
	.file 9 "coefpi2.h"
	.section	.debug_info
	.long	0x537
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF76
	.byte	0xc
	.long	.LASF77
	.long	.LASF78
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
	.long	.LASF79
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
	.uleb128 0x12
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x5a
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.long	0x3f9
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.byte	0x37
	.long	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x37
	.long	0x3f9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0x38
	.long	0x3fe
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.string	"tmp"
	.byte	0x1
	.byte	0x38
	.long	0x68
	.long	.LLST0
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0x39
	.long	0x30
	.long	.LLST1
	.uleb128 0x17
	.long	.LASF53
	.byte	0x1
	.byte	0x3c
	.long	0x5a
	.long	.LLST2
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.long	0x5a
	.long	.LLST3
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x3c
	.long	0x5a
	.long	.LLST4
	.uleb128 0x16
	.string	"ind"
	.byte	0x1
	.byte	0x3c
	.long	0x5a
	.long	.LLST5
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.byte	0x3d
	.long	0x40e
	.long	.LLST6
	.byte	0x0
	.uleb128 0x18
	.long	0x342
	.uleb128 0x5
	.long	0x68
	.long	0x40e
	.uleb128 0x6
	.long	0x30
	.byte	0xa
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x5a
	.uleb128 0x19
	.long	.LASF57
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF58
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF59
	.byte	0x7
	.byte	0x47
	.long	0x439
	.uleb128 0x18
	.long	0x2df
	.uleb128 0x1a
	.long	.LASF60
	.byte	0x7
	.byte	0x48
	.long	0x439
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x7
	.byte	0x49
	.long	0x439
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x7
	.byte	0x4a
	.long	0x439
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x7
	.byte	0x4b
	.long	0x439
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x7
	.byte	0x4c
	.long	0x439
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x7
	.byte	0x4d
	.long	0x439
	.uleb128 0x1a
	.long	.LASF66
	.byte	0x7
	.byte	0x4e
	.long	0x439
	.uleb128 0x1a
	.long	.LASF67
	.byte	0x8
	.byte	0xca
	.long	0x496
	.uleb128 0x18
	.long	0x2ea
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x8
	.byte	0xce
	.long	0x496
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x8
	.byte	0xd2
	.long	0x496
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x8
	.byte	0xd6
	.long	0x496
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x8
	.byte	0xda
	.long	0x496
	.uleb128 0x5
	.long	0x5a
	.long	0x4d7
	.uleb128 0x6
	.long	0x30
	.byte	0x2f
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x9
	.byte	0xb
	.long	0x4e8
	.byte	0x5
	.byte	0x3
	.long	two_over_pi
	.uleb128 0x18
	.long	0x4c7
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x9
	.byte	0x1f
	.long	0x4fe
	.byte	0x5
	.byte	0x3
	.long	Pio2
	.uleb128 0x18
	.long	0x337
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x9
	.byte	0x29
	.long	0x4fe
	.uleb128 0x19
	.long	.LASF57
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF58
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF75
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x53b
	.long	0x353
	.string	"rem_pio2_scs"
	.long	0x528
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x95
	.value	0x2
	.long	.Ldebug_info0
	.long	0x53b
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
.LASF55:
	.string	"result"
.LASF30:
	.string	"_old_offset"
.LASF73:
	.string	"Pio2"
.LASF49:
	.string	"db_number"
.LASF48:
	.string	"double"
.LASF71:
	.string	"scs_sixinv"
.LASF61:
	.string	"radix_mone_double"
.LASF25:
	.string	"_IO_save_end"
.LASF74:
	.string	"Pio4"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF75:
	.string	"crlibm_second_step_taken"
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
.LASF65:
	.string	"max_double"
.LASF52:
	.string	"index"
.LASF51:
	.string	"exception"
.LASF6:
	.string	"long long int"
.LASF34:
	.string	"_lock"
.LASF11:
	.string	"long int"
.LASF67:
	.string	"scs_zer"
.LASF31:
	.string	"_cur_column"
.LASF68:
	.string	"scs_half"
.LASF47:
	.string	"_pos"
.LASF46:
	.string	"_sbuf"
.LASF43:
	.string	"_IO_FILE"
.LASF60:
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
.LASF72:
	.string	"two_over_pi"
.LASF66:
	.string	"min_double"
.LASF18:
	.string	"_IO_write_base"
.LASF42:
	.string	"_unused2"
.LASF15:
	.string	"_IO_read_ptr"
.LASF63:
	.string	"radix_rng_double"
.LASF2:
	.string	"short unsigned int"
.LASF54:
	.string	"scs_ptr"
.LASF13:
	.string	"char"
.LASF56:
	.string	"two_over_pi_pt"
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
.LASF59:
	.string	"radix_one_double"
.LASF80:
	.string	"rem_pio2_scs"
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
.LASF62:
	.string	"radix_mtwo_double"
.LASF24:
	.string	"_IO_backup_base"
.LASF57:
	.string	"stdin"
.LASF77:
	.string	"rem_pio2.c"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF32:
	.string	"_vtable_offset"
.LASF76:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF23:
	.string	"_IO_save_base"
.LASF28:
	.string	"_fileno"
.LASF78:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF64:
	.string	"radix_mrng_double"
.LASF70:
	.string	"scs_two"
.LASF69:
	.string	"scs_one"
.LASF58:
	.string	"stdout"
.LASF79:
	.string	"_IO_lock_t"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
