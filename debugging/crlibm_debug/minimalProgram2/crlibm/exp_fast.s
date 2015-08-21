	.file	"exp_fast.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# exp_fast.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
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
.globl exp_rd
	.type	exp_rd, @function
exp_rd:
.LFB9:
	.file 1 "exp_fast.c"
	.loc 1 359 0
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
	subl	$124, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 368 0
	fstl	-40(%ebp)	# %sfp
	.loc 1 369 0
	movl	-36(%ebp), %edx	# %sfp, D.2373
.LVL1:
	.loc 1 370 0
	movl	%edx, %eax	# D.2373, hx.96
	andl	$2147483647, %eax	#, hx.96
.LVL2:
	.loc 1 373 0
	cmpl	$1082535489, %eax	#, hx.96
	jbe	.L2	#,
	.loc 1 374 0
	cmpl	$2146435071, %eax	#, hx.96
	jbe	.L3	#,
	.loc 1 375 0
	testl	$1048575, %eax	#, hx.96
	jne	.L31	#,
	movl	-40(%ebp), %eax	# %sfp, db
.LVL3:
	testl	%eax, %eax	# db
	je	.L6	#,
.L31:
	.loc 1 376 0
	fadd	%st(0), %st	#,
	jmp	.L6	#
.LVL4:
.L3:
	.loc 1 379 0
	fldl	.LC1@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L37	#,
	fstp	%st(0)	#
	fld1
	faddl	scs_small@GOTOFF(%ebx)	# scs_small.d
	fmull	scs_huge@GOTOFF(%ebx)	# scs_huge.d
	jmp	.L6	#
.L37:
	.loc 1 380 0
	fldl	.LC3@GOTOFF(%ebx)	#
	fucomip	%st(1), %st	#,
	jbe	.L2	#,
	fstp	%st(0)	#
	fldl	scs_small@GOTOFF(%ebx)	# scs_small.d
	fmul	%st(0), %st	#,
	jmp	.L6	#
.L2:
	.loc 1 383 0
	cmpl	$1017118719, %eax	#, hx.96
	ja	.L10	#,
	fstp	%st(0)	#
	.loc 1 384 0
	testl	%eax, %eax	# hx.96
	jne	.L11	#,
	movl	-40(%ebp), %eax	# %sfp, db
.LVL5:
	testl	%eax, %eax	# db
	jne	.L11	#,
	fld1
	jmp	.L6	#
.L11:
	.loc 1 386 0
	testl	%edx, %edx	# D.2373
	.p2align 4,,2
	jns	.L12	#,
	fldl	.LC4@GOTOFF(%ebx)	#
	jmp	.L6	#
.L12:
	.loc 1 389 0
	fld1
	faddl	scs_small@GOTOFF(%ebx)	# scs_small.d
	jmp	.L6	#
.LVL6:
.L10:
.LBB11:
	.loc 1 392 0
	fld	%st(0)	#
	fmull	.LC5@GOTOFF(%ebx)	#
	fadds	.LC6@GOTOFF(%ebx)	#
	fstpl	-40(%ebp)	# %sfp
	movl	-40(%ebp), %eax	# %sfp, k
.LVL7:
.LBE11:
	testl	%eax, %eax	# k
	jne	.L13	#,
	fld	%st(0)	#
	fldz
	fstpl	-104(%ebp)	# %sfp
	jmp	.L14	#
.L13:
	movl	%eax, -28(%ebp)	# k,
	fildl	-28(%ebp)	#
	fld	%st(0)	#
	fmull	.LC7@GOTOFF(%ebx)	#
	fsubr	%st(2), %st	#,
	fxch	%st(1)	#
.LVL8:
	fmull	.LC8@GOTOFF(%ebx)	#
.LVL9:
.LBB12:
	fld	%st(1)	#
.LVL10:
	fadd	%st(1), %st	#,
.LVL11:
	fld	%st(2)	#
.LVL12:
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L17	#,
	fchs
.L17:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L39	#,
	fchs
	fxch	%st(1)	#
.LVL13:
	jmp	.L20	#
.LVL14:
.L39:
	fxch	%st(1)	#
.LVL15:
.L20:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L38	#,
.LVL16:
	fsub	%st, %st(2)	#,
.LVL17:
	fxch	%st(1)	#
	fsubp	%st, %st(2)	#,
.LVL18:
	fxch	%st(1)	#
	fstpl	-104(%ebp)	# %sfp
.LVL19:
	jmp	.L14	#
.LVL20:
.L38:
	fsub	%st, %st(1)	#,
.LVL21:
	fxch	%st(2)	#
	fsubp	%st, %st(1)	#,
.LVL22:
	fstpl	-104(%ebp)	# %sfp
.LVL23:
.L14:
.LBE12:
	flds	.LC9@GOTOFF(%ebx)	#
.LVL24:
	fld	%st(1)	#
	fadd	%st(1), %st	#,
	fstl	-40(%ebp)	# %sfp
	movl	-40(%ebp), %edx	# %sfp, indx
.LVL25:
	addl	$89, %edx	#, indx.103
.LVL26:
	fsubp	%st, %st(1)	#,
	fsubrp	%st, %st(1)	#,
	fstl	-80(%ebp)	# %sfp
.LVL27:
.LBB13:
	fldl	-104(%ebp)	# %sfp
.LVL28:
	faddp	%st, %st(1)	#,
.LVL29:
.LBE13:
	movl	%edx, %ecx	# indx.103, tmp149
	sall	$4, %ecx	#, tmp149
	fldl	tab_exp@GOTOFF(%ebx,%ecx)	# <variable>.d
.LVL30:
	leal	1(%edx,%edx), %edx	#, tmp151
.LVL31:
	fldl	tab_exp@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	-112(%ebp)	# %sfp
.LVL32:
	fld	%st(1)	#
	fmul	%st(2), %st	#,
	fstl	-56(%ebp)	# %sfp
.LVL33:
	fmuls	.LC10@GOTOFF(%ebx)	#
.LVL34:
.LBB14:
	fldl	.LC11@GOTOFF(%ebx)	#
	fld	%st(2)	#
	fmul	%st(1), %st	#,
.LVL35:
	fld	%st(4)	#
	fmul	%st(2), %st	#,
.LVL36:
	fld	%st(4)	#
.LVL37:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL38:
	fld	%st(5)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL39:
	fstl	-40(%ebp)	# %sfp
.LVL40:
	fld	%st(4)	#
.LVL41:
	fsub	%st(2), %st	#,
	fxch	%st(1)	#
.LVL42:
	fsubr	%st(6), %st	#,
.LVL43:
	fstpl	-96(%ebp)	# %sfp
.LVL44:
	fld	%st(5)	#
.LVL45:
	fmul	%st(5), %st	#,
	fstpl	-64(%ebp)	# %sfp
	fxch	%st(2)	#
.LVL46:
.LBE14:
.LBB15:
	fmul	%st(3), %st	#,
.LVL47:
	fld	%st(3)	#
.LVL48:
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL49:
	fld	%st(3)	#
.LVL50:
	fsub	%st(1), %st	#,
	fstpl	-88(%ebp)	# %sfp
.LVL51:
	fld	%st(4)	#
.LVL52:
	fmul	%st(4), %st	#,
	fstpl	-48(%ebp)	# %sfp
.LVL53:
.LBE15:
	fld	%st(5)	#
.LVL54:
	fmull	.LC12@GOTOFF(%ebx)	#
	faddl	.LC13@GOTOFF(%ebx)	#
	fmul	%st(6), %st	#,
	faddl	.LC14@GOTOFF(%ebx)	#
	fmul	%st(6), %st	#,
	faddl	.LC15@GOTOFF(%ebx)	#
	fstpl	-72(%ebp)	# %sfp
	fldl	-56(%ebp)	# %sfp
	fmul	%st(6), %st	#,
	fmull	-72(%ebp)	# %sfp
	fmul	%st(5), %st	#,
	fstpl	-56(%ebp)	# %sfp
.LVL55:
.LBB16:
	fld	%st(1)	#
.LVL56:
	fmul	%st(1), %st	#,
	fsubl	-48(%ebp)	# %sfp
	fstpl	-72(%ebp)	# %sfp
	fldl	-88(%ebp)	# %sfp
	fmul	%st(2), %st	#,
	faddl	-72(%ebp)	# %sfp
	fxch	%st(1)	#
	fmul	%st(3), %st	#,
	faddp	%st, %st(1)	#,
	fldl	-88(%ebp)	# %sfp
	fmul	%st(3), %st	#,
	faddp	%st, %st(1)	#,
	fxch	%st(3)	#
.LVL57:
.LBE16:
	fadd	%st(5), %st	#,
	fmull	-112(%ebp)	# %sfp
	fxch	%st(5)	#
.LVL58:
.LBB17:
	fsubl	-80(%ebp)	# %sfp
	fsubrl	-104(%ebp)	# %sfp
.LBE17:
	fmul	%st(4), %st	#,
	faddp	%st, %st(5)	#,
	fxch	%st(2)	#
.LVL59:
	faddp	%st, %st(4)	#,
