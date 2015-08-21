	.file	"multiplication_scs.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# multiplication_scs.c -m32 -mtune=generic -march=i686 -g -O1 -Wall
# -Wshadow -Wpointer-arith -Wcast-align -Wconversion -Waggregate-return
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
.globl scs_mul
	.type	scs_mul, @function
scs_mul:
.LFB0:
	.file 1 "multiplication_scs.c"
	.loc 1 180 0
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
	movl	12(%ebp), %eax	# x, x
	movl	16(%ebp), %ecx	# y, y
	.loc 1 186 0
	fldl	32(%eax)	# <variable>.exception.d
	fmull	32(%ecx)	# <variable>.exception.d
	movl	8(%ebp), %edx	# result,
	fstpl	32(%edx)	# <variable>.exception.d
	.loc 1 187 0
	movl	44(%ecx), %edx	# <variable>.sign, <variable>.sign
	imull	44(%eax), %edx	# <variable>.sign, tmp112
	movl	8(%ebp), %ebx	# result,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edx, 44(%ebx)	# tmp112, <variable>.sign
	.loc 1 188 0
	movl	40(%ecx), %edx	# <variable>.index, <variable>.index
	addl	40(%eax), %edx	# <variable>.index, <variable>.index
	movl	%edx, -180(%ebp)	# <variable>.index, %sfp
	movl	%edx, 40(%ebx)	# <variable>.index, <variable>.index
	.loc 1 191 0
	movl	28(%eax), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -160(%ebp)	#, %sfp
	movl	%edi, -156(%ebp)	#, %sfp
.LVL1:
	movl	24(%eax), %ebx	# <variable>.h_word,
	movl	$0, %esi	#,
	movl	%ebx, -128(%ebp)	#, %sfp
	movl	%esi, -124(%ebp)	#, %sfp
.LVL2:
	.loc 1 192 0
	movl	20(%eax), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -112(%ebp)	#, %sfp
	movl	%edi, -108(%ebp)	#, %sfp
.LVL3:
	movl	16(%eax), %ebx	# <variable>.h_word,
	movl	$0, %esi	#,
	movl	%ebx, -96(%ebp)	#, %sfp
	movl	%esi, -92(%ebp)	#, %sfp
.LVL4:
	.loc 1 193 0
	movl	12(%eax), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -80(%ebp)	#, %sfp
	movl	%edi, -76(%ebp)	#, %sfp
.LVL5:
	movl	8(%eax), %ebx	# <variable>.h_word,
	movl	$0, %esi	#,
	movl	%ebx, -64(%ebp)	#, %sfp
	movl	%esi, -60(%ebp)	#, %sfp
.LVL6:
	.loc 1 194 0
	movl	4(%eax), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -48(%ebp)	#, %sfp
	movl	%edi, -44(%ebp)	#, %sfp
.LVL7:
	movl	(%eax), %ebx	# <variable>.h_word,
	movl	$0, %esi	#,
	movl	%ebx, -56(%ebp)	#, %sfp
	movl	%esi, -52(%ebp)	#, %sfp
