	.file	"log_fast.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# log_fast.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
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
	.type	log_quick, @function
log_quick:
.LFB7:
	.file 1 "log_fast.c"
	.loc 1 74 0
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
	subl	$52, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	movl	%eax, -44(%ebp)	# pres_hi, %sfp
	movl	12(%ebp), %eax	# py, py
.LVL1:
	movl	16(%ebp), %edi	# E, E
	.loc 1 79 0
	movl	%edi, -20(%ebp)	# E,
	fildl	-20(%ebp)	#
.LVL2:
	movl	%edi, %ecx	# E, tmp156
	sarl	$31, %ecx	#, tmp156
	xorl	%ecx, %edi	# tmp156, E.73
	subl	%ecx, %edi	# tmp156, E.73
.LVL3:
	.loc 1 83 0
	movzwl	6(%eax), %esi	# <variable>.i, tmp157
	andl	$31, %esi	#, tmp159
	subl	$6, %esi	#, i.58
.LVL4:
	.loc 1 84 0
	cmpl	$9, %esi	#, i.58
	jg	.L2	#,
	.loc 1 85 0
	sarl	%esi	# i
.LVL5:
	jmp	.L3	#
.L2:
	.loc 1 87 0
	subl	$1, %esi	#, D.1913
.LVL6:
	sarl	%esi	# i
.LVL7:
.L3:
	.loc 1 89 0
	fldl	(%eax)	# <variable>.d
.LVL8:
	movl	middle@GOT(%ebx), %eax	#, tmp160
	fsubl	(%eax,%esi,8)	# <variable>.d
.LVL9:
.LBB2:
	.loc 1 93 0
	movl	ln2hi@GOT(%ebx), %eax	#, tmp162
	fld	%st(1)	#
.LVL10:
	fmull	(%eax)	# ln2hi.d
	fxch	%st(2)	#
.LVL11:
	movl	ln2lo@GOT(%ebx), %eax	#, tmp163
	fmull	(%eax)	# ln2lo.d
.LVL12:
	fld	%st(2)	#
.LVL13:
	fadd	%st(1), %st	#,
.LVL14:
	fsub	%st, %st(3)	#,
.LVL15:
	fxch	%st(1)	#
.LVL16:
	fsubp	%st, %st(3)	#,
.LVL17:
.LBE2:
	.loc 1 97 0
	movl	Poly_h@GOT(%ebx), %ecx	#, tmp165
	imull	$104, %esi, %eax	#, i, tmp166
	fldl	96(%ecx,%eax)	# <variable>.d
.LVL18:
	leal	88(%ecx,%eax), %ecx	#, ivtmp.54
.LVL19:
	movl	$11, %eax	#, k
.LVL20:
.L4:
	.loc 1 100 0
	fmul	%st(2), %st	#,
.LVL21:
	.loc 1 101 0
	faddl	(%ecx)	# <variable>.d
.LVL22:
	.loc 1 99 0
	subl	$1, %eax	#, k
.LVL23:
	subl	$8, %ecx	#, ivtmp.54
	cmpl	$1, %eax	#, k
	jne	.L4	#,
	.loc 1 104 0
	movl	%edi, -20(%ebp)	# E.73,
	fildl	-20(%ebp)	#
.LVL24:
	flds	.LC0@GOTOFF(%ebx)	#
	fucomip	%st(1), %st	#,
	jb	.L16	#,
	.loc 1 106 0
	testl	%edi, %edi	# E.73
	jne	.L7	#,
	fstp	%st(0)	#
	fstp	%st(3)	#
	fstp	%st(0)	#
	fxch	%st(1)	#
	.loc 1 107 0
	movl	8(%ebp), %eax	# prndcstindex,
.LVL25:
	movl	$0, (%eax)	#,
.LVL26:
.LBB3:
	.loc 1 109 0
	fldl	.LC1@GOTOFF(%ebx)	#
.LVL27:
	fld	%st(1)	#
	fmul	%st(1), %st	#,
.LVL28:
	fld	%st(3)	#
.LVL29:
	fmul	%st(2), %st	#,
.LVL30:
	fld	%st(3)	#
.LVL31:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL32:
	fld	%st(4)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL33:
	fld	%st(3)	#
.LVL34:
	fsub	%st(2), %st	#,
	fstpl	-40(%ebp)	# %sfp
.LVL35:
	fld	%st(4)	#
.LVL36:
	fsub	%st(1), %st	#,
	fxch	%st(4)	#
.LVL37:
	fmul	%st(5), %st	#,
.LVL38:
.LBE3:
.LBB4:
	.loc 1 110 0
	movl	Poly_h@GOT(%ebx), %edi	#, tmp179
.LVL39:
	leal	(%esi,%esi), %ecx	#, tmp181
	leal	(%ecx,%esi), %eax	#, tmp182
	leal	1(%esi,%eax,4), %eax	#, tmp185
	fldl	(%edi,%eax,8)	# <variable>.d
.LVL40:
	fld	%st(1)	#
	fadd	%st(1), %st	#,
	fstpl	-32(%ebp)	# %sfp
.LVL41:
.LBE4:
.LBB5:
	fld	%st(3)	#
.LVL42:
	fmul	%st(3), %st	#,
	fsub	%st(2), %st	#,
	fxch	%st(4)	#
	fmul	%st(6), %st	#,
	faddp	%st, %st(4)	#,
	fldl	-40(%ebp)	# %sfp
	fmul	%st(3), %st	#,
	faddp	%st, %st(4)	#,
	fldl	-40(%ebp)	# %sfp
	fmul	%st(6), %st	#,
	faddp	%st, %st(4)	#,