.LVL60:
.LBB18:
	fldl	-40(%ebp)	# %sfp
	fmul	%st(2), %st	#,
	fsubl	-64(%ebp)	# %sfp
	fxch	%st(2)	#
	fmull	-96(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fldl	-40(%ebp)	# %sfp
	fmul	%st(1), %st	#,
	faddp	%st, %st(2)	#,
	fmull	-96(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
.LBE18:
	faddl	-112(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	faddl	-56(%ebp)	# %sfp
.LVL61:
.LBB19:
	fldl	-48(%ebp)	# %sfp
.LVL62:
	fadd	%st(1), %st	#,
.LVL63:
.LBE19:
.LBB20:
	fldl	-64(%ebp)	# %sfp
.LVL64:
	fadd	%st(1), %st	#,
	fxch	%st(2)	#
.LVL65:
.LBE20:
.LBB21:
	fsubr	%st(1), %st	#,
.LVL66:
	fsubrl	-48(%ebp)	# %sfp
.LBE21:
.LBB22:
	fldl	-64(%ebp)	# %sfp
	fsubr	%st(3), %st	#,
	fsubrp	%st, %st(2)	#,
.LBE22:
	faddp	%st, %st(1)	#,
.LVL67:
.LBB23:
	fld	%st(2)	#
	fadd	%st(2), %st	#,
.LVL68:
	fsub	%st, %st(3)	#,
.LVL69:
	fxch	%st(3)	#
.LVL70:
	fsubrp	%st, %st(2)	#,
.LVL71:
.LBE23:
	faddp	%st, %st(1)	#,
.LVL72:
.LBB24:
	fld	%st(1)	#
.LVL73:
	fadd	%st(1), %st	#,
	fstl	-48(%ebp)	# %sfp
.LVL74:
	fsubp	%st, %st(2)	#,
.LVL75:
	fsubp	%st, %st(1)	#,
.LVL76:
	fstpl	-40(%ebp)	# %sfp
.LBE24:
	.loc 1 394 0
	movl	-44(%ebp), %ecx	# %sfp, D.2490
.LVL77:
	.loc 1 396 0
	movl	-36(%ebp), %edx	# %sfp, D.2493
.LVL78:
	.loc 1 394 0
	movl	%ecx, %edi	# D.2490, tmp207
	andl	$2146435072, %edi	#, tmp207
	subl	$73400320, %edi	#, tmp208
	.loc 1 396 0
	movl	%edx, %esi	# D.2493, tmp209
	andl	$2146435072, %esi	#, tmp209
	cmpl	%esi, %edi	# tmp209, tmp208
	jge	.L23	#,
	fstp	%st(0)	#
	.loc 1 398 0
	cmpl	$-1019, %eax	#, k
	jl	.L24	#,
	.loc 1 399 0
	cmpl	$1019, %eax	#, k
	jg	.L25	#,
	.loc 1 400 0
	sall	$20, %eax	#, tmp210
	addl	%ecx, %eax	# D.2490,
	movl	%eax, -44(%ebp)	#, %sfp
	jmp	.L26	#
.L25:
	.loc 1 403 0
	sall	$20, %eax	#, tmp213
	leal	-1048576000(%eax,%ecx), %eax	#,
	movl	%eax, -44(%ebp)	#, %sfp
	.loc 1 404 0
	fldl	-48(%ebp)	# %sfp
	fmull	.LC16@GOTOFF(%ebx)	#
	fstpl	-48(%ebp)	# %sfp
.L26:
	.loc 1 407 0
	movl	%edx, %ecx	# D.2493,
	sarl	$31, %ecx	#,
	movl	%ecx, %edx	#, tmp227
	xorl	%ecx, %ecx	#
	shrl	$31, %edx	#, tmp227
	subl	%edx, -48(%ebp)	# tmp227, %sfp
	sbbl	%ecx, -44(%ebp)	#, %sfp
	.loc 1 409 0
	fldl	-48(%ebp)	# %sfp
	jmp	.L6	#
.L24:
	.loc 1 413 0
	sall	$20, %eax	#, tmp219
	leal	1048576000(%eax,%ecx), %eax	#,
	movl	%eax, -44(%ebp)	#, %sfp
	.loc 1 414 0
	fldl	-48(%ebp)	# %sfp
	fld	%st(0)	#
	fmull	.LC17@GOTOFF(%ebx)	#
	fstl	-64(%ebp)	# %sfp
	fstpl	-40(%ebp)	# %sfp
	.loc 1 420 0
	movl	-36(%ebp), %eax	# %sfp,
	movl	%eax, -44(%ebp)	#, %sfp
	.loc 1 421 0
	movl	-40(%ebp), %eax	# %sfp,
	movl	%eax, -48(%ebp)	#, %sfp
	.loc 1 423 0
	fldl	-48(%ebp)	# %sfp
	fmull	.LC16@GOTOFF(%ebx)	#
	fsubrp	%st, %st(1)	#,
	fstpl	-48(%ebp)	# %sfp
	.loc 1 427 0
	movl	-44(%ebp), %eax	# %sfp, temp.113
	testl	%eax, %eax	# temp.113
	js	.L28	#,
	testl	%eax, %eax	# temp.113
	jne	.L29	#,
	testl	%edx, %edx	# D.2493
	jns	.L29	#,
.L28:
	.loc 1 428 0
	movl	-64(%ebp), %eax	# %sfp,
	movl	-60(%ebp), %edx	# %sfp,
	addl	$-1, %eax	#,
	adcl	$-1, %edx	#,
	movl	%eax, -40(%ebp)	#, %sfp
	movl	%edx, -36(%ebp)	#, %sfp
.L29:
	.loc 1 430 0
	fldl	-40(%ebp)	# %sfp
	jmp	.L6	#
.L23:
	.loc 1 434 0
	fstpl	(%esp)	#
	call	scs_exp_rd@PLT	#
.LVL79:
.L6:
	.loc 1 436 0
	addl	$124, %esp	#,
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
.LFE9:
	.size	exp_rd, .-exp_rd
.globl exp_ru
	.type	exp_ru, @function
exp_ru:
.LFB8:
	.loc 1 270 0
	.cfi_startproc
.LVL80:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$124, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 280 0
	fstl	-40(%ebp)	# %sfp
	.loc 1 281 0
	movl	-36(%ebp), %edx	# %sfp, D.2151
.LVL81:
	.loc 1 282 0
	movl	%edx, %eax	# D.2151, hx.126
	andl	$2147483647, %eax	#, hx.126
.LVL82:
	.loc 1 285 0
	cmpl	$1082535489, %eax	#, hx.126
	jbe	.L41	#,
	.loc 1 286 0
	cmpl	$2146435071, %eax	#, hx.126
	jbe	.L42	#,
	.loc 1 287 0
	testl	$1048575, %eax	#, hx.126
	jne	.L70	#,
	movl	-40(%ebp), %eax	# %sfp, db
.LVL83:
	testl	%eax, %eax	# db
	je	.L43	#,
.L70:
	.loc 1 288 0
	fadd	%st(0), %st	#,
	jmp	.L45	#
.L43:
	.loc 1 289 0
	testl	%edx, %edx	# D.2151
	.p2align 4,,2
	jns	.L45	#,
	fstp	%st(0)	#
	fldz
	.p2align 4,,3
	jmp	.L45	#
.LVL84:
.L42:
	.loc 1 291 0
	fldl	.LC1@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L76	#,
	fstp	%st(0)	#
	fldl	scs_huge@GOTOFF(%ebx)	# scs_huge.d
	fmul	%st(0), %st	#,
	jmp	.L45	#
.L76:
	.loc 1 292 0
	fldl	.LC3@GOTOFF(%ebx)	#
	fucomip	%st(1), %st	#,
	jbe	.L41	#,
	fstp	%st(0)	#
	fldl	scs_small@GOTOFF(%ebx)	# scs_small.d
	fld	%st(0)	#
	fadds	.LC2@GOTOFF(%ebx)	#
	fmulp	%st, %st(1)	#,
	jmp	.L45	#
.L41:
	.loc 1 295 0
	cmpl	$1017118719, %eax	#, hx.126
	ja	.L49	#,
	fstp	%st(0)	#
	.loc 1 296 0
	testl	%eax, %eax	# hx.126
	jne	.L50	#,
	movl	-40(%ebp), %eax	# %sfp, db
.LVL85:
	testl	%eax, %eax	# db
	jne	.L50	#,
	fld1
	jmp	.L45	#
.L50:
	.loc 1 298 0
	testl	%edx, %edx	# D.2151
	.p2align 4,,2
	js	.L51	#,
	fldl	.LC18@GOTOFF(%ebx)	#
	jmp	.L45	#
.L51:
	.loc 1 299 0
	fld1
	faddl	scs_small@GOTOFF(%ebx)	# scs_small.d
	jmp	.L45	#
.LVL86:
.L49:
.LBB34:
	.loc 1 304 0
	fld	%st(0)	#
	fmull	.LC5@GOTOFF(%ebx)	#
	fadds	.LC6@GOTOFF(%ebx)	#
	fstpl	-40(%ebp)	# %sfp
	movl	-40(%ebp), %eax	# %sfp, k
.LVL87:
.LBE34:
	testl	%eax, %eax	# k
	jne	.L52	#,
	fld	%st(0)	#
	fldz
	fstpl	-104(%ebp)	# %sfp
	jmp	.L53	#
.L52:
	movl	%eax, -28(%ebp)	# k,
	fildl	-28(%ebp)	#
	fld	%st(0)	#
	fmull	.LC7@GOTOFF(%ebx)	#
	fsubr	%st(2), %st	#,
	fxch	%st(1)	#
.LVL88:
	fmull	.LC8@GOTOFF(%ebx)	#
.LVL89:
.LBB35:
	fld	%st(1)	#
.LVL90:
	fadd	%st(1), %st	#,
.LVL91:
	fld	%st(2)	#
.LVL92:
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L56	#,
	fchs
.L56:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L78	#,
	fchs
	fxch	%st(1)	#
.LVL93:
	jmp	.L59	#
.LVL94:
.L78:
	fxch	%st(1)	#
.LVL95:
.L59:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L77	#,
.LVL96:
	fsub	%st, %st(2)	#,
.LVL97:
	fxch	%st(1)	#
	fsubp	%st, %st(2)	#,
.LVL98:
	fxch	%st(1)	#
	fstpl	-104(%ebp)	# %sfp
.LVL99:
	jmp	.L53	#
.LVL100:
.L77:
	fsub	%st, %st(1)	#,
.LVL101:
	fxch	%st(2)	#
	fsubp	%st, %st(1)	#,
.LVL102:
	fstpl	-104(%ebp)	# %sfp
.LVL103:
.L53:
.LBE35:
	flds	.LC9@GOTOFF(%ebx)	#
.LVL104:
	fld	%st(1)	#
	fadd	%st(1), %st	#,
	fstl	-40(%ebp)	# %sfp
	movl	-40(%ebp), %edx	# %sfp, indx
.LVL105:
	addl	$89, %edx	#, indx.132
.LVL106:
	fsubp	%st, %st(1)	#,
	fsubrp	%st, %st(1)	#,
	fstl	-80(%ebp)	# %sfp
.LVL107:
.LBB36:
	fldl	-104(%ebp)	# %sfp
.LVL108:
	faddp	%st, %st(1)	#,
.LVL109:
.LBE36:
	movl	%edx, %ecx	# indx.132, tmp148
	sall	$4, %ecx	#, tmp148
	fldl	tab_exp@GOTOFF(%ebx,%ecx)	# <variable>.d
.LVL110:
	leal	1(%edx,%edx), %edx	#, tmp150
.LVL111:
	fldl	tab_exp@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	-112(%ebp)	# %sfp
.LVL112:
	fld	%st(1)	#
	fmul	%st(2), %st	#,
	fstl	-64(%ebp)	# %sfp
.LVL113:
	fmuls	.LC10@GOTOFF(%ebx)	#
.LVL114:
.LBB37:
	fldl	.LC11@GOTOFF(%ebx)	#
	fld	%st(2)	#
	fmul	%st(1), %st	#,
.LVL115:
	fld	%st(4)	#
	fmul	%st(2), %st	#,
.LVL116:
	fld	%st(4)	#
.LVL117:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL118:
	fld	%st(5)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL119:
	fstl	-40(%ebp)	# %sfp
.LVL120:
	fld	%st(4)	#
.LVL121:
	fsub	%st(2), %st	#,
	fxch	%st(1)	#
.LVL122:
	fsubr	%st(6), %st	#,
.LVL123:
	fstpl	-96(%ebp)	# %sfp
.LVL124:
	fld	%st(5)	#
.LVL125:
	fmul	%st(5), %st	#,
	fstpl	-56(%ebp)	# %sfp
	fxch	%st(2)	#
.LVL126:
.LBE37:
.LBB38:
	fmul	%st(3), %st	#,
.LVL127:
	fld	%st(3)	#
.LVL128:
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL129:
	fld	%st(3)	#
.LVL130:
	fsub	%st(1), %st	#,
	fstpl	-88(%ebp)	# %sfp
.LVL131:
	fld	%st(4)	#
.LVL132:
	fmul	%st(4), %st	#,
	fstpl	-48(%ebp)	# %sfp
.LVL133:
.LBE38:
	fld	%st(5)	#
.LVL134:
	fmull	.LC12@GOTOFF(%ebx)	#
	faddl	.LC13@GOTOFF(%ebx)	#
	fmul	%st(6), %st	#,
	faddl	.LC14@GOTOFF(%ebx)	#
	fmul	%st(6), %st	#,
	faddl	.LC15@GOTOFF(%ebx)	#
	fstpl	-72(%ebp)	# %sfp
	fldl	-64(%ebp)	# %sfp
	fmul	%st(6), %st	#,
	fmull	-72(%ebp)	# %sfp
	fmul	%st(5), %st	#,
	fstpl	-64(%ebp)	# %sfp
.LVL135:
.LBB39:
	fld	%st(1)	#
.LVL136:
	fmul	%st(1), %st	#,
	fsubl	-48(%ebp)	# %sfp
	fstpl	-72(%ebp)	# %sfp
	fldl	-88(%ebp)	# %sfp
	fmul	%st(2), %st	#,
	faddl	-72(%ebp)	# %sfp
	fxch	%st(1)	#
	fmul	%st(3), %st	#,
	faddp	%st, %st(1)	#,
	fldl	-88(%ebp)	# %sfp
	fmul	%st(3), %st	#,
	faddp	%st, %st(1)	#,
	fxch	%st(3)	#
.LVL137:
.LBE39:
	fadd	%st(5), %st	#,
	fmull	-112(%ebp)	# %sfp
	fxch	%st(5)	#
.LVL138:
.LBB40:
	fsubl	-80(%ebp)	# %sfp
	fsubrl	-104(%ebp)	# %sfp
.LBE40:
	fmul	%st(4), %st	#,
	faddp	%st, %st(5)	#,
	fxch	%st(2)	#
.LVL139:
	faddp	%st, %st(4)	#,
.LVL140:
.LBB41:
	fldl	-40(%ebp)	# %sfp
	fmul	%st(2), %st	#,
	fsubl	-56(%ebp)	# %sfp
	fxch	%st(2)	#
	fmull	-96(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fldl	-40(%ebp)	# %sfp
	fmul	%st(1), %st	#,
	faddp	%st, %st(2)	#,
	fmull	-96(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
.LBE41:
	faddl	-112(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	faddl	-64(%ebp)	# %sfp
.LVL141:
.LBB42:
	fldl	-48(%ebp)	# %sfp
.LVL142:
	fadd	%st(1), %st	#,
.LVL143:
.LBE42:
.LBB43:
	fldl	-56(%ebp)	# %sfp
.LVL144:
	fadd	%st(1), %st	#,
	fxch	%st(2)	#
.LVL145:
.LBE43:
.LBB44:
	fsubr	%st(1), %st	#,
.LVL146:
	fsubrl	-48(%ebp)	# %sfp
.LBE44:
.LBB45:
	fldl	-56(%ebp)	# %sfp
	fsubr	%st(3), %st	#,
	fsubrp	%st, %st(2)	#,
.LBE45:
	faddp	%st, %st(1)	#,
.LVL147:
.LBB46:
	fld	%st(2)	#
	fadd	%st(2), %st	#,
.LVL148:
	fsub	%st, %st(3)	#,
.LVL149:
	fxch	%st(3)	#
.LVL150:
	fsubrp	%st, %st(2)	#,
.LVL151:
.LBE46:
	faddp	%st, %st(1)	#,
.LVL152:
.LBB47:
	fld	%st(1)	#
.LVL153:
	fadd	%st(1), %st	#,
	fstl	-48(%ebp)	# %sfp
.LVL154:
	fsubp	%st, %st(2)	#,
.LVL155:
	fsubp	%st, %st(1)	#,
.LVL156:
	fstpl	-40(%ebp)	# %sfp
.LBE47:
	.loc 1 306 0
	movl	-44(%ebp), %edx	# %sfp, D.2267
.LVL157:
	.loc 1 308 0
	movl	-36(%ebp), %ecx	# %sfp, D.2270
.LVL158:
	.loc 1 306 0
	movl	%edx, %edi	# D.2267, tmp206
	andl	$2146435072, %edi	#, tmp206
	subl	$73400320, %edi	#, tmp207
	.loc 1 308 0
	movl	%ecx, %esi	# D.2270, tmp208
	andl	$2146435072, %esi	#, tmp208
	cmpl	%esi, %edi	# tmp208, tmp207
	jge	.L62	#,
	fstp	%st(0)	#
	.loc 1 310 0
	cmpl	$-1019, %eax	#, k
	jl	.L63	#,
	.loc 1 311 0
	cmpl	$1019, %eax	#, k
	jg	.L64	#,
	.loc 1 312 0
	sall	$20, %eax	#, tmp209
	addl	%edx, %eax	# D.2267,
	movl	%eax, -44(%ebp)	#, %sfp
	jmp	.L65	#
.L64:
	.loc 1 315 0
	sall	$20, %eax	#, tmp212
	leal	-1048576000(%eax,%edx), %eax	#,
	movl	%eax, -44(%ebp)	#, %sfp
	.loc 1 316 0
	fldl	-48(%ebp)	# %sfp
	fmull	.LC16@GOTOFF(%ebx)	#
	fstpl	-48(%ebp)	# %sfp
.L65:
	.loc 1 318 0
	testl	%ecx, %ecx	# D.2270
	jle	.L66	#,
	.loc 1 319 0
	addl	$1, -48(%ebp)	#, %sfp
	adcl	$0, -44(%ebp)	#, %sfp
.L66:
	.loc 1 321 0
	fldl	-48(%ebp)	# %sfp
	jmp	.L45	#
.L63:
	.loc 1 325 0
	sall	$20, %eax	#, tmp218
	leal	1048576000(%eax,%edx), %eax	#,
	movl	%eax, -44(%ebp)	#, %sfp
	.loc 1 326 0
	fldl	-48(%ebp)	# %sfp
	fld	%st(0)	#
	fmull	.LC17@GOTOFF(%ebx)	#
	fstl	-56(%ebp)	# %sfp
	fstpl	-40(%ebp)	# %sfp
	.loc 1 332 0
	movl	-36(%ebp), %eax	# %sfp,
	movl	%eax, -44(%ebp)	#, %sfp
	.loc 1 333 0
	movl	-40(%ebp), %edx	# %sfp,
	movl	%edx, -48(%ebp)	#, %sfp
	.loc 1 335 0
	fldl	-48(%ebp)	# %sfp
	fmull	.LC16@GOTOFF(%ebx)	#
	fsubrp	%st, %st(1)	#,
	fstpl	-48(%ebp)	# %sfp
	.loc 1 339 0
	movl	-44(%ebp), %eax	# %sfp, temp.142
	testl	%eax, %eax	# temp.142
	jg	.L67	#,
	testl	%eax, %eax	# temp.142
	jne	.L68	#,
	testl	%ecx, %ecx	# D.2270
	jle	.L68	#,
.L67:
	.loc 1 340 0
	movl	-56(%ebp), %eax	# %sfp,
	movl	-52(%ebp), %edx	# %sfp,
	addl	$1, %eax	#,
	adcl	$0, %edx	#,
	movl	%eax, -40(%ebp)	#, %sfp
	movl	%edx, -36(%ebp)	#, %sfp
.L68:
	.loc 1 342 0
	fldl	-40(%ebp)	# %sfp
	jmp	.L45	#
.L62:
	.loc 1 346 0
	fstpl	(%esp)	#
	call	scs_exp_ru@PLT	#
.LVL159:
.L45:
	.loc 1 348 0
	addl	$124, %esp	#,
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
.LFE8:
	.size	exp_ru, .-exp_ru
.globl exp_rn
	.type	exp_rn, @function
exp_rn:
.LFB7:
	.loc 1 176 0
	.cfi_startproc
.LVL160:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%esi	#
	pushl	%ebx	#
	subl	$112, %esp	#,
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 186 0
	fstl	-24(%ebp)	# %sfp
	.loc 1 187 0
	movl	-20(%ebp), %edx	# %sfp, D.1918
.LVL161:
	.loc 1 188 0
	movl	%edx, %eax	# D.1918, hx.155
	andl	$2147483647, %eax	#, hx.155
.LVL162:
	.loc 1 191 0
	cmpl	$1082535489, %eax	#, hx.155
	jbe	.L80	#,
	.loc 1 192 0
	cmpl	$2146435071, %eax	#, hx.155
	jbe	.L81	#,
	.loc 1 193 0
	testl	$1048575, %eax	#, hx.155
	jne	.L109	#,
	movl	-24(%ebp), %eax	# %sfp, db
.LVL163:
	testl	%eax, %eax	# db
	je	.L82	#,
.L109:
	.loc 1 194 0
	fadd	%st(0), %st	#,
	jmp	.L84	#
.L82:
	.loc 1 195 0
	testl	%edx, %edx	# D.1918
	.p2align 4,,2
	jns	.L84	#,
	fstp	%st(0)	#
	fldz
	.p2align 4,,3
	jmp	.L84	#
.LVL164:
.L81:
	.loc 1 197 0
	fldl	.LC1@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L117	#,
	fstp	%st(0)	#
	fldl	scs_huge@GOTOFF(%ebx)	# scs_huge.d
	fmul	%st(0), %st	#,
	jmp	.L84	#
.L117:
	.loc 1 198 0
	fldl	.LC3@GOTOFF(%ebx)	#
	fucomip	%st(1), %st	#,
	jbe	.L80	#,
	fstp	%st(0)	#
	fldl	scs_small@GOTOFF(%ebx)	# scs_small.d
	fmul	%st(0), %st	#,
	jmp	.L84	#
.L80:
	.loc 1 201 0
	cmpl	$1016070143, %eax	#, hx.155
	ja	.L88	#,
	fstp	%st(0)	#
	.loc 1 202 0
	testl	%eax, %eax	# hx.155
	jne	.L89	#,
	movl	-24(%ebp), %eax	# %sfp, db
.LVL165:
	testl	%eax, %eax	# db
	jne	.L89	#,
	fld1
	jmp	.L84	#
.L89:
	fld1
	faddl	scs_small@GOTOFF(%ebx)	# scs_small.d
	jmp	.L84	#
.LVL166:
.L88:
.LBB57:
	.loc 1 204 0
	fld	%st(0)	#
	fmull	.LC5@GOTOFF(%ebx)	#
	fadds	.LC6@GOTOFF(%ebx)	#
	fstpl	-24(%ebp)	# %sfp
	movl	-24(%ebp), %eax	# %sfp, k
.LVL167:
.LBE57:
	testl	%eax, %eax	# k
	jne	.L90	#,
	fld	%st(0)	#
	fldz
	fstpl	-88(%ebp)	# %sfp
	jmp	.L91	#
.L90:
	movl	%eax, -12(%ebp)	# k,
	fildl	-12(%ebp)	#
	fld	%st(0)	#
	fmull	.LC7@GOTOFF(%ebx)	#
	fsubr	%st(2), %st	#,
	fxch	%st(1)	#
.LVL168:
	fmull	.LC8@GOTOFF(%ebx)	#
.LVL169:
.LBB58:
	fld	%st(1)	#
.LVL170:
	fadd	%st(1), %st	#,
.LVL171:
	fld	%st(2)	#
.LVL172:
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L94	#,
	fchs
.L94:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L120	#,
	fchs
	fxch	%st(1)	#
.LVL173:
	jmp	.L97	#
.LVL174:
.L120:
	fxch	%st(1)	#
.LVL175:
.L97:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L118	#,
.LVL176:
	fsub	%st, %st(2)	#,
.LVL177:
	fxch	%st(1)	#
	fsubp	%st, %st(2)	#,
.LVL178:
	fxch	%st(1)	#
	fstpl	-88(%ebp)	# %sfp
.LVL179:
	jmp	.L91	#
.LVL180:
.L118:
	fsub	%st, %st(1)	#,
.LVL181:
	fxch	%st(2)	#
	fsubp	%st, %st(1)	#,
.LVL182:
	fstpl	-88(%ebp)	# %sfp
.LVL183:
.L91:
.LBE58:
	flds	.LC9@GOTOFF(%ebx)	#
.LVL184:
	fld	%st(1)	#
	fadd	%st(1), %st	#,
	fstl	-24(%ebp)	# %sfp
	movl	-24(%ebp), %edx	# %sfp, indx
.LVL185:
	addl	$89, %edx	#, indx.161
.LVL186:
	fsubp	%st, %st(1)	#,
	fsubrp	%st, %st(1)	#,
	fstl	-64(%ebp)	# %sfp
.LVL187:
.LBB59:
	fldl	-88(%ebp)	# %sfp
.LVL188:
	faddp	%st, %st(1)	#,
.LVL189:
.LBE59:
	movl	%edx, %ecx	# indx.161, tmp147
	sall	$4, %ecx	#, tmp147
	fldl	tab_exp@GOTOFF(%ebx,%ecx)	# <variable>.d
.LVL190:
	leal	1(%edx,%edx), %edx	#, tmp149
.LVL191:
	fldl	tab_exp@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	-96(%ebp)	# %sfp
.LVL192:
	fld	%st(1)	#
	fmul	%st(2), %st	#,
	fstl	-48(%ebp)	# %sfp
.LVL193:
	fmuls	.LC10@GOTOFF(%ebx)	#
.LVL194:
.LBB60:
	fldl	.LC11@GOTOFF(%ebx)	#
	fld	%st(2)	#
	fmul	%st(1), %st	#,
.LVL195:
	fld	%st(4)	#
	fmul	%st(2), %st	#,
.LVL196:
	fld	%st(4)	#
.LVL197:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL198:
	fld	%st(5)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL199:
	fstl	-24(%ebp)	# %sfp
.LVL200:
	fld	%st(4)	#
.LVL201:
	fsub	%st(2), %st	#,
	fxch	%st(1)	#
.LVL202:
	fsubr	%st(6), %st	#,
.LVL203:
	fstpl	-80(%ebp)	# %sfp
.LVL204:
	fld	%st(5)	#
.LVL205:
	fmul	%st(5), %st	#,
	fstpl	-40(%ebp)	# %sfp
	fxch	%st(2)	#
.LVL206:
.LBE60:
.LBB61:
	fmul	%st(3), %st	#,
.LVL207:
	fld	%st(3)	#
.LVL208:
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL209:
	fld	%st(3)	#
.LVL210:
	fsub	%st(1), %st	#,
	fstpl	-72(%ebp)	# %sfp
.LVL211:
	fld	%st(4)	#
.LVL212:
	fmul	%st(4), %st	#,
	fstpl	-32(%ebp)	# %sfp
.LVL213:
.LBE61:
	fld	%st(5)	#
.LVL214:
	fmull	.LC12@GOTOFF(%ebx)	#
	faddl	.LC13@GOTOFF(%ebx)	#
	fmul	%st(6), %st	#,
	faddl	.LC14@GOTOFF(%ebx)	#
	fmul	%st(6), %st	#,
	faddl	.LC15@GOTOFF(%ebx)	#
	fstpl	-56(%ebp)	# %sfp
	fldl	-48(%ebp)	# %sfp
	fmul	%st(6), %st	#,
	fmull	-56(%ebp)	# %sfp
	fmul	%st(5), %st	#,
	fstpl	-48(%ebp)	# %sfp
.LVL215:
.LBB62:
	fld	%st(1)	#
.LVL216:
	fmul	%st(1), %st	#,
	fsubl	-32(%ebp)	# %sfp
	fstpl	-56(%ebp)	# %sfp
	fldl	-72(%ebp)	# %sfp
	fmul	%st(2), %st	#,
	faddl	-56(%ebp)	# %sfp
	fxch	%st(1)	#
	fmul	%st(3), %st	#,
	faddp	%st, %st(1)	#,
	fldl	-72(%ebp)	# %sfp
	fmul	%st(3), %st	#,
	faddp	%st, %st(1)	#,
.LBE62:
	fld	%st(5)	#
	faddp	%st, %st(4)	#,
.LVL217:
	fxch	%st(3)	#
.LVL218:
	fmull	-96(%ebp)	# %sfp
	fxch	%st(5)	#
.LBB63:
	fsubl	-64(%ebp)	# %sfp
	fsubrl	-88(%ebp)	# %sfp
.LBE63:
	fmul	%st(4), %st	#,
	faddp	%st, %st(5)	#,
	fxch	%st(2)	#
.LVL219:
	faddp	%st, %st(4)	#,
.LBB64:
	fldl	-24(%ebp)	# %sfp
	fmul	%st(2), %st	#,
	fsubl	-40(%ebp)	# %sfp
	fxch	%st(2)	#
	fmull	-80(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fldl	-24(%ebp)	# %sfp
	fmul	%st(1), %st	#,
	faddp	%st, %st(2)	#,
	fmull	-80(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
.LBE64:
	faddl	-96(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	faddl	-48(%ebp)	# %sfp
.LVL220:
.LBB65:
	fldl	-32(%ebp)	# %sfp
.LVL221:
	fadd	%st(1), %st	#,
.LVL222:
.LBE65:
.LBB66:
	fldl	-40(%ebp)	# %sfp
.LVL223:
	fadd	%st(1), %st	#,
	fxch	%st(2)	#
.LVL224:
.LBE66:
.LBB67:
	fsubr	%st(1), %st	#,
.LVL225:
	fsubrl	-32(%ebp)	# %sfp
.LBE67:
.LBB68:
	fldl	-40(%ebp)	# %sfp
	fsubr	%st(3), %st	#,
	fsubrp	%st, %st(2)	#,
.LBE68:
	faddp	%st, %st(1)	#,
.LVL226:
.LBB69:
	fld	%st(2)	#
	fadd	%st(2), %st	#,
.LVL227:
	fsub	%st, %st(3)	#,
.LVL228:
	fxch	%st(3)	#
.LVL229:
	fsubrp	%st, %st(2)	#,
.LVL230:
.LBE69:
	faddp	%st, %st(1)	#,
.LVL231:
.LBB70:
	fld	%st(1)	#
.LVL232:
	fadd	%st(1), %st	#,
	fstl	-32(%ebp)	# %sfp
.LVL233:
	fsub	%st, %st(2)	#,
.LVL234:
	fxch	%st(1)	#
.LVL235:
	fsubp	%st, %st(2)	#,
.LVL236:
.LBE70:
	.loc 1 207 0
	movl	-28(%ebp), %edx	# %sfp, D.2032
.LVL237:
	.loc 1 209 0
	fld	%st(1)	#
	fmull	_errn@GOTOFF(%ebx)	# _errn.d
	fadd	%st(1), %st	#,
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jne	.L121	#,
	jp	.L122	#,
	.loc 1 210 0
	cmpl	$-1019, %eax	#, k
	jl	.L102	#,
	fstp	%st(0)	#
	fstp	%st(0)	#
	.loc 1 211 0
	cmpl	$1019, %eax	#, k
	jg	.L103	#,
	.loc 1 212 0
	sall	$20, %eax	#, tmp207
	addl	%edx, %eax	# D.2032,
	movl	%eax, -28(%ebp)	#, %sfp
	.loc 1 213 0
	fldl	-32(%ebp)	# %sfp
	jmp	.L84	#
.L103:
	.loc 1 216 0
	sall	$20, %eax	#, tmp210
	leal	-1048576000(%eax,%edx), %eax	#,
	movl	%eax, -28(%ebp)	#, %sfp
	.loc 1 217 0
	fldl	-32(%ebp)	# %sfp
	fmull	.LC16@GOTOFF(%ebx)	#
	jmp	.L84	#
.L102:
	.loc 1 221 0
	sall	$20, %eax	#, tmp214
	leal	1048576000(%eax,%edx), %eax	#,
	movl	%eax, -28(%ebp)	#, %sfp
	.loc 1 222 0
	fldl	-32(%ebp)	# %sfp
	fld	%st(0)	#
	fmull	.LC17@GOTOFF(%ebx)	#
	fstl	-64(%ebp)	# %sfp
	fstpl	-24(%ebp)	# %sfp
	.loc 1 228 0
	movl	-20(%ebp), %eax	# %sfp,
	movl	%eax, -28(%ebp)	#, %sfp
	.loc 1 229 0
	movl	-24(%ebp), %ecx	# %sfp,
.LVL238:
	movl	%ecx, -32(%ebp)	#, %sfp
	.loc 1 231 0
	fldl	-32(%ebp)	# %sfp
	fmull	.LC16@GOTOFF(%ebx)	#
	fsubrp	%st, %st(1)	#,
	fstpl	-32(%ebp)	# %sfp
	.loc 1 232 0
	movl	-28(%ebp), %eax	# %sfp, D.2044
	movl	%eax, %ecx	# D.2044,
	andl	$2147483647, %ecx	#,
	movl	%ecx, -36(%ebp)	#, %sfp
	.loc 1 233 0
	movl	-32(%ebp), %ecx	# %sfp,
	movl	%ecx, -40(%ebp)	#, %sfp
	.loc 1 235 0
	fldl	-40(%ebp)	# %sfp
	flds	.LC19@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jne	.L123	#,
	jp	.L124	#,
.LBB71:
	.loc 1 204 0
	fstpl	-32(%ebp)	# %sfp
.LBE71:
	.loc 1 236 0
	movl	-28(%ebp), %ecx	# %sfp, D.2065
	.loc 1 207 0
	andl	$2146435072, %edx	#, tmp224
	leal	-73400320(%edx), %esi	#, tmp225
	.loc 1 236 0
	movl	%ecx, %edx	# D.2065, tmp226
	andl	$2146435072, %edx	#, tmp226
	cmpl	%edx, %esi	# tmp226, tmp225
	jle	.L106	#,
	.loc 1 238 0
	fstpl	(%esp)	#
	call	scs_exp_rn@PLT	#
	jmp	.L84	#
.L106:
	fstp	%st(0)	#
	.loc 1 241 0
	testl	%eax, %eax	# D.2044
	jle	.L107	#,
	testl	%ecx, %ecx	# D.2065
	.p2align 4,,5
	jle	.L107	#,
	.loc 1 246 0
	movl	-64(%ebp), %eax	# %sfp,
	movl	-60(%ebp), %edx	# %sfp,
	addl	$1, %eax	#,
	adcl	$0, %edx	#,
	movl	%eax, -24(%ebp)	#, %sfp
	movl	%edx, -20(%ebp)	#, %sfp
	.loc 1 241 0
	jmp	.L104	#
.L107:
	.loc 1 248 0
	testl	%eax, %eax	# D.2044
	jns	.L104	#,
	testl	%ecx, %ecx	# D.2065
	jns	.L104	#,
	.loc 1 253 0
	movl	-64(%ebp), %edx	# %sfp,
	movl	-60(%ebp), %ecx	# %sfp,
	addl	$-1, %edx	#,
	adcl	$-1, %ecx	#,
	movl	%edx, -24(%ebp)	#, %sfp
	movl	%ecx, -20(%ebp)	#, %sfp
	jmp	.L104	#
.L123:
	fstp	%st(0)	#
	fstp	%st(0)	#
	jmp	.L104	#
.L124:
	fstp	%st(0)	#
	fstp	%st(0)	#
.L104:
	.loc 1 256 0
	fldl	-24(%ebp)	# %sfp
	jmp	.L84	#
.LVL239:
.L121:
	fstp	%st(0)	#
	jmp	.L119	#
.L122:
	fstp	%st(0)	#
.L119:
	.loc 1 260 0
	fstpl	(%esp)	#
	call	scs_exp_rn@PLT	#
.LVL240:
.L84:
	.loc 1 262 0
	addl	$112, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%esi	#
	.cfi_restore 6
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	exp_rn, .-exp_rn
	.section	.rodata
	.align 4
	.type	scs_huge, @object
	.size	scs_huge, 8
scs_huge:
# i:
	.long	-1
	.long	2146435071
	.align 4
	.type	scs_small, @object
	.size	scs_small, 8
scs_small:
# i:
	.long	1
	.long	0
	.align 32
	.type	tab_exp, @object
	.size	tab_exp, 2864
tab_exp:
# i:
	.long	-937141605
	.long	1072077401
# i:
	.long	147989356
	.long	-1132493258
# i:
	.long	1927198877
	.long	1072083199
# i:
	.long	-1755575294
	.long	-1133663243
# i:
	.long	-828740205
	.long	1072089019
# i:
	.long	-1404465641
	.long	1013319370
# i:
	.long	-233580770
	.long	1072094862
# i:
	.long	392945275
	.long	1013495597
# i:
	.long	-199353698
	.long	1072100728
# i:
	.long	-1141342452
	.long	1015048184
# i:
	.long	-341623801
	.long	1072106617
# i:
	.long	578053537
	.long	-1132098703
# i:
	.long	-274451257
	.long	1072112529
# i:
	.long	1482199597
	.long	1014565129
# i:
	.long	389614285
	.long	1072118465
# i:
	.long	1828139639
	.long	1016040476
# i:
	.long	2039539613
	.long	1072124423
# i:
	.long	-1719013328
	.long	-1137127150
# i:
	.long	770846590
	.long	1072130405
# i:
	.long	1967448303
	.long	1013138527
# i:
	.long	1270520005
	.long	1072136410
# i:
	.long	-1147422141
	.long	-1131461661
# i:
	.long	-362855635
	.long	1072142438
# i:
	.long	-1593794391
	.long	1014051740
# i:
	.long	560779091
	.long	1072148491
# i:
	.long	-118247087
	.long	-1138425079
# i:
	.long	143095356
	.long	1072154567
# i:
	.long	-2108345807
	.long	-1137665370
# i:
	.long	-1217715971
	.long	1072160666
# i:
	.long	616155403
	.long	1013602789
# i:
	.long	1173061750
	.long	1072166790
# i:
	.long	133713415
	.long	1015240481
# i:
	.long	-873192154
	.long	1072172937
# i:
	.long	1746212870
	.long	1015060401
# i:
	.long	1636341526
	.long	1072179109
# i:
	.long	-1238359871
	.long	-1134120214
# i:
	.long	516189660
	.long	1072185305
# i:
	.long	116254988
	.long	1007937799
# i:
	.long	467364025
	.long	1072191525
# i:
	.long	-178076050
	.long	-1132182635
# i:
	.long	1897498313
	.long	1072197769
# i:
	.long	-2013347141
	.long	1015091802
# i:
	.long	920854356
	.long	1072204038
# i:
	.long	-656833811
	.long	1014864937
# i:
	.long	-2051737042
	.long	1072210331
# i:
	.long	1810640389
	.long	-1131711205
# i:
	.long	1982097460
	.long	1072216649
# i:
	.long	271712532
	.long	-1131762312
# i:
	.long	551508964
	.long	1072222992
# i:
	.long	-630334702
	.long	1014542271
# i:
	.long	-1632861685
	.long	1072229359
# i:
	.long	1751929747
	.long	-1134061612
# i:
	.long	141253256
	.long	1072235752
# i:
	.long	1132359159
	.long	-1131420521
# i:
	.long	1997820206
	.long	1072242169
# i:
	.long	-1659489479
	.long	-1131503157
# i:
	.long	62445245
	.long	1072248612
# i:
	.long	896087174
	.long	-1132322452
# i:
	.long	-947684878
	.long	1072255079
# i:
	.long	1049417231
	.long	1016023098
# i:
	.long	-608698188
	.long	1072261572
# i:
	.long	1646574996
	.long	1015884794
# i:
	.long	1504936276
	.long	1072268091
# i:
	.long	552899547
	.long	1014890457
# i:
	.long	1525447661
	.long	1072274635
# i:
	.long	-593812771
	.long	-1131559709
# i:
	.long	-118295592
	.long	1072281204
# i:
	.long	-1156411244
	.long	-1132127235
# i:
	.long	1299220800
	.long	1072287800
# i:
	.long	-1636440867
	.long	-1131736944
# i:
	.long	1915261639
	.long	1072294421
# i:
	.long	576594438
	.long	1015862245
# i:
	.long	-2131216561
	.long	1072301068
# i:
	.long	786029374
	.long	1013378856
# i:
	.long	-1814657072
	.long	1072307741
# i:
	.long	-622008071
	.long	1012808299
# i:
	.long	-992700075
	.long	1072314440
# i:
	.long	1523090746
	.long	-1132571278
# i:
	.long	773693194
	.long	1072321166
# i:
	.long	-524102700
	.long	-1131565270
# i:
	.long	-369687448
	.long	1072327917
# i:
	.long	-948553567
	.long	-1133318156
# i:
	.long	314607484
	.long	1072334696
# i:
	.long	653974852
	.long	-1132473502
# i:
	.long	-1024175292
	.long	1072341500
# i:
	.long	-94661216
	.long	-1131803710
# i:
	.long	354884138
	.long	1072348332
# i:
	.long	-801891664
	.long	1014859900
# i:
	.long	604516508
	.long	1072355190
# i:
	.long	-2110518383
	.long	-1132329759
# i:
	.long	174172085
	.long	1072362075
# i:
	.long	706371979
	.long	-1132038491
# i:
	.long	-484939764
	.long	1072368986
# i:
	.long	-357368956
	.long	1014850130
# i:
	.long	-919843687
	.long	1072375925
# i:
	.long	1108005507
	.long	1014593387
# i:
	.long	-675791438
	.long	1072382891
# i:
	.long	-1713630648
	.long	-1132218063
# i:
	.long	703745062
	.long	1072389885
# i:
	.long	2104534509
	.long	1014224381
# i:
	.long	-617886601
	.long	1072396905
# i:
	.long	-2002973687
	.long	1015742666
# i:
	.long	114389544
	.long	1072403954
# i:
	.long	747610303
	.long	1012569261
# i:
	.long	-932484311
	.long	1072411029
# i:
	.long	1058692499
	.long	1012169820
# i:
	.long	1000176482
	.long	1072418133
# i:
	.long	892626352
	.long	1009167692
# i:
	.long	2082936917
	.long	1072425264
# i:
	.long	-367691598
	.long	-1135526483
# i:
	.long	-1511815970
	.long	1072432423
# i:
	.long	1894095717
	.long	-1132938335
# i:
	.long	-724964082
	.long	1072439610
# i:
	.long	1271167739
	.long	-1131615104
# i:
	.long	619545122
	.long	1072446826
# i:
	.long	1993016965
	.long	-1131536886
# i:
	.long	-1300392297
	.long	1072454069
# i:
	.long	1101349030
	.long	-1131873019
# i:
	.long	-1715094952
	.long	1072461341
# i:
	.long	-178358792
	.long	1016062257
# i:
	.long	-147990771
	.long	1072468641
# i:
	.long	1045801706
	.long	1015344716
# i:
	.long	-415609730
	.long	1072475970
# i:
	.long	-390271439
	.long	-1131717650
# i:
	.long	-2037641960
	.long	1072483328
# i:
	.long	1058869089
	.long	1015811732
# i:
	.long	-236930411
	.long	1072490714
# i:
	.long	46292635
	.long	-1132986725
# i:
	.long	1175634607
	.long	1072498130
# i:
	.long	800980057
	.long	-1134062669
# i:
	.long	-1608942589
	.long	1072505574
# i:
	.long	-1112600298
	.long	-1132254489
# i:
	.long	487146243
	.long	1072513048
# i:
	.long	99806512
	.long	1015135833
# i:
	.long	-636250353
	.long	1072520550
# i:
	.long	1489753915
	.long	1014656254
# i:
	.long	-192464990
	.long	1072528082
# i:
	.long	15709785
	.long	1012335854
# i:
	.long	-1982840413
	.long	1072535644
# i:
	.long	-485258666
	.long	1013479821
# i:
	.long	-1216852782
	.long	1072543235
# i:
	.long	-1727375914
	.long	-1131538138
# i:
	.long	-1691973298
	.long	1072550856
# i:
	.long	444526859
	.long	-1137342158
# i:
	.long	1386208578
	.long	1072558507
# i:
	.long	-2106108402
	.long	-1132760926
# i:
	.long	-70843740
	.long	1072566187
# i:
	.long	16579429
	.long	-1132932889
# i:
	.long	-1264802533
	.long	1072573898
# i:
	.long	-1854484428
	.long	1015031628
# i:
	.long	-1690337280
	.long	1072581639
# i:
	.long	131456315
	.long	1015313391
# i:
	.long	-840139653
	.long	1072589410
# i:
	.long	1817585465
	.long	-1134580029
# i:
	.long	1795084224
	.long	1072597212
# i:
	.long	345773794
	.long	-1132229022
# i:
	.long	-1863313045
	.long	1072605044
# i:
	.long	-1468496627
	.long	1012457422
# i:
	.long	1582858747
	.long	1072612907
# i:
	.long	815518612
	.long	-1135572042
# i:
	.long	-236005017
	.long	1072620800
# i:
	.long	1734580490
	.long	1013453734
# i:
	.long	1787344344
	.long	1072628725
# i:
	.long	-721313241
	.long	-1131696833
# i:
	.long	-417688965
	.long	1072636680
# i:
	.long	204784490
	.long	-1131926070
# i:
	.long	-2034766215
	.long	1072644667
# i:
	.long	-1013001645
	.long	1013174906
# i:
	.long	1754491914
	.long	1072652685
# i:
	.long	-970142785
	.long	-1133257942
# i:
	.long	-1409355867
	.long	1072660734
# i:
	.long	-796218283
	.long	-1131716421
# i:
	.long	1886109524
	.long	1072668815
# i:
	.long	1370673908
	.long	-1131605764
# i:
	.long	-714431963
	.long	1072676927
# i:
	.long	993221086
	.long	-1136000816
# i:
	.long	-89391172
	.long	1072685071
# i:
	.long	259250818
	.long	-1132694889
# i:
	.long	0
	.long	1072693248
# i:
	.long	0
	.long	0
# i:
	.long	44782967
	.long	1072697352
# i:
	.long	-1458878037
	.long	1017072168
# i:
	.long	358614086
	.long	1072701472
# i:
	.long	1911885362
	.long	-1131163850
# i:
	.long	1211506807
	.long	1072705608
# i:
	.long	-73954234
	.long	-1130898278
# i:
	.long	-1420435911
	.long	1072709760
# i:
	.long	1262391365
	.long	1014475654
# i:
	.long	1324851719
	.long	1072713929
# i:
	.long	69454094
	.long	-1132336849
# i:
	.long	1130631389
	.long	1072718114
# i:
	.long	-1653216933
	.long	1014293861
# i:
	.long	-1728831355
	.long	1072722315
# i:
	.long	-683219431
	.long	-1133493684
# i:
	.long	1611737069
	.long	1072726533
# i:
	.long	-1108258464
	.long	-1130772528
# i:
	.long	-1456148591
	.long	1072730767
# i:
	.long	1111994696
	.long	-1130676500
# i:
	.long	-2065055242
	.long	1072735018
# i:
	.long	-121525868
	.long	-1130385780
# i:
	.long	63601714
	.long	1072739286
# i:
	.long	1897561221
	.long	1016906731
# i:
	.long	914529932
	.long	1072743570
# i:
	.long	216092071
	.long	-1131497832
# i:
	.long	768498975
	.long	1072747871
# i:
	.long	616392028
	.long	-1130732443
# i:
	.long	-92622691
	.long	1072752188
# i:
	.long	936821570
	.long	1014444609
# i:
	.long	-1385863397
	.long	1072756523
# i:
	.long	824758452
	.long	1016749515
# i:
	.long	1467823341
	.long	1072760875
# i:
	.long	-2140698473
	.long	1017075398
# i:
	.long	163693974
	.long	1072765244
# i:
	.long	1805558372
	.long	-1131552536
# i:
	.long	-716976955
	.long	1072769629
# i:
	.long	433770012
	.long	-1132386289
# i:
	.long	-886761622
	.long	1072774032
# i:
	.long	1525272907
	.long	1016275689
# i:
	.long	-57107242
	.long	1072778452
# i:
	.long	-2039367522
	.long	1016157562
# i:
	.long	2061668333
	.long	1072782890
# i:
	.long	1077561275
	.long	-1131003599
# i:
	.long	1465413737
	.long	1072787345
# i:
	.long	1923766317
	.long	1015517755
# i:
	.long	-1553916875
	.long	1072791817
# i:
	.long	-1189702020
	.long	-1135448419
# i:
	.long	1886707917
	.long	1072796307
# i:
	.long	1664543236
	.long	1016734964
# i:
	.long	-803369796
	.long	1072800814
# i:
	.long	166915359
	.long	1016623366
# i:
	.long	-738819806
	.long	1072805339
# i:
	.long	-1834672113
	.long	1015553884
# i:
	.long	-1918057647
	.long	1072809882
# i:
	.long	-1050186220
	.long	-1132400320
# i:
	.long	251596409
	.long	1072814443
# i:
	.long	-1529667476
	.long	1015974599
# i:
	.long	1774052714
	.long	1072819021
# i:
	.long	-1217524544
	.long	-1130940597
# i:
	.long	-1345608610
	.long	1072823617
# i:
	.long	1120995121
	.long	1016837266
# i:
	.long	-216231196
	.long	1072828231
# i:
	.long	1873951511
	.long	1016676096
# i:
	.long	1169618381
	.long	1072832864
# i:
	.long	-551630875
	.long	-1135033179
# i:
	.long	-1179442891
	.long	1072837514
# i:
	.long	-1325207264
	.long	-1130743964
# i:
	.long	1631292059
	.long	1072842183
# i:
	.long	-1015109470
	.long	-1133783887
# i:
	.long	1317853966
	.long	1072846870
# i:
	.long	160624479
	.long	-1130398840
# i:
	.long	-1812594332
	.long	1072851575
# i:
	.long	-2046802736
	.long	1015393977
# i:
	.long	1138246800
	.long	1072856299
# i:
	.long	1079165220
	.long	1015528730
# i:
	.long	1890014717
	.long	1072861041
# i:
	.long	1067923461
	.long	1016948659
# i:
	.long	753492998
	.long	1072865802
# i:
	.long	-717581462
	.long	1015993890
# i:
	.long	-1959318407
	.long	1072870581
# i:
	.long	-1627187594
	.long	1016333533
# i:
	.long	-1640231117
	.long	1072875379
# i:
	.long	-1310841339
	.long	-1131367459
# i:
	.long	2025201863
	.long	1072880196
# i:
	.long	-329122771
	.long	1016027816
# i:
	.long	762723650
	.long	1072885032
# i:
	.long	-717665620
	.long	1016296311
# i:
	.long	-815785225
	.long	1072889886
# i:
	.long	745144299
	.long	1009232785
# i:
	.long	1902796132
	.long	1072894760
# i:
	.long	-838053510
	.long	-1131504145
# i:
	.long	647931945
	.long	1072899653
# i:
	.long	-1139881523
	.long	-1134873244
# i:
	.long	35238419
	.long	1072904565
# i:
	.long	-1149717841
	.long	-1131030535
# i:
	.long	386619445
	.long	1072909496
# i:
	.long	610647603
	.long	1015457542
# i:
	.long	2025238813
	.long	1072914446
# i:
	.long	841345097
	.long	1014617648
# i:
	.long	980557842
	.long	1072919416
# i:
	.long	-1769967098
	.long	1016321139
# i:
	.long	1873242222
	.long	1072924405
# i:
	.long	-503542510
	.long	1016631180
# i:
	.long	735297798
	.long	1072929414
# i:
	.long	2043400444
	.long	1016585498
# i:
	.long	-2105022552
	.long	1072934442
# i:
	.long	-51071919
	.long	1012037673
# i:
	.long	-2023213910
	.long	1072939490
# i:
	.long	75129520
	.long	1017112856
# i:
	.long	1311551123
	.long	1072944558
# i:
	.long	-932413200
	.long	-1131697487
# i:
	.long	-358539828
	.long	1072949645
# i:
	.long	150928639
	.long	-1131056607
# i:
	.long	1889869938
	.long	1072954753
# i:
	.long	-381878554
	.long	-1130549657
# i:
	.long	-198427086
	.long	1072959880
# i:
	.long	452739781
	.long	1013847905
# i:
	.long	-1992426432
	.long	1072965028
# i:
	.long	429100553
	.long	-1130861319
# i:
	.long	1140191577
	.long	1072970196
# i:
	.long	-395093437
	.long	-1133394510
# i:
	.long	948165093
	.long	1072975384
# i:
	.long	-1661106536
	.long	-1130772647
# i:
	.long	2066459681
	.long	1072980592
# i:
	.long	969199613
	.long	-1132306463
# i:
	.long	541437032
	.long	1072985821
# i:
	.long	749630968
	.long	-1130580732
# i:
	.long	1010729350
	.long	1072991070
# i:
	.long	249196203
	.long	1016715759
# i:
	.long	-476624596
	.long	1072996339
# i:
	.long	1753115842
	.long	-1131087903
# i:
	.long	719694951
	.long	1073001630
# i:
	.long	-311502739
	.long	1016173661
# i:
	.long	651424832
	.long	1073006941
# i:
	.long	748983932
	.long	1016931042
# i:
	.long	-333373856
	.long	1073012272
# i:
	.long	1053431570
	.long	1014215970
# i:
	.long	-1885277744
	.long	1073017625
# i:
	.long	170060308
	.long	-1130863475
# i:
	.long	641471437
	.long	1073022999
# i:
	.long	1579647694
	.long	-1134274518
# i:
	.long	-990896973
	.long	1073028393
# i:
	.long	-1836833409
	.long	1012990306
# i:
	.long	-2133873417
	.long	1073033809
# i:
	.long	1621510362
	.long	1016801462
# i:
	.long	1862435389
	.long	1073039246
# i:
	.long	36250
	.long	1010937420
# i:
	.long	-1530557316
	.long	1073044704
# i:
	.long	1218630678
	.long	-1131190769
# i:
	.long	929760061
	.long	1073050184
# i:
	.long	52745171
	.long	1016616376
# i:
	.long	1012562672
	.long	1073055685
# i:
	.long	1006729527
	.long	1015263465
# i:
	.long	-921634226
	.long	1073061207
# i:
	.long	1523144240
	.long	-1132945053
# i:
	.long	-215937063
	.long	1073066751
# i:
	.long	351800236
	.long	1016448952
# i:
	.long	-801970319
	.long	1073072317
# i:
	.long	1166847638
	.long	-1130622899
# i:
	.long	1979998197
	.long	1073077905
# i:
	.long	589925290
	.long	1015916697
# i:
	.long	-93773558
	.long	1073083514
# i:
	.long	1574571009
	.long	1016947780
# i:
	.long	1934274792
	.long	1073089146
# i:
	.long	-194041573
	.long	1016944017
# i:
	.long	-156726714
	.long	1073094799
# i:
	.long	-1305282740
	.long	1014276421
# i:
	.long	-1701301672
	.long	1073100475
# i:
	.long	838280333
	.long	1016285644
# i:
	.long	1967476456
	.long	1073106173
# i:
	.long	1845878022
	.long	-1131403136
# i:
	.long	-1661879172
	.long	1073111893
# i:
	.long	-72358498
	.long	1016498050
# i:
	.long	670409887
	.long	1073117636
# i:
	.long	-1536203697
	.long	1015841392
# i:
	.long	750752819
	.long	1073123401
# i:
	.long	1065184835
	.long	-1131933053
# i:
	.long	-1043033631
	.long	1073129188
# i:
	.long	-1114964291
	.long	1017009456
	.align 4
	.type	_errn, @object
	.size	_errn, 8
_errn:
# i:
	.long	0
	.long	1072693280
	.comm	crlibm_second_step_taken,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	4277811695
	.long	1082535490
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1065353216
	.section	.rodata.cst8
	.align 8
.LC3:
	.long	3576508497
	.long	-1064875760
	.align 8
.LC4:
	.long	4294967295
	.long	1072693247
	.align 8
.LC5:
	.long	1697350398
	.long	1073157447
	.section	.rodata.cst4
	.align 4
.LC6:
	.long	1505755136
	.section	.rodata.cst8
	.align 8
.LC7:
	.long	4277811200
	.long	1072049730
	.align 8
.LC8:
	.long	2479318832
	.long	-1120996521
	.section	.rodata.cst4
	.align 4
.LC9:
	.long	1438646272
	.align 4
.LC10:
	.long	1056964608
	.section	.rodata.cst8
	.align 8
.LC11:
	.long	33554432
	.long	1101004800
	.align 8
.LC12:
	.long	1036246110
	.long	1062650220
	.align 8
.LC13:
	.long	831723856
	.long	1065423121
	.align 8
.LC14:
	.long	1431655736
	.long	1067799893
	.align 8
.LC15:
	.long	1431655733
	.long	1069897045
	.align 8
.LC16:
	.long	0
	.long	2121269248
	.align 8
.LC17:
	.long	0
	.long	24117248
	.align 8
.LC18:
	.long	1
	.long	1072693248
	.section	.rodata.cst4
	.align 4
.LC19:
	.long	436207616
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
.LFB10:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE10:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL8-.Ltext0
	.long	.LVL9-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL29-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL30-.Ltext0
	.long	.LVL77-.Ltext0
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	tab_exp
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL32-.Ltext0
	.long	.LVL78-.Ltext0
	.value	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	tab_exp
	.byte	0x22
	.long	.LVL78-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL23-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL28-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL19-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL23-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL46-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL53-.Ltext0
	.long	.LVL54-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL62-.Ltext0
	.long	.LVL63-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL63-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL55-.Ltext0
	.long	.LVL56-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL56-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	.LVL61-.Ltext0
	.long	.LVL62-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL63-.Ltext0
	.long	.LVL64-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL65-.Ltext0
	.long	.LVL66-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL7-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL25-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL26-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL77-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x10
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0xc
	.long	0x7ff00000
	.byte	0x1a
	.byte	0xc
	.long	0x4600000
	.byte	0x1c
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL17-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL9-.Ltext0
	.long	.LVL13-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL28-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL27-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL34-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL35-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL38-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL42-.Ltext0
	.long	.LVL43-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL36-.Ltext0
	.long	.LVL37-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL40-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL41-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL44-.Ltext0
	.long	.LVL45-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL45-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL34-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL34-.Ltext0
	.long	.LVL38-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL46-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL47-.Ltext0
	.long	.LVL49-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL49-.Ltext0
	.long	.LVL59-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL47-.Ltext0
	.long	.LVL48-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL51-.Ltext0
	.long	.LVL52-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL52-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL46-.Ltext0
	.long	.LVL60-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL46-.Ltext0
	.long	.LVL57-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL61-.Ltext0
	.long	.LVL62-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL62-.Ltext0
	.long	.LVL63-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL63-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL63-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LVL63-.Ltext0
	.long	.LVL64-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LVL69-.Ltext0
	.long	.LVL70-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LVL67-.Ltext0
	.long	.LVL71-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LVL67-.Ltext0
	.long	.LVL72-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LVL75-.Ltext0
	.long	.LVL79-1-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LVL72-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LVL72-.Ltext0
	.long	.LVL73-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LVL88-.Ltext0
	.long	.LVL89-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL109-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LVL89-.Ltext0
	.long	.LVL90-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LVL110-.Ltext0
	.long	.LVL158-.Ltext0
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	tab_exp
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LVL112-.Ltext0
	.long	.LVL157-.Ltext0
	.value	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	tab_exp
	.byte	0x22
	.long	.LVL157-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LVL91-.Ltext0
	.long	.LVL92-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL103-.Ltext0
	.long	.LVL104-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL107-.Ltext0
	.long	.LVL108-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL108-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LVL99-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL103-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LVL126-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LVL133-.Ltext0
	.long	.LVL134-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL134-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LVL135-.Ltext0
	.long	.LVL136-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL136-.Ltext0
	.long	.LVL141-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL141-.Ltext0
	.long	.LVL142-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LVL143-.Ltext0
	.long	.LVL144-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LVL145-.Ltext0
	.long	.LVL146-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LVL81-.Ltext0
	.long	.LVL82-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL82-.Ltext0
	.long	.LVL83-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL84-.Ltext0
	.long	.LVL85-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL86-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LVL87-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LVL105-.Ltext0
	.long	.LVL106-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL106-.Ltext0
	.long	.LVL111-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LVL157-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x10
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0xc
	.long	0x7ff00000
	.byte	0x1a
	.byte	0xc
	.long	0x4600000
	.byte	0x1c
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LVL97-.Ltext0
	.long	.LVL98-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL101-.Ltext0
	.long	.LVL102-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LVL89-.Ltext0
	.long	.LVL93-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL94-.Ltext0
	.long	.LVL95-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LVL89-.Ltext0
	.long	.LVL90-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LVL107-.Ltext0
	.long	.LVL108-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL108-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LVL107-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LVL114-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LVL115-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LVL118-.Ltext0
	.long	.LVL119-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LVL122-.Ltext0
	.long	.LVL123-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LVL116-.Ltext0
	.long	.LVL117-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LVL120-.Ltext0
	.long	.LVL121-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL121-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LVL124-.Ltext0
	.long	.LVL125-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL125-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LVL114-.Ltext0
	.long	.LVL119-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LVL114-.Ltext0
	.long	.LVL118-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LVL126-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LVL127-.Ltext0
	.long	.LVL129-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LVL129-.Ltext0
	.long	.LVL139-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LVL127-.Ltext0
	.long	.LVL128-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LVL129-.Ltext0
	.long	.LVL130-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LVL131-.Ltext0
	.long	.LVL132-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL132-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LVL126-.Ltext0
	.long	.LVL140-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LVL126-.Ltext0
	.long	.LVL137-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LVL141-.Ltext0
	.long	.LVL142-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LVL141-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LVL143-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LVL143-.Ltext0
	.long	.LVL144-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LVL149-.Ltext0
	.long	.LVL150-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LVL147-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LVL147-.Ltext0
	.long	.LVL152-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LVL155-.Ltext0
	.long	.LVL159-1-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LVL152-.Ltext0
	.long	.LVL156-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LVL152-.Ltext0
	.long	.LVL153-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LVL168-.Ltext0
	.long	.LVL169-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL189-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LVL169-.Ltext0
	.long	.LVL170-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LVL190-.Ltext0
	.long	.LVL238-.Ltext0
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	tab_exp
	.byte	0x22
	.long	.LVL239-.Ltext0
	.long	.LVL240-1-.Ltext0
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.long	tab_exp
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LVL192-.Ltext0
	.long	.LVL237-.Ltext0
	.value	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	tab_exp
	.byte	0x22
	.long	.LVL237-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LVL171-.Ltext0
	.long	.LVL172-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL183-.Ltext0
	.long	.LVL184-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL187-.Ltext0
	.long	.LVL188-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL188-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LVL179-.Ltext0
	.long	.LVL180-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL183-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LVL206-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LVL213-.Ltext0
	.long	.LVL214-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL214-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LVL215-.Ltext0
	.long	.LVL216-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL216-.Ltext0
	.long	.LVL220-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	.LVL220-.Ltext0
	.long	.LVL221-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LVL222-.Ltext0
	.long	.LVL223-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LVL224-.Ltext0
	.long	.LVL225-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST105:
	.long	.LVL161-.Ltext0
	.long	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	.LVL162-.Ltext0
	.long	.LVL163-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL164-.Ltext0
	.long	.LVL165-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL166-.Ltext0
	.long	.LVL167-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST106:
	.long	.LVL167-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST107:
	.long	.LVL185-.Ltext0
	.long	.LVL186-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	.LVL186-.Ltext0
	.long	.LVL191-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST108:
	.long	.LVL237-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x10
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0xc
	.long	0x7ff00000
	.byte	0x1a
	.byte	0xc
	.long	0x4600000
	.byte	0x1c
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST109:
	.long	.LVL177-.Ltext0
	.long	.LVL178-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL181-.Ltext0
	.long	.LVL182-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST110:
	.long	.LVL169-.Ltext0
	.long	.LVL173-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL174-.Ltext0
	.long	.LVL175-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST111:
	.long	.LVL169-.Ltext0
	.long	.LVL170-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LVL187-.Ltext0
	.long	.LVL188-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL188-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LVL187-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LVL194-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST115:
	.long	.LVL195-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0x0
	.long	0x0
.LLST116:
	.long	.LVL198-.Ltext0
	.long	.LVL199-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST117:
	.long	.LVL202-.Ltext0
	.long	.LVL203-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST118:
	.long	.LVL196-.Ltext0
	.long	.LVL197-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST119:
	.long	.LVL200-.Ltext0
	.long	.LVL201-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL201-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST120:
	.long	.LVL204-.Ltext0
	.long	.LVL205-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL205-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0x0
	.long	0x0
.LLST121:
	.long	.LVL194-.Ltext0
	.long	.LVL199-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST122:
	.long	.LVL194-.Ltext0
	.long	.LVL198-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST123:
	.long	.LVL206-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST124:
	.long	.LVL207-.Ltext0
	.long	.LVL209-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST125:
	.long	.LVL209-.Ltext0
	.long	.LVL219-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST126:
	.long	.LVL207-.Ltext0
	.long	.LVL208-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST127:
	.long	.LVL209-.Ltext0
	.long	.LVL210-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST128:
	.long	.LVL211-.Ltext0
	.long	.LVL212-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL212-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	0x0
	.long	0x0
.LLST129:
	.long	.LVL206-.Ltext0
	.long	.LVL217-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST130:
	.long	.LVL206-.Ltext0
	.long	.LVL218-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST131:
	.long	.LVL220-.Ltext0
	.long	.LVL221-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST132:
	.long	.LVL220-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST133:
	.long	.LVL222-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST134:
	.long	.LVL222-.Ltext0
	.long	.LVL223-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST135:
	.long	.LVL228-.Ltext0
	.long	.LVL229-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST136:
	.long	.LVL226-.Ltext0
	.long	.LVL230-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST137:
	.long	.LVL226-.Ltext0
	.long	.LVL231-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST138:
	.long	.LVL234-.Ltext0
	.long	.LVL236-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST139:
	.long	.LVL231-.Ltext0
	.long	.LVL235-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST140:
	.long	.LVL231-.Ltext0
	.long	.LVL232-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "scs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "scs_private.h"
	.file 8 "crlibm_private.h"
	.file 9 "exp_fast.h"
	.section	.debug_info
	.long	0x1246
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF105
	.byte	0xc
	.long	.LASF106
	.long	.LASF107
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
	.long	.LASF108
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
	.long	.LASF68
	.byte	0x1
	.value	0x167
	.byte	0x1
	.long	0x2d8
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0x76c
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.value	0x167
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"db"
	.byte	0x1
	.value	0x168
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x14
	.string	"R1"
	.byte	0x1
	.value	0x168
	.long	0x2df
	.uleb128 0x13
	.string	"R8"
	.byte	0x1
	.value	0x168
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x13
	.string	"R11"
	.byte	0x1
	.value	0x168
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF54
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST0
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST1
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST2
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST3
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST4
	.uleb128 0x15
	.long	.LASF59
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST5
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.uleb128 0x14
	.string	"P_r"
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.uleb128 0x14
	.string	"R2"
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST6
	.uleb128 0x16
	.long	.LASF61
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.uleb128 0x14
	.string	"R4"
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST7
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.uleb128 0x14
	.string	"R6"
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.uleb128 0x17
	.string	"R7"
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST8
	.uleb128 0x17
	.string	"R9"
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST9
	.uleb128 0x17
	.string	"R10"
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.long	.LLST10
	.uleb128 0x16
	.long	.LASF64
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.uleb128 0x17
	.string	"hx"
	.byte	0x1
	.value	0x168
	.long	0x30
	.long	.LLST11
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x168
	.long	0x5a
	.long	.LLST12
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.value	0x168
	.long	0x5a
	.long	.LLST13
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0x16a
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.value	0x16b
	.long	0x5a
	.long	.LLST14
	.uleb128 0x19
	.long	.LBB11
	.long	.LBE11
	.long	0x509
	.uleb128 0x13
	.string	"_t"
	.byte	0x1
	.value	0x188
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.byte	0x0
	.uleb128 0x19
	.long	.LBB12
	.long	.LBE12
	.long	0x544
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST15
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST16
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST17
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x0
	.long	0x577
	.uleb128 0x14
	.string	"_z"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST18
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST19
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x18
	.long	0x607
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.value	0x188
	.long	0x76c
	.long	.LLST20
	.uleb128 0x17
	.string	"up"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST21
	.uleb128 0x17
	.string	"u1"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST22
	.uleb128 0x17
	.string	"u2"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST23
	.uleb128 0x17
	.string	"vp"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST24
	.uleb128 0x17
	.string	"v1"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST25
	.uleb128 0x17
	.string	"v2"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST26
	.uleb128 0x17
	.string	"_u"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST27
	.uleb128 0x17
	.string	"_v"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST28
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x30
	.long	0x693
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.value	0x188
	.long	0x76c
	.long	.LLST29
	.uleb128 0x14
	.string	"up"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.uleb128 0x17
	.string	"u1"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST30
	.uleb128 0x17
	.string	"u2"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST31
	.uleb128 0x17
	.string	"vp"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST32
	.uleb128 0x17
	.string	"v1"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST33
	.uleb128 0x17
	.string	"v2"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST34
	.uleb128 0x17
	.string	"_u"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST35
	.uleb128 0x17
	.string	"_v"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST36
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x48
	.long	0x6c6
	.uleb128 0x14
	.string	"_z"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST37
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST38
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x60
	.long	0x6f9
	.uleb128 0x14
	.string	"_z"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST39
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST40
	.byte	0x0
	.uleb128 0x19
	.long	.LBB23
	.long	.LBE23
	.long	0x734
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST41
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST42
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST43
	.byte	0x0
	.uleb128 0x1b
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST44
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST45
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x188
	.long	0x2d8
	.long	.LLST46
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0x2d8
	.uleb128 0x11
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.value	0x10e
	.byte	0x1
	.long	0x2d8
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0xba6
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.value	0x10e
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"db"
	.byte	0x1
	.value	0x10f
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x14
	.string	"R1"
	.byte	0x1
	.value	0x10f
	.long	0x2df
	.uleb128 0x13
	.string	"R8"
	.byte	0x1
	.value	0x10f
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x13
	.string	"R11"
	.byte	0x1
	.value	0x10f
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF54
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST47
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST48
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST49
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST50
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST51
	.uleb128 0x15
	.long	.LASF59
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST52
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.uleb128 0x14
	.string	"P_r"
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.uleb128 0x14
	.string	"R2"
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST53
	.uleb128 0x16
	.long	.LASF61
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.uleb128 0x14
	.string	"R4"
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST54
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.uleb128 0x14
	.string	"R6"
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.uleb128 0x17
	.string	"R7"
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST55
	.uleb128 0x17
	.string	"R9"
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST56
	.uleb128 0x17
	.string	"R10"
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.long	.LLST57
	.uleb128 0x16
	.long	.LASF64
	.byte	0x1
	.value	0x10f
	.long	0x2d8
	.uleb128 0x17
	.string	"hx"
	.byte	0x1
	.value	0x10f
	.long	0x30
	.long	.LLST58
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x10f
	.long	0x5a
	.long	.LLST59
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.value	0x10f
	.long	0x5a
	.long	.LLST60
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0x111
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.value	0x112
	.long	0x5a
	.long	.LLST61
	.uleb128 0x19
	.long	.LBB34
	.long	.LBE34
	.long	0x943
	.uleb128 0x13
	.string	"_t"
	.byte	0x1
	.value	0x130
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.byte	0x0
	.uleb128 0x19
	.long	.LBB35
	.long	.LBE35
	.long	0x97e
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST62
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST63
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST64
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x78
	.long	0x9b1
	.uleb128 0x14
	.string	"_z"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST65
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST66
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x90
	.long	0xa41
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.value	0x130
	.long	0x76c
	.long	.LLST67
	.uleb128 0x17
	.string	"up"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST68
	.uleb128 0x17
	.string	"u1"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST69
	.uleb128 0x17
	.string	"u2"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST70
	.uleb128 0x17
	.string	"vp"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST71
	.uleb128 0x17
	.string	"v1"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST72
	.uleb128 0x17
	.string	"v2"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST73
	.uleb128 0x17
	.string	"_u"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST74
	.uleb128 0x17
	.string	"_v"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST75
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0xa8
	.long	0xacd
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.value	0x130
	.long	0x76c
	.long	.LLST76
	.uleb128 0x14
	.string	"up"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.uleb128 0x17
	.string	"u1"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST77
	.uleb128 0x17
	.string	"u2"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST78
	.uleb128 0x17
	.string	"vp"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST79
	.uleb128 0x17
	.string	"v1"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST80
	.uleb128 0x17
	.string	"v2"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST81
	.uleb128 0x17
	.string	"_u"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST82
	.uleb128 0x17
	.string	"_v"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST83
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0xc0
	.long	0xb00
	.uleb128 0x14
	.string	"_z"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST84
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST85
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0xd8
	.long	0xb33
	.uleb128 0x14
	.string	"_z"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST86
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST87
	.byte	0x0
	.uleb128 0x19
	.long	.LBB46
	.long	.LBE46
	.long	0xb6e
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST88
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST89
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST90
	.byte	0x0
	.uleb128 0x1b
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST91
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST92
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.value	0x130
	.long	0x2d8
	.long	.LLST93
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	0x2d8
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0xf97
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0xb0
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"db"
	.byte	0x1
	.byte	0xb1
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.uleb128 0x1f
	.string	"R1"
	.byte	0x1
	.byte	0xb1
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x1f
	.string	"R8"
	.byte	0x1
	.byte	0xb1
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x1f
	.string	"R11"
	.byte	0x1
	.byte	0xb1
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF54
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST94
	.uleb128 0x20
	.long	.LASF55
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST95
	.uleb128 0x20
	.long	.LASF56
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST96
	.uleb128 0x20
	.long	.LASF57
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST97
	.uleb128 0x20
	.long	.LASF58
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST98
	.uleb128 0x20
	.long	.LASF59
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST99
	.uleb128 0x21
	.string	"tmp"
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.uleb128 0x21
	.string	"P_r"
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.uleb128 0x21
	.string	"R2"
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.uleb128 0x20
	.long	.LASF60
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST100
	.uleb128 0x22
	.long	.LASF61
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.uleb128 0x21
	.string	"R4"
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.uleb128 0x20
	.long	.LASF62
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST101
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.uleb128 0x21
	.string	"R6"
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.uleb128 0x23
	.string	"R7"
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST102
	.uleb128 0x23
	.string	"R9"
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST103
	.uleb128 0x23
	.string	"R10"
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.long	.LLST104
	.uleb128 0x22
	.long	.LASF64
	.byte	0x1
	.byte	0xb1
	.long	0x2d8
	.uleb128 0x23
	.string	"hx"
	.byte	0x1
	.byte	0xb1
	.long	0x30
	.long	.LLST105
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.byte	0xb1
	.long	0x5a
	.long	.LLST106
	.uleb128 0x20
	.long	.LASF65
	.byte	0x1
	.byte	0xb1
	.long	0x5a
	.long	.LLST107
	.uleb128 0x24
	.long	.LASF66
	.byte	0x1
	.byte	0xb3
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF67
	.byte	0x1
	.byte	0xb4
	.long	0x5a
	.long	.LLST108
	.uleb128 0x19
	.long	.LBB57
	.long	.LBE57
	.long	0xd5c
	.uleb128 0x1f
	.string	"_t"
	.byte	0x1
	.byte	0xcc
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -24
	.byte	0x0
	.uleb128 0x19
	.long	.LBB58
	.long	.LBE58
	.long	0xd94
	.uleb128 0x23
	.string	"_z"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST109
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST110
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST111
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0xf0
	.long	0xdc4
	.uleb128 0x21
	.string	"_z"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST112
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST113
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x108
	.long	0xe4b
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0xcc
	.long	0x76c
	.long	.LLST114
	.uleb128 0x23
	.string	"up"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST115
	.uleb128 0x23
	.string	"u1"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST116
	.uleb128 0x23
	.string	"u2"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST117
	.uleb128 0x23
	.string	"vp"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST118
	.uleb128 0x23
	.string	"v1"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST119
	.uleb128 0x23
	.string	"v2"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST120
	.uleb128 0x23
	.string	"_u"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST121
	.uleb128 0x23
	.string	"_v"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST122
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x120
	.long	0xece
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0xcc
	.long	0x76c
	.long	.LLST123
	.uleb128 0x21
	.string	"up"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.uleb128 0x23
	.string	"u1"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST124
	.uleb128 0x23
	.string	"u2"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST125
	.uleb128 0x23
	.string	"vp"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST126
	.uleb128 0x23
	.string	"v1"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST127
	.uleb128 0x23
	.string	"v2"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST128
	.uleb128 0x23
	.string	"_u"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST129
	.uleb128 0x23
	.string	"_v"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST130
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x138
	.long	0xefe
	.uleb128 0x21
	.string	"_z"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST131
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST132
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x150
	.long	0xf2e
	.uleb128 0x21
	.string	"_z"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST133
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST134
	.byte	0x0
	.uleb128 0x19
	.long	.LBB69
	.long	.LBE69
	.long	0xf66
	.uleb128 0x23
	.string	"_z"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST135
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST136
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST137
	.byte	0x0
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x168
	.uleb128 0x23
	.string	"_z"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST138
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST139
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.byte	0xcc
	.long	0x2d8
	.long	.LLST140
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF71
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF72
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	.LASF73
	.byte	0x7
	.byte	0x47
	.long	0xfbc
	.uleb128 0x1c
	.long	0x2df
	.uleb128 0x22
	.long	.LASF74
	.byte	0x7
	.byte	0x48
	.long	0xfbc
	.uleb128 0x22
	.long	.LASF75
	.byte	0x7
	.byte	0x49
	.long	0xfbc
	.uleb128 0x22
	.long	.LASF76
	.byte	0x7
	.byte	0x4a
	.long	0xfbc
	.uleb128 0x22
	.long	.LASF77
	.byte	0x7
	.byte	0x4b
	.long	0xfbc
	.uleb128 0x22
	.long	.LASF78
	.byte	0x7
	.byte	0x4c
	.long	0xfbc
	.uleb128 0x22
	.long	.LASF79
	.byte	0x7
	.byte	0x4d
	.long	0xfbc
	.uleb128 0x22
	.long	.LASF80
	.byte	0x7
	.byte	0x4e
	.long	0xfbc
	.uleb128 0x22
	.long	.LASF81
	.byte	0x8
	.byte	0xca
	.long	0x1019
	.uleb128 0x1c
	.long	0x2ea
	.uleb128 0x22
	.long	.LASF82
	.byte	0x8
	.byte	0xce
	.long	0x1019
	.uleb128 0x22
	.long	.LASF83
	.byte	0x8
	.byte	0xd2
	.long	0x1019
	.uleb128 0x22
	.long	.LASF84
	.byte	0x8
	.byte	0xd6
	.long	0x1019
	.uleb128 0x22
	.long	.LASF85
	.byte	0x8
	.byte	0xda
	.long	0x1019
	.uleb128 0x5
	.long	0x2df
	.long	0x1060
	.uleb128 0x6
	.long	0x30
	.byte	0xb2
	.uleb128 0x6
	.long	0x30
	.byte	0x1
	.byte	0x0
	.uleb128 0x24
	.long	.LASF86
	.byte	0x9
	.byte	0x1
	.long	0x1071
	.byte	0x5
	.byte	0x3
	.long	tab_exp
	.uleb128 0x1c
	.long	0x104a
	.uleb128 0x27
	.long	.LASF87
	.byte	0x1
	.byte	0x1a
	.long	0x76c
	.byte	0x8
	.long	0x0
	.long	0x7e700000
	.uleb128 0x27
	.long	.LASF88
	.byte	0x1
	.byte	0x1b
	.long	0x76c
	.byte	0x8
	.long	0x0
	.long	0x1700000
	.uleb128 0x27
	.long	.LASF89
	.byte	0x1
	.byte	0x1c
	.long	0x76c
	.byte	0x8
	.long	0x0
	.long	0x3ca00000
	.uleb128 0x27
	.long	.LASF90
	.byte	0x1
	.byte	0x1d
	.long	0x76c
	.byte	0x8
	.long	0xfefa3800
	.long	0x3fe62e42
	.uleb128 0x27
	.long	.LASF91
	.byte	0x1
	.byte	0x1e
	.long	0x76c
	.byte	0x8
	.long	0x93c76730
	.long	0x3d2ef357
	.uleb128 0x5
	.long	0x2d8
	.long	0x10ea
	.uleb128 0x6
	.long	0x30
	.byte	0x1
	.byte	0x0
	.uleb128 0x22
	.long	.LASF92
	.byte	0x1
	.byte	0x1f
	.long	0x10f5
	.uleb128 0x1c
	.long	0x10da
	.uleb128 0x27
	.long	.LASF93
	.byte	0x1
	.byte	0x21
	.long	0x76c
	.byte	0x8
	.long	0x652b82fe
	.long	0x3ff71547
	.uleb128 0x24
	.long	.LASF94
	.byte	0x1
	.byte	0x28
	.long	0xfbc
	.byte	0x5
	.byte	0x3
	.long	scs_huge
	.uleb128 0x24
	.long	.LASF95
	.byte	0x1
	.byte	0x29
	.long	0xfbc
	.byte	0x5
	.byte	0x3
	.long	scs_small
	.uleb128 0x27
	.long	.LASF96
	.byte	0x1
	.byte	0x36
	.long	0x76c
	.byte	0x8
	.long	0xfefa39ef
	.long	0x40862e42
	.uleb128 0x27
	.long	.LASF97
	.byte	0x1
	.byte	0x37
	.long	0x76c
	.byte	0x8
	.long	0xd52d3051
	.long	0xc0874910
	.uleb128 0x27
	.long	.LASF98
	.byte	0x1
	.byte	0x3c
	.long	0x76c
	.byte	0x8
	.long	0x0
	.long	0x42b80000
	.uleb128 0x27
	.long	.LASF99
	.byte	0x1
	.byte	0x3d
	.long	0x76c
	.byte	0x8
	.long	0x0
	.long	0x3cb10000
	.uleb128 0x27
	.long	.LASF100
	.byte	0x1
	.byte	0x3e
	.long	0x76c
	.byte	0x8
	.long	0x0
	.long	0x3ca20000
	.uleb128 0x28
	.string	"c_0"
	.byte	0x1
	.byte	0x42
	.long	0x76c
	.byte	0x8
	.long	0x55555535
	.long	0x3fc55555
	.uleb128 0x28
	.string	"c_1"
	.byte	0x1
	.byte	0x43
	.long	0x76c
	.byte	0x8
	.long	0x55555538
	.long	0x3fa55555
	.uleb128 0x28
	.string	"c_2"
	.byte	0x1
	.byte	0x44
	.long	0x76c
	.byte	0x8
	.long	0x31931950
	.long	0x3f811111
	.uleb128 0x28
	.string	"c_3"
	.byte	0x1
	.byte	0x45
	.long	0x76c
	.byte	0x8
	.long	0x3dc3dc5e
	.long	0x3f56c16c
	.uleb128 0x27
	.long	.LASF101
	.byte	0x1
	.byte	0x4a
	.long	0x76c
	.byte	0x8
	.long	0x0
	.long	0x3b400000
	.uleb128 0x24
	.long	.LASF102
	.byte	0x1
	.byte	0x50
	.long	0xfbc
	.byte	0x5
	.byte	0x3
	.long	_errn
	.uleb128 0x29
	.long	.LASF103
	.byte	0x1
	.byte	0x55
	.long	0x1218
	.long	0x4600000
	.uleb128 0x1c
	.long	0x5a
	.uleb128 0x26
	.long	.LASF71
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF72
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF104
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x124a
	.long	0x337
	.string	"exp_rd"
	.long	0x771
	.string	"exp_ru"
	.long	0xba6
	.string	"exp_rn"
	.long	0x1237
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x81
	.value	0x2
	.long	.Ldebug_info0
	.long	0x124a
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB13-.Ltext0
	.long	.LBE13-.Ltext0
	.long	.LBB17-.Ltext0
	.long	.LBE17-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB14-.Ltext0
	.long	.LBE14-.Ltext0
	.long	.LBB18-.Ltext0
	.long	.LBE18-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB15-.Ltext0
	.long	.LBE15-.Ltext0
	.long	.LBB16-.Ltext0
	.long	.LBE16-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB19-.Ltext0
	.long	.LBE19-.Ltext0
	.long	.LBB21-.Ltext0
	.long	.LBE21-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB20-.Ltext0
	.long	.LBE20-.Ltext0
	.long	.LBB22-.Ltext0
	.long	.LBE22-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB36-.Ltext0
	.long	.LBE36-.Ltext0
	.long	.LBB40-.Ltext0
	.long	.LBE40-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB37-.Ltext0
	.long	.LBE37-.Ltext0
	.long	.LBB41-.Ltext0
	.long	.LBE41-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB38-.Ltext0
	.long	.LBE38-.Ltext0
	.long	.LBB39-.Ltext0
	.long	.LBE39-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB42-.Ltext0
	.long	.LBE42-.Ltext0
	.long	.LBB44-.Ltext0
	.long	.LBE44-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB43-.Ltext0
	.long	.LBE43-.Ltext0
	.long	.LBB45-.Ltext0
	.long	.LBE45-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB59-.Ltext0
	.long	.LBE59-.Ltext0
	.long	.LBB63-.Ltext0
	.long	.LBE63-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB60-.Ltext0
	.long	.LBE60-.Ltext0
	.long	.LBB64-.Ltext0
	.long	.LBE64-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB61-.Ltext0
	.long	.LBE61-.Ltext0
	.long	.LBB62-.Ltext0
	.long	.LBE62-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB65-.Ltext0
	.long	.LBE65-.Ltext0
	.long	.LBB67-.Ltext0
	.long	.LBE67-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB66-.Ltext0
	.long	.LBE66-.Ltext0
	.long	.LBB68-.Ltext0
	.long	.LBE68-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB70-.Ltext0
	.long	.LBE70-.Ltext0
	.long	.LBB71-.Ltext0
	.long	.LBE71-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF99:
	.string	"two_m52_56"
.LASF10:
	.string	"__off_t"
.LASF81:
	.string	"scs_zer"
.LASF15:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_chain"
.LASF82:
	.string	"scs_half"
.LASF8:
	.string	"size_t"
.LASF77:
	.string	"radix_rng_double"
.LASF33:
	.string	"_shortbuf"
.LASF98:
	.string	"two_44_43"
.LASF89:
	.string	"twom53"
.LASF79:
	.string	"max_double"
.LASF17:
	.string	"_IO_read_base"
.LASF21:
	.string	"_IO_buf_base"
.LASF60:
	.string	"R3_hi"
.LASF7:
	.string	"long long unsigned int"
.LASF69:
	.string	"exp_ru"
.LASF101:
	.string	"two_m75"
.LASF104:
	.string	"crlibm_second_step_taken"
.LASF105:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF53:
	.string	"sign"
.LASF11:
	.string	"long int"
.LASF68:
	.string	"exp_rd"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF9:
	.string	"__quad_t"
.LASF48:
	.string	"double"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF85:
	.string	"scs_sixinv"
.LASF75:
	.string	"radix_mone_double"
.LASF84:
	.string	"scs_two"
.LASF44:
	.string	"_IO_marker"
.LASF71:
	.string	"stdin"
.LASF0:
	.string	"unsigned int"
.LASF55:
	.string	"rp_lo"
.LASF107:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF103:
	.string	"errd"
.LASF66:
	.string	"st_to_mem"
.LASF3:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF80:
	.string	"min_double"
.LASF46:
	.string	"_sbuf"
.LASF67:
	.string	"exp_R11"
.LASF2:
	.string	"short unsigned int"
.LASF63:
	.string	"R5_lo"
.LASF23:
	.string	"_IO_save_base"
.LASF93:
	.string	"inv_ln2"
.LASF65:
	.string	"indx"
.LASF51:
	.string	"exception"
.LASF56:
	.string	"ex_hi"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF72:
	.string	"stdout"
.LASF59:
	.string	"r_lo"
.LASF50:
	.string	"h_word"
.LASF88:
	.string	"twom1000"
.LASF20:
	.string	"_IO_write_end"
.LASF108:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF64:
	.string	"crp_hi"
.LASF91:
	.string	"ln2_lo"
.LASF47:
	.string	"_pos"
.LASF96:
	.string	"o_bound"
.LASF26:
	.string	"_markers"
.LASF76:
	.string	"radix_mtwo_double"
.LASF61:
	.string	"R3_lo"
.LASF73:
	.string	"radix_one_double"
.LASF1:
	.string	"unsigned char"
.LASF102:
	.string	"_errn"
.LASF5:
	.string	"short int"
.LASF32:
	.string	"_vtable_offset"
.LASF97:
	.string	"u_bound"
.LASF49:
	.string	"db_number"
.LASF86:
	.string	"tab_exp"
.LASF87:
	.string	"two1000"
.LASF94:
	.string	"scs_huge"
.LASF13:
	.string	"char"
.LASF52:
	.string	"index"
.LASF54:
	.string	"rp_hi"
.LASF45:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF106:
	.string	"exp_fast.c"
.LASF25:
	.string	"_IO_save_end"
.LASF78:
	.string	"radix_mrng_double"
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
.LASF62:
	.string	"R5_hi"
.LASF95:
	.string	"scs_small"
.LASF90:
	.string	"ln2_hi"
.LASF100:
	.string	"two_m53_56"
.LASF92:
	.string	"half"
.LASF24:
	.string	"_IO_backup_base"
.LASF70:
	.string	"exp_rn"
.LASF58:
	.string	"r_hi"
.LASF74:
	.string	"radix_two_double"
.LASF18:
	.string	"_IO_write_base"
.LASF57:
	.string	"ex_lo"
.LASF83:
	.string	"scs_one"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