.LVL8:
	.loc 1 196 0
	movl	4(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, -32(%ebp)	# <variable>.h_word, %sfp
	movl	%eax, %esi	# <variable>.h_word,
	sarl	$31, %esi	#,
	movl	%esi, -28(%ebp)	#, %sfp
	movl	8(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, -72(%ebp)	# <variable>.h_word, %sfp
	movl	%eax, %edi	# <variable>.h_word,
	sarl	$31, %edi	#,
	movl	%edi, -68(%ebp)	#, %sfp
	movl	16(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, -104(%ebp)	# <variable>.h_word, %sfp
	movl	%eax, %edx	# <variable>.h_word,
	sarl	$31, %edx	#,
	movl	%edx, -100(%ebp)	#, %sfp
	movl	12(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, -88(%ebp)	# <variable>.h_word, %sfp
	movl	%eax, %ebx	# <variable>.h_word,
	sarl	$31, %ebx	#,
	movl	%ebx, -84(%ebp)	#, %sfp
	movl	24(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, -136(%ebp)	# <variable>.h_word, %sfp
	movl	%eax, %esi	# <variable>.h_word,
	sarl	$31, %esi	#,
	movl	%esi, -132(%ebp)	#, %sfp
	movl	20(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, -120(%ebp)	# <variable>.h_word, %sfp
	movl	%eax, %edi	# <variable>.h_word,
	sarl	$31, %edi	#,
	movl	%edi, -116(%ebp)	#, %sfp
	movl	28(%ecx), %eax	# <variable>.h_word, <variable>.h_word
	movl	%eax, -168(%ebp)	# <variable>.h_word, %sfp
	movl	%eax, %edx	# <variable>.h_word,
	sarl	$31, %edx	#,
	movl	%edx, -164(%ebp)	#, %sfp
	.loc 1 197 0
	movl	(%ecx), %ecx	# <variable>.h_word, <variable>.h_word
	movl	%ecx, -40(%ebp)	# <variable>.h_word, %sfp
	movl	%ecx, %ebx	# <variable>.h_word,
	sarl	$31, %ebx	#,
	movl	%ebx, -36(%ebp)	#, %sfp
	movl	-28(%ebp), %ecx	# %sfp, tmp123
	imull	-128(%ebp), %ecx	# %sfp, tmp123
	movl	-124(%ebp), %edx	# %sfp, tmp124
	imull	-32(%ebp), %edx	# %sfp, tmp124
	addl	%edx, %ecx	# tmp124, tmp123
	movl	-32(%ebp), %eax	# %sfp,
	mull	-128(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp123,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-36(%ebp), %ecx	# %sfp, tmp126
	imull	-160(%ebp), %ecx	# %sfp, tmp126
	movl	-156(%ebp), %eax	# %sfp, tmp127
	imull	-40(%ebp), %eax	# %sfp, tmp127
	addl	%eax, %ecx	# tmp127, tmp126
	movl	-40(%ebp), %eax	# %sfp,
	mull	-160(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp126,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-24(%ebp), %ecx	# %sfp, tmp129
	movl	-20(%ebp), %ebx	# %sfp,
	addl	-144(%ebp), %ecx	# %sfp, tmp129
	adcl	-140(%ebp), %ebx	# %sfp,
	movl	-84(%ebp), %esi	# %sfp, tmp130
	imull	-96(%ebp), %esi	# %sfp, tmp130
	movl	-92(%ebp), %eax	# %sfp, tmp131
	imull	-88(%ebp), %eax	# %sfp, tmp131
	addl	%eax, %esi	# tmp131, tmp130
	movl	-88(%ebp), %eax	# %sfp,
	mull	-96(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp130,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-144(%ebp), %esi	# %sfp, tmp133
	movl	-140(%ebp), %edi	# %sfp,
	addl	%ecx, %esi	# tmp129, tmp133
	adcl	%ebx, %edi	#,
	movl	-68(%ebp), %ecx	# %sfp, tmp134
	imull	-112(%ebp), %ecx	# %sfp, tmp134
	movl	-108(%ebp), %eax	# %sfp, tmp135
	imull	-72(%ebp), %eax	# %sfp, tmp135
	addl	%eax, %ecx	# tmp135, tmp134
	movl	-72(%ebp), %eax	# %sfp,
	mull	-112(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp134,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %edx	# %sfp,
	movl	-20(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp133,
	adcl	%edi, %ecx	#,
	movl	%edx, -144(%ebp)	#, %sfp
	movl	%ecx, -140(%ebp)	#, %sfp
	movl	-116(%ebp), %ecx	# %sfp, tmp138
	imull	-64(%ebp), %ecx	# %sfp, tmp138
	movl	-60(%ebp), %esi	# %sfp, tmp139
	imull	-120(%ebp), %esi	# %sfp, tmp139
	addl	%esi, %ecx	# tmp139, tmp138
	movl	-120(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp138,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-144(%ebp), %edx	# %sfp,
	movl	-140(%ebp), %ecx	# %sfp,
	addl	-24(%ebp), %edx	# %sfp,
	adcl	-20(%ebp), %ecx	# %sfp,
	movl	%edx, -144(%ebp)	#, %sfp
	movl	%ecx, -140(%ebp)	#, %sfp
	movl	-100(%ebp), %ecx	# %sfp, tmp142
	imull	-80(%ebp), %ecx	# %sfp, tmp142
	movl	-76(%ebp), %esi	# %sfp, tmp143
	imull	-104(%ebp), %esi	# %sfp, tmp143
	addl	%esi, %ecx	# tmp143, tmp142
	movl	-104(%ebp), %eax	# %sfp,
	mull	-80(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp142,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %ecx	# %sfp, tmp145
	movl	-20(%ebp), %ebx	# %sfp,
	addl	-144(%ebp), %ecx	# %sfp, tmp145
	adcl	-140(%ebp), %ebx	# %sfp,
	movl	-164(%ebp), %esi	# %sfp, tmp146
	imull	-56(%ebp), %esi	# %sfp, tmp146
	movl	-52(%ebp), %eax	# %sfp, tmp147
	imull	-168(%ebp), %eax	# %sfp, tmp147
	addl	%eax, %esi	# tmp147, tmp146
	movl	-168(%ebp), %eax	# %sfp,
	mull	-56(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp146,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-144(%ebp), %esi	# %sfp, tmp149
	movl	-140(%ebp), %edi	# %sfp,
	addl	%ecx, %esi	# tmp145, tmp149
	adcl	%ebx, %edi	#,
	movl	-132(%ebp), %ecx	# %sfp, tmp150
	imull	-48(%ebp), %ecx	# %sfp, tmp150
	movl	-44(%ebp), %eax	# %sfp, tmp151
	imull	-136(%ebp), %eax	# %sfp, tmp151
	addl	%eax, %ecx	# tmp151, tmp150
	movl	-136(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp150,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %edx	# %sfp,
	movl	-20(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp149,
	adcl	%edi, %ecx	#,
	movl	%edx, -176(%ebp)	#, %sfp
	movl	%ecx, -172(%ebp)	#, %sfp
.LVL9:
	.loc 1 198 0
	movl	-28(%ebp), %ecx	# %sfp, tmp153
	imull	-112(%ebp), %ecx	# %sfp, tmp153
	movl	-108(%ebp), %edx	# %sfp, tmp154
	imull	-32(%ebp), %edx	# %sfp, tmp154
	addl	%edx, %ecx	# tmp154, tmp153
	movl	-32(%ebp), %eax	# %sfp,
	mull	-112(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp153,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-36(%ebp), %ecx	# %sfp, tmp156
	imull	-128(%ebp), %ecx	# %sfp, tmp156
	movl	-124(%ebp), %eax	# %sfp, tmp157
	imull	-40(%ebp), %eax	# %sfp, tmp157
	addl	%eax, %ecx	# tmp157, tmp156
	movl	-40(%ebp), %eax	# %sfp,
	mull	-128(%ebp)	# %sfp
	movl	%eax, %esi	#, tmp158
	leal	(%ecx,%edx), %edi	#,
	addl	-24(%ebp), %esi	# %sfp, tmp159
	adcl	-20(%ebp), %edi	# %sfp,
	movl	-84(%ebp), %ecx	# %sfp, tmp160
	imull	-80(%ebp), %ecx	# %sfp, tmp160
	movl	-76(%ebp), %eax	# %sfp, tmp161
	imull	-88(%ebp), %eax	# %sfp, tmp161
	addl	%eax, %ecx	# tmp161, tmp160
	movl	-88(%ebp), %eax	# %sfp,
	mull	-80(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp160,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %edx	# %sfp,
	movl	-20(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp159,
	adcl	%edi, %ecx	#,
	movl	%edx, -144(%ebp)	#, %sfp
	movl	%ecx, -140(%ebp)	#, %sfp
	movl	-68(%ebp), %ecx	# %sfp, tmp164
	imull	-96(%ebp), %ecx	# %sfp, tmp164
	movl	-92(%ebp), %esi	# %sfp, tmp165
	imull	-72(%ebp), %esi	# %sfp, tmp165
	addl	%esi, %ecx	# tmp165, tmp164
	movl	-72(%ebp), %eax	# %sfp,
	mull	-96(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp164,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-144(%ebp), %edx	# %sfp,
	movl	-140(%ebp), %ecx	# %sfp,
	addl	-24(%ebp), %edx	# %sfp,
	adcl	-20(%ebp), %ecx	# %sfp,
	movl	%edx, -144(%ebp)	#, %sfp
	movl	%ecx, -140(%ebp)	#, %sfp
	movl	-116(%ebp), %ecx	# %sfp, tmp168
	imull	-48(%ebp), %ecx	# %sfp, tmp168
	movl	-44(%ebp), %esi	# %sfp, tmp169
	imull	-120(%ebp), %esi	# %sfp, tmp169
	addl	%esi, %ecx	# tmp169, tmp168
	movl	-120(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp168,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %ecx	# %sfp, tmp171
	movl	-20(%ebp), %ebx	# %sfp,
	addl	-144(%ebp), %ecx	# %sfp, tmp171
	adcl	-140(%ebp), %ebx	# %sfp,
	movl	-100(%ebp), %esi	# %sfp, tmp172
	imull	-64(%ebp), %esi	# %sfp, tmp172
	movl	-60(%ebp), %eax	# %sfp, tmp173
	imull	-104(%ebp), %eax	# %sfp, tmp173
	addl	%eax, %esi	# tmp173, tmp172
	movl	-104(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp172,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-144(%ebp), %esi	# %sfp, tmp175
	movl	-140(%ebp), %edi	# %sfp,
	addl	%ecx, %esi	# tmp171, tmp175
	adcl	%ebx, %edi	#,
	movl	-132(%ebp), %ecx	# %sfp, tmp176
	imull	-56(%ebp), %ecx	# %sfp, tmp176
	movl	-52(%ebp), %eax	# %sfp, tmp177
	imull	-136(%ebp), %eax	# %sfp, tmp177
	addl	%eax, %ecx	# tmp177, tmp176
	movl	-136(%ebp), %eax	# %sfp,
	mull	-56(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp176,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %edx	# %sfp,
	movl	-20(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp175,
	adcl	%edi, %ecx	#,
	movl	%edx, -192(%ebp)	#, %sfp
	movl	%ecx, -188(%ebp)	#, %sfp
.LVL10:
	.loc 1 199 0
	movl	-28(%ebp), %ecx	# %sfp, tmp179
	imull	-96(%ebp), %ecx	# %sfp, tmp179
	movl	-92(%ebp), %edx	# %sfp, tmp180
	imull	-32(%ebp), %edx	# %sfp, tmp180
	addl	%edx, %ecx	# tmp180, tmp179
	movl	-32(%ebp), %eax	# %sfp,
	mull	-96(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp179,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-36(%ebp), %ecx	# %sfp, tmp182
	imull	-112(%ebp), %ecx	# %sfp, tmp182
	movl	-108(%ebp), %eax	# %sfp, tmp183
	imull	-40(%ebp), %eax	# %sfp, tmp183
	addl	%eax, %ecx	# tmp183, tmp182
	movl	-40(%ebp), %eax	# %sfp,
	mull	-112(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp182,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-144(%ebp), %edx	# %sfp,
	movl	-140(%ebp), %ecx	# %sfp,
	addl	-24(%ebp), %edx	# %sfp,
	adcl	-20(%ebp), %ecx	# %sfp,
	movl	%edx, -144(%ebp)	#, %sfp
	movl	%ecx, -140(%ebp)	#, %sfp
	movl	-84(%ebp), %ecx	# %sfp, tmp186
	imull	-64(%ebp), %ecx	# %sfp, tmp186
	movl	-60(%ebp), %esi	# %sfp, tmp187
	imull	-88(%ebp), %esi	# %sfp, tmp187
	addl	%esi, %ecx	# tmp187, tmp186
	movl	-88(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp186,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-144(%ebp), %edx	# %sfp,
	movl	-140(%ebp), %ecx	# %sfp,
	addl	-24(%ebp), %edx	# %sfp,
	adcl	-20(%ebp), %ecx	# %sfp,
	movl	%edx, -144(%ebp)	#, %sfp
	movl	%ecx, -140(%ebp)	#, %sfp
	movl	-68(%ebp), %ecx	# %sfp, tmp190
	imull	-80(%ebp), %ecx	# %sfp, tmp190
	movl	-76(%ebp), %esi	# %sfp, tmp191
	imull	-72(%ebp), %esi	# %sfp, tmp191
	addl	%esi, %ecx	# tmp191, tmp190
	movl	-72(%ebp), %eax	# %sfp,
	mull	-80(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp190,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %ecx	# %sfp, tmp193
	movl	-20(%ebp), %ebx	# %sfp,
	addl	-144(%ebp), %ecx	# %sfp, tmp193
	adcl	-140(%ebp), %ebx	# %sfp,
	movl	-116(%ebp), %esi	# %sfp, tmp194
	imull	-56(%ebp), %esi	# %sfp, tmp194
	movl	-52(%ebp), %eax	# %sfp, tmp195
	imull	-120(%ebp), %eax	# %sfp, tmp195
	addl	%eax, %esi	# tmp195, tmp194
	movl	-120(%ebp), %eax	# %sfp,
	mull	-56(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp194,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-144(%ebp), %esi	# %sfp, tmp197
	movl	-140(%ebp), %edi	# %sfp,
	addl	%ecx, %esi	# tmp193, tmp197
	adcl	%ebx, %edi	#,
	movl	-100(%ebp), %ecx	# %sfp, tmp198
	imull	-48(%ebp), %ecx	# %sfp, tmp198
	movl	-44(%ebp), %eax	# %sfp, tmp199
	imull	-104(%ebp), %eax	# %sfp, tmp199
	addl	%eax, %ecx	# tmp199, tmp198
	movl	-104(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp198,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %edx	# %sfp,
	movl	-20(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp197,
	adcl	%edi, %ecx	#,
	movl	%edx, -152(%ebp)	#, %sfp
	movl	%ecx, -148(%ebp)	#, %sfp
.LVL11:
	.loc 1 200 0
	movl	-28(%ebp), %ecx	# %sfp, tmp201
	imull	-80(%ebp), %ecx	# %sfp, tmp201
	movl	-76(%ebp), %edx	# %sfp, tmp202
	imull	-32(%ebp), %edx	# %sfp, tmp202
	addl	%edx, %ecx	# tmp202, tmp201
	movl	-32(%ebp), %eax	# %sfp,
	mull	-80(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp201,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-36(%ebp), %ecx	# %sfp, tmp204
	imull	-96(%ebp), %ecx	# %sfp, tmp204
	movl	-92(%ebp), %eax	# %sfp, tmp205
	imull	-40(%ebp), %eax	# %sfp, tmp205
	addl	%eax, %ecx	# tmp205, tmp204
	movl	-40(%ebp), %eax	# %sfp,
	mull	-96(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp204,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-144(%ebp), %edx	# %sfp,
	movl	-140(%ebp), %ecx	# %sfp,
	addl	-24(%ebp), %edx	# %sfp,
	adcl	-20(%ebp), %ecx	# %sfp,
	movl	%edx, -144(%ebp)	#, %sfp
	movl	%ecx, -140(%ebp)	#, %sfp
	movl	-84(%ebp), %ecx	# %sfp, tmp208
	imull	-48(%ebp), %ecx	# %sfp, tmp208
	movl	-44(%ebp), %esi	# %sfp, tmp209
	imull	-88(%ebp), %esi	# %sfp, tmp209
	addl	%esi, %ecx	# tmp209, tmp208
	movl	-88(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp208,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %ecx	# %sfp, tmp211
	movl	-20(%ebp), %ebx	# %sfp,
	addl	-144(%ebp), %ecx	# %sfp, tmp211
	adcl	-140(%ebp), %ebx	# %sfp,
	movl	-68(%ebp), %esi	# %sfp, tmp212
	imull	-64(%ebp), %esi	# %sfp, tmp212
	movl	-60(%ebp), %eax	# %sfp, tmp213
	imull	-72(%ebp), %eax	# %sfp, tmp213
	addl	%eax, %esi	# tmp213, tmp212
	movl	-72(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp212,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-144(%ebp), %esi	# %sfp, tmp215
	movl	-140(%ebp), %edi	# %sfp,
	addl	%ecx, %esi	# tmp211, tmp215
	adcl	%ebx, %edi	#,
	movl	-100(%ebp), %ecx	# %sfp, tmp216
	imull	-56(%ebp), %ecx	# %sfp, tmp216
	movl	-52(%ebp), %eax	# %sfp, tmp217
	imull	-104(%ebp), %eax	# %sfp, tmp217
	addl	%eax, %ecx	# tmp217, tmp216
	movl	-104(%ebp), %eax	# %sfp,
	mull	-56(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp216,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %edx	# %sfp,
	movl	-20(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp215,
	adcl	%edi, %ecx	#,
	movl	%edx, -200(%ebp)	#, %sfp
	movl	%ecx, -196(%ebp)	#, %sfp
.LVL12:
	.loc 1 201 0
	movl	-28(%ebp), %ecx	# %sfp, tmp219
	imull	-64(%ebp), %ecx	# %sfp, tmp219
	movl	-60(%ebp), %edx	# %sfp, tmp220
	imull	-32(%ebp), %edx	# %sfp, tmp220
	addl	%edx, %ecx	# tmp220, tmp219
	movl	-32(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp219,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-36(%ebp), %ecx	# %sfp, tmp222
	imull	-80(%ebp), %ecx	# %sfp, tmp222
	movl	-76(%ebp), %eax	# %sfp, tmp223
	imull	-40(%ebp), %eax	# %sfp, tmp223
	addl	%eax, %ecx	# tmp223, tmp222
	movl	-40(%ebp), %eax	# %sfp,
	mull	-80(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp222,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-24(%ebp), %ecx	# %sfp, tmp225
	movl	-20(%ebp), %ebx	# %sfp,
	addl	-144(%ebp), %ecx	# %sfp, tmp225
	adcl	-140(%ebp), %ebx	# %sfp,
	movl	-84(%ebp), %esi	# %sfp, tmp226
	imull	-56(%ebp), %esi	# %sfp, tmp226
	movl	-52(%ebp), %eax	# %sfp, tmp227
	imull	-88(%ebp), %eax	# %sfp, tmp227
	addl	%eax, %esi	# tmp227, tmp226
	movl	-88(%ebp), %eax	# %sfp,
	mull	-56(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp226,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-144(%ebp), %esi	# %sfp, tmp229
	movl	-140(%ebp), %edi	# %sfp,
	addl	%ecx, %esi	# tmp225, tmp229
	adcl	%ebx, %edi	#,
	movl	-68(%ebp), %ecx	# %sfp, tmp230
	imull	-48(%ebp), %ecx	# %sfp, tmp230
	movl	-44(%ebp), %eax	# %sfp, tmp231
	imull	-72(%ebp), %eax	# %sfp, tmp231
	addl	%eax, %ecx	# tmp231, tmp230
	movl	-72(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp230,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %edx	# %sfp,
	movl	-20(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp229,
	adcl	%edi, %ecx	#,
	movl	%edx, -24(%ebp)	#, %sfp
	movl	%ecx, -20(%ebp)	#, %sfp
.LVL13:
	.loc 1 202 0
	movl	-28(%ebp), %ecx	# %sfp, tmp233
	imull	-48(%ebp), %ecx	# %sfp, tmp233
	movl	-44(%ebp), %edx	# %sfp, tmp234
	imull	-32(%ebp), %edx	# %sfp, tmp234
	addl	%edx, %ecx	# tmp234, tmp233
	movl	-32(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp233,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-36(%ebp), %ecx	# %sfp, tmp236
	imull	-64(%ebp), %ecx	# %sfp, tmp236
	movl	-60(%ebp), %eax	# %sfp, tmp237
	imull	-40(%ebp), %eax	# %sfp, tmp237
	addl	%eax, %ecx	# tmp237, tmp236
	movl	-40(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, %esi	#, tmp238
	leal	(%ecx,%edx), %edi	#,
	addl	-144(%ebp), %esi	# %sfp, tmp239
	adcl	-140(%ebp), %edi	# %sfp,
	movl	-68(%ebp), %ecx	# %sfp, tmp240
	imull	-56(%ebp), %ecx	# %sfp, tmp240
	movl	-52(%ebp), %eax	# %sfp, tmp241
	imull	-72(%ebp), %eax	# %sfp, tmp241
	addl	%eax, %ecx	# tmp241, tmp240
	movl	-72(%ebp), %eax	# %sfp,
	mull	-56(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp240,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-144(%ebp), %edx	# %sfp,
	movl	-140(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp239,
	adcl	%edi, %ecx	#,
	movl	%edx, -208(%ebp)	#, %sfp
	movl	%ecx, -204(%ebp)	#, %sfp
.LVL14:
	.loc 1 203 0
	movl	-28(%ebp), %ecx	# %sfp, tmp243
	imull	-56(%ebp), %ecx	# %sfp, tmp243
	movl	-52(%ebp), %edx	# %sfp, tmp244
	imull	-32(%ebp), %edx	# %sfp, tmp244
	addl	%edx, %ecx	# tmp244, tmp243
	movl	-32(%ebp), %eax	# %sfp,
	mull	-56(%ebp)	# %sfp
	movl	%eax, -144(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp243,
	movl	%edx, -140(%ebp)	#, %sfp
	movl	-36(%ebp), %ecx	# %sfp, tmp246
	imull	-48(%ebp), %ecx	# %sfp, tmp246
	movl	-44(%ebp), %eax	# %sfp, tmp247
	imull	-40(%ebp), %eax	# %sfp, tmp247
	addl	%eax, %ecx	# tmp247, tmp246
	movl	-40(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, -216(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp246,
	movl	%edx, -212(%ebp)	#, %sfp
	movl	-144(%ebp), %edx	# %sfp,
	movl	-140(%ebp), %ecx	# %sfp,
	addl	-216(%ebp), %edx	# %sfp,
	adcl	-212(%ebp), %ecx	# %sfp,
	movl	%edx, -144(%ebp)	#, %sfp
	movl	%ecx, -140(%ebp)	#, %sfp
.LVL15:
	.loc 1 204 0
	movl	-36(%ebp), %ecx	# %sfp, tmp249
	imull	-56(%ebp), %ecx	# %sfp, tmp249
	movl	-52(%ebp), %edx	# %sfp, tmp250
	imull	-40(%ebp), %edx	# %sfp, tmp250
	addl	%edx, %ecx	# tmp250, tmp249
	movl	-40(%ebp), %eax	# %sfp,
	mull	-56(%ebp)	# %sfp
	movl	%eax, -40(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp249,
	movl	%edx, -36(%ebp)	#, %sfp
.LVL16:
	.loc 1 208 0
	movl	-68(%ebp), %ecx	# %sfp, tmp251
	imull	-128(%ebp), %ecx	# %sfp, tmp251
	movl	-124(%ebp), %eax	# %sfp, tmp252
	imull	-72(%ebp), %eax	# %sfp, tmp252
	addl	%eax, %ecx	# tmp252, tmp251
	movl	-72(%ebp), %eax	# %sfp,
	mull	-128(%ebp)	# %sfp
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp251,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-28(%ebp), %ecx	# %sfp, tmp254
	imull	-160(%ebp), %ecx	# %sfp, tmp254
	movl	-156(%ebp), %esi	# %sfp, tmp255
	imull	-32(%ebp), %esi	# %sfp, tmp255
	addl	%esi, %ecx	# tmp255, tmp254
	movl	-32(%ebp), %eax	# %sfp,
	mull	-160(%ebp)	# %sfp
	movl	%eax, %esi	#, tmp256
	movl	%edx, %edi	#,
	addl	%ecx, %edi	# tmp254,
	addl	-56(%ebp), %esi	# %sfp, tmp257
	adcl	-52(%ebp), %edi	# %sfp,
	movl	-100(%ebp), %ecx	# %sfp, tmp258
	imull	-96(%ebp), %ecx	# %sfp, tmp258
	movl	-92(%ebp), %eax	# %sfp, tmp259
	imull	-104(%ebp), %eax	# %sfp, tmp259
	addl	%eax, %ecx	# tmp259, tmp258
	movl	-104(%ebp), %eax	# %sfp,
	mull	-96(%ebp)	# %sfp
	movl	%eax, -32(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp258,
	movl	%edx, -28(%ebp)	#, %sfp
	addl	-32(%ebp), %esi	# %sfp, tmp261
	adcl	-28(%ebp), %edi	# %sfp,
	movl	-84(%ebp), %ecx	# %sfp, tmp262
	imull	-112(%ebp), %ecx	# %sfp, tmp262
	movl	-108(%ebp), %eax	# %sfp, tmp263
	imull	-88(%ebp), %eax	# %sfp, tmp263
	addl	%eax, %ecx	# tmp263, tmp262
	movl	-88(%ebp), %eax	# %sfp,
	mull	-112(%ebp)	# %sfp
	movl	%eax, -32(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp262,
	movl	%edx, -28(%ebp)	#, %sfp
	addl	-32(%ebp), %esi	# %sfp, tmp265
	adcl	-28(%ebp), %edi	# %sfp,
	movl	-132(%ebp), %ecx	# %sfp, tmp266
	imull	-64(%ebp), %ecx	# %sfp, tmp266
	movl	-60(%ebp), %eax	# %sfp, tmp267
	imull	-136(%ebp), %eax	# %sfp, tmp267
	addl	%eax, %ecx	# tmp267, tmp266
	movl	-136(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, -32(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp266,
	movl	%edx, -28(%ebp)	#, %sfp
	addl	-32(%ebp), %esi	# %sfp, tmp269
	adcl	-28(%ebp), %edi	# %sfp,
	movl	-116(%ebp), %ecx	# %sfp, tmp270
	imull	-80(%ebp), %ecx	# %sfp, tmp270
	movl	-76(%ebp), %eax	# %sfp, tmp271
	imull	-120(%ebp), %eax	# %sfp, tmp271
	addl	%eax, %ecx	# tmp271, tmp270
	movl	-120(%ebp), %eax	# %sfp,
	mull	-80(%ebp)	# %sfp
	movl	%eax, -32(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp270,
	movl	%edx, -28(%ebp)	#, %sfp
	movl	-32(%ebp), %edx	# %sfp,
	movl	-28(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp269,
	adcl	%edi, %ecx	#,
	movl	%edx, -32(%ebp)	#, %sfp
	movl	%ecx, -28(%ebp)	#, %sfp
	movl	-164(%ebp), %ecx	# %sfp, tmp274
	imull	-48(%ebp), %ecx	# %sfp, tmp274
	movl	-44(%ebp), %esi	# %sfp, tmp275
	imull	-168(%ebp), %esi	# %sfp, tmp275
	addl	%esi, %ecx	# tmp275, tmp274
	movl	-168(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, %esi	#, tmp276
	leal	(%ecx,%edx), %edi	#,
	movl	-32(%ebp), %eax	# %sfp, tmp277
	movl	-28(%ebp), %edx	# %sfp,
	addl	%esi, %eax	# tmp276, tmp277
	adcl	%edi, %edx	#,
	shrdl	$30, %edx, %eax	#,, tmp278
	shrl	$30, %edx	#,
	movl	-176(%ebp), %ecx	# %sfp,
	movl	-172(%ebp), %ebx	# %sfp,
	addl	%eax, %ecx	# tmp278,
	adcl	%edx, %ebx	#,
	movl	%ecx, -176(%ebp)	#, %sfp
	movl	%ebx, -172(%ebp)	#, %sfp
.LVL17:
	.loc 1 209 0
	shrdl	$30, %ebx, %ecx	#,,
	shrl	$30, %ebx	#,
	movl	%ecx, -32(%ebp)	#, %sfp
	movl	%ebx, -28(%ebp)	#, %sfp
.LVL18:
	movl	-192(%ebp), %eax	# %sfp, r6.15
	movl	-188(%ebp), %edx	# %sfp, r6.15
	addl	%ecx, %eax	#, r6.15
	adcl	%ebx, %edx	#, r6.15
.LVL19:
	.loc 1 210 0
	movl	%eax, %esi	# r6.15, tmp.17
	movl	%edx, %edi	# r6.15, tmp.17
	shrdl	$30, %edx, %esi	#, tmp.17, tmp.17
	shrl	$30, %edi	#, tmp.17
.LVL20:
	movl	-152(%ebp), %ecx	# %sfp,
	movl	-148(%ebp), %ebx	# %sfp,
	addl	%esi, %ecx	# tmp.17,
	adcl	%edi, %ebx	# tmp.17,
	movl	%ecx, -152(%ebp)	#, %sfp
	movl	%ebx, -148(%ebp)	#, %sfp
	shldl	$30, %esi, %edi	#, tmp279,
	sall	$30, %esi	#, tmp279
.LVL21:
	movl	%eax, %ecx	# r6.15,
	movl	%edx, %ebx	# r6.15,
	subl	%esi, %ecx	# tmp279,
	sbbl	%edi, %ebx	#,
	movl	%ecx, -64(%ebp)	#, %sfp
	movl	%ebx, -60(%ebp)	#, %sfp
.LVL22:
	.loc 1 211 0
	movl	-152(%ebp), %eax	# %sfp, tmp.21
	movl	-148(%ebp), %edx	# %sfp, tmp.21
	shrdl	$30, %edx, %eax	#, tmp.21, tmp.21
	shrl	$30, %edx	#, tmp.21
.LVL23:
	movl	-200(%ebp), %ecx	# %sfp, r4.22
	movl	-196(%ebp), %ebx	# %sfp, r4.22
	addl	%eax, %ecx	# tmp.21, r4.22
	adcl	%edx, %ebx	# tmp.21, r4.22
.LVL24:
	shldl	$30, %eax, %edx	#, tmp280,
	sall	$30, %eax	#, tmp280
.LVL25:
	movl	-152(%ebp), %esi	# %sfp,
	movl	-148(%ebp), %edi	# %sfp,
	subl	%eax, %esi	# tmp280,
	sbbl	%edx, %edi	#,
	movl	%esi, -152(%ebp)	#, %sfp
	movl	%edi, -148(%ebp)	#, %sfp
	.loc 1 212 0
	movl	%ecx, %eax	# r4.22, tmp.25
	movl	%ebx, %edx	# r4.22, tmp.25
	shrdl	$30, %ebx, %eax	#, tmp.25, tmp.25
	shrl	$30, %edx	#, tmp.25
.LVL26:
	movl	-24(%ebp), %esi	# %sfp,
	movl	-20(%ebp), %edi	# %sfp,
	addl	%eax, %esi	# tmp.25,
	adcl	%edx, %edi	# tmp.25,
	movl	%esi, -24(%ebp)	#, %sfp
	movl	%edi, -20(%ebp)	#, %sfp
	shldl	$30, %eax, %edx	#, tmp281,
	sall	$30, %eax	#, tmp281
.LVL27:
	movl	%ecx, %esi	# r4.22,
	movl	%ebx, %edi	# r4.22,
	subl	%eax, %esi	# tmp281,
	sbbl	%edx, %edi	#,
	movl	%esi, -56(%ebp)	#, %sfp
	movl	%edi, -52(%ebp)	#, %sfp
.LVL28:
	.loc 1 213 0
	movl	-24(%ebp), %eax	# %sfp, tmp.29
	movl	-20(%ebp), %edx	# %sfp, tmp.29
	shrdl	$30, %edx, %eax	#, tmp.29, tmp.29
	shrl	$30, %edx	#, tmp.29
.LVL29:
	movl	-208(%ebp), %ecx	# %sfp, r2.30
	movl	-204(%ebp), %ebx	# %sfp, r2.30
	addl	%eax, %ecx	# tmp.29, r2.30
	adcl	%edx, %ebx	# tmp.29, r2.30
.LVL30:
	shldl	$30, %eax, %edx	#, tmp282,
	sall	$30, %eax	#, tmp282
.LVL31:
	movl	-24(%ebp), %esi	# %sfp,
	movl	-20(%ebp), %edi	# %sfp,
	subl	%eax, %esi	# tmp282,
	sbbl	%edx, %edi	#,
	movl	%esi, -24(%ebp)	#, %sfp
	movl	%edi, -20(%ebp)	#, %sfp
	.loc 1 214 0
	movl	%ecx, %eax	# r2.30,
	movl	%ebx, %edx	# r2.30,
	shrdl	$30, %ebx, %eax	#, tmp1,
	shrl	$30, %edx	#,
	movl	%eax, -48(%ebp)	#, %sfp
	movl	%edx, -44(%ebp)	#, %sfp
.LVL32:
	movl	-144(%ebp), %eax	# %sfp, r1.34
	movl	-140(%ebp), %edx	# %sfp, r1.34
	addl	-48(%ebp), %eax	# %sfp, r1.34
	adcl	-44(%ebp), %edx	# %sfp, r1.34
.LVL33:
	movl	-48(%ebp), %esi	# %sfp,
	movl	-44(%ebp), %edi	# %sfp,
	shldl	$30, %esi, %edi	#,,
	sall	$30, %esi	#,
	movl	%esi, -48(%ebp)	#, %sfp
	movl	%edi, -44(%ebp)	#, %sfp
	movl	%ecx, %esi	# r2.30,
	movl	%ebx, %edi	# r2.30,
	subl	-48(%ebp), %esi	# %sfp,
	sbbl	-44(%ebp), %edi	# %sfp,
	movl	%esi, -48(%ebp)	#, %sfp
	movl	%edi, -44(%ebp)	#, %sfp
.LVL34:
	.loc 1 215 0
	movl	%eax, %ecx	# r1.34,
	movl	%edx, %ebx	# r1.34,
	shrdl	$30, %edx, %ecx	#, tmp3,
	shrl	$30, %ebx	#,
	movl	%ecx, -72(%ebp)	#, %sfp
	movl	%ebx, -68(%ebp)	#, %sfp
.LVL35:
	movl	-40(%ebp), %ecx	# %sfp, r0.38
	movl	-36(%ebp), %ebx	# %sfp, r0.38
	addl	-72(%ebp), %ecx	# %sfp, r0.38
	adcl	-68(%ebp), %ebx	# %sfp, r0.38
.LVL36:
	movl	-72(%ebp), %esi	# %sfp,
	movl	-68(%ebp), %edi	# %sfp,
	shldl	$30, %esi, %edi	#,,
	sall	$30, %esi	#,
	movl	%esi, -40(%ebp)	#, %sfp
	movl	%edi, -36(%ebp)	#, %sfp
	movl	%eax, %esi	# r1.34,
	movl	%edx, %edi	# r1.34,
	subl	-40(%ebp), %esi	# %sfp,
	sbbl	-36(%ebp), %edi	# %sfp,
	movl	%esi, -40(%ebp)	#, %sfp
	movl	%edi, -36(%ebp)	#, %sfp
.LVL37:
	.loc 1 216 0
	movl	%ecx, %eax	# r0.38, tmp.41
	movl	%ebx, %edx	# r0.38, tmp.41
	shrdl	$30, %ebx, %eax	#, tmp.41, tmp.41
	shrl	$30, %edx	#, tmp.41
.LVL38:
	movl	%eax, %esi	# tmp.41, tmp285
	sall	$30, %esi	#, tmp285
	subl	%esi, %ecx	# tmp285, r0.43
.LVL39:
	.loc 1 218 0
	movl	%edx, %edi	#,
	orl	%eax, %edi	# tmp.41,
	je	.L2	#,
	.loc 1 220 0
	movl	8(%ebp), %esi	# result,
	movl	%eax, (%esi)	# tmp.41, <variable>.h_word
	movl	%ecx, 4(%esi)	# r0.43, <variable>.h_word
	movl	-40(%ebp), %edi	# %sfp,
	movl	%edi, 8(%esi)	#, <variable>.h_word
	movl	-48(%ebp), %eax	# %sfp,
.LVL40:
	movl	%eax, 12(%esi)	#, <variable>.h_word
	.loc 1 221 0
	movl	-24(%ebp), %edx	# %sfp,
	movl	%edx, 16(%esi)	#, <variable>.h_word
	movl	-56(%ebp), %ecx	# %sfp,
	movl	%ecx, 20(%esi)	#, <variable>.h_word
	movl	-152(%ebp), %ebx	# %sfp,
	movl	%ebx, 24(%esi)	#, <variable>.h_word
	movl	-64(%ebp), %edi	# %sfp,
	movl	%edi, 28(%esi)	#, <variable>.h_word
	.loc 1 222 0
	movl	-180(%ebp), %eax	# %sfp, tmp287
	addl	$1, %eax	#, tmp287
	movl	%eax, 40(%esi)	# tmp287, <variable>.index
	jmp	.L4	#
.LVL41:
.L2:
	.loc 1 225 0
	movl	8(%ebp), %eax	# result,
.LVL42:
	movl	%ecx, (%eax)	# r0.43, <variable>.h_word
	movl	-40(%ebp), %edx	# %sfp,
	movl	%edx, 4(%eax)	#, <variable>.h_word
	movl	-48(%ebp), %ecx	# %sfp,
	movl	%ecx, 8(%eax)	#, <variable>.h_word
	movl	-24(%ebp), %ebx	# %sfp,
	movl	%ebx, 12(%eax)	#, <variable>.h_word
	.loc 1 226 0
	movl	-56(%ebp), %esi	# %sfp,
	movl	%esi, 16(%eax)	#, <variable>.h_word
	movl	-152(%ebp), %edi	# %sfp,
	movl	%edi, 20(%eax)	#, <variable>.h_word
	movl	-64(%ebp), %edx	# %sfp,
	movl	%edx, 24(%eax)	#, <variable>.h_word
	movl	-32(%ebp), %eax	# %sfp, tmp288
	sall	$30, %eax	#, tmp288
	movl	-176(%ebp), %ecx	# %sfp,
	subl	%eax, %ecx	# tmp288,
	movl	8(%ebp), %ebx	# result,
	movl	%ecx, 28(%ebx)	# tmp289, <variable>.h_word
.L4:
	.loc 1 229 0
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
.LFE0:
	.size	scs_mul, .-scs_mul
.globl scs_square
	.type	scs_square, @function
scs_square:
.LFB1:
	.loc 1 232 0
	.cfi_startproc
.LVL43:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$148, %esp	#,
	movl	12(%ebp), %eax	# x, x
	.loc 1 238 0
	fldl	32(%eax)	# <variable>.exception.d
	fmul	%st(0), %st	#,
	movl	8(%ebp), %edx	# result,
	fstpl	32(%edx)	# <variable>.exception.d
	.loc 1 239 0
	movl	40(%eax), %edx	# <variable>.index, D.1509
	addl	%edx, %edx	#
	movl	%edx, -108(%ebp)	#, %sfp
	movl	8(%ebp), %ecx	# result,
	movl	%edx, 40(%ecx)	#, <variable>.index
	.loc 1 240 0
	movl	$1, 44(%ecx)	#, <variable>.sign
	.loc 1 245 0
	movl	28(%eax), %ebx	# <variable>.h_word,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, %esi	#,
	movl	%ebx, -96(%ebp)	#, %sfp
	movl	%esi, -92(%ebp)	#, %sfp
.LVL44:
	movl	24(%eax), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -80(%ebp)	#, %sfp
	movl	%edi, -76(%ebp)	#, %sfp
.LVL45:
	movl	20(%eax), %edx	# <variable>.h_word,
	movl	$0, %ecx	#,
	movl	%edx, -72(%ebp)	#, %sfp
	movl	%ecx, -68(%ebp)	#, %sfp
.LVL46:
	movl	16(%eax), %ecx	# <variable>.h_word,
	movl	$0, %ebx	#,
	movl	%ecx, -64(%ebp)	#, %sfp
	movl	%ebx, -60(%ebp)	#, %sfp
.LVL47:
	.loc 1 246 0
	movl	12(%eax), %ebx	# <variable>.h_word,
	movl	$0, %esi	#,
	movl	%ebx, -48(%ebp)	#, %sfp
	movl	%esi, -44(%ebp)	#, %sfp
.LVL48:
	movl	8(%eax), %esi	# <variable>.h_word,
	movl	$0, %edi	#,
	movl	%esi, -40(%ebp)	#, %sfp
	movl	%edi, -36(%ebp)	#, %sfp
.LVL49:
	movl	4(%eax), %edx	# <variable>.h_word,
	movl	$0, %ecx	#,
	movl	%edx, -32(%ebp)	#, %sfp
	movl	%ecx, -28(%ebp)	#, %sfp
.LVL50:
	.loc 1 248 0
	movl	(%eax), %ecx	# <variable>.h_word,
	movl	$0, %ebx	#,
	movl	%ecx, -24(%ebp)	#, %sfp
	movl	%ebx, -20(%ebp)	#, %sfp
	movl	%ecx, %eax	#,
	mull	%ecx	#
	movl	%eax, -104(%ebp)	#, %sfp
	movl	%edx, -100(%ebp)	# tmp103, %sfp
.LVL51:
	.loc 1 249 0
	movl	-28(%ebp), %ecx	# %sfp, tmp105
	imull	-24(%ebp), %ecx	# %sfp, tmp105
	movl	-20(%ebp), %eax	# %sfp, tmp106
	imull	-32(%ebp), %eax	# %sfp, tmp106
	addl	%eax, %ecx	# tmp106, tmp105
	movl	-32(%ebp), %eax	# %sfp,
	mull	-24(%ebp)	# %sfp
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp105,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-56(%ebp), %edx	# %sfp,
	movl	-52(%ebp), %ecx	# %sfp,
	shldl	$1, %edx, %ecx	#,,
	addl	%edx, %edx	#,
	movl	%edx, -88(%ebp)	#, %sfp
	movl	%ecx, -84(%ebp)	#, %sfp
.LVL52:
	.loc 1 250 0
	movl	-36(%ebp), %ecx	# %sfp, tmp108
	imull	-24(%ebp), %ecx	# %sfp, tmp108
	movl	-20(%ebp), %edx	# %sfp, tmp109
	imull	%esi, %edx	#, tmp109
	addl	%edx, %ecx	# tmp109, tmp108
	movl	-40(%ebp), %eax	# %sfp,
	mull	-24(%ebp)	# %sfp
	movl	%eax, %esi	#, tmp110
	leal	(%ecx,%edx), %edi	#,
	shldl	$1, %eax, %edi	#, tmp111,
	addl	%eax, %esi	# tmp111, tmp111
	movl	-28(%ebp), %ecx	# %sfp, tmp112
	imull	-32(%ebp), %ecx	# %sfp, tmp112
	addl	%ecx, %ecx	# tmp112
	movl	-32(%ebp), %eax	# %sfp,
	mull	%eax	#
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp112,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-56(%ebp), %edx	# %sfp,
	movl	-52(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp111,
	adcl	%edi, %ecx	#,
	movl	%edx, -152(%ebp)	#, %sfp
	movl	%ecx, -148(%ebp)	#, %sfp
.LVL53:
	.loc 1 251 0
	movl	-20(%ebp), %ecx	# %sfp, tmp115
	imull	-48(%ebp), %ecx	# %sfp, tmp115
	movl	-44(%ebp), %edx	# %sfp, tmp116
	imull	-24(%ebp), %edx	# %sfp, tmp116
	addl	%edx, %ecx	# tmp116, tmp115
	movl	-24(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp115,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-28(%ebp), %ecx	# %sfp, tmp118
	imull	-40(%ebp), %ecx	# %sfp, tmp118
	movl	-36(%ebp), %eax	# %sfp, tmp119
	imull	-32(%ebp), %eax	# %sfp, tmp119
	addl	%eax, %ecx	# tmp119, tmp118
	movl	-32(%ebp), %eax	# %sfp,
	mull	-40(%ebp)	# %sfp
	movl	%eax, -120(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp118,
	movl	%edx, -116(%ebp)	#, %sfp
	movl	-120(%ebp), %eax	# %sfp, tmp121
	movl	-116(%ebp), %edx	# %sfp,
	addl	-56(%ebp), %eax	# %sfp, tmp121
	adcl	-52(%ebp), %edx	# %sfp,
	movl	%eax, %ecx	# tmp121,
	movl	%edx, %ebx	#,
	shldl	$1, %eax, %ebx	#, tmp2,
	addl	%eax, %ecx	# tmp2,
	movl	%ecx, -144(%ebp)	#, %sfp
	movl	%ebx, -140(%ebp)	#, %sfp
.LVL54:
	.loc 1 252 0
	movl	-20(%ebp), %ecx	# %sfp, tmp122
	imull	-64(%ebp), %ecx	# %sfp, tmp122
	movl	-60(%ebp), %edx	# %sfp, tmp123
	imull	-24(%ebp), %edx	# %sfp, tmp123
	addl	%edx, %ecx	# tmp123, tmp122
	movl	-24(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp122,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-28(%ebp), %ecx	# %sfp, tmp125
	imull	-48(%ebp), %ecx	# %sfp, tmp125
	movl	-44(%ebp), %eax	# %sfp, tmp126
	imull	-32(%ebp), %eax	# %sfp, tmp126
	addl	%eax, %ecx	# tmp126, tmp125
	movl	-32(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, -120(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp125,
	movl	%edx, -116(%ebp)	#, %sfp
	movl	-120(%ebp), %eax	# %sfp, tmp128
	movl	-116(%ebp), %edx	# %sfp,
	addl	-56(%ebp), %eax	# %sfp, tmp128
	adcl	-52(%ebp), %edx	# %sfp,
	movl	%eax, %esi	# tmp128, tmp129
	movl	%edx, %edi	#,
	shldl	$1, %eax, %edi	#, tmp129,
	addl	%eax, %esi	# tmp129, tmp129
	movl	-36(%ebp), %ecx	# %sfp, tmp130
	imull	-40(%ebp), %ecx	# %sfp, tmp130
	addl	%ecx, %ecx	# tmp130
	movl	-40(%ebp), %eax	# %sfp,
	mull	%eax	#
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp130,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-56(%ebp), %edx	# %sfp,
	movl	-52(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp129,
	adcl	%edi, %ecx	#,
	movl	%edx, -136(%ebp)	#, %sfp
	movl	%ecx, -132(%ebp)	#, %sfp
.LVL55:
	.loc 1 253 0
	movl	-28(%ebp), %ecx	# %sfp, tmp133
	imull	-64(%ebp), %ecx	# %sfp, tmp133
	movl	-60(%ebp), %edx	# %sfp, tmp134
	imull	-32(%ebp), %edx	# %sfp, tmp134
	addl	%edx, %ecx	# tmp134, tmp133
	movl	-32(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp133,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-36(%ebp), %ecx	# %sfp, tmp136
	imull	-48(%ebp), %ecx	# %sfp, tmp136
	movl	-44(%ebp), %eax	# %sfp, tmp137
	imull	-40(%ebp), %eax	# %sfp, tmp137
	addl	%eax, %ecx	# tmp137, tmp136
	movl	-40(%ebp), %eax	# %sfp,
	mull	-48(%ebp)	# %sfp
	movl	%eax, %esi	#, tmp138
	leal	(%ecx,%edx), %edi	#,
	addl	-56(%ebp), %esi	# %sfp, tmp139
	adcl	-52(%ebp), %edi	# %sfp,
	movl	-20(%ebp), %ecx	# %sfp, tmp140
	imull	-72(%ebp), %ecx	# %sfp, tmp140
	movl	-68(%ebp), %eax	# %sfp, tmp141
	imull	-24(%ebp), %eax	# %sfp, tmp141
	addl	%eax, %ecx	# tmp141, tmp140
	movl	-24(%ebp), %eax	# %sfp,
	mull	-72(%ebp)	# %sfp
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp140,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-56(%ebp), %eax	# %sfp, tmp143
	movl	-52(%ebp), %edx	# %sfp,
	addl	%esi, %eax	# tmp139, tmp143
	adcl	%edi, %edx	#,
	movl	%eax, %ecx	# tmp143,
	movl	%edx, %ebx	#,
	shldl	$1, %eax, %ebx	#, tmp2,
	addl	%eax, %ecx	# tmp2,
	movl	%ecx, -128(%ebp)	#, %sfp
	movl	%ebx, -124(%ebp)	#, %sfp
.LVL56:
	.loc 1 254 0
	movl	-28(%ebp), %ecx	# %sfp, tmp144
	imull	-72(%ebp), %ecx	# %sfp, tmp144
	movl	-68(%ebp), %edx	# %sfp, tmp145
	imull	-32(%ebp), %edx	# %sfp, tmp145
	addl	%edx, %ecx	# tmp145, tmp144
	movl	-32(%ebp), %eax	# %sfp,
	mull	-72(%ebp)	# %sfp
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp144,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-36(%ebp), %ecx	# %sfp, tmp147
	imull	-64(%ebp), %ecx	# %sfp, tmp147
	movl	-60(%ebp), %eax	# %sfp, tmp148
	imull	-40(%ebp), %eax	# %sfp, tmp148
	addl	%eax, %ecx	# tmp148, tmp147
	movl	-40(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, -120(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp147,
	movl	%edx, -116(%ebp)	#, %sfp
	movl	-56(%ebp), %ecx	# %sfp, tmp150
	movl	-52(%ebp), %ebx	# %sfp,
	addl	-120(%ebp), %ecx	# %sfp, tmp150
	adcl	-116(%ebp), %ebx	# %sfp,
	movl	-20(%ebp), %esi	# %sfp, tmp151
	imull	-80(%ebp), %esi	# %sfp, tmp151
	movl	-76(%ebp), %eax	# %sfp, tmp152
	imull	-24(%ebp), %eax	# %sfp, tmp152
	addl	%eax, %esi	# tmp152, tmp151
	movl	-24(%ebp), %eax	# %sfp,
	mull	-80(%ebp)	# %sfp
	movl	%eax, -120(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp151,
	movl	%edx, -116(%ebp)	#, %sfp
	movl	%ecx, %edx	# tmp150, tmp154
	movl	%ebx, %ecx	#,
	addl	-120(%ebp), %edx	# %sfp, tmp154
	adcl	-116(%ebp), %ecx	# %sfp,
	movl	%edx, %esi	# tmp154, tmp155
	movl	%ecx, %edi	#,
	shldl	$1, %edx, %edi	#, tmp155,
	addl	%edx, %esi	# tmp155, tmp155
	movl	-44(%ebp), %ecx	# %sfp, tmp156
	imull	-48(%ebp), %ecx	# %sfp, tmp156
	addl	%ecx, %ecx	# tmp156
	movl	-48(%ebp), %eax	# %sfp,
	mull	%eax	#
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp156,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-56(%ebp), %edx	# %sfp,
	movl	-52(%ebp), %ecx	# %sfp,
	addl	%esi, %edx	# tmp155,
	adcl	%edi, %ecx	#,
	movl	%edx, -120(%ebp)	#, %sfp
	movl	%ecx, -116(%ebp)	#, %sfp
.LVL57:
	.loc 1 255 0
	movl	-36(%ebp), %ecx	# %sfp, tmp159
	imull	-72(%ebp), %ecx	# %sfp, tmp159
	movl	-68(%ebp), %edx	# %sfp, tmp160
	imull	-40(%ebp), %edx	# %sfp, tmp160
	addl	%edx, %ecx	# tmp160, tmp159
	movl	-40(%ebp), %eax	# %sfp,
	mull	-72(%ebp)	# %sfp
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp159,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	-44(%ebp), %ecx	# %sfp, tmp162
	imull	-64(%ebp), %ecx	# %sfp, tmp162
	movl	-60(%ebp), %eax	# %sfp, tmp163
	imull	-48(%ebp), %eax	# %sfp, tmp163
	addl	%eax, %ecx	# tmp163, tmp162
	movl	-48(%ebp), %eax	# %sfp,
	mull	-64(%ebp)	# %sfp
	movl	%eax, -160(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp162,
	movl	%edx, -156(%ebp)	#, %sfp
	movl	-160(%ebp), %edx	# %sfp,
	movl	-156(%ebp), %ecx	# %sfp,
	addl	-56(%ebp), %edx	# %sfp,
	adcl	-52(%ebp), %ecx	# %sfp,
	movl	%edx, -56(%ebp)	#, %sfp
	movl	%ecx, -52(%ebp)	#, %sfp
	movl	-20(%ebp), %ecx	# %sfp, tmp166
	imull	-96(%ebp), %ecx	# %sfp, tmp166
	movl	-92(%ebp), %esi	# %sfp, tmp167
	imull	-24(%ebp), %esi	# %sfp, tmp167
	addl	%esi, %ecx	# tmp167, tmp166
	movl	-24(%ebp), %eax	# %sfp,
	mull	-96(%ebp)	# %sfp
	movl	%eax, -24(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp166,
	movl	%edx, -20(%ebp)	#, %sfp
	movl	-24(%ebp), %ecx	# %sfp, tmp169
	movl	-20(%ebp), %ebx	# %sfp,
	addl	-56(%ebp), %ecx	# %sfp, tmp169
	adcl	-52(%ebp), %ebx	# %sfp,
	movl	-28(%ebp), %esi	# %sfp, tmp170
	imull	-80(%ebp), %esi	# %sfp, tmp170
	movl	-76(%ebp), %eax	# %sfp, tmp171
	imull	-32(%ebp), %eax	# %sfp, tmp171
	addl	%eax, %esi	# tmp171, tmp170
	movl	-32(%ebp), %eax	# %sfp,
	mull	-80(%ebp)	# %sfp
	movl	%eax, -56(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp170,
	movl	%edx, -52(%ebp)	#, %sfp
	movl	%ecx, %edx	# tmp169, tmp173
	movl	%ebx, %ecx	#,
	addl	-56(%ebp), %edx	# %sfp, tmp173
	adcl	-52(%ebp), %ecx	# %sfp,
	movl	%edx, %ebx	# tmp173,
	movl	%ecx, %esi	#,
	shldl	$1, %edx, %esi	#, tmp3,
	addl	%edx, %ebx	# tmp3,
	movl	%ebx, -24(%ebp)	#, %sfp
	movl	%esi, -20(%ebp)	#, %sfp
.LVL58:
	.loc 1 260 0
	movl	-36(%ebp), %ecx	# %sfp, tmp174
	imull	-80(%ebp), %ecx	# %sfp, tmp174
	movl	-76(%ebp), %edx	# %sfp, tmp175
	imull	-40(%ebp), %edx	# %sfp, tmp175
	addl	%edx, %ecx	# tmp175, tmp174
	movl	-40(%ebp), %eax	# %sfp,
	mull	-80(%ebp)	# %sfp
	movl	%eax, -40(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp174,
	movl	%edx, -36(%ebp)	#, %sfp
	movl	-44(%ebp), %ecx	# %sfp, tmp177
	imull	-72(%ebp), %ecx	# %sfp, tmp177
	movl	-68(%ebp), %eax	# %sfp, tmp178
	imull	-48(%ebp), %eax	# %sfp, tmp178
	addl	%eax, %ecx	# tmp178, tmp177
	movl	-48(%ebp), %eax	# %sfp,
	mull	-72(%ebp)	# %sfp
	movl	%eax, -48(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp177,
	movl	%edx, -44(%ebp)	#, %sfp
	movl	-48(%ebp), %edx	# %sfp,
	movl	-44(%ebp), %ecx	# %sfp,
	addl	-40(%ebp), %edx	# %sfp,
	adcl	-36(%ebp), %ecx	# %sfp,
	movl	%edx, -40(%ebp)	#, %sfp
	movl	%ecx, -36(%ebp)	#, %sfp
	movl	-28(%ebp), %ecx	# %sfp, tmp181
	imull	-96(%ebp), %ecx	# %sfp, tmp181
	movl	-92(%ebp), %esi	# %sfp, tmp182
	imull	-32(%ebp), %esi	# %sfp, tmp182
	addl	%esi, %ecx	# tmp182, tmp181
	movl	-32(%ebp), %eax	# %sfp,
	mull	-96(%ebp)	# %sfp
	movl	%eax, -32(%ebp)	#, %sfp
	addl	%ecx, %edx	# tmp181,
	movl	%edx, -28(%ebp)	#, %sfp
	movl	-40(%ebp), %eax	# %sfp, tmp184
	movl	-36(%ebp), %edx	# %sfp,
	addl	-32(%ebp), %eax	# %sfp, tmp184
	adcl	-28(%ebp), %edx	# %sfp,
	movl	%eax, %ecx	# tmp184,
	movl	%edx, %ebx	#,
	shldl	$1, %eax, %ebx	#, tmp2,
	addl	%eax, %ecx	# tmp2,
	movl	%ecx, -32(%ebp)	#, %sfp
	movl	%ebx, -28(%ebp)	#, %sfp
	movl	-60(%ebp), %esi	# %sfp, tmp186
	imull	-64(%ebp), %esi	# %sfp, tmp186
	addl	%esi, %esi	# tmp186
	movl	-64(%ebp), %eax	# %sfp,
	mull	%eax	#
	movl	%eax, -40(%ebp)	#, %sfp
	addl	%esi, %edx	# tmp186,
	movl	%edx, -36(%ebp)	#, %sfp
	movl	-40(%ebp), %edx	# %sfp, tmp189
	movl	-36(%ebp), %ecx	# %sfp,
	addl	-32(%ebp), %edx	# %sfp, tmp189
	adcl	-28(%ebp), %ecx	# %sfp,
	shrdl	$30, %ecx, %edx	#,, tmp190
	shrl	$30, %ecx	#,
	movl	-24(%ebp), %ebx	# %sfp,
	movl	-20(%ebp), %esi	# %sfp,
	addl	%edx, %ebx	# tmp190,
	adcl	%ecx, %esi	#,
	movl	%ebx, -24(%ebp)	#, %sfp
	movl	%esi, -20(%ebp)	#, %sfp
.LVL59:
	.loc 1 261 0
	shrdl	$30, %esi, %ebx	#,,
	shrl	$30, %esi	#,
	movl	%ebx, -32(%ebp)	#, %sfp
	movl	%esi, -28(%ebp)	#, %sfp
.LVL60:
	movl	-120(%ebp), %esi	# %sfp, r6.65
	movl	-116(%ebp), %edi	# %sfp, r6.65
	addl	-32(%ebp), %esi	# %sfp, r6.65
	adcl	-28(%ebp), %edi	# %sfp, r6.65
.LVL61:
	.loc 1 262 0
	movl	%esi, %eax	# r6.65,
	movl	%edi, %edx	# r6.65,
	shrdl	$30, %edi, %eax	#, tmp1,
	shrl	$30, %edx	#,
	movl	%eax, -40(%ebp)	#, %sfp
	movl	%edx, -36(%ebp)	#, %sfp
.LVL62:
	movl	-128(%ebp), %eax	# %sfp, r5.68
	movl	-124(%ebp), %edx	# %sfp, r5.68
	addl	-40(%ebp), %eax	# %sfp, r5.68
	adcl	-36(%ebp), %edx	# %sfp, r5.68
.LVL63:
	movl	-40(%ebp), %ecx	# %sfp,
	movl	-36(%ebp), %ebx	# %sfp,
	shldl	$30, %ecx, %ebx	#,,
	sall	$30, %ecx	#,
	movl	%ecx, -40(%ebp)	#, %sfp
	movl	%ebx, -36(%ebp)	#, %sfp
	movl	%esi, %ecx	# r6.65,
	movl	%edi, %ebx	# r6.65,
	subl	-40(%ebp), %ecx	# %sfp,
	sbbl	-36(%ebp), %ebx	# %sfp,
	movl	%ecx, -80(%ebp)	#, %sfp
	movl	%ebx, -76(%ebp)	#, %sfp
.LVL64:
	.loc 1 263 0
	movl	%eax, %ebx	# r5.68,
	movl	%edx, %esi	# r5.68,
	shrdl	$30, %edx, %ebx	#, tmp4,
	shrl	$30, %esi	#,
	movl	%ebx, -40(%ebp)	#, %sfp
	movl	%esi, -36(%ebp)	#, %sfp
	movl	-136(%ebp), %esi	# %sfp, r4.72
	movl	-132(%ebp), %edi	# %sfp, r4.72
	addl	-40(%ebp), %esi	# %sfp, r4.72
	adcl	-36(%ebp), %edi	# %sfp, r4.72
.LVL65:
	movl	-40(%ebp), %ecx	# %sfp,
	movl	-36(%ebp), %ebx	# %sfp,
	shldl	$30, %ecx, %ebx	#,,
	sall	$30, %ecx	#,
	movl	%ecx, -40(%ebp)	#, %sfp
	movl	%ebx, -36(%ebp)	#, %sfp
	movl	%eax, %ecx	# r5.68,
	movl	%edx, %ebx	# r5.68,
	subl	-40(%ebp), %ecx	# %sfp,
	sbbl	-36(%ebp), %ebx	# %sfp,
	movl	%ecx, -72(%ebp)	#, %sfp
	movl	%ebx, -68(%ebp)	#, %sfp
.LVL66:
	.loc 1 264 0
	movl	%esi, %eax	# r4.72,
	movl	%edi, %edx	# r4.72,
	shrdl	$30, %edi, %eax	#, tmp1,
	shrl	$30, %edx	#,
	movl	%eax, -40(%ebp)	#, %sfp
	movl	%edx, -36(%ebp)	#, %sfp
	movl	-144(%ebp), %eax	# %sfp, r3.76
	movl	-140(%ebp), %edx	# %sfp, r3.76
	addl	-40(%ebp), %eax	# %sfp, r3.76
	adcl	-36(%ebp), %edx	# %sfp, r3.76
.LVL67:
	movl	-40(%ebp), %ecx	# %sfp,
	movl	-36(%ebp), %ebx	# %sfp,
	shldl	$30, %ecx, %ebx	#,,
	sall	$30, %ecx	#,
	movl	%ecx, -40(%ebp)	#, %sfp
	movl	%ebx, -36(%ebp)	#, %sfp
	movl	%esi, %ecx	# r4.72,
	movl	%edi, %ebx	# r4.72,
	subl	-40(%ebp), %ecx	# %sfp,
	sbbl	-36(%ebp), %ebx	# %sfp,
	movl	%ecx, -64(%ebp)	#, %sfp
	movl	%ebx, -60(%ebp)	#, %sfp
.LVL68:
	.loc 1 265 0
	movl	%eax, %ebx	# r3.76,
	movl	%edx, %esi	# r3.76,
	shrdl	$30, %edx, %ebx	#, tmp4,
	shrl	$30, %esi	#,
	movl	%ebx, -40(%ebp)	#, %sfp
	movl	%esi, -36(%ebp)	#, %sfp
	movl	-152(%ebp), %esi	# %sfp, r2.80
	movl	-148(%ebp), %edi	# %sfp, r2.80
	addl	-40(%ebp), %esi	# %sfp, r2.80
	adcl	-36(%ebp), %edi	# %sfp, r2.80
.LVL69:
	movl	-40(%ebp), %ecx	# %sfp,
	movl	-36(%ebp), %ebx	# %sfp,
	shldl	$30, %ecx, %ebx	#,,
	sall	$30, %ecx	#,
	movl	%ecx, -40(%ebp)	#, %sfp
	movl	%ebx, -36(%ebp)	#, %sfp
	movl	%eax, %ecx	# r3.76,
	movl	%edx, %ebx	# r3.76,
	subl	-40(%ebp), %ecx	# %sfp,
	sbbl	-36(%ebp), %ebx	# %sfp,
	movl	%ecx, -48(%ebp)	#, %sfp
	movl	%ebx, -44(%ebp)	#, %sfp
.LVL70:
	.loc 1 266 0
	movl	%esi, %eax	# r2.80, tmp.83
	movl	%edi, %edx	# r2.80, tmp.83
	shrdl	$30, %edi, %eax	#, tmp.83, tmp.83
	shrl	$30, %edx	#, tmp.83
.LVL71:
	movl	-88(%ebp), %ecx	# %sfp,
	movl	-84(%ebp), %ebx	# %sfp,
	addl	%eax, %ecx	# tmp.83,
	adcl	%edx, %ebx	# tmp.83,
	movl	%ecx, -88(%ebp)	#, %sfp
	movl	%ebx, -84(%ebp)	#, %sfp
	shldl	$30, %eax, %edx	#, tmp195,
	sall	$30, %eax	#, tmp195
.LVL72:
	movl	%esi, %ecx	# r2.80,
	movl	%edi, %ebx	# r2.80,
	subl	%eax, %ecx	# tmp195,
	sbbl	%edx, %ebx	#,
	movl	%ecx, -40(%ebp)	#, %sfp
	movl	%ebx, -36(%ebp)	#, %sfp
.LVL73:
	.loc 1 267 0
	movl	-88(%ebp), %eax	# %sfp, tmp.87
	movl	-84(%ebp), %edx	# %sfp, tmp.87
	shrdl	$30, %edx, %eax	#, tmp.87, tmp.87
	shrl	$30, %edx	#, tmp.87
.LVL74:
	movl	-104(%ebp), %ecx	# %sfp, r0.88
	movl	-100(%ebp), %ebx	# %sfp, r0.88
	addl	%eax, %ecx	# tmp.87, r0.88
	adcl	%edx, %ebx	# tmp.87, r0.88
.LVL75:
	shldl	$30, %eax, %edx	#, tmp196,
	sall	$30, %eax	#, tmp196
.LVL76:
	movl	-88(%ebp), %esi	# %sfp,
	movl	-84(%ebp), %edi	# %sfp,
	subl	%eax, %esi	# tmp196,
	sbbl	%edx, %edi	#,
	movl	%esi, -88(%ebp)	#, %sfp
	movl	%edi, -84(%ebp)	#, %sfp
	.loc 1 268 0
	movl	%ecx, %eax	# r0.88, tmp.91
	movl	%ebx, %edx	# r0.88, tmp.91
	shrdl	$30, %ebx, %eax	#, tmp.91, tmp.91
	shrl	$30, %edx	#, tmp.91
.LVL77:
	movl	%eax, %esi	# tmp.91, tmp197
	sall	$30, %esi	#, tmp197
	subl	%esi, %ecx	# tmp197, r0.93
.LVL78:
	.loc 1 270 0
	movl	%edx, %edi	#,
	orl	%eax, %edi	# tmp.91,
	je	.L6	#,
	.loc 1 272 0
	movl	8(%ebp), %esi	# result,
	movl	%eax, (%esi)	# tmp.91, <variable>.h_word
	movl	%ecx, 4(%esi)	# r0.93, <variable>.h_word
	movl	-88(%ebp), %edi	# %sfp,
	movl	%edi, 8(%esi)	#, <variable>.h_word
	movl	-40(%ebp), %eax	# %sfp,
.LVL79:
	movl	%eax, 12(%esi)	#, <variable>.h_word
	.loc 1 273 0
	movl	-48(%ebp), %edx	# %sfp,
	movl	%edx, 16(%esi)	#, <variable>.h_word
	movl	-64(%ebp), %ecx	# %sfp,
	movl	%ecx, 20(%esi)	#, <variable>.h_word
	movl	-72(%ebp), %ebx	# %sfp,
	movl	%ebx, 24(%esi)	#, <variable>.h_word
	movl	-80(%ebp), %edi	# %sfp,
	movl	%edi, 28(%esi)	#, <variable>.h_word
	.loc 1 274 0
	movl	-108(%ebp), %eax	# %sfp, tmp199
	addl	$1, %eax	#, tmp199
	movl	%eax, 40(%esi)	# tmp199, <variable>.index
	jmp	.L8	#
.LVL80:
.L6:
	.loc 1 277 0
	movl	8(%ebp), %eax	# result,
.LVL81:
	movl	%ecx, (%eax)	# r0.93, <variable>.h_word
	movl	-88(%ebp), %edx	# %sfp,
	movl	%edx, 4(%eax)	#, <variable>.h_word
	movl	-40(%ebp), %ecx	# %sfp,
	movl	%ecx, 8(%eax)	#, <variable>.h_word
	movl	-48(%ebp), %ebx	# %sfp,
	movl	%ebx, 12(%eax)	#, <variable>.h_word
	.loc 1 278 0
	movl	-64(%ebp), %esi	# %sfp,
	movl	%esi, 16(%eax)	#, <variable>.h_word
	movl	-72(%ebp), %edi	# %sfp,
	movl	%edi, 20(%eax)	#, <variable>.h_word
	movl	-80(%ebp), %edx	# %sfp,
	movl	%edx, 24(%eax)	#, <variable>.h_word
	movl	-32(%ebp), %edx	# %sfp, tmp200
	sall	$30, %edx	#, tmp200
	movl	-24(%ebp), %ebx	# %sfp,
	subl	%edx, %ebx	# tmp200,
	movl	%ebx, 28(%eax)	# tmp201, <variable>.h_word
.L8:
	.loc 1 281 0
	addl	$148, %esp	#,
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
	.size	scs_square, .-scs_square
.globl scs_mul_ui
	.type	scs_mul_ui, @function
scs_mul_ui:
.LFB2:
	.loc 1 445 0
	.cfi_startproc
.LVL82:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$36, %esp	#,
	movl	8(%ebp), %edx	# x, x
	movl	12(%ebp), %eax	# val_int, val_int
	.loc 1 449 0
	testl	%eax, %eax	# val_int
	jne	.L10	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.loc 1 450 0
	fldz
	fstpl	32(%edx)	# <variable>.exception.d
.L10:
	.loc 1 452 0
	movl	%eax, -32(%ebp)	# val_int, %sfp
.LVL83:
	movl	$7, %eax	#, i
	movl	$0, %ecx	#, val.135
	movl	$0, %ebx	#, val.135
	movl	%ecx, -24(%ebp)	# val.135, %sfp
	movl	%ebx, -20(%ebp)	# val.135, %sfp
	movl	%eax, -44(%ebp)	# i, %sfp
	movl	%edx, -28(%ebp)	# x, %sfp
.LVL84:
.L12:
	.loc 1 457 0
	movl	-44(%ebp), %edx	# %sfp,
	movl	-28(%ebp), %eax	# %sfp,
	movl	(%eax,%edx,4), %eax	# <variable>.h_word,
	movl	$0, %edx	#,
	movl	%eax, -40(%ebp)	#, %sfp
	movl	%edx, -36(%ebp)	#, %sfp
	movl	-32(%ebp), %esi	# %sfp, tmp86
	imull	%edx, %esi	#, tmp86
	movl	-32(%ebp), %eax	# %sfp,
	mull	-40(%ebp)	# %sfp
	movl	%eax, %ecx	#, tmp88
	leal	(%esi,%edx), %ebx	#,
	addl	-24(%ebp), %ecx	# %sfp, val
	adcl	-20(%ebp), %ebx	# %sfp, val
.LVL85:
	.loc 1 458 0
	movl	%ecx, %eax	# val,
	movl	%ebx, %edx	# val,
	shrdl	$30, %ebx, %eax	#, tmp1,
	shrl	$30, %edx	#,
	movl	%eax, -24(%ebp)	#, %sfp
	movl	%edx, -20(%ebp)	#, %sfp
.LVL86:
	.loc 1 459 0
	movl	%eax, %esi	#, tmp89
	sall	$30, %esi	#, tmp89
	subl	%esi, %ecx	# tmp89, tmp90
	movl	-44(%ebp), %edx	# %sfp,
	movl	-28(%ebp), %eax	# %sfp,
	movl	%ecx, (%eax,%edx,4)	# tmp90, <variable>.h_word
.LVL87:
	.loc 1 456 0
	subl	$1, %edx	#,
	movl	%edx, -44(%ebp)	#, %sfp
.LVL88:
	cmpl	$-1, %edx	#,
	jne	.L12	#,
.L11:
	movl	-28(%ebp), %edx	# %sfp, x
.LVL89:
	movl	-24(%ebp), %esi	# %sfp, val.136
	movl	-20(%ebp), %eax	# %sfp, val.136
	.loc 1 464 0
	orl	%esi, %eax	# val.136, val.136
	je	.L15	#,
	movl	$7, %eax	#, i.133
.LVL90:
.L14:
	.loc 1 467 0
	subl	$1, %eax	#, i.133
	movl	(%edx,%eax,4), %ecx	# <variable>.h_word, tmp92
	movl	%ecx, 4(%edx,%eax,4)	# tmp92, <variable>.h_word
.LVL91:
	.loc 1 466 0
	testl	%eax, %eax	# i.133
	jne	.L14	#,
	.loc 1 469 0
	movl	%esi, (%edx)	# val.136, <variable>.h_word
	.loc 1 470 0
	addl	$1, 40(%edx)	#, <variable>.index
.LVL92:
.L15:
	.loc 1 474 0
	addl	$36, %esp	#,
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
.LFE2:
	.size	scs_mul_ui, .-scs_mul_ui
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL16-.Ltext0
	.long	.LVL38-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0x0
	.long	.LVL38-.Ltext0
	.long	.LVL40-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL41-.Ltext0
	.long	.LVL42-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL18-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL20-.Ltext0
	.long	.LVL21-.Ltext0
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	.LVL23-.Ltext0
	.long	.LVL25-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL26-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL29-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL32-.Ltext0
	.long	.LVL35-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	.LVL35-.Ltext0
	.long	.LVL38-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	.LVL38-.Ltext0
	.long	.LVL40-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL41-.Ltext0
	.long	.LVL42-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL16-.Ltext0
	.long	.LVL36-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL36-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL15-.Ltext0
	.long	.LVL33-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -152
	.long	.LVL33-.Ltext0
	.long	.LVL37-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL37-.Ltext0
	.long	.LFE0-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL14-.Ltext0
	.long	.LVL30-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.long	.LVL30-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	.LVL34-.Ltext0
	.long	.LFE0-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL12-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	.LVL24-.Ltext0
	.long	.LVL28-.Ltext0
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	.LVL28-.Ltext0
	.long	.LFE0-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL10-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -200
	.long	.LVL19-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL22-.Ltext0
	.long	.LFE0-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL9-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL51-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.long	.LVL75-.Ltext0
	.long	.LVL78-.Ltext0
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL53-.Ltext0
	.long	.LVL69-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.long	.LVL69-.Ltext0
	.long	.LVL73-.Ltext0
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	.LVL73-.Ltext0
	.long	.LFE1-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL54-.Ltext0
	.long	.LVL67-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -152
	.long	.LVL67-.Ltext0
	.long	.LVL70-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL70-.Ltext0
	.long	.LFE1-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL55-.Ltext0
	.long	.LVL65-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -144
	.long	.LVL65-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	.LVL68-.Ltext0
	.long	.LFE1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL56-.Ltext0
	.long	.LVL63-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.long	.LVL63-.Ltext0
	.long	.LVL66-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL66-.Ltext0
	.long	.LFE1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL57-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.long	.LVL61-.Ltext0
	.long	.LVL64-.Ltext0
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	.LVL64-.Ltext0
	.long	.LFE1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL58-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL58-.Ltext0
	.long	.LVL77-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0x0
	.long	.LVL77-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL80-.Ltext0
	.long	.LVL81-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL60-.Ltext0
	.long	.LVL62-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL62-.Ltext0
	.long	.LVL71-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL71-.Ltext0
	.long	.LVL72-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL74-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL77-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL80-.Ltext0
	.long	.LVL81-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL83-.Ltext0
	.long	.LVL84-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0x0
	.long	.LVL85-.Ltext0
	.long	.LVL86-.Ltext0
	.value	0x6
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.long	.LVL87-.Ltext0
	.long	.LFE2-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL83-.Ltext0
	.long	.LVL86-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0x0
	.long	.LVL86-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	.LVL87-.Ltext0
	.long	.LFE2-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0x0
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL83-.Ltext0
	.long	.LVL84-.Ltext0
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL88-.Ltext0
	.long	.LVL89-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL89-.Ltext0
	.long	.LVL90-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	.LVL91-.Ltext0
	.long	.LVL92-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
	.file 2 "scs.h"
	.file 3 "scs_private.h"
	.section	.debug_info
	.long	0x4b4
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
	.byte	0x1
	.byte	0x45
	.long	0x67
	.uleb128 0xc
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.long	0x2aa
	.uleb128 0xd
	.long	.LASF10
	.byte	0x1
	.byte	0xb4
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0xb4
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"y"
	.byte	0x1
	.byte	0xb4
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.string	"val"
	.byte	0x1
	.byte	0xb5
	.long	0xde
	.long	.LLST0
	.uleb128 0xf
	.string	"tmp"
	.byte	0x1
	.byte	0xb5
	.long	0xde
	.long	.LLST1
	.uleb128 0xf
	.string	"r0"
	.byte	0x1
	.byte	0xb6
	.long	0xde
	.long	.LLST2
	.uleb128 0xf
	.string	"r1"
	.byte	0x1
	.byte	0xb6
	.long	0xde
	.long	.LLST3
	.uleb128 0xf
	.string	"r2"
	.byte	0x1
	.byte	0xb6
	.long	0xde
	.long	.LLST4
	.uleb128 0x10
	.string	"r3"
	.byte	0x1
	.byte	0xb6
	.long	0xde
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"r4"
	.byte	0x1
	.byte	0xb6
	.long	0xde
	.long	.LLST5
	.uleb128 0x10
	.string	"r5"
	.byte	0x1
	.byte	0xb6
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xf
	.string	"r6"
	.byte	0x1
	.byte	0xb6
	.long	0xde
	.long	.LLST6
	.uleb128 0xf
	.string	"r7"
	.byte	0x1
	.byte	0xb6
	.long	0xde
	.long	.LLST7
	.uleb128 0x11
	.string	"r8"
	.byte	0x1
	.byte	0xb6
	.long	0xde
	.uleb128 0x10
	.string	"x0"
	.byte	0x1
	.byte	0xb7
	.long	0xde
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"x1"
	.byte	0x1
	.byte	0xb7
	.long	0xde
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"x2"
	.byte	0x1
	.byte	0xb7
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.string	"x3"
	.byte	0x1
	.byte	0xb7
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x10
	.string	"x4"
	.byte	0x1
	.byte	0xb7
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x10
	.string	"x5"
	.byte	0x1
	.byte	0xb7
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x10
	.string	"x6"
	.byte	0x1
	.byte	0xb7
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x10
	.string	"x7"
	.byte	0x1
	.byte	0xb7
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x10
	.string	"y0"
	.byte	0x1
	.byte	0xb8
	.long	0x60
	.byte	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x10
	.string	"y1"
	.byte	0x1
	.byte	0xb8
	.long	0x60
	.byte	0x5
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"y2"
	.byte	0x1
	.byte	0xb8
	.long	0x60
	.byte	0x5
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"y3"
	.byte	0x1
	.byte	0xb8
	.long	0x60
	.byte	0x5
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"y4"
	.byte	0x1
	.byte	0xb8
	.long	0x60
	.byte	0x5
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"y5"
	.byte	0x1
	.byte	0xb8
	.long	0x60
	.byte	0x5
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"y6"
	.byte	0x1
	.byte	0xb8
	.long	0x60
	.byte	0x5
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"y7"
	.byte	0x1
	.byte	0xb8
	.long	0x60
	.byte	0x5
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.long	0x3dd
	.uleb128 0xd
	.long	.LASF10
	.byte	0x1
	.byte	0xe8
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0xe8
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.string	"r0"
	.byte	0x1
	.byte	0xe9
	.long	0xde
	.long	.LLST8
	.uleb128 0x10
	.string	"r1"
	.byte	0x1
	.byte	0xe9
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.string	"r2"
	.byte	0x1
	.byte	0xe9
	.long	0xde
	.long	.LLST9
	.uleb128 0xf
	.string	"r3"
	.byte	0x1
	.byte	0xe9
	.long	0xde
	.long	.LLST10
	.uleb128 0xf
	.string	"r4"
	.byte	0x1
	.byte	0xe9
	.long	0xde
	.long	.LLST11
	.uleb128 0xf
	.string	"r5"
	.byte	0x1
	.byte	0xe9
	.long	0xde
	.long	.LLST12
	.uleb128 0xf
	.string	"r6"
	.byte	0x1
	.byte	0xe9
	.long	0xde
	.long	.LLST13
	.uleb128 0xf
	.string	"r7"
	.byte	0x1
	.byte	0xe9
	.long	0xde
	.long	.LLST14
	.uleb128 0x11
	.string	"r8"
	.byte	0x1
	.byte	0xe9
	.long	0xde
	.uleb128 0x11
	.string	"x0"
	.byte	0x1
	.byte	0xea
	.long	0xde
	.uleb128 0x10
	.string	"x1"
	.byte	0x1
	.byte	0xea
	.long	0xde
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"x2"
	.byte	0x1
	.byte	0xea
	.long	0xde
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"x3"
	.byte	0x1
	.byte	0xea
	.long	0xde
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"x4"
	.byte	0x1
	.byte	0xea
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.string	"x5"
	.byte	0x1
	.byte	0xea
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.string	"x6"
	.byte	0x1
	.byte	0xea
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x10
	.string	"x7"
	.byte	0x1
	.byte	0xea
	.long	0xde
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xf
	.string	"val"
	.byte	0x1
	.byte	0xeb
	.long	0xde
	.long	.LLST15
	.uleb128 0xf
	.string	"tmp"
	.byte	0x1
	.byte	0xeb
	.long	0xde
	.long	.LLST16
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.value	0x1bd
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.long	0x45a
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.value	0x1bd
	.long	0xcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF14
	.byte	0x1
	.value	0x1bd
	.long	0x59
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"val"
	.byte	0x1
	.value	0x1be
	.long	0xde
	.long	.LLST17
	.uleb128 0x16
	.string	"tmp"
	.byte	0x1
	.value	0x1be
	.long	0xde
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF15
	.byte	0x1
	.value	0x1be
	.long	0xde
	.uleb128 0x15
	.string	"rr"
	.byte	0x1
	.value	0x1be
	.long	0xde
	.long	.LLST18
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x1bf
	.long	0x60
	.long	.LLST19
	.byte	0x0
	.uleb128 0x18
	.long	.LASF16
	.byte	0x3
	.byte	0x47
	.long	0x465
	.uleb128 0x19
	.long	0x75
	.uleb128 0x18
	.long	.LASF17
	.byte	0x3
	.byte	0x48
	.long	0x465
	.uleb128 0x18
	.long	.LASF18
	.byte	0x3
	.byte	0x49
	.long	0x465
	.uleb128 0x18
	.long	.LASF19
	.byte	0x3
	.byte	0x4a
	.long	0x465
	.uleb128 0x18
	.long	.LASF20
	.byte	0x3
	.byte	0x4b
	.long	0x465
	.uleb128 0x18
	.long	.LASF21
	.byte	0x3
	.byte	0x4c
	.long	0x465
	.uleb128 0x18
	.long	.LASF22
	.byte	0x3
	.byte	0x4d
	.long	0x465
	.uleb128 0x18
	.long	.LASF23
	.byte	0x3
	.byte	0x4e
	.long	0x465
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x38
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4b8
	.long	0xe9
	.string	"scs_mul"
	.long	0x2aa
	.string	"scs_square"
	.long	0x3dd
	.string	"scs_mul_ui"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x47
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4b8
	.long	0x75
	.string	"db_number"
	.long	0x80
	.string	"scs"
	.long	0xcd
	.string	"scs_ptr"
	.long	0xde
	.string	"SCS_CONVERSION_MUL"
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
.LASF26:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF11:
	.string	"scs_mul"
.LASF16:
	.string	"radix_one_double"
.LASF6:
	.string	"sign"
.LASF14:
	.string	"val_int"
.LASF25:
	.string	"multiplication_scs.c"
.LASF2:
	.string	"double"
.LASF17:
	.string	"radix_two_double"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"long long unsigned int"
.LASF10:
	.string	"result"
.LASF4:
	.string	"exception"
.LASF18:
	.string	"radix_mone_double"
.LASF9:
	.string	"SCS_CONVERSION_MUL"
.LASF24:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF5:
	.string	"index"
.LASF8:
	.string	"scs_ptr"
.LASF20:
	.string	"radix_rng_double"
.LASF15:
	.string	"vald"
.LASF3:
	.string	"h_word"
.LASF12:
	.string	"scs_square"
.LASF23:
	.string	"min_double"
.LASF7:
	.string	"db_number"
.LASF13:
	.string	"scs_mul_ui"
.LASF21:
	.string	"radix_mrng_double"
.LASF22:
	.string	"max_double"
.LASF19:
	.string	"radix_mtwo_double"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