.LBE5:
.LBB6:
	fsubl	-32(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	movl	Poly_l@GOT(%ebx), %eax	#, tmp197
	faddl	8(%eax,%ecx,8)	# <variable>.d
	fstpl	-40(%ebp)	# %sfp
.LVL43:
	fldl	-32(%ebp)	# %sfp
.LVL44:
	faddl	-40(%ebp)	# %sfp
.LVL45:
.LBE6:
.LBB7:
	.loc 1 111 0
	fmul	%st, %st(2)	#,
.LVL46:
	fld	%st(0)	#
	fsub	%st(3), %st	#,
.LVL47:
	faddp	%st, %st(3)	#,
.LVL48:
	fld	%st(0)	#
	fsub	%st(3), %st	#,
.LVL49:
	fld	%st(5)	#
.LVL50:
	fmul	%st(2), %st	#,
.LVL51:
	fld	%st(3)	#
.LVL52:
	fmul	%st(5), %st	#,
	fsub	%st(1), %st	#,
	fxch	%st(5)	#
	fmul	%st(6), %st	#,
	faddp	%st, %st(5)	#,
	fxch	%st(3)	#
	fmul	%st(1), %st	#,
	faddp	%st, %st(4)	#,
.LVL53:
	fmulp	%st, %st(4)	#,
	fxch	%st(2)	#
.LVL54:
	faddp	%st, %st(3)	#,
.LVL55:
	fld	%st(1)	#
	fmuls	.LC2@GOTOFF(%ebx)	#
	fxch	%st(2)	#
.LVL56:
.LBE7:
.LBB8:
	fsubrl	-32(%ebp)	# %sfp
	faddl	-40(%ebp)	# %sfp
.LBE8:
.LBB9:
	fmulp	%st, %st(4)	#,
	fxch	%st(1)	#
.LVL57:
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
	faddp	%st, %st(1)	#,
.LVL58:
	fld	%st(1)	#
.LVL59:
	fadd	%st(1), %st	#,
.LVL60:
.LBE9:
.LBB10:
	.loc 1 112 0
	imull	$104, %esi, %ecx	#, i, tmp217
	fldl	(%ecx,%edi)	# <variable>.d
.LVL61:
	fld	%st(1)	#
	fadd	%st(1), %st	#,
.LVL62:
	fxch	%st(4)	#
.LVL63:
.LBE10:
.LBB11:
	fsub	%st(2), %st	#,
.LVL64:
	faddp	%st, %st(3)	#,
.LBE11:
.LBB12:
	fsub	%st(3), %st	#,
	faddp	%st, %st(1)	#,
	faddp	%st, %st(1)	#,
	sall	$4, %esi	#, tmp224
.LVL65:
	faddl	(%esi,%eax)	# <variable>.d
.LVL66:
	fld	%st(1)	#
.LVL67:
	fadd	%st(1), %st	#,
	movl	-44(%ebp), %eax	# %sfp,
	fstl	(%eax)	#
	fsubrp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
	fstpl	(%edx)	#* pres_lo
	jmp	.L12	#
.LVL68:
.L7:
.LBE12:
	.loc 1 116 0
	flds	.LC3@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	.loc 1 119 0
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	seta	%al	#, tmp294
.LVL69:
	movzbl	%al, %eax	# tmp294, tmp293
	addl	$1, %eax	#, tmp293
	movl	8(%ebp), %ecx	# prndcstindex,
	movl	%eax, (%ecx)	# tmp293,
.LVL70:
.LBB13:
	.loc 1 121 0
	movl	Poly_h@GOT(%ebx), %edi	#, tmp229
	leal	(%esi,%esi), %ecx	#, tmp231
	leal	(%ecx,%esi), %eax	#, tmp232
	leal	1(%esi,%eax,4), %eax	#, tmp235
	fldl	(%edi,%eax,8)	# <variable>.d
.LVL71:
	fstl	-64(%ebp)	# %sfp
	fxch	%st(1)	#
.LVL72:
.LBE13:
	fmul	%st(3), %st	#,
.LBB14:
	movl	Poly_l@GOT(%ebx), %eax	#, tmp237
.LVL73:
	faddl	8(%eax,%ecx,8)	# <variable>.d
	fstpl	-56(%ebp)	# %sfp
.LVL74:
	faddl	-56(%ebp)	# %sfp
.LVL75:
.LBE14:
.LBB15:
	.loc 1 122 0
	fldl	.LC1@GOTOFF(%ebx)	#
.LVL76:
	fld	%st(1)	#
	fmul	%st(1), %st	#,
	fxch	%st(1)	#
.LVL77:
	fmul	%st(4), %st	#,
.LVL78:
	fld	%st(2)	#
.LVL79:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL80:
	fld	%st(4)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL81:
	fld	%st(2)	#
.LVL82:
	fsub	%st(2), %st	#,
	fstpl	-40(%ebp)	# %sfp
.LVL83:
	fld	%st(4)	#
.LVL84:
	fsub	%st(1), %st	#,
	fstpl	-32(%ebp)	# %sfp
.LVL85:
	fld	%st(4)	#
.LVL86:
	fmul	%st(3), %st	#,
.LVL87:
	fld	%st(2)	#
.LVL88:
	fmul	%st(2), %st	#,
	fsub	%st(1), %st	#,
	fxch	%st(3)	#
	fmull	-32(%ebp)	# %sfp
	faddp	%st, %st(3)	#,
	fxch	%st(1)	#
	fmull	-40(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fldl	-40(%ebp)	# %sfp
	fmull	-32(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
.LVL89:
	fld	%st(2)	#
	fmuls	.LC2@GOTOFF(%ebx)	#
	fxch	%st(3)	#
.LBE15:
.LBB16:
	fsubl	-64(%ebp)	# %sfp
	fsubrl	-56(%ebp)	# %sfp
.LBE16:
.LBB17:
	fmulp	%st, %st(5)	#,
	fxch	%st(2)	#
	faddp	%st, %st(4)	#,
	faddp	%st, %st(3)	#,
.LVL90:
	fld	%st(0)	#
	fadd	%st(3), %st	#,
.LVL91:
.LBE17:
.LBB18:
	.loc 1 123 0
	imull	$104, %esi, %ecx	#, i, tmp259
	fldl	(%ecx,%edi)	# <variable>.d
.LVL92:
	fld	%st(1)	#
	fadd	%st(1), %st	#,
	fxch	%st(3)	#
.LVL93:
.LBE18:
.LBB19:
	fsub	%st(2), %st	#,
.LVL94:
	faddp	%st, %st(5)	#,
.LBE19:
.LBB20:
	fsub	%st(2), %st	#,
	faddp	%st, %st(1)	#,
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
.LVL95:
	sall	$4, %esi	#, tmp266
.LVL96:
	faddl	(%esi,%eax)	# <variable>.d
.LVL97:
	fld	%st(2)	#
.LVL98:
	fadd	%st(1), %st	#,
.LVL99:
.LBE20:
.LBB21:
	.loc 1 126 0
	fld	%st(2)	#
.LVL100:
	fadd	%st(1), %st	#,
.LVL101:
	fxch	%st(4)	#
.LVL102:
.LBE21:
.LBB22:
	fsub	%st(1), %st	#,
.LVL103:
	faddp	%st, %st(2)	#,
	fxch	%st(2)	#
.LBE22:
.LBB23:
	fsub	%st(3), %st	#,
	faddp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
	faddp	%st, %st(2)	#,
.LVL104:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
	movl	-44(%ebp), %eax	# %sfp,
	fstl	(%eax)	#
	fsubrp	%st, %st(1)	#,
.LVL105:
	faddp	%st, %st(1)	#,
	fstpl	(%edx)	#* pres_lo
	jmp	.L12	#
.LVL106:
.L16:
	fstp	%st(0)	#
.LBE23:
	.loc 1 131 0
	movl	8(%ebp), %ecx	# prndcstindex,
	movl	$3, (%ecx)	#,
	.loc 1 132 0
	movl	Poly_h@GOT(%ebx), %eax	#, tmp274
.LVL107:
	leal	(%esi,%esi,2), %ecx	#, tmp277
	leal	1(%esi,%ecx,4), %ecx	#, tmp280
	fmul	%st(2), %st	#,
	faddl	(%eax,%ecx,8)	# <variable>.d
.LVL108:
.LBB24:
	.loc 1 134 0
	imull	$104, %esi, %ecx	#, i, tmp283
	fldl	(%ecx,%eax)	# <variable>.d
.LVL109:
	fld	%st(2)	#
	fadd	%st(1), %st	#,
.LVL110:
.LBE24:
.LBB25:
	.loc 1 135 0
	sall	$4, %esi	#, tmp285
.LVL111:
.LBE25:
.LBB26:
	fsub	%st, %st(3)	#,
.LVL112:
	fxch	%st(1)	#
.LVL113:
	fsubp	%st, %st(3)	#,
.LVL114:
	fxch	%st(4)	#
.LBE26:
.LBB27:
	faddp	%st, %st(2)	#,
.LVL115:
	fxch	%st(1)	#
	movl	Poly_l@GOT(%ebx), %eax	#, tmp284
.LVL116:
	faddl	(%esi,%eax)	# <variable>.d
	fxch	%st(2)	#
.LBE27:
	fmulp	%st, %st(1)	#,
.LBB28:
	faddp	%st, %st(1)	#,
.LVL117:
	fld	%st(1)	#
.LVL118:
	fadd	%st(1), %st	#,
	movl	-44(%ebp), %eax	# %sfp,
	fstl	(%eax)	#
.LVL119:
	fsubp	%st, %st(2)	#,
.LVL120:
	fsubp	%st, %st(1)	#,
	fstpl	(%edx)	#* pres_lo
.LVL121:
.L12:
.LBE28:
	.loc 1 142 0
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
.LFE7:
	.size	log_quick, .-log_quick
.globl log_ru
	.type	log_ru, @function
log_ru:
.LFB10:
	.loc 1 299 0
	.cfi_startproc
.LVL122:
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
.LVL123:
	.loc 1 306 0
	fstl	-16(%ebp)	# y.d
	.loc 1 309 0
	movl	-12(%ebp), %eax	# y.i, D.2129
	movl	$0, %edx	#, E
	cmpl	$1048575, %eax	#, D.2129
	jg	.L19	#,
	.loc 1 310 0
	testl	$2147483647, %eax	#, D.2129
	jne	.L20	#,
	cmpl	$0, -16(%ebp)	#, y.i
	jne	.L20	#,
	fstp	%st(0)	#
	.loc 1 312 0
	fldl	NInf@GOTOFF(%ebx)	# NInf.d
	jmp	.L21	#
.L20:
	.loc 1 314 0
	testl	%eax, %eax	# D.2129
	jns	.L22	#,
	fstp	%st(0)	#
	.loc 1 316 0
	fldl	NaN@GOTOFF(%ebx)	# NaN.d
	jmp	.L21	#
.L22:
.LVL124:
	.loc 1 320 0
	movl	two52@GOT(%ebx), %eax	#, tmp72
	fld	%st(0)	#
	fmull	(%eax)	# two52.d
	fstpl	-16(%ebp)	# y.d
	movl	$-52, %edx	#, E
.LVL125:
.L19:
	.loc 1 323 0
	movl	-12(%ebp), %eax	# y.i, temp.88
	cmpl	$2146435071, %eax	#, temp.88
	jle	.L23	#,
	.loc 1 324 0
	fadd	%st(0), %st	#,
	jmp	.L21	#
.L23:
	fstp	%st(0)	#
	.loc 1 327 0
	movl	%eax, %ecx	# temp.88, tmp74
	sarl	$20, %ecx	#, tmp74
	leal	-1023(%edx,%ecx), %esi	#, E.87
.LVL126:
	.loc 1 328 0
	andl	$1048575, %eax	#, tmp76
	orl	$1072693248, %eax	#, tmp77
	movl	%eax, -12(%ebp)	# tmp77, y.i
	.loc 1 329 0
	fldl	-16(%ebp)	# y.d
	fldl	.LC4@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L35	#,
	.loc 1 330 0
	fmuls	.LC5@GOTOFF(%ebx)	#
	fstpl	-16(%ebp)	# y.d
	.loc 1 331 0
	addl	$1, %esi	#, E.87
.LVL127:
	jmp	.L24	#
.L35:
	fstp	%st(0)	#
.L24:
	.loc 1 334 0
	leal	-32(%ebp), %edx	#, tmp82
	leal	-24(%ebp), %eax	#, tmp83
	movl	%esi, 8(%esp)	# E.87,
	leal	-16(%ebp), %ecx	#, tmp84
	movl	%ecx, 4(%esp)	# tmp84,
	leal	-36(%ebp), %ecx	#, tmp85
	movl	%ecx, (%esp)	# tmp85,
	call	log_quick	#
.LVL128:
	.loc 1 339 0
	fldl	-24(%ebp)	# res_hi
	fstpl	-120(%ebp)	# %sfp
.LVL129:
	.loc 1 340 0
	fldl	-32(%ebp)	# res_lo
	fstpl	-104(%ebp)	# %sfp
	.loc 1 344 0
	movl	$0, -96(%ebp)	#, %sfp
	movl	-116(%ebp), %eax	# %sfp,
	andl	$2146435072, %eax	#,
	movl	%eax, -92(%ebp)	#, %sfp
	movl	-96(%ebp), %eax	# %sfp,
	movl	-92(%ebp), %edx	# %sfp,
	addl	$0, %eax	#,
	adcl	$1048576, %edx	#,
	movl	%eax, -112(%ebp)	#, %sfp
	movl	%edx, -108(%ebp)	#, %sfp
	.loc 1 347 0
	movl	-36(%ebp), %edx	# rndcstindex, rndcstindex
	movl	delta@GOT(%ebx), %eax	#, tmp87
	fldl	-112(%ebp)	# %sfp
	fmull	(%eax,%edx,8)	# delta
	.loc 1 343 0
	movl	-104(%ebp), %edx	# %sfp,
	movl	%edx, -96(%ebp)	#, %sfp
	movl	-100(%ebp), %eax	# %sfp,
	andl	$2147483647, %eax	#,
	movl	%eax, -92(%ebp)	#, %sfp
	.loc 1 347 0
	fldl	-96(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L34	#,
	.loc 1 348 0
	fldz
	fldl	-104(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L28	#,
	movl	-112(%ebp), %eax	# %sfp,
	movl	-108(%ebp), %edx	# %sfp,
	addl	$0, %eax	#,
	adcl	$-55574528, %edx	#,
	movl	%eax, -112(%ebp)	#, %sfp
	movl	%edx, -108(%ebp)	#, %sfp
	fldl	-120(%ebp)	# %sfp
	faddl	-112(%ebp)	# %sfp
	fstpl	-24(%ebp)	# res_hi
.L28:
	.loc 1 349 0
	fldl	-24(%ebp)	# res_hi
	jmp	.L21	#
.L34:
.LBB30:
	.loc 1 355 0
	movl	%esi, 12(%esp)	# E.87,
	movl	-16(%ebp), %eax	# y, y
	movl	-12(%ebp), %edx	# y, y
	movl	%eax, 4(%esp)	# y,
	movl	%edx, 8(%esp)	# y,
	leal	-84(%ebp), %esi	#, tmp98
.LVL130:
	movl	%esi, (%esp)	# tmp98,
	call	scs_log@PLT	#
.LVL131:
	.loc 1 356 0
	movl	%esi, 4(%esp)	# tmp98,
	leal	-24(%ebp), %eax	#, tmp100
	movl	%eax, (%esp)	# tmp100,
	call	scs_get_d_pinf@PLT	#
	.loc 1 357 0
	fldl	-24(%ebp)	# res_hi
.L21:
.LBE30:
	.loc 1 359 0
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
	.size	log_ru, .-log_ru
.globl log_rd
	.type	log_rd, @function
log_rd:
.LFB9:
	.loc 1 225 0
	.cfi_startproc
.LVL132:
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
.LVL133:
	.loc 1 232 0
	fstl	-16(%ebp)	# y.d
	.loc 1 235 0
	movl	-12(%ebp), %eax	# y.i, D.2069
	movl	$0, %edx	#, E
	cmpl	$1048575, %eax	#, D.2069
	jg	.L38	#,
	.loc 1 236 0
	testl	$2147483647, %eax	#, D.2069
	jne	.L39	#,
	cmpl	$0, -16(%ebp)	#, y.i
	jne	.L39	#,
	fstp	%st(0)	#
	.loc 1 238 0
	fldl	NInf@GOTOFF(%ebx)	# NInf.d
	jmp	.L40	#
.L39:
	.loc 1 240 0
	testl	%eax, %eax	# D.2069
	jns	.L41	#,
	fstp	%st(0)	#
	.loc 1 242 0
	fldl	NaN@GOTOFF(%ebx)	# NaN.d
	jmp	.L40	#
.L41:
.LVL134:
	.loc 1 246 0
	movl	two52@GOT(%ebx), %eax	#, tmp72
	fld	%st(0)	#
	fmull	(%eax)	# two52.d
	fstpl	-16(%ebp)	# y.d
	movl	$-52, %edx	#, E
.LVL135:
.L38:
	.loc 1 249 0
	movl	-12(%ebp), %eax	# y.i, temp.106
	cmpl	$2146435071, %eax	#, temp.106
	jle	.L42	#,
	.loc 1 250 0
	fadd	%st(0), %st	#,
	jmp	.L40	#
.L42:
	fstp	%st(0)	#
	.loc 1 254 0
	movl	%eax, %ecx	# temp.106, tmp74
	sarl	$20, %ecx	#, tmp74
	leal	-1023(%edx,%ecx), %esi	#, E.105
.LVL136:
	.loc 1 255 0
	andl	$1048575, %eax	#, tmp76
	orl	$1072693248, %eax	#, tmp77
	movl	%eax, -12(%ebp)	# tmp77, y.i
	.loc 1 256 0
	fldl	-16(%ebp)	# y.d
	fldl	.LC4@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L54	#,
	.loc 1 257 0
	fmuls	.LC5@GOTOFF(%ebx)	#
	fstpl	-16(%ebp)	# y.d
	.loc 1 258 0
	addl	$1, %esi	#, E.105
.LVL137:
	jmp	.L43	#
.L54:
	fstp	%st(0)	#
.L43:
	.loc 1 261 0
	leal	-32(%ebp), %edx	#, tmp82
	leal	-24(%ebp), %eax	#, tmp83
	movl	%esi, 8(%esp)	# E.105,
	leal	-16(%ebp), %ecx	#, tmp84
	movl	%ecx, 4(%esp)	# tmp84,
	leal	-36(%ebp), %ecx	#, tmp85
	movl	%ecx, (%esp)	# tmp85,
	call	log_quick	#
.LVL138:
	.loc 1 265 0
	fldl	-24(%ebp)	# res_hi
	fstpl	-120(%ebp)	# %sfp
.LVL139:
	.loc 1 266 0
	fldl	-32(%ebp)	# res_lo
	fstpl	-104(%ebp)	# %sfp
	.loc 1 270 0
	movl	$0, -96(%ebp)	#, %sfp
	movl	-116(%ebp), %eax	# %sfp,
	andl	$2146435072, %eax	#,
	movl	%eax, -92(%ebp)	#, %sfp
	movl	-96(%ebp), %eax	# %sfp,
	movl	-92(%ebp), %edx	# %sfp,
	addl	$0, %eax	#,
	adcl	$1048576, %edx	#,
	movl	%eax, -112(%ebp)	#, %sfp
	movl	%edx, -108(%ebp)	#, %sfp
	.loc 1 273 0
	movl	-36(%ebp), %edx	# rndcstindex, rndcstindex
	movl	delta@GOT(%ebx), %eax	#, tmp87
	fldl	-112(%ebp)	# %sfp
	fmull	(%eax,%edx,8)	# delta
	.loc 1 269 0
	movl	-104(%ebp), %edx	# %sfp,
	movl	%edx, -96(%ebp)	#, %sfp
	movl	-100(%ebp), %eax	# %sfp,
	andl	$2147483647, %eax	#,
	movl	%eax, -92(%ebp)	#, %sfp
	.loc 1 273 0
	fldl	-96(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L53	#,
	.loc 1 274 0
	fldz
	fldl	-104(%ebp)	# %sfp
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L47	#,
	.loc 1 275 0
	movl	-112(%ebp), %eax	# %sfp,
	movl	-108(%ebp), %edx	# %sfp,
	addl	$0, %eax	#,
	adcl	$-55574528, %edx	#,
	movl	%eax, -112(%ebp)	#, %sfp
	movl	%edx, -108(%ebp)	#, %sfp
	fldl	-120(%ebp)	# %sfp
	fsubl	-112(%ebp)	# %sfp
	fstpl	-24(%ebp)	# res_hi
.L47:
	.loc 1 276 0
	fldl	-24(%ebp)	# res_hi
	jmp	.L40	#
.L53:
.LBB32:
	.loc 1 282 0
	movl	%esi, 12(%esp)	# E.105,
	movl	-16(%ebp), %eax	# y, y
	movl	-12(%ebp), %edx	# y, y
	movl	%eax, 4(%esp)	# y,
	movl	%edx, 8(%esp)	# y,
	leal	-84(%ebp), %esi	#, tmp98
.LVL140:
	movl	%esi, (%esp)	# tmp98,
	call	scs_log@PLT	#
.LVL141:
	.loc 1 283 0
	movl	%esi, 4(%esp)	# tmp98,
	leal	-24(%ebp), %eax	#, tmp100
	movl	%eax, (%esp)	# tmp100,
	call	scs_get_d_minf@PLT	#
	.loc 1 284 0
	fldl	-24(%ebp)	# res_hi
.L40:
.LBE32:
	.loc 1 286 0
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
	.size	log_rd, .-log_rd
.globl log_rz
	.type	log_rz, @function
log_rz:
.LFB11:
	.loc 1 370 0
	.cfi_startproc
.LVL142:
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
	fldl	8(%ebp)	# x
	.loc 1 371 0
	fld1
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L61	#,
	.loc 1 372 0
	fstpl	(%esp)	#
	call	log_rd@PLT	#
	jmp	.L58	#
.L61:
	.loc 1 374 0
	fstpl	(%esp)	#
	call	log_ru@PLT	#
.L58:
	.loc 1 375 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	log_rz, .-log_rz
.globl log_rn
	.type	log_rn, @function
log_rn:
.LFB8:
	.loc 1 153 0
	.cfi_startproc
.LVL143:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%esi	#
	pushl	%ebx	#
	subl	$96, %esp	#,
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
.LVL144:
	.loc 1 159 0
	fstl	-16(%ebp)	# y.d
	.loc 1 162 0
	movl	-12(%ebp), %eax	# y.i, D.2024
	movl	$0, %edx	#, E
	cmpl	$1048575, %eax	#, D.2024
	jg	.L64	#,
	.loc 1 163 0
	testl	$2147483647, %eax	#, D.2024
	jne	.L65	#,
	cmpl	$0, -16(%ebp)	#, y.i
	jne	.L65	#,
	fstp	%st(0)	#
	.loc 1 165 0
	fldl	NInf@GOTOFF(%ebx)	# NInf.d
	jmp	.L66	#
.L65:
	.loc 1 167 0
	testl	%eax, %eax	# D.2024
	jns	.L67	#,
	fstp	%st(0)	#
	.loc 1 169 0
	fldl	NaN@GOTOFF(%ebx)	# NaN.d
	jmp	.L66	#
.L67:
.LVL145:
	.loc 1 173 0
	movl	two52@GOT(%ebx), %eax	#, tmp69
	fld	%st(0)	#
	fmull	(%eax)	# two52.d
	fstpl	-16(%ebp)	# y.d
	movl	$-52, %edx	#, E
.LVL146:
.L64:
	.loc 1 176 0
	movl	-12(%ebp), %eax	# y.i, temp.133
	cmpl	$2146435071, %eax	#, temp.133
	jle	.L68	#,
	.loc 1 177 0
	fadd	%st(0), %st	#,
	jmp	.L66	#
.L68:
	fstp	%st(0)	#
	.loc 1 181 0
	movl	%eax, %ecx	# temp.133, tmp71
	sarl	$20, %ecx	#, tmp71
	leal	-1023(%edx,%ecx), %esi	#, E.132
.LVL147:
	.loc 1 182 0
	andl	$1048575, %eax	#, tmp73
	orl	$1072693248, %eax	#, tmp74
	movl	%eax, -12(%ebp)	# tmp74, y.i
	.loc 1 183 0
	fldl	-16(%ebp)	# y.d
	fldl	.LC4@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L75	#,
	.loc 1 184 0
	fmuls	.LC5@GOTOFF(%ebx)	#
	fstpl	-16(%ebp)	# y.d
	.loc 1 185 0
	addl	$1, %esi	#, E.132
.LVL148:
	jmp	.L69	#
.L75:
	fstp	%st(0)	#
.L69:
	.loc 1 189 0
	leal	-32(%ebp), %edx	#, tmp79
	leal	-24(%ebp), %eax	#, tmp80
	movl	%esi, 8(%esp)	# E.132,
	leal	-16(%ebp), %ecx	#, tmp81
	movl	%ecx, 4(%esp)	# tmp81,
	leal	-36(%ebp), %ecx	#, tmp82
	movl	%ecx, (%esp)	# tmp82,
	call	log_quick	#
.LVL149:
	.loc 1 194 0
	fldl	-24(%ebp)	# res_hi
.LVL150:
	fldl	-32(%ebp)	# res_lo
	movl	-36(%ebp), %edx	# rndcstindex, rndcstindex
	movl	rncst@GOT(%ebx), %eax	#, tmp83
	fmull	(%eax,%edx,8)	# rncst
	fadd	%st(1), %st	#,
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jp	.L76	#,
	je	.L66	#,
	fstp	%st(0)	#
	jmp	.L74	#
.L76:
	fstp	%st(0)	#
.L74:
.LBB34:
	.loc 1 201 0
	movl	%esi, 12(%esp)	# E.132,
	movl	-16(%ebp), %eax	# y, y
	movl	-12(%ebp), %edx	# y, y
	movl	%eax, 4(%esp)	# y,
	movl	%edx, 8(%esp)	# y,
	leal	-84(%ebp), %esi	#, tmp89
.LVL151:
	movl	%esi, (%esp)	# tmp89,
	call	scs_log@PLT	#
.LVL152:
	.loc 1 202 0
	movl	%esi, 4(%esp)	# tmp89,
	leal	-24(%ebp), %eax	#, tmp91
	movl	%eax, (%esp)	# tmp91,
	call	scs_get_d@PLT	#
	.loc 1 203 0
	fldl	-24(%ebp)	# res_hi
.L66:
.LBE34:
	.loc 1 205 0
	addl	$96, %esp	#,
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
	.size	log_rn, .-log_rn
.globl delta
	.section	.rodata
	.align 32
	.type	delta, @object
	.size	delta, 32
delta:
	.long	2151095636
	.long	1012179403
	.long	3092957381
	.long	1009744787
	.long	2934441935
	.long	1004721354
	.long	861421142
	.long	1007184417
.globl rncst
	.align 32
	.type	rncst, @object
	.size	rncst, 32
rncst:
	.long	2720386754
	.long	1072783390
	.long	328721757
	.long	1072709494
	.long	3836900176
	.long	1072693850
	.long	774947970
	.long	1072696379
.globl ln2hi
	.align 4
	.type	ln2hi, @object
	.size	ln2hi, 8
ln2hi:
# i:
	.long	-17156096
	.long	1072049730
.globl ln2lo
	.align 4
	.type	ln2lo, @object
	.size	ln2lo, 8
ln2lo:
# i:
	.long	-1815648464
	.long	1026487127
.globl two52
	.align 4
	.type	two52, @object
	.size	two52, 8
two52:
# i:
	.long	0
	.long	1127219200
.globl middle
	.align 32
	.type	middle, @object
	.size	middle, 64
middle:
# i:
	.long	0
	.long	1072103424
# i:
	.long	0
	.long	1072234496
# i:
	.long	0
	.long	1072365568
# i:
	.long	0
	.long	1072496640
# i:
	.long	0
	.long	1072693248
# i:
	.long	0
	.long	1072824320
# i:
	.long	0
	.long	1072955392
# i:
	.long	0
	.long	1073086464
.globl Poly_h
	.align 32
	.type	Poly_h, @object
	.size	Poly_h, 832
Poly_h:
# i:
	.long	121152472
	.long	-1076550994
# i:
	.long	1493901668
	.long	1073103560
# i:
	.long	-1282806867
	.long	-1074857795
# i:
	.long	-816374427
	.long	1072478769
# i:
	.long	828770423
	.long	-1074923023
# i:
	.long	872035223
	.long	1072737975
# i:
	.long	-358382960
	.long	-1074571379
# i:
	.long	-1810029397
	.long	1073156341
# i:
	.long	1774120733
	.long	-1073998683
# i:
	.long	-1261710725
	.long	1073831195
# i:
	.long	2074633778
	.long	-1073365498
# i:
	.long	408854259
	.long	1074504922
# i:
	.long	-1058228954
	.long	-1072585539
# i:
	.long	1823716217
	.long	-1076913892
# i:
	.long	1202590843
	.long	1072986849
# i:
	.long	-350469331
	.long	-1075169566
# i:
	.long	-2131586541
	.long	1072062111
# i:
	.long	-500134849
	.long	-1075480178
# i:
	.long	-512149232
	.long	1072037247
# i:
	.long	-1405303650
	.long	-1075350324
# i:
	.long	2006921654
	.long	1072282655
# i:
	.long	-1668710294
	.long	-1074998606
# i:
	.long	-161227435
	.long	1072719264
# i:
	.long	1691517523
	.long	-1074601049
# i:
	.long	371288233
	.long	1073091540
# i:
	.long	511604193
	.long	-1074140055
# i:
	.long	1800682930
	.long	-1077559488
# i:
	.long	-1113510040
	.long	1072887428
# i:
	.long	-524351289
	.long	-1075414656
# i:
	.long	1600620677
	.long	1071759866
# i:
	.long	459454930
	.long	-1075867203
# i:
	.long	-2109542655
	.long	1071509167
# i:
	.long	-1553268069
	.long	-1075998699
# i:
	.long	2132239169
	.long	1071515702
# i:
	.long	644232753
	.long	-1075895050
# i:
	.long	433647955
	.long	1071671226
# i:
	.long	-324921673
	.long	-1075740750
# i:
	.long	799786169
	.long	1071836390
# i:
	.long	564469326
	.long	-1075539213
# i:
	.long	1566132617
	.long	-1078381730
# i:
	.long	1629125526
	.long	1072801721
# i:
	.long	612837188
	.long	-1075610808
# i:
	.long	704175758
	.long	1071425948
# i:
	.long	1027073108
	.long	-1076381567
# i:
	.long	1439822760
	.long	1070919822
# i:
	.long	879663571
	.long	-1076674241
# i:
	.long	356728422
	.long	1070741029
# i:
	.long	-1720277011
	.long	-1076783775
# i:
	.long	1496708299
	.long	1070677793
# i:
	.long	-2103859548
	.long	-1076813652
# i:
	.long	844975881
	.long	1070677211
# i:
	.long	-2054460067
	.long	-1076792821
# i:
	.long	0
	.long	0
# i:
	.long	0
	.long	1072693248
# i:
	.long	0
	.long	-1075838976
# i:
	.long	1431655810
	.long	1070945621
# i:
	.long	169
	.long	-1076887552
# i:
	.long	-1718254319
	.long	1070176665
# i:
	.long	1431042338
	.long	-1077586603
# i:
	.long	-1548814733
	.long	1069697316
# i:
	.long	484698246
	.long	-1077936128
# i:
	.long	332313017
	.long	1069314436
# i:
	.long	-507658122
	.long	-1078355647
# i:
	.long	-1139523321
	.long	1068990790
# i:
	.long	178620244
	.long	-1078618673
# i:
	.long	1848308454
	.long	1069426439
# i:
	.long	477218588
	.long	1072460231
# i:
	.long	-53024288
	.long	-1076279120
# i:
	.long	-2130790768
	.long	1070462806
# i:
	.long	-1420527078
	.long	-1077675463
# i:
	.long	-1734174377
	.long	1069312400
# i:
	.long	1737590043
	.long	-1078653997
# i:
	.long	-1568083799
	.long	1068501250
# i:
	.long	1596470069
	.long	-1079447150
# i:
	.long	-414150802
	.long	1067693376
# i:
	.long	-1075698113
	.long	-1080063920
# i:
	.long	317687588
	.long	1067037440
# i:
	.long	-1716580844
	.long	-1080756131
# i:
	.long	-946169310
	.long	1070370807
# i:
	.long	-1717986918
	.long	1072273817
# i:
	.long	1202590843
	.long	-1076593951
# i:
	.long	-1007885646
	.long	1069930599
# i:
	.long	-350469270
	.long	-1078315294
# i:
	.long	-1598740702
	.long	1068549879
# i:
	.long	-2131755059
	.long	-1079615841
# i:
	.long	-1763355930
	.long	1067363751
# i:
	.long	-275832717
	.long	-1080723058
# i:
	.long	1906702428
	.long	1066306204
# i:
	.long	-627918472
	.long	-1081737893
# i:
	.long	-614930978
	.long	1065359987
# i:
	.long	1485626479
	.long	-1082677941
# i:
	.long	-1038328126
	.long	1070883211
# i:
	.long	1952257862
	.long	1072121297
# i:
	.long	1810275472
	.long	-1076826891
# i:
	.long	714214450
	.long	1069574568
# i:
	.long	779143049
	.long	-1078859872
# i:
	.long	1843693547
	.long	1067767212
# i:
	.long	282469193
	.long	-1080475377
# i:
	.long	1292112838
	.long	1066368085
# i:
	.long	-1858571224
	.long	-1081865907
# i:
	.long	-156843939
	.long	1064953790
# i:
	.long	-338156735
	.long	-1083116351
# i:
	.long	-1840142385
	.long	1063685292
# i:
	.long	177896882
	.long	-1084352437
.globl Poly_l
	.align 32
	.type	Poly_l, @object
	.size	Poly_l, 128
Poly_l:
# i:
	.long	2029390247
	.long	1013512169
# i:
	.long	1915790840
	.long	1015431291
# i:
	.long	2033157597
	.long	-1133550000
# i:
	.long	-136469814
	.long	-1132545569
# i:
	.long	-387024341
	.long	1008858547
# i:
	.long	753541168
	.long	1016264288
# i:
	.long	1383540431
	.long	1012168872
# i:
	.long	-1531402503
	.long	1014081407
# i:
	.long	0
	.long	0
# i:
	.long	-1426521189
	.long	-1140594406
# i:
	.long	-607911166
	.long	-1137306192
# i:
	.long	75474814
	.long	1015829974
# i:
	.long	-1750853279
	.long	-1134233973
# i:
	.long	-1645953471
	.long	-1131831120
# i:
	.long	-1756287920
	.long	1014973150
# i:
	.long	-1823665299
	.long	-1133032981
	.align 4
	.type	NInf, @object
	.size	NInf, 8
NInf:
# i:
	.long	0
	.long	-1048576
	.align 4
	.type	NaN, @object
	.size	NaN, 8
NaN:
# i:
	.long	0
	.long	-524288
	.comm	crlibm_second_step_taken,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1127809024
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	33554432
	.long	1101004800
	.section	.rodata.cst4
	.align 4
.LC2:
	.long	0
	.align 4
.LC3:
	.long	1102577664
	.section	.rodata.cst8
	.align 8
.LC4:
	.long	1719614413
	.long	1073127582
	.section	.rodata.cst4
	.align 4
.LC5:
	.long	1056964608
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
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL1-.Ltext0
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL0-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL3-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL39-.Ltext0
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL14-.Ltext0
	.long	.LVL16-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL17-.Ltext0
	.long	.LVL32-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL68-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL106-.Ltext0
	.long	.LVL115-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL45-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL75-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL99-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL101-.Ltext0
	.long	.LVL102-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL2-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x60
	.long	.LVL19-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.long	Poly_h+96
	.byte	0x22
	.long	.LVL20-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL38-.Ltext0
	.long	.LVL40-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL60-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL62-.Ltext0
	.long	.LVL63-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL91-.Ltext0
	.long	.LVL92-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL110-.Ltext0
	.long	.LVL113-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL18-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x2
	.byte	0x3b
	.byte	0x9f
	.long	.LVL23-.Ltext0
	.long	.LVL25-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL68-.Ltext0
	.long	.LVL69-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL106-.Ltext0
	.long	.LVL107-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL4-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.long	.LVL7-.Ltext0
	.long	.LVL65-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL68-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL106-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL15-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL26-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL32-.Ltext0
	.long	.LVL33-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL35-.Ltext0
	.long	.LVL36-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL36-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL33-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL37-.Ltext0
	.long	.LVL38-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL26-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL26-.Ltext0
	.long	.LVL33-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL41-.Ltext0
	.long	.LVL42-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL42-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL43-.Ltext0
	.long	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL44-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL51-.Ltext0
	.long	.LVL52-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL55-.Ltext0
	.long	.LVL56-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL58-.Ltext0
	.long	.LVL59-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL45-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL46-.Ltext0
	.long	.LVL54-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL48-.Ltext0
	.long	.LVL54-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL48-.Ltext0
	.long	.LVL57-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL49-.Ltext0
	.long	.LVL53-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL63-.Ltext0
	.long	.LVL64-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL66-.Ltext0
	.long	.LVL67-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL72-.Ltext0
	.long	.LVL73-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.long	.LVL73-.Ltext0
	.long	.LVL106-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL74-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL75-.Ltext0
	.long	.LVL106-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL87-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL89-.Ltext0
	.long	.LVL90-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL90-.Ltext0
	.long	.LVL95-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL75-.Ltext0
	.long	.LVL106-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL77-.Ltext0
	.long	.LVL78-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LVL80-.Ltext0
	.long	.LVL81-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LVL83-.Ltext0
	.long	.LVL84-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL84-.Ltext0
	.long	.LVL106-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LVL78-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LVL81-.Ltext0
	.long	.LVL82-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LVL85-.Ltext0
	.long	.LVL86-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL86-.Ltext0
	.long	.LVL106-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LVL93-.Ltext0
	.long	.LVL94-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LVL97-.Ltext0
	.long	.LVL98-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LVL102-.Ltext0
	.long	.LVL103-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LVL104-.Ltext0
	.long	.LVL105-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LVL112-.Ltext0
	.long	.LVL114-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LVL108-.Ltext0
	.long	.LVL113-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LVL109-.Ltext0
	.long	.LVL116-.Ltext0
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.long	.LVL116-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	Poly_h
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LVL120-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LVL110-.Ltext0
	.long	.LVL113-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LVL117-.Ltext0
	.long	.LVL118-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LVL128-.Ltext0
	.long	.LVL131-1-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	delta
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LVL123-.Ltext0
	.long	.LVL124-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL124-.Ltext0
	.long	.LVL125-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xcc
	.byte	0x9f
	.long	.LVL125-.Ltext0
	.long	.LVL126-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL126-.Ltext0
	.long	.LVL130-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL130-.Ltext0
	.long	.LVL131-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LVL138-.Ltext0
	.long	.LVL141-1-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	delta
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LVL133-.Ltext0
	.long	.LVL134-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL134-.Ltext0
	.long	.LVL135-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xcc
	.byte	0x9f
	.long	.LVL135-.Ltext0
	.long	.LVL136-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL136-.Ltext0
	.long	.LVL140-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL140-.Ltext0
	.long	.LVL141-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LVL149-.Ltext0
	.long	.LVL152-1-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	rncst
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LVL144-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL145-.Ltext0
	.long	.LVL146-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xcc
	.byte	0x9f
	.long	.LVL146-.Ltext0
	.long	.LVL147-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL147-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL151-.Ltext0
	.long	.LVL152-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	0x0
	.long	0x0
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "scs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "scs_private.h"
	.file 8 "crlibm_private.h"
	.file 9 "log_fast.h"
	.section	.debug_info
	.long	0xc0c
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF98
	.byte	0xc
	.long	.LASF99
	.long	.LASF100
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
	.long	.LASF101
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
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.byte	0x7f
	.long	0x342
	.uleb128 0x5
	.long	0x2ea
	.long	0x352
	.uleb128 0x6
	.long	0x30
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	.LASF102
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0x722
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x4a
	.long	0x722
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x4a
	.long	0x722
	.byte	0x1
	.byte	0x52
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x4a
	.long	0x728
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"py"
	.byte	0x1
	.byte	0x4a
	.long	0x72e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"E"
	.byte	0x1
	.byte	0x4a
	.long	0x5a
	.long	.LLST1
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0x4b
	.long	0x2d8
	.long	.LLST2
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0x4b
	.long	0x2d8
	.long	.LLST3
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.byte	0x4b
	.long	0x2d8
	.long	.LLST4
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x4b
	.long	0x2d8
	.uleb128 0x18
	.string	"z"
	.byte	0x1
	.byte	0x4c
	.long	0x2d8
	.long	.LLST5
	.uleb128 0x18
	.string	"res"
	.byte	0x1
	.byte	0x4c
	.long	0x2d8
	.long	.LLST6
	.uleb128 0x16
	.long	.LASF61
	.byte	0x1
	.byte	0x4c
	.long	0x2d8
	.long	.LLST7
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.byte	0x4c
	.long	0x2d8
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.byte	0x4d
	.long	0x5a
	.long	.LLST8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.long	0x5a
	.long	.LLST9
	.uleb128 0x19
	.long	.LBB2
	.long	.LBE2
	.long	0x46c
	.uleb128 0x18
	.string	"_z"
	.byte	0x1
	.byte	0x5d
	.long	0x2d8
	.long	.LLST10
	.uleb128 0x18
	.string	"_a"
	.byte	0x1
	.byte	0x5d
	.long	0x2d8
	.long	.LLST11
	.uleb128 0x18
	.string	"_b"
	.byte	0x1
	.byte	0x5d
	.long	0x2d8
	.long	.LLST12
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x0
	.long	0x4f3
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x6d
	.long	0x734
	.long	.LLST13
	.uleb128 0x18
	.string	"up"
	.byte	0x1
	.byte	0x6d
	.long	0x2d8
	.long	.LLST14
	.uleb128 0x18
	.string	"u1"
	.byte	0x1
	.byte	0x6d
	.long	0x2d8
	.long	.LLST15
	.uleb128 0x18
	.string	"u2"
	.byte	0x1
	.byte	0x6d
	.long	0x2d8
	.long	.LLST16
	.uleb128 0x18
	.string	"vp"
	.byte	0x1
	.byte	0x6d
	.long	0x2d8
	.long	.LLST17
	.uleb128 0x18
	.string	"v1"
	.byte	0x1
	.byte	0x6d
	.long	0x2d8
	.long	.LLST18
	.uleb128 0x18
	.string	"v2"
	.byte	0x1
	.byte	0x6d
	.long	0x2d8
	.long	.LLST19
	.uleb128 0x18
	.string	"_u"
	.byte	0x1
	.byte	0x6d
	.long	0x2d8
	.long	.LLST20
	.uleb128 0x18
	.string	"_v"
	.byte	0x1
	.byte	0x6d
	.long	0x2d8
	.long	.LLST21
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x18
	.long	0x517
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x6e
	.long	0x2d8
	.long	.LLST22
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x6e
	.long	0x2d8
	.long	.LLST23
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x38
	.long	0x59a
	.uleb128 0x18
	.string	"mh"
	.byte	0x1
	.byte	0x6f
	.long	0x2d8
	.long	.LLST24
	.uleb128 0x18
	.string	"ml"
	.byte	0x1
	.byte	0x6f
	.long	0x2d8
	.long	.LLST25
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x6f
	.long	0x734
	.long	.LLST26
	.uleb128 0x18
	.string	"up"
	.byte	0x1
	.byte	0x6f
	.long	0x2d8
	.long	.LLST27
	.uleb128 0x18
	.string	"u1"
	.byte	0x1
	.byte	0x6f
	.long	0x2d8
	.long	.LLST28
	.uleb128 0x18
	.string	"u2"
	.byte	0x1
	.byte	0x6f
	.long	0x2d8
	.long	.LLST29
	.uleb128 0x1b
	.string	"vp"
	.byte	0x1
	.byte	0x6f
	.long	0x2d8
	.uleb128 0x18
	.string	"v1"
	.byte	0x1
	.byte	0x6f
	.long	0x2d8
	.long	.LLST30
	.uleb128 0x18
	.string	"v2"
	.byte	0x1
	.byte	0x6f
	.long	0x2d8
	.long	.LLST31
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x58
	.long	0x5be
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x70
	.long	0x2d8
	.long	.LLST32
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x70
	.long	0x2d8
	.long	.LLST33
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x70
	.long	0x5ee
	.uleb128 0x1b
	.string	"_z"
	.byte	0x1
	.byte	0x79
	.long	0x2d8
	.uleb128 0x18
	.string	"_a"
	.byte	0x1
	.byte	0x79
	.long	0x2d8
	.long	.LLST34
	.uleb128 0x18
	.string	"_b"
	.byte	0x1
	.byte	0x79
	.long	0x2d8
	.long	.LLST35
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x90
	.long	0x675
	.uleb128 0x18
	.string	"mh"
	.byte	0x1
	.byte	0x7a
	.long	0x2d8
	.long	.LLST36
	.uleb128 0x18
	.string	"ml"
	.byte	0x1
	.byte	0x7a
	.long	0x2d8
	.long	.LLST37
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x7a
	.long	0x734
	.long	.LLST38
	.uleb128 0x18
	.string	"up"
	.byte	0x1
	.byte	0x7a
	.long	0x2d8
	.long	.LLST39
	.uleb128 0x18
	.string	"u1"
	.byte	0x1
	.byte	0x7a
	.long	0x2d8
	.long	.LLST40
	.uleb128 0x18
	.string	"u2"
	.byte	0x1
	.byte	0x7a
	.long	0x2d8
	.long	.LLST41
	.uleb128 0x18
	.string	"vp"
	.byte	0x1
	.byte	0x7a
	.long	0x2d8
	.long	.LLST42
	.uleb128 0x18
	.string	"v1"
	.byte	0x1
	.byte	0x7a
	.long	0x2d8
	.long	.LLST43
	.uleb128 0x18
	.string	"v2"
	.byte	0x1
	.byte	0x7a
	.long	0x2d8
	.long	.LLST44
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0xb0
	.long	0x699
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x7b
	.long	0x2d8
	.long	.LLST45
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x7b
	.long	0x2d8
	.long	.LLST46
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0xd0
	.long	0x6bd
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x7e
	.long	0x2d8
	.long	.LLST47
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x7e
	.long	0x2d8
	.long	.LLST48
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0xe8
	.long	0x6f1
	.uleb128 0x18
	.string	"_z"
	.byte	0x1
	.byte	0x86
	.long	0x2d8
	.long	.LLST49
	.uleb128 0x18
	.string	"_a"
	.byte	0x1
	.byte	0x86
	.long	0x2d8
	.long	.LLST50
	.uleb128 0x18
	.string	"_b"
	.byte	0x1
	.byte	0x86
	.long	0x2d8
	.long	.LLST51
	.byte	0x0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x18
	.string	"_z"
	.byte	0x1
	.byte	0x87
	.long	0x2d8
	.long	.LLST52
	.uleb128 0x18
	.string	"_a"
	.byte	0x1
	.byte	0x87
	.long	0x2d8
	.long	.LLST53
	.uleb128 0x18
	.string	"_b"
	.byte	0x1
	.byte	0x87
	.long	0x2d8
	.long	.LLST54
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x2d8
	.uleb128 0x8
	.byte	0x4
	.long	0x5a
	.uleb128 0x8
	.byte	0x4
	.long	0x2df
	.uleb128 0x1d
	.long	0x2d8
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.value	0x12b
	.byte	0x1
	.long	0x2d8
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.long	0x803
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.value	0x12b
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.value	0x12c
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF60
	.byte	0x1
	.value	0x12d
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF62
	.byte	0x1
	.value	0x12d
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF64
	.byte	0x1
	.value	0x12d
	.long	0x2d8
	.long	.LLST55
	.uleb128 0x23
	.string	"E"
	.byte	0x1
	.value	0x12e
	.long	0x5a
	.long	.LLST56
	.uleb128 0x21
	.long	.LASF65
	.byte	0x1
	.value	0x12e
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF66
	.byte	0x1
	.value	0x12f
	.long	0x2df
	.uleb128 0x24
	.long	.LASF67
	.byte	0x1
	.value	0x12f
	.long	0x2df
	.uleb128 0x25
	.string	"u"
	.byte	0x1
	.value	0x12f
	.long	0x2df
	.uleb128 0x25
	.string	"u53"
	.byte	0x1
	.value	0x12f
	.long	0x2df
	.uleb128 0x26
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x20
	.string	"res"
	.byte	0x1
	.value	0x15f
	.long	0x337
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.long	0x2d8
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0x8c1
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0xe1
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.byte	0xe2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF60
	.byte	0x1
	.byte	0xe3
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF62
	.byte	0x1
	.byte	0xe3
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF64
	.byte	0x1
	.byte	0xe3
	.long	0x2d8
	.long	.LLST57
	.uleb128 0x18
	.string	"E"
	.byte	0x1
	.byte	0xe4
	.long	0x5a
	.long	.LLST58
	.uleb128 0x29
	.long	.LASF65
	.byte	0x1
	.byte	0xe4
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.long	.LASF66
	.byte	0x1
	.byte	0xe5
	.long	0x2df
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.byte	0xe5
	.long	0x2df
	.uleb128 0x1b
	.string	"u"
	.byte	0x1
	.byte	0xe5
	.long	0x2df
	.uleb128 0x1b
	.string	"u53"
	.byte	0x1
	.byte	0xe5
	.long	0x2df
	.uleb128 0x26
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x20
	.string	"res"
	.byte	0x1
	.value	0x116
	.long	0x337
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.value	0x172
	.byte	0x1
	.long	0x2d8
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.long	0x8eb
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.value	0x172
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.long	0x2d8
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0x97e
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x99
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.byte	0x9a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF60
	.byte	0x1
	.byte	0x9b
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF62
	.byte	0x1
	.byte	0x9b
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF64
	.byte	0x1
	.byte	0x9b
	.long	0x2d8
	.long	.LLST59
	.uleb128 0x18
	.string	"E"
	.byte	0x1
	.byte	0x9c
	.long	0x5a
	.long	.LLST60
	.uleb128 0x29
	.long	.LASF65
	.byte	0x1
	.byte	0x9c
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x28
	.string	"res"
	.byte	0x1
	.byte	0xc5
	.long	0x337
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF72
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF73
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF74
	.byte	0x7
	.byte	0x47
	.long	0x9a3
	.uleb128 0x1d
	.long	0x2df
	.uleb128 0x17
	.long	.LASF75
	.byte	0x7
	.byte	0x48
	.long	0x9a3
	.uleb128 0x17
	.long	.LASF76
	.byte	0x7
	.byte	0x49
	.long	0x9a3
	.uleb128 0x17
	.long	.LASF77
	.byte	0x7
	.byte	0x4a
	.long	0x9a3
	.uleb128 0x17
	.long	.LASF78
	.byte	0x7
	.byte	0x4b
	.long	0x9a3
	.uleb128 0x17
	.long	.LASF79
	.byte	0x7
	.byte	0x4c
	.long	0x9a3
	.uleb128 0x17
	.long	.LASF80
	.byte	0x7
	.byte	0x4d
	.long	0x9a3
	.uleb128 0x17
	.long	.LASF81
	.byte	0x7
	.byte	0x4e
	.long	0x9a3
	.uleb128 0x17
	.long	.LASF82
	.byte	0x8
	.byte	0xca
	.long	0xa00
	.uleb128 0x1d
	.long	0x2ea
	.uleb128 0x17
	.long	.LASF83
	.byte	0x8
	.byte	0xce
	.long	0xa00
	.uleb128 0x17
	.long	.LASF84
	.byte	0x8
	.byte	0xd2
	.long	0xa00
	.uleb128 0x17
	.long	.LASF85
	.byte	0x8
	.byte	0xd6
	.long	0xa00
	.uleb128 0x17
	.long	.LASF86
	.byte	0x8
	.byte	0xda
	.long	0xa00
	.uleb128 0x28
	.string	"NaN"
	.byte	0x9
	.byte	0xe
	.long	0x9a3
	.byte	0x5
	.byte	0x3
	.long	NaN
	.uleb128 0x17
	.long	.LASF87
	.byte	0x9
	.byte	0xf
	.long	0x9a3
	.uleb128 0x1b
	.string	"Inf"
	.byte	0x9
	.byte	0x10
	.long	0x9a3
	.uleb128 0x29
	.long	.LASF88
	.byte	0x9
	.byte	0x11
	.long	0x9a3
	.byte	0x5
	.byte	0x3
	.long	NInf
	.uleb128 0x5
	.long	0x2d8
	.long	0xa79
	.uleb128 0x6
	.long	0x30
	.byte	0x3
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF89
	.byte	0x9
	.byte	0x14
	.long	0xa86
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	0xa69
	.uleb128 0x2a
	.long	.LASF90
	.byte	0x9
	.byte	0x21
	.long	0xa98
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	0xa69
	.uleb128 0x2a
	.long	.LASF91
	.byte	0x9
	.byte	0xf6
	.long	0x9a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF92
	.byte	0x9
	.byte	0xf7
	.long	0x9a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF93
	.byte	0x9
	.byte	0xf8
	.long	0x9a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x2df
	.long	0xad4
	.uleb128 0x6
	.long	0x30
	.byte	0x7
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF94
	.byte	0x9
	.byte	0xf9
	.long	0xae1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	0xac4
	.uleb128 0x5
	.long	0x2df
	.long	0xafc
	.uleb128 0x6
	.long	0x30
	.byte	0x7
	.uleb128 0x6
	.long	0x30
	.byte	0xc
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x9
	.value	0x105
	.long	0xb0a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	0xae6
	.uleb128 0x5
	.long	0x2df
	.long	0xb25
	.uleb128 0x6
	.long	0x30
	.byte	0x7
	.uleb128 0x6
	.long	0x30
	.byte	0x1
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF96
	.byte	0x9
	.value	0x189
	.long	0xb33
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	0xb0f
	.uleb128 0x2a
	.long	.LASF72
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF73
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF97
	.byte	0x8
	.byte	0x32
	.long	0x5a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	crlibm_second_step_taken
	.uleb128 0x2c
	.long	.LASF89
	.byte	0x9
	.byte	0x14
	.long	0xb76
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	delta
	.uleb128 0x1d
	.long	0xa69
	.uleb128 0x2c
	.long	.LASF90
	.byte	0x9
	.byte	0x21
	.long	0xb8d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rncst
	.uleb128 0x1d
	.long	0xa69
	.uleb128 0x2c
	.long	.LASF91
	.byte	0x9
	.byte	0xf6
	.long	0x9a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ln2hi
	.uleb128 0x2c
	.long	.LASF92
	.byte	0x9
	.byte	0xf7
	.long	0x9a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ln2lo
	.uleb128 0x2c
	.long	.LASF93
	.byte	0x9
	.byte	0xf8
	.long	0x9a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	two52
	.uleb128 0x2c
	.long	.LASF94
	.byte	0x9
	.byte	0xf9
	.long	0xbda
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	middle
	.uleb128 0x1d
	.long	0xac4
	.uleb128 0x2d
	.long	.LASF95
	.byte	0x9
	.value	0x105
	.long	0xbf2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Poly_h
	.uleb128 0x1d
	.long	0xae6
	.uleb128 0x2d
	.long	.LASF96
	.byte	0x9
	.value	0x189
	.long	0xc0a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Poly_l
	.uleb128 0x1d
	.long	0xb0f
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
	.uleb128 0x6
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xaa
	.value	0x2
	.long	.Ldebug_info0
	.long	0xc10
	.long	0x739
	.string	"log_ru"
	.long	0x803
	.string	"log_rd"
	.long	0x8c1
	.string	"log_rz"
	.long	0x8eb
	.string	"log_rn"
	.long	0xb52
	.string	"crlibm_second_step_taken"
	.long	0xb64
	.string	"delta"
	.long	0xb7b
	.string	"rncst"
	.long	0xb92
	.string	"ln2hi"
	.long	0xba4
	.string	"ln2lo"
	.long	0xbb6
	.string	"two52"
	.long	0xbc8
	.string	"middle"
	.long	0xbdf
	.string	"Poly_h"
	.long	0xbf7
	.string	"Poly_l"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x8b
	.value	0x2
	.long	.Ldebug_info0
	.long	0xc10
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB3-.Ltext0
	.long	.LBE3-.Ltext0
	.long	.LBB5-.Ltext0
	.long	.LBE5-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB4-.Ltext0
	.long	.LBE4-.Ltext0
	.long	.LBB8-.Ltext0
	.long	.LBE8-.Ltext0
	.long	.LBB6-.Ltext0
	.long	.LBE6-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB7-.Ltext0
	.long	.LBE7-.Ltext0
	.long	.LBB11-.Ltext0
	.long	.LBE11-.Ltext0
	.long	.LBB9-.Ltext0
	.long	.LBE9-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB10-.Ltext0
	.long	.LBE10-.Ltext0
	.long	.LBB12-.Ltext0
	.long	.LBE12-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB13-.Ltext0
	.long	.LBE13-.Ltext0
	.long	.LBB16-.Ltext0
	.long	.LBE16-.Ltext0
	.long	.LBB14-.Ltext0
	.long	.LBE14-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB15-.Ltext0
	.long	.LBE15-.Ltext0
	.long	.LBB19-.Ltext0
	.long	.LBE19-.Ltext0
	.long	.LBB17-.Ltext0
	.long	.LBE17-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB18-.Ltext0
	.long	.LBE18-.Ltext0
	.long	.LBB22-.Ltext0
	.long	.LBE22-.Ltext0
	.long	.LBB20-.Ltext0
	.long	.LBE20-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB21-.Ltext0
	.long	.LBE21-.Ltext0
	.long	.LBB23-.Ltext0
	.long	.LBE23-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB24-.Ltext0
	.long	.LBE24-.Ltext0
	.long	.LBB26-.Ltext0
	.long	.LBE26-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB25-.Ltext0
	.long	.LBE25-.Ltext0
	.long	.LBB28-.Ltext0
	.long	.LBE28-.Ltext0
	.long	.LBB27-.Ltext0
	.long	.LBE27-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_chain"
.LASF68:
	.string	"log_ru"
.LASF8:
	.string	"size_t"
.LASF70:
	.string	"log_rz"
.LASF78:
	.string	"radix_rng_double"
.LASF33:
	.string	"_shortbuf"
.LASF80:
	.string	"max_double"
.LASF54:
	.string	"scs_t"
.LASF21:
	.string	"_IO_buf_base"
.LASF95:
	.string	"Poly_h"
.LASF7:
	.string	"long long unsigned int"
.LASF89:
	.string	"delta"
.LASF96:
	.string	"Poly_l"
.LASF98:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF58:
	.string	"ln2_times_E_HI"
.LASF82:
	.string	"scs_zer"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF53:
	.string	"sign"
.LASF11:
	.string	"long int"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF60:
	.string	"res_hi"
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
.LASF76:
	.string	"radix_mone_double"
.LASF91:
	.string	"ln2hi"
.LASF85:
	.string	"scs_two"
.LASF44:
	.string	"_IO_marker"
.LASF72:
	.string	"stdin"
.LASF0:
	.string	"unsigned int"
.LASF100:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF83:
	.string	"scs_half"
.LASF3:
	.string	"long unsigned int"
.LASF88:
	.string	"NInf"
.LASF19:
	.string	"_IO_write_ptr"
.LASF81:
	.string	"min_double"
.LASF46:
	.string	"_sbuf"
.LASF61:
	.string	"P_hi"
.LASF2:
	.string	"short unsigned int"
.LASF23:
	.string	"_IO_save_base"
.LASF51:
	.string	"exception"
.LASF56:
	.string	"pres_lo"
.LASF97:
	.string	"crlibm_second_step_taken"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF73:
	.string	"stdout"
.LASF71:
	.string	"log_rn"
.LASF50:
	.string	"h_word"
.LASF20:
	.string	"_IO_write_end"
.LASF102:
	.string	"log_quick"
.LASF101:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF93:
	.string	"two52"
.LASF47:
	.string	"_pos"
.LASF92:
	.string	"ln2lo"
.LASF26:
	.string	"_markers"
.LASF77:
	.string	"radix_mtwo_double"
.LASF99:
	.string	"log_fast.c"
.LASF74:
	.string	"radix_one_double"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF59:
	.string	"ln2_times_E_LO"
.LASF32:
	.string	"_vtable_offset"
.LASF87:
	.string	"NNaN"
.LASF49:
	.string	"db_number"
.LASF90:
	.string	"rncst"
.LASF13:
	.string	"char"
.LASF52:
	.string	"index"
.LASF64:
	.string	"roundcst"
.LASF45:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF79:
	.string	"radix_mrng_double"
.LASF57:
	.string	"prndcstindex"
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
.LASF55:
	.string	"pres_hi"
.LASF24:
	.string	"_IO_backup_base"
.LASF65:
	.string	"rndcstindex"
.LASF63:
	.string	"P_lo"
.LASF75:
	.string	"radix_two_double"
.LASF62:
	.string	"res_lo"
.LASF66:
	.string	"absyh"
.LASF67:
	.string	"absyl"
.LASF18:
	.string	"_IO_write_base"
.LASF94:
	.string	"middle"
.LASF69:
	.string	"log_rd"
.LASF84:
	.string	"scs_one"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
