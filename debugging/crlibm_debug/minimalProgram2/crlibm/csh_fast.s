	.file	"csh_fast.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# csh_fast.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
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
.globl scs_div_2
	.type	scs_div_2, @function
scs_div_2:
.LFB7:
	.file 1 "csh_fast.c"
	.loc 1 22 0
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
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	movl	8(%ebp), %edx	# num, num
.LVL1:
	.loc 1 29 0
	fldl	32(%edx)	# <variable>.exception.d
	movl	$0, %eax	#, i
	movl	$0, %esi	#, carry.170
	fld1
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jne	.L12	#,
	jp	.L12	#,
	fstp	%st(0)	#
.LVL2:
.L9:
	.loc 1 32 0
	movl	(%edx,%eax,4), %ecx	# <variable>.h_word, old_value
.LVL3:
	.loc 1 34 0
	movl	%ecx, %edi	# old_value, tmp112
	shrl	%edi	# tmp112
	andl	$1073741823, %edi	#, tmp113
	orl	%edi, %esi	# tmp113, tmp114
	movl	%esi, (%edx,%eax,4)	# tmp114, <variable>.h_word
	.loc 1 35 0
	andl	$1, %ecx	#, carry
.LVL4:
	.loc 1 36 0
	movl	%ecx, %esi	# carry, carry.170
	sall	$29, %esi	#, carry.170
.LVL5:
	.loc 1 31 0
	addl	$1, %eax	#, i
.LVL6:
	cmpl	$8, %eax	#, i
	jne	.L9	#,
	.loc 1 39 0
	cmpl	$0, (%edx)	#, <variable>.h_word
	jne	.L7	#,
	.loc 1 40 0
	subl	$1, 40(%edx)	#, <variable>.index
.LVL7:
	movb	$1, %al	#,
.LVL8:
.L6:
	.loc 1 42 0
	movl	(%edx,%eax,4), %ecx	# <variable>.h_word, tmp115
	movl	%ecx, -4(%edx,%eax,4)	# tmp115, <variable>.h_word
	.loc 1 41 0
	addl	$1, %eax	#, i.171
.LVL9:
	cmpl	$8, %eax	#, i.171
	jne	.L6	#,
	.loc 1 44 0
	movl	$0, 28(%edx)	#, <variable>.h_word
	jmp	.L7	#
.LVL10:
.L12:
	.loc 1 48 0
	fmuls	.LC1@GOTOFF(%ebx)	#
	fstpl	32(%edx)	# <variable>.exception.d
.LVL11:
.L7:
	.loc 1 50 0
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
	.size	scs_div_2, .-scs_div_2
.globl do_sinh
	.type	do_sinh, @function
do_sinh:
.LFB13:
	.loc 1 336 0
	.cfi_startproc
.LVL12:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$284, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	fstl	-232(%ebp)	# %sfp
.LVL13:
.LBB16:
	.loc 1 369 0
	movl	inv_ln_2@GOT(%ebx), %eax	#, tmp180
	fmull	(%eax)	# inv_ln_2.d
	fadds	.LC2@GOTOFF(%ebx)	#
	fstpl	-200(%ebp)	# %sfp
	movl	-200(%ebp), %eax	# %sfp, k
.LVL14:
.LBE16:
	.loc 1 370 0
	testl	%eax, %eax	# k
	jne	.L14	#,
	fldl	-232(%ebp)	# %sfp
	fldz
	fstpl	-248(%ebp)	# %sfp
	jmp	.L15	#
.L14:
	.loc 1 371 0
	movl	%eax, -188(%ebp)	# k,
	fildl	-188(%ebp)	#
	movl	ln2_hi@GOT(%ebx), %edx	#, tmp186
	fld	%st(0)	#
	fmull	(%edx)	# ln2_hi.d
	fsubrl	-232(%ebp)	# %sfp
.LVL15:
	.loc 1 372 0
	movl	ln2_lo@GOT(%ebx), %edx	#, tmp188
	fldl	(%edx)	# ln2_lo.d
.LVL16:
	fchs
	fmulp	%st, %st(2)	#,
.LVL17:
.LBB17:
	.loc 1 373 0
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL18:
	fld	%st(1)	#
.LVL19:
	fldz
	fxch	%st(3)	#
	fucomi	%st(3), %st	#,
	fstp	%st(3)	#
	ja	.L18	#,
	fchs
.L18:
	fld	%st(3)	#
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L181	#,
	fchs
	fxch	%st(1)	#
.LVL20:
	jmp	.L21	#
.LVL21:
.L181:
	fxch	%st(1)	#
.LVL22:
.L21:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L170	#,
.LVL23:
	fsub	%st, %st(1)	#,
.LVL24:
	fxch	%st(2)	#
	fsubp	%st, %st(1)	#,
.LVL25:
	fstpl	-248(%ebp)	# %sfp
.LVL26:
	jmp	.L15	#
.LVL27:
.L170:
	fsub	%st, %st(2)	#,
.LVL28:
	fxch	%st(1)	#
	fsubp	%st, %st(2)	#,
.LVL29:
	fxch	%st(1)	#
	fstpl	-248(%ebp)	# %sfp
.LVL30:
.L15:
.LBE17:
	.loc 1 389 0
	movl	two_43_44@GOT(%ebx), %edx	#, tmp197
	fldl	(%edx)	# two_43_44.d
.LVL31:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
	fstl	-184(%ebp)	# table_index_float
.LVL32:
	.loc 1 391 0
	movl	-184(%ebp), %edx	#, table_index
.LVL33:
	.loc 1 393 0
	addl	$89, %edx	#, table_index.199
.LVL34:
	.loc 1 394 0
	fsubp	%st, %st(1)	#,
	fsubrp	%st, %st(1)	#,
.LVL35:
	.loc 1 397 0
	fstl	-200(%ebp)	# %sfp
.LVL36:
	.loc 1 401 0
	movl	-196(%ebp), %esi	# %sfp, tmp200
	andl	$2147483647, %esi	#, tmp200
	movl	two_minus_30@GOT(%ebx), %ecx	#, tmp201
	cmpl	4(%ecx), %esi	# two_minus_30.i, tmp200
	jg	.L24	#,
	fldz
.LVL37:
	fstl	-224(%ebp)	# %sfp
	fstpl	-216(%ebp)	# %sfp
	jmp	.L25	#
.L24:
	.loc 1 399 0
	fld	%st(0)	#
	fmul	%st(1), %st	#,
	.loc 1 406 0
	movl	s7@GOT(%ebx), %ecx	#, tmp206
	fld	%st(0)	#
	fmull	(%ecx)	# s7.d
	movl	s5@GOT(%ebx), %ecx	#, tmp205
	faddl	(%ecx)	# s5.d
	fmul	%st(1), %st	#,
	movl	s3@GOT(%ebx), %ecx	#, tmp204
	faddl	(%ecx)	# s3.d
	fmul	%st(1), %st	#,
	fstpl	-224(%ebp)	# %sfp
.LVL38:
	.loc 1 409 0
	movl	c6@GOT(%ebx), %ecx	#, tmp213
	fld	%st(0)	#
	fmull	(%ecx)	# c6.d
.LVL39:
	movl	c4@GOT(%ebx), %ecx	#, tmp212
	faddl	(%ecx)	# c4.d
	fmul	%st(1), %st	#,
	movl	c2@GOT(%ebx), %ecx	#, tmp211
	faddl	(%ecx)	# c2.d
	fmulp	%st, %st(1)	#,
	fstpl	-216(%ebp)	# %sfp
.LVL40:
.L25:
	.loc 1 412 0
	cmpl	$89, %edx	#, table_index.199
	je	.L26	#,
	.loc 1 414 0
	leal	cosh_sinh_table@GOTOFF(%ebx), %ecx	#, tmp218
	movl	%edx, %esi	# table_index.199, tmp219
	sall	$5, %esi	#, tmp219
	fldl	(%esi,%ecx)	# <variable>.d
.LVL41:
	.loc 1 415 0
	leal	1(,%edx,4), %edi	#, tmp221
	fldl	cosh_sinh_table@GOTOFF(%ebx,%edi,8)	# <variable>.d
	fstl	-264(%ebp)	# %sfp
.LVL42:
	.loc 1 416 0
	leal	1(%edx,%edx), %edx	#, tmp225
.LVL43:
	sall	$4, %edx	#, tmp227
	fldl	(%edx,%ecx)	# <variable>.d
.LVL44:
	.loc 1 417 0
	fldl	24(%ecx,%esi)	# <variable>.d
	fstl	-256(%ebp)	# %sfp
.LVL45:
	.loc 1 421 0
	fldl	-248(%ebp)	# %sfp
	fmul	%st(4), %st	#,
	faddp	%st, %st(1)	#,
	fxch	%st(2)	#
.LVL46:
	.loc 1 422 0
	fmul	%st(4), %st	#,
.LVL47:
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	fstpl	-200(%ebp)	# %sfp
.LVL48:
.LBB18:
	.loc 1 423 0
	fldl	.LC4@GOTOFF(%ebx)	#
.LVL49:
	fld	%st(2)	#
	fmul	%st(1), %st	#,
	fxch	%st(1)	#
.LVL50:
	fmul	%st(4), %st	#,
.LVL51:
	fld	%st(3)	#
.LVL52:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL53:
	fld	%st(4)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL54:
	fld	%st(3)	#
.LVL55:
	fsub	%st(2), %st	#,
.LVL56:
	fld	%st(5)	#
.LVL57:
	fsub	%st(2), %st	#,
	fstpl	-208(%ebp)	# %sfp
.LVL58:
	fld	%st(5)	#
.LVL59:
	fmul	%st(5), %st	#,
.LVL60:
	.loc 1 424 0
	fld	%st(3)	#
.LVL61:
	fmul	%st(3), %st	#,
	fsub	%st(1), %st	#,
	fxch	%st(4)	#
	fmull	-208(%ebp)	# %sfp
	faddp	%st, %st(4)	#,
	fld	%st(1)	#
	fmul	%st(3), %st	#,
	faddp	%st, %st(4)	#,
	fxch	%st(1)	#
	fmull	-208(%ebp)	# %sfp
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
.LBE18:
	faddl	-200(%ebp)	# %sfp
.LVL62:
	.loc 1 425 0
	fldl	-216(%ebp)	# %sfp
.LVL63:
	fmul	%st(4), %st	#,
	faddp	%st, %st(1)	#,
.LVL64:
	.loc 1 426 0
	fldl	-224(%ebp)	# %sfp
.LVL65:
	fmul	%st(3), %st	#,
	faddp	%st, %st(1)	#,
	fstl	-272(%ebp)	# %sfp
.LVL66:
.LBB19:
	.loc 1 427 0
	fadd	%st(2), %st	#,
.LVL67:
	fxch	%st(2)	#
.LVL68:
	fstl	-240(%ebp)	# %sfp
	fldz
.LVL69:
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	ja	.L29	#,
	fld	%st(0)	#
	fchs
	fstpl	-240(%ebp)	# %sfp
.L29:
	fldl	-272(%ebp)	# %sfp
	fstl	-200(%ebp)	# %sfp
	fldz
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	ja	.L182	#,
	fchs
	fstpl	-200(%ebp)	# %sfp
	jmp	.L32	#
.L182:
	fstp	%st(0)	#
.L32:
	fldl	-240(%ebp)	# %sfp
	fldl	-200(%ebp)	# %sfp
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L171	#,
.LVL70:
	fsubr	%st(2), %st	#,
.LVL71:
	fsubrl	-272(%ebp)	# %sfp
.LVL72:
	fstpl	-240(%ebp)	# %sfp
.LVL73:
	jmp	.L35	#
.LVL74:
.L171:
	fldl	-272(%ebp)	# %sfp
	fsubr	%st(3), %st	#,
	fsubrp	%st, %st(1)	#,
	fstpl	-240(%ebp)	# %sfp
.LVL75:
.L35:
.LBE19:
.LBB20:
	.loc 1 428 0
	fld	%st(2)	#
	fadd	%st(2), %st	#,
.LVL76:
	fld	%st(3)	#
.LVL77:
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L183	#,
	fchs
	fxch	%st(3)	#
	jmp	.L38	#
.L183:
	fxch	%st(3)	#
.L38:
	fstl	-200(%ebp)	# %sfp
	fldz
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	ja	.L41	#,
	fld	%st(0)	#
	fchs
	fstpl	-200(%ebp)	# %sfp
.L41:
	fldl	-200(%ebp)	# %sfp
	fxch	%st(4)	#
	fucomip	%st(4), %st	#,
	fstp	%st(3)	#
	jbe	.L172	#,
	fld	%st(3)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
	faddl	-240(%ebp)	# %sfp
	fadds	.LC3@GOTOFF(%ebx)	#
	jmp	.L44	#
.L172:
	fsubr	%st, %st(2)	#,
	fxch	%st(2)	#
	fadd	%st(3), %st	#,
	fadds	.LC3@GOTOFF(%ebx)	#
	faddl	-240(%ebp)	# %sfp
.L44:
.LVL78:
	fld	%st(0)	#
	fadd	%st(3), %st	#,
.LVL79:
	fsubr	%st, %st(3)	#,
	fxch	%st(1)	#
.LVL80:
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
	fstpl	-200(%ebp)	# %sfp
.LVL81:
.LBE20:
.LBB21:
	.loc 1 431 0
	fld	%st(2)	#
.LVL82:
	fmull	.LC4@GOTOFF(%ebx)	#
.LVL83:
	fld	%st(3)	#
.LVL84:
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL85:
	fld	%st(3)	#
.LVL86:
	fsub	%st(1), %st	#,
.LVL87:
	fld	%st(6)	#
.LVL88:
	fmul	%st(5), %st	#,
	fxch	%st(7)	#
.LVL89:
.LBE21:
	.loc 1 432 0
	fmull	-256(%ebp)	# %sfp
.LVL90:
	faddl	-264(%ebp)	# %sfp
	fxch	%st(5)	#
.LVL91:
	.loc 1 433 0
	fmull	-248(%ebp)	# %sfp
.LVL92:
	faddp	%st, %st(5)	#,
.LVL93:
.LBB22:
	.loc 1 434 0
	fld	%st(2)	#
	fmul	%st(2), %st	#,
	fsub	%st(7), %st	#,
	fxch	%st(2)	#
.LVL94:
	fmull	-208(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fmul	%st, %st(2)	#,
	fxch	%st(1)	#
.LVL95:
	faddp	%st, %st(2)	#,
	fmull	-208(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
.LBE22:
	faddp	%st, %st(2)	#,
.LVL96:
	.loc 1 435 0
	fldl	-224(%ebp)	# %sfp
	fmul	%st(4), %st	#,
	faddp	%st, %st(2)	#,
	.loc 1 436 0
	fldl	-216(%ebp)	# %sfp
	fmul	%st(3), %st	#,
	faddp	%st, %st(2)	#,
	fxch	%st(3)	#
	.loc 1 437 0
	faddp	%st, %st(1)	#,
.LVL97:
.LBB23:
	.loc 1 438 0
	fld	%st(1)	#
.LVL98:
	fadd	%st(1), %st	#,
.LVL99:
	fld	%st(2)	#
.LVL100:
	fldz
	fxch	%st(4)	#
.LVL101:
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L47	#,
	fchs
.L47:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L184	#,
	fchs
	fxch	%st(1)	#
.LVL102:
	jmp	.L50	#
.LVL103:
.L184:
	fxch	%st(1)	#
.LVL104:
.L50:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L173	#,
.LVL105:
	fsub	%st, %st(2)	#,
.LVL106:
	fxch	%st(1)	#
	fsubp	%st, %st(2)	#,
.LVL107:
	jmp	.L53	#
.LVL108:
.L173:
	fsub	%st, %st(1)	#,
.LVL109:
	fxch	%st(1)	#
.LVL110:
	fsubrp	%st, %st(2)	#,
.LVL111:
	jmp	.L53	#
.LVL112:
.L26:
.LBE23:
.LBB24:
	.loc 1 441 0
	fldl	-224(%ebp)	# %sfp
.LVL113:
	fmul	%st(1), %st	#,
	faddl	-248(%ebp)	# %sfp
.LVL114:
	fld	%st(1)	#
.LVL115:
	fadd	%st(1), %st	#,
.LVL116:
	fld	%st(2)	#
.LVL117:
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
	ja	.L185	#,
	fchs
	fxch	%st(1)	#
	jmp	.L59	#
.L185:
	fxch	%st(1)	#
.L59:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L174	#,
.LVL118:
	fsub	%st, %st(2)	#,
.LVL119:
	fxch	%st(1)	#
	fsubp	%st, %st(2)	#,
.LVL120:
	fxch	%st(1)	#
	fstpl	-200(%ebp)	# %sfp
.LVL121:
	jmp	.L62	#
.LVL122:
.L174:
	fsub	%st, %st(1)	#,
.LVL123:
	fxch	%st(2)	#
	fsubp	%st, %st(1)	#,
.LVL124:
	fstpl	-200(%ebp)	# %sfp
.LVL125:
.L62:
.LBE24:
.LBB25:
	.loc 1 442 0
	fldl	-216(%ebp)	# %sfp
	fadds	.LC0@GOTOFF(%ebx)	#
.LVL126:
	fldz
.LVL127:
	fldl	-216(%ebp)	# %sfp
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L175	#,
	fld1
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	seta	%dl	#, iftmp.99
.LVL128:
	jmp	.L65	#
.LVL129:
.L175:
	fstp	%st(0)	#
	fld1
	fchs
	fldl	-216(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	seta	%dl	#, iftmp.99
.LVL130:
.L65:
	testb	%dl, %dl	# iftmp.99
	je	.L66	#,
.LVL131:
	fld	%st(0)	#
	fsubs	.LC0@GOTOFF(%ebx)	#
.LVL132:
	fsubrl	-216(%ebp)	# %sfp
.LVL133:
	fxch	%st(1)	#
.LVL134:
	jmp	.L53	#
.LVL135:
.L66:
	fldl	-216(%ebp)	# %sfp
.LVL136:
	fsubr	%st(1), %st	#,
	fsubrs	.LC0@GOTOFF(%ebx)	#
	fxch	%st(1)	#
.LVL137:
.L53:
.LBE25:
	.loc 1 445 0
	testl	%eax, %eax	# k
	je	.L67	#,
	.loc 1 380 0
	movl	$0, -208(%ebp)	#, %sfp
	.loc 1 381 0
	leal	1022(%eax), %edx	#, tmp312
	sall	$20, %edx	#, tmp312
	movl	%edx, -204(%ebp)	# tmp312, %sfp
	.loc 1 382 0
	movl	$0, -216(%ebp)	#, %sfp
	.loc 1 383 0
	movl	%eax, %edx	# k, tmp314
	notl	%edx	# tmp314
	addl	$1023, %edx	#, tmp315
	sall	$20, %edx	#, tmp315
	movl	%edx, -212(%ebp)	# tmp315, %sfp
	.loc 1 446 0
	leal	34(%eax), %edx	#, tmp317
	cmpl	$68, %edx	#, tmp317
	ja	.L68	#,
	.loc 1 447 0
	fldl	-208(%ebp)	# %sfp
.LVL138:
	fld	%st(0)	#
	fmul	%st(2), %st	#,
.LVL139:
	.loc 1 448 0
	fld	%st(3)	#
.LVL140:
	fmul	%st(2), %st	#,
	fstpl	-224(%ebp)	# %sfp
.LVL141:
	.loc 1 449 0
	fldl	-216(%ebp)	# %sfp
.LVL142:
	fxch	%st(3)	#
	fchs
	fmul	%st(3), %st	#,
	fxch	%st(4)	#
.LVL143:
	.loc 1 450 0
	fchs
.LVL144:
	fmul	%st(3), %st	#,
	fstpl	-216(%ebp)	# %sfp
.LVL145:
	.loc 1 451 0
	fld	%st(4)	#
.LVL146:
	fmul	%st(2), %st	#,
	fxch	%st(2)	#
.LVL147:
	.loc 1 452 0
	fmull	-200(%ebp)	# %sfp
.LVL148:
	fstpl	-208(%ebp)	# %sfp
	fxch	%st(4)	#
.LVL149:
	.loc 1 453 0
	fmul	%st(2), %st	#,
	fxch	%st(2)	#
.LVL150:
	.loc 1 454 0
	fmull	-200(%ebp)	# %sfp
.LVL151:
	fstpl	-200(%ebp)	# %sfp
.LVL152:
.LBB26:
	.loc 1 456 0
	fld	%st(2)	#
.LVL153:
	fadd	%st(2), %st	#,
.LVL154:
	fld	%st(3)	#
.LVL155:
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L71	#,
	fchs
.L71:
	fld	%st(3)	#
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L186	#,
	fchs
	fxch	%st(1)	#
.LVL156:
	jmp	.L74	#
.LVL157:
.L186:
	fxch	%st(1)	#
.LVL158:
.L74:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L176	#,
	fsubr	%st, %st(3)	#,
	fxch	%st(2)	#
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
	faddl	-200(%ebp)	# %sfp
	faddl	-216(%ebp)	# %sfp
	jmp	.L77	#
.L176:
	fsubr	%st, %st(2)	#,
	fxch	%st(2)	#
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
	faddl	-216(%ebp)	# %sfp
	faddl	-200(%ebp)	# %sfp
.L77:
.LVL159:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL160:
	fsubr	%st, %st(2)	#,
	fxch	%st(2)	#
	faddp	%st, %st(1)	#,
.LVL161:
.LBE26:
.LBB27:
	.loc 1 457 0
	fld	%st(2)	#
.LVL162:
	fadd	%st(2), %st	#,
.LVL163:
	fld	%st(3)	#
.LVL164:
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L80	#,
	fchs
.L80:
	fld	%st(3)	#
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L187	#,
	fchs
	fxch	%st(1)	#
	jmp	.L83	#
.L187:
	fxch	%st(1)	#
.L83:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L177	#,
	fsubr	%st, %st(3)	#,
	fxch	%st(2)	#
	faddp	%st, %st(3)	#,
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	faddl	-208(%ebp)	# %sfp
	jmp	.L86	#
.L177:
	fsubr	%st, %st(2)	#,
	fxch	%st(3)	#
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	faddl	-208(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
.L86:
.LVL165:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL166:
	fsubr	%st, %st(2)	#,
	fxch	%st(1)	#
.LVL167:
	faddp	%st, %st(2)	#,
.LVL168:
.LBE27:
.LBB28:
	.loc 1 458 0
	fld	%st(2)	#
	fadd	%st(1), %st	#,
.LVL169:
	fld	%st(3)	#
.LVL170:
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L89	#,
	fchs
.L89:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L188	#,
	fchs
	fxch	%st(1)	#
.LVL171:
	jmp	.L92	#
.LVL172:
.L188:
	fxch	%st(1)	#
.LVL173:
.L92:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L178	#,
	fsubr	%st, %st(3)	#,
	fxch	%st(1)	#
	faddp	%st, %st(3)	#,
	fxch	%st(1)	#
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	faddl	-224(%ebp)	# %sfp
	jmp	.L95	#
.L178:
	fsubr	%st, %st(1)	#,
	fxch	%st(3)	#
	faddp	%st, %st(1)	#,
	faddl	-224(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
.L95:
.LVL174:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL175:
	fstl	-176(%ebp)	# res_hi
.LVL176:
	fsubrp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
	fstpl	-200(%ebp)	# %sfp
.LVL177:
	jmp	.L96	#
.LVL178:
.L68:
.LBE28:
	.loc 1 460 0
	cmpl	$34, %eax	#, k
	jle	.L97	#,
	.loc 1 462 0
	fldl	-208(%ebp)	# %sfp
.LVL179:
	fmul	%st, %st(1)	#,
.LVL180:
	.loc 1 463 0
	fmul	%st, %st(2)	#,
.LVL181:
	.loc 1 464 0
	fmul	%st, %st(3)	#,
.LVL182:
	.loc 1 465 0
	fmull	-200(%ebp)	# %sfp
.LVL183:
.LBB29:
	.loc 1 466 0
	fld	%st(1)	#
.LVL184:
	fadd	%st(4), %st	#,
.LVL185:
	fld	%st(2)	#
.LVL186:
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L100	#,
	fchs
.L100:
	fld	%st(5)	#
	fldz
	fxch	%st(7)	#
	fucomi	%st(7), %st	#,
	fstp	%st(7)	#
	ja	.L189	#,
	fchs
	fxch	%st(1)	#
.LVL187:
	jmp	.L103	#
.LVL188:
.L189:
	fxch	%st(1)	#
.LVL189:
.L103:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L179	#,
	fsubr	%st, %st(2)	#,
.LVL190:
	fxch	%st(4)	#
	faddp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
	faddp	%st, %st(1)	#,
	jmp	.L106	#
.LVL191:
.L179:
	fsubr	%st, %st(4)	#,
	fxch	%st(2)	#
.LVL192:
	faddp	%st, %st(4)	#,
	fxch	%st(2)	#
	faddp	%st, %st(3)	#,
.LVL193:
	fxch	%st(2)	#
	faddp	%st, %st(1)	#,
.L106:
.LVL194:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL195:
	fstl	-176(%ebp)	# res_hi
.LVL196:
	fsubrp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
	fstpl	-200(%ebp)	# %sfp
.LVL197:
	jmp	.L96	#
.LVL198:
.L97:
.LBE29:
	.loc 1 470 0
	fldl	-216(%ebp)	# %sfp
.LVL199:
	fxch	%st(1)	#
.LVL200:
	fchs
	fmul	%st(1), %st	#,
	fxch	%st(2)	#
.LVL201:
	.loc 1 471 0
	fchs
.LVL202:
	fmul	%st(1), %st	#,
	fxch	%st(3)	#
.LVL203:
	.loc 1 472 0
	fmul	%st(1), %st	#,
.LVL204:
	fxch	%st(1)	#
.LVL205:
	.loc 1 473 0
	fmull	-200(%ebp)	# %sfp
.LVL206:
.LBB30:
	.loc 1 474 0
	fld	%st(2)	#
.LVL207:
	fadd	%st(2), %st	#,
.LVL208:
	fld	%st(3)	#
.LVL209:
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L109	#,
	fchs
.L109:
	fld	%st(3)	#
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L190	#,
	fchs
	fxch	%st(1)	#
	jmp	.L112	#
.L190:
	fxch	%st(1)	#
.L112:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L180	#,
	fsubr	%st, %st(3)	#,
	fxch	%st(2)	#
	faddp	%st, %st(3)	#,
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	faddp	%st, %st(2)	#,
	jmp	.L115	#
.L180:
	fsubr	%st, %st(2)	#,
	fxch	%st(3)	#
	faddp	%st, %st(2)	#,
	fxch	%st(3)	#
	faddp	%st, %st(1)	#,
	faddp	%st, %st(2)	#,
.L115:
.LVL210:
	fld	%st(1)	#
	fadd	%st(1), %st	#,
	fstl	-176(%ebp)	# res_hi
.LVL211:
	fsubrp	%st, %st(1)	#,
.LVL212:
	faddp	%st, %st(1)	#,
	fstpl	-200(%ebp)	# %sfp
.LVL213:
	jmp	.L96	#
.LVL214:
.L67:
	fstp	%st(0)	#
	fstp	%st(0)	#
.LBE30:
	.loc 1 478 0
	fstpl	-176(%ebp)	# res_hi
.LVL215:
.L96:
	.loc 1 483 0
	cmpl	$2, 16(%ebp)	#, rounding_mode
	je	.L118	#,
	cmpl	$3, 16(%ebp)	#, rounding_mode
	je	.L119	#,
	cmpl	$0, 16(%ebp)	#, rounding_mode
	jne	.L116	#,
	.loc 1 486 0
	fldl	-176(%ebp)	# res_hi
	movl	round_cst_cosh@GOT(%ebx), %edx	#, tmp377
	fldl	-200(%ebp)	# %sfp
	fmull	(%edx)	# round_cst_cosh.d
	fadd	%st(1), %st	#,
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jne	.L191	#,
	jnp	.L120	#,
	fstp	%st(0)	#
	jmp	.L116	#
.L119:
	.loc 1 492 0
	fldl	-176(%ebp)	# res_hi
	fstl	-208(%ebp)	# %sfp
	.loc 1 493 0
	fldl	-200(%ebp)	# %sfp
	fstpl	-216(%ebp)	# %sfp
	.loc 1 494 0
	andl	$2147483647, -204(%ebp)	#, %sfp
	.loc 1 495 0
	andl	$2147483647, -212(%ebp)	#, %sfp
	.loc 1 497 0
	movl	$0, %edx	#, tmp382
	movl	-204(%ebp), %ecx	# %sfp,
	andl	$2146435072, %ecx	#,
	movl	%edx, %esi	# tmp382,
	movl	%ecx, %edi	#,
	addl	$0, %esi	#,
	adcl	$1048576, %edi	#,
	movl	%esi, -208(%ebp)	#, %sfp
	movl	%edi, -204(%ebp)	#, %sfp
	.loc 1 500 0
	fldl	-208(%ebp)	# %sfp
	fmull	.LC6@GOTOFF(%ebx)	#
	fldl	-216(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L192	#,
	.loc 1 501 0
	fldz
	fldl	-200(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L193	#,
	movl	%esi, %eax	#,
	movl	%edi, %edx	#,
	addl	$0, %eax	#,
	adcl	$-55574528, %edx	#,
	movl	%eax, -208(%ebp)	#, %sfp
	movl	%edx, -204(%ebp)	#, %sfp
	faddl	-208(%ebp)	# %sfp
	fstpl	-176(%ebp)	# res_hi
	jmp	.L122	#
.L193:
	fstp	%st(0)	#
.L122:
	.loc 1 502 0
	fldl	-176(%ebp)	# res_hi
	jmp	.L120	#
.L118:
	.loc 1 509 0
	fldl	-176(%ebp)	# res_hi
	fstpl	-224(%ebp)	# %sfp
	.loc 1 513 0
	movl	$0, %edx	#, tmp390
	movl	-220(%ebp), %ecx	# %sfp,
	andl	$2146435072, %ecx	#,
	movl	%edx, %esi	# tmp390,
	movl	%ecx, %edi	#,
	addl	$0, %esi	#,
	adcl	$1048576, %edi	#,
	movl	%esi, -216(%ebp)	#, %sfp
	movl	%edi, -212(%ebp)	#, %sfp
	.loc 1 515 0
	fldl	-216(%ebp)	# %sfp
	fmull	.LC6@GOTOFF(%ebx)	#
	.loc 1 512 0
	movl	-200(%ebp), %edi	# %sfp,
	movl	%edi, -208(%ebp)	#, %sfp
	movl	-196(%ebp), %edx	# %sfp,
	andl	$2147483647, %edx	#,
	movl	%edx, -204(%ebp)	#, %sfp
	.loc 1 515 0
	fldl	-208(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L116	#,
	.loc 1 516 0
	fldz
	fldl	-200(%ebp)	# %sfp
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L125	#,
	movl	-216(%ebp), %eax	# %sfp,
	movl	-212(%ebp), %edx	# %sfp,
	addl	$0, %eax	#,
	adcl	$-55574528, %edx	#,
	movl	%eax, -216(%ebp)	#, %sfp
	movl	%edx, -212(%ebp)	#, %sfp
	fldl	-224(%ebp)	# %sfp
	fsubl	-216(%ebp)	# %sfp
	fstpl	-176(%ebp)	# res_hi
.L125:
	.loc 1 517 0
	fldl	-176(%ebp)	# res_hi
	jmp	.L120	#
.L191:
	fstp	%st(0)	#
	jmp	.L116	#
.L192:
	fstp	%st(0)	#
.L116:
	.loc 1 529 0
	movl	crlibm_second_step_taken@GOT(%ebx), %edx	#, tmp399
	addl	$1, (%edx)	#, crlibm_second_step_taken
	.loc 1 532 0
	leal	34(%eax), %edx	#, tmp403
	cmpl	$68, %edx	#, tmp403
	ja	.L127	#,
	.loc 1 533 0
	fldl	-232(%ebp)	# %sfp
	fstpl	4(%esp)	#
	leal	-120(%ebp), %esi	#, tmp404
	movl	%esi, (%esp)	# tmp404,
	call	exp_SC@PLT	#
	.loc 1 534 0
	movl	%esi, 4(%esp)	# tmp404,
	leal	-168(%ebp), %edi	#, tmp406
	movl	%edi, (%esp)	# tmp406,
	call	scs_inv@PLT	#
	.loc 1 535 0
	movl	%edi, 8(%esp)	# tmp406,
	movl	%esi, 4(%esp)	# tmp404,
	leal	-72(%ebp), %esi	#, tmp409
	movl	%esi, (%esp)	# tmp409,
	call	scs_sub@PLT	#
	.loc 1 536 0
	movl	%esi, (%esp)	# tmp409,
	call	scs_div_2@PLT	#
	jmp	.L128	#
.L127:
	.loc 1 538 0
	cmpl	$34, %eax	#, k
	.p2align 4,,2
	jle	.L129	#,
	.loc 1 539 0
	fldl	-232(%ebp)	# %sfp
	fstpl	4(%esp)	#
	leal	-72(%ebp), %esi	#, tmp411
	movl	%esi, (%esp)	# tmp411,
	call	exp_SC@PLT	#
	.loc 1 540 0
	movl	%esi, (%esp)	# tmp411,
	call	scs_div_2@PLT	#
	jmp	.L128	#
.L129:
	.loc 1 543 0
	fldl	-232(%ebp)	# %sfp
	fchs
	fstpl	4(%esp)	#
	leal	-72(%ebp), %esi	#, tmp414
	movl	%esi, (%esp)	# tmp414,
	call	exp_SC@PLT	#
	.loc 1 544 0
	movl	$-1, -28(%ebp)	#, <variable>.sign
	.loc 1 545 0
	movl	%esi, (%esp)	# tmp414,
	call	scs_div_2@PLT	#
.L128:
	.loc 1 547 0
	cmpl	$2, 16(%ebp)	#, rounding_mode
	je	.L132	#,
	cmpl	$3, 16(%ebp)	#, rounding_mode
	je	.L133	#,
	cmpl	$0, 16(%ebp)	#, rounding_mode
	jne	.L130	#,
	.loc 1 549 0
	leal	-72(%ebp), %eax	#, tmp416
	movl	%eax, 4(%esp)	# tmp416,
	leal	-176(%ebp), %eax	#, tmp417
	movl	%eax, (%esp)	# tmp417,
	call	scs_get_d@PLT	#
	jmp	.L130	#
.L133:
	.loc 1 551 0
	leal	-72(%ebp), %eax	#, tmp418
	movl	%eax, 4(%esp)	# tmp418,
	leal	-176(%ebp), %eax	#, tmp419
	movl	%eax, (%esp)	# tmp419,
	call	scs_get_d_pinf@PLT	#
	jmp	.L130	#
.L132:
	.loc 1 553 0
	leal	-72(%ebp), %eax	#, tmp420
	movl	%eax, 4(%esp)	# tmp420,
	leal	-176(%ebp), %eax	#, tmp421
	movl	%eax, (%esp)	# tmp421,
	call	scs_get_d_minf@PLT	#
.L130:
	.loc 1 556 0
	fldl	-176(%ebp)	# res_hi
.L120:
	.loc 1 557 0
	addl	$284, %esp	#,
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
.LFE13:
	.size	do_sinh, .-do_sinh
.globl sinh_rd
	.type	sinh_rd, @function
sinh_rd:
.LFB17:
	.loc 1 617 0
	.cfi_startproc
.LVL216:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$36, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 619 0
	fstl	-16(%ebp)	# %sfp
	.loc 1 620 0
	movl	-12(%ebp), %eax	# %sfp, D.2936
	andl	$2147483647, %eax	#, D.2936
	.loc 1 621 0
	movl	%eax, %edx	# D.2936, tmp62
	andl	$2146435072, %edx	#, tmp62
	cmpl	$2146435071, %edx	#, tmp62
	jg	.L195	#,
	.loc 1 620 0
	movl	%eax, -12(%ebp)	# D.2936, %sfp
	.loc 1 625 0
	movl	max_input_ch@GOT(%ebx), %eax	#, tmp63
	fldl	(%eax)	# max_input_ch.d
	fldl	-16(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L203	#,
	.loc 1 626 0
	fldz
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L204	#,
	.loc 1 627 0
	movl	$-1, -16(%ebp)	#, %sfp
	movl	$2146435071, -12(%ebp)	#, %sfp
	fldl	-16(%ebp)	# %sfp
	jmp	.L195	#
.L204:
	.loc 1 630 0
	movl	$0, -16(%ebp)	#, %sfp
	movl	$-1048576, -12(%ebp)	#, %sfp
	fldl	-16(%ebp)	# %sfp
	jmp	.L195	#
.L203:
	.loc 1 633 0
	movl	$2, 8(%esp)	#,
	fstpl	(%esp)	#
	call	do_sinh@PLT	#
.L195:
	.loc 1 634 0
	addl	$36, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	sinh_rd, .-sinh_rd
.globl sinh_ru
	.type	sinh_ru, @function
sinh_ru:
.LFB16:
	.loc 1 597 0
	.cfi_startproc
.LVL217:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$36, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 599 0
	fstl	-16(%ebp)	# %sfp
	.loc 1 600 0
	movl	-12(%ebp), %eax	# %sfp, D.2917
	andl	$2147483647, %eax	#, D.2917
	.loc 1 601 0
	movl	%eax, %edx	# D.2917, tmp62
	andl	$2146435072, %edx	#, tmp62
	cmpl	$2146435071, %edx	#, tmp62
	jg	.L206	#,
	.loc 1 600 0
	movl	%eax, -12(%ebp)	# D.2917, %sfp
	.loc 1 605 0
	movl	max_input_ch@GOT(%ebx), %eax	#, tmp63
	fldl	(%eax)	# max_input_ch.d
	fldl	-16(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L214	#,
	.loc 1 606 0
	fldz
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L215	#,
	.loc 1 607 0
	movl	$0, -16(%ebp)	#, %sfp
	movl	$2146435072, -12(%ebp)	#, %sfp
	fldl	-16(%ebp)	# %sfp
	jmp	.L206	#
.L215:
	.loc 1 610 0
	movl	$-1, -16(%ebp)	#, %sfp
	movl	$-1048577, -12(%ebp)	#, %sfp
	fldl	-16(%ebp)	# %sfp
	jmp	.L206	#
.L214:
	.loc 1 613 0
	movl	$3, 8(%esp)	#,
	fstpl	(%esp)	#
	call	do_sinh@PLT	#
.L206:
	.loc 1 614 0
	addl	$36, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	sinh_ru, .-sinh_ru
.globl sinh_rz
	.type	sinh_rz, @function
sinh_rz:
.LFB15:
	.loc 1 576 0
	.cfi_startproc
.LVL218:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$36, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 578 0
	fstl	-16(%ebp)	# %sfp
	.loc 1 579 0
	movl	-12(%ebp), %eax	# %sfp, D.2893
	andl	$2147483647, %eax	#, D.2893
	.loc 1 580 0
	movl	%eax, %edx	# D.2893, tmp62
	andl	$2146435072, %edx	#, tmp62
	cmpl	$2146435071, %edx	#, tmp62
	jg	.L217	#,
	.loc 1 579 0
	movl	%eax, -12(%ebp)	# D.2893, %sfp
	.loc 1 584 0
	movl	max_input_ch@GOT(%ebx), %eax	#, tmp63
	fldl	(%eax)	# max_input_ch.d
	fldl	-16(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L225	#,
	.loc 1 585 0
	fstpl	-16(%ebp)	# %sfp
	.loc 1 586 0
	movl	$-1, -16(%ebp)	#, %sfp
	movl	-12(%ebp), %eax	# %sfp, tmp66
	andl	$-2147483648, %eax	#, tmp66
	orl	$2146435071, %eax	#, tmp66
	movl	%eax, -12(%ebp)	# tmp66, %sfp
	fldl	-16(%ebp)	# %sfp
	jmp	.L217	#
.L225:
	.loc 1 588 0
	fldz
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L226	#,
	.loc 1 589 0
	movl	$2, 8(%esp)	#,
	fstpl	(%esp)	#
	call	do_sinh@PLT	#
	jmp	.L217	#
.L226:
	.loc 1 592 0
	movl	$3, 8(%esp)	#,
	fstpl	(%esp)	#
	call	do_sinh@PLT	#
.L217:
	.loc 1 594 0
	addl	$36, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	sinh_rz, .-sinh_rz
.globl sinh_rn
	.type	sinh_rn, @function
sinh_rn:
.LFB14:
	.loc 1 561 0
	.cfi_startproc
.LVL219:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$36, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 563 0
	fstl	-16(%ebp)	# %sfp
	.loc 1 564 0
	movl	-12(%ebp), %eax	# %sfp, D.2873
	andl	$2147483647, %eax	#, D.2873
	movl	%eax, -12(%ebp)	# D.2873, %sfp
	.loc 1 565 0
	fldl	-16(%ebp)	# %sfp
	movl	max_input_ch@GOT(%ebx), %edx	#, tmp63
	fldl	(%edx)	# max_input_ch.d
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L233	#,
	fstp	%st(0)	#
	.loc 1 566 0
	fstpl	-16(%ebp)	# %sfp
	.loc 1 567 0
	movl	$0, -16(%ebp)	#, %sfp
	movl	-12(%ebp), %eax	# %sfp, tmp65
	andl	$-2147483648, %eax	#, tmp65
	orl	$2146435072, %eax	#, tmp65
	movl	%eax, -12(%ebp)	# tmp65, %sfp
	fldl	-16(%ebp)	# %sfp
	jmp	.L230	#
.L233:
	.loc 1 569 0
	andl	$2146435072, %eax	#, tmp67
	cmpl	$2146435071, %eax	#, tmp67
	jg	.L234	#,
	fstp	%st(0)	#
	.loc 1 572 0
	movl	$0, 8(%esp)	#,
	fstpl	(%esp)	#
	call	do_sinh@PLT	#
	jmp	.L230	#
.L234:
	fstp	%st(1)	#
.L230:
	.loc 1 573 0
	addl	$36, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	sinh_rn, .-sinh_rn
.globl do_cosh
	.type	do_cosh, @function
do_cosh:
.LFB8:
	.loc 1 57 0
	.cfi_startproc
.LVL220:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$268, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	fstl	-224(%ebp)	# %sfp
	movl	16(%ebp), %esi	# rounding_mode, rounding_mode
.LVL221:
.LBB45:
	.loc 1 84 0
	movl	inv_ln_2@GOT(%ebx), %eax	#, tmp173
	fmull	(%eax)	# inv_ln_2.d
	fadds	.LC2@GOTOFF(%ebx)	#
	fstpl	-200(%ebp)	# %sfp
	movl	-200(%ebp), %eax	# %sfp, k
.LVL222:
.LBE45:
	.loc 1 85 0
	testl	%eax, %eax	# k
	jne	.L236	#,
	fldl	-224(%ebp)	# %sfp
	fldz
	fstpl	-232(%ebp)	# %sfp
	jmp	.L237	#
.L236:
	.loc 1 86 0
	movl	%eax, -188(%ebp)	# k,
	fildl	-188(%ebp)	#
	movl	ln2_hi@GOT(%ebx), %edx	#, tmp179
	fld	%st(0)	#
	fmull	(%edx)	# ln2_hi.d
	fsubrl	-224(%ebp)	# %sfp
.LVL223:
	.loc 1 87 0
	movl	ln2_lo@GOT(%ebx), %edx	#, tmp181
	fldl	(%edx)	# ln2_lo.d
.LVL224:
	fchs
	fmulp	%st, %st(2)	#,
.LVL225:
.LBB46:
	.loc 1 88 0
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL226:
	fld	%st(1)	#
.LVL227:
	fldz
	fxch	%st(3)	#
	fucomi	%st(3), %st	#,
	fstp	%st(3)	#
	ja	.L240	#,
	fchs
.L240:
	fld	%st(3)	#
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L391	#,
	fchs
	fxch	%st(1)	#
.LVL228:
	jmp	.L243	#
.LVL229:
.L391:
	fxch	%st(1)	#
.LVL230:
.L243:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L381	#,
.LVL231:
	fsub	%st, %st(1)	#,
.LVL232:
	fxch	%st(2)	#
	fsubp	%st, %st(1)	#,
.LVL233:
	fstpl	-232(%ebp)	# %sfp
.LVL234:
	jmp	.L237	#
.LVL235:
.L381:
	fsub	%st, %st(2)	#,
.LVL236:
	fxch	%st(1)	#
	fsubp	%st, %st(2)	#,
.LVL237:
	fxch	%st(1)	#
	fstpl	-232(%ebp)	# %sfp
.LVL238:
.L237:
.LBE46:
	.loc 1 102 0
	movl	two_43_44@GOT(%ebx), %edx	#, tmp190
	fldl	(%edx)	# two_43_44.d
.LVL239:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
	fstl	-200(%ebp)	# %sfp
	.loc 1 104 0
	movl	-200(%ebp), %edx	# %sfp, table_index
.LVL240:
	.loc 1 106 0
	addl	$89, %edx	#, table_index.329
.LVL241:
	.loc 1 107 0
	fsubp	%st, %st(1)	#,
	fsubrp	%st, %st(1)	#,
.LVL242:
	.loc 1 112 0
	fstl	-200(%ebp)	# %sfp
.LVL243:
	.loc 1 117 0
	movl	-196(%ebp), %edi	# %sfp, tmp192
	andl	$2147483647, %edi	#, tmp192
	movl	two_minus_30@GOT(%ebx), %ecx	#, tmp193
	cmpl	4(%ecx), %edi	# two_minus_30.i, tmp192
	jge	.L246	#,
	fldz
.LVL244:
	fstl	-216(%ebp)	# %sfp
	fstpl	-200(%ebp)	# %sfp
	jmp	.L247	#
.L246:
	.loc 1 114 0
	fld	%st(0)	#
	fmul	%st(1), %st	#,
	.loc 1 124 0
	movl	c6@GOT(%ebx), %ecx	#, tmp198
	fld	%st(0)	#
	fmull	(%ecx)	# c6.d
	movl	c4@GOT(%ebx), %ecx	#, tmp197
	faddl	(%ecx)	# c4.d
	fmul	%st(1), %st	#,
	movl	c2@GOT(%ebx), %ecx	#, tmp196
	faddl	(%ecx)	# c2.d
	fmul	%st(1), %st	#,
	fstpl	-200(%ebp)	# %sfp
.LVL245:
	.loc 1 125 0
	movl	s7@GOT(%ebx), %ecx	#, tmp205
	fld	%st(0)	#
	fmull	(%ecx)	# s7.d
.LVL246:
	movl	s5@GOT(%ebx), %ecx	#, tmp204
	faddl	(%ecx)	# s5.d
	fmul	%st(1), %st	#,
	movl	s3@GOT(%ebx), %ecx	#, tmp203
	faddl	(%ecx)	# s3.d
	fmulp	%st, %st(1)	#,
	fstpl	-216(%ebp)	# %sfp
.LVL247:
.L247:
	.loc 1 129 0
	cmpl	$89, %edx	#, table_index.329
	je	.L248	#,
	.loc 1 131 0
	leal	cosh_sinh_table@GOTOFF(%ebx), %ecx	#, tmp210
	movl	%edx, %edi	# table_index.329,
	sall	$5, %edi	#,
	movl	%edi, -208(%ebp)	#, %sfp
	fldl	(%edi,%ecx)	# <variable>.d
.LVL248:
	.loc 1 132 0
	leal	1(,%edx,4), %edi	#, tmp213
.LVL249:
	fldl	cosh_sinh_table@GOTOFF(%ebx,%edi,8)	# <variable>.d
	fstpl	-248(%ebp)	# %sfp
.LVL250:
	.loc 1 133 0
	leal	1(%edx,%edx), %edi	#, tmp217
.LVL251:
	sall	$4, %edi	#, tmp219
	fldl	(%edi,%ecx)	# <variable>.d
.LVL252:
	.loc 1 134 0
	movl	-208(%ebp), %edi	# %sfp,
.LVL253:
	fldl	24(%ecx,%edi)	# <variable>.d
.LVL254:
	fstpl	-240(%ebp)	# %sfp
.LVL255:
.LBB47:
	.loc 1 137 0
	fldl	.LC4@GOTOFF(%ebx)	#
	fld	%st(1)	#
	fmul	%st(1), %st	#,
	fxch	%st(1)	#
.LVL256:
	fmul	%st(4), %st	#,
.LVL257:
	fld	%st(2)	#
.LVL258:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL259:
	fld	%st(4)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL260:
	fld	%st(2)	#
.LVL261:
	fsub	%st(2), %st	#,
.LVL262:
	fld	%st(5)	#
.LVL263:
	fsub	%st(2), %st	#,
	fstpl	-208(%ebp)	# %sfp
.LVL264:
	fld	%st(5)	#
.LVL265:
	fmul	%st(4), %st	#,
.LVL266:
	.loc 1 138 0
	fld	%st(3)	#
.LVL267:
	fmul	%st(3), %st	#,
	fsub	%st(1), %st	#,
	fxch	%st(4)	#
	fmull	-208(%ebp)	# %sfp
	faddp	%st, %st(4)	#,
	fxch	%st(2)	#
.LVL268:
	fmul	%st(1), %st	#,
	faddp	%st, %st(3)	#,
	fmull	-208(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
.LBE47:
	fldl	-240(%ebp)	# %sfp
	fmul	%st(5), %st	#,
	faddl	-248(%ebp)	# %sfp
	fldl	-232(%ebp)	# %sfp
	fmul	%st(4), %st	#,
	faddp	%st, %st(1)	#,
	faddp	%st, %st(2)	#,
	fldl	-216(%ebp)	# %sfp
	fmul	%st(1), %st	#,
	faddp	%st, %st(2)	#,
	fldl	-200(%ebp)	# %sfp
	fmul	%st(4), %st	#,
	faddp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
.LVL269:
.LBB48:
	.loc 1 139 0
	fld	%st(2)	#
.LVL270:
	fadd	%st(1), %st	#,
.LVL271:
	fld	%st(3)	#
.LVL272:
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L251	#,
	fchs
.L251:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L392	#,
	fchs
	fxch	%st(1)	#
.LVL273:
	jmp	.L254	#
.LVL274:
.L392:
	fxch	%st(1)	#
.LVL275:
.L254:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L382	#,
.LVL276:
	fld	%st(0)	#
	fsub	%st(4), %st	#,
.LVL277:
	fsubrp	%st, %st(2)	#,
.LVL278:
	jmp	.L257	#
.LVL279:
.L382:
	fsub	%st, %st(1)	#,
.LVL280:
	fxch	%st(1)	#
.LVL281:
	fsubr	%st(3), %st	#,
	fxch	%st(1)	#
.LVL282:
	jmp	.L257	#
.LVL283:
.L248:
.LBE48:
.LBB49:
	.loc 1 143 0
	fldl	-200(%ebp)	# %sfp
	fadds	.LC0@GOTOFF(%ebx)	#
.LVL284:
	fldz
.LVL285:
	fldl	-200(%ebp)	# %sfp
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L383	#,
	fld1
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	seta	%cl	#, iftmp.15
	jmp	.L260	#
.L383:
	fstp	%st(0)	#
	fld1
	fchs
	fldl	-200(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	seta	%cl	#, iftmp.15
.L260:
	testb	%cl, %cl	# iftmp.15
	je	.L261	#,
.LVL286:
	fld	%st(0)	#
	fsubs	.LC0@GOTOFF(%ebx)	#
.LVL287:
	fsubrl	-200(%ebp)	# %sfp
.LVL288:
	fldz
.LVL289:
	fstl	-240(%ebp)	# %sfp
	fld	%st(0)	#
	fstl	-248(%ebp)	# %sfp
	fxch	%st(3)	#
	fxch	%st(1)	#
	fxch	%st(2)	#
	fxch	%st(1)	#
	jmp	.L257	#
.L261:
.LVL290:
	fldl	-200(%ebp)	# %sfp
.LVL291:
	fsubr	%st(1), %st	#,
	fsubrs	.LC0@GOTOFF(%ebx)	#
.LVL292:
	fldz
.LVL293:
	fstl	-240(%ebp)	# %sfp
	fld	%st(0)	#
	fstl	-248(%ebp)	# %sfp
	fxch	%st(3)	#
	fxch	%st(1)	#
	fxch	%st(2)	#
	fxch	%st(1)	#
.LVL294:
.L257:
.LBE49:
	.loc 1 147 0
	testl	%eax, %eax	# k
	je	.L262	#,
	.loc 1 148 0
	cmpl	$89, %edx	#, table_index.329
	je	.L263	#,
.LVL295:
.LBB50:
	.loc 1 150 0
	fldl	.LC4@GOTOFF(%ebx)	#
.LVL296:
	fld	%st(4)	#
	fmul	%st(1), %st	#,
	fxch	%st(1)	#
.LVL297:
	fmul	%st(6), %st	#,
.LVL298:
	fstpl	-208(%ebp)	# %sfp
.LVL299:
	fld	%st(4)	#
.LVL300:
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL301:
	fldl	-208(%ebp)	# %sfp
.LVL302:
	fsubr	%st(6), %st	#,
	faddl	-208(%ebp)	# %sfp
	fstl	-208(%ebp)	# %sfp
.LVL303:
	fld	%st(5)	#
.LVL304:
	fsub	%st(2), %st	#,
	fstpl	-264(%ebp)	# %sfp
.LVL305:
	fld	%st(0)	#
	fsubr	%st(7), %st	#,
.LVL306:
	fstpl	-256(%ebp)	# %sfp
.LVL307:
	fld	%st(5)	#
.LVL308:
	fmul	%st(7), %st	#,
	fxch	%st(1)	#
.LVL309:
	.loc 1 151 0
	fmul	%st(2), %st	#,
.LVL310:
	fsub	%st(1), %st	#,
	fxch	%st(2)	#
.LVL311:
	fmull	-256(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fldl	-264(%ebp)	# %sfp
	fmull	-208(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fldl	-264(%ebp)	# %sfp
	fmull	-256(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fxch	%st(5)	#
.LBE50:
	fmull	-232(%ebp)	# %sfp
	faddl	-240(%ebp)	# %sfp
	fxch	%st(6)	#
	fmull	-248(%ebp)	# %sfp
	faddp	%st, %st(6)	#,
	faddp	%st, %st(5)	#,
	fldl	-200(%ebp)	# %sfp
	fmul	%st(3), %st	#,
	faddp	%st, %st(5)	#,
	fldl	-216(%ebp)	# %sfp
	fmul	%st(4), %st	#,
	faddp	%st, %st(5)	#,
.LVL312:
.LBB51:
	.loc 1 152 0
	fld	%st(3)	#
	fadd	%st(5), %st	#,
.LVL313:
	fsub	%st, %st(4)	#,
.LVL314:
	fxch	%st(5)	#
.LVL315:
	fsubp	%st, %st(4)	#,
.LVL316:
	fxch	%st(3)	#
.LVL317:
	fstpl	-200(%ebp)	# %sfp
.LVL318:
.LBE51:
.LBB52:
	.loc 1 153 0
	fld	%st(1)	#
.LVL319:
	fadd	%st(4), %st	#,
.LVL320:
	fld	%st(2)	#
.LVL321:
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L266	#,
	fchs
.L266:
	fld	%st(5)	#
	fldz
	fxch	%st(7)	#
	fucomi	%st(7), %st	#,
	fstp	%st(7)	#
	ja	.L393	#,
	fchs
	fxch	%st(1)	#
	jmp	.L269	#
.L393:
	fxch	%st(1)	#
.L269:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L384	#,
	fsubr	%st, %st(2)	#,
	fxch	%st(4)	#
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	faddl	-200(%ebp)	# %sfp
	fadds	.LC3@GOTOFF(%ebx)	#
	jmp	.L272	#
.L384:
	fsubr	%st, %st(4)	#,
	fxch	%st(2)	#
	faddp	%st, %st(4)	#,
	fxch	%st(3)	#
	fadds	.LC3@GOTOFF(%ebx)	#
	faddl	-200(%ebp)	# %sfp
	fxch	%st(1)	#
	fxch	%st(3)	#
	fxch	%st(1)	#
.L272:
.LVL322:
	fld	%st(0)	#
	fadd	%st(4), %st	#,
.LVL323:
	fsubr	%st, %st(4)	#,
	fxch	%st(4)	#
.LVL324:
	faddp	%st, %st(1)	#,
.LVL325:
	jmp	.L273	#
.LVL326:
.L263:
	fstp	%st(2)	#
.LVL327:
	fstp	%st(2)	#
.LVL328:
.LBE52:
.LBB53:
	.loc 1 156 0
	fldl	-216(%ebp)	# %sfp
.LVL329:
	fmul	%st(3), %st	#,
	faddl	-232(%ebp)	# %sfp
.LVL330:
	fld	%st(3)	#
.LVL331:
	fadd	%st(1), %st	#,
.LVL332:
	fld	%st(4)	#
.LVL333:
	fldz
	fxch	%st(6)	#
	fucomi	%st(6), %st	#,
	fstp	%st(6)	#
	ja	.L276	#,
	fchs
.L276:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L394	#,
	fchs
	fxch	%st(1)	#
.LVL334:
	jmp	.L279	#
.LVL335:
.L394:
	fxch	%st(1)	#
.LVL336:
.L279:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L385	#,
.LVL337:
	fsub	%st, %st(4)	#,
.LVL338:
	fxch	%st(1)	#
	fsubp	%st, %st(4)	#,
.LVL339:
	fxch	%st(3)	#
.LVL340:
	fxch	%st(1)	#
	fxch	%st(2)	#
.LVL341:
	fxch	%st(1)	#
.LVL342:
	jmp	.L273	#
.LVL343:
.L385:
	fsub	%st, %st(1)	#,
.LVL344:
	fxch	%st(1)	#
.LVL345:
	fsubrp	%st, %st(4)	#,
	fxch	%st(3)	#
.LVL346:
	fxch	%st(1)	#
	fxch	%st(2)	#
.LVL347:
	fxch	%st(1)	#
.LVL348:
.L273:
.LBE53:
	.loc 1 94 0
	movl	$0, -200(%ebp)	#, %sfp
	.loc 1 95 0
	leal	1022(%eax), %edx	#, tmp318
.LVL349:
	sall	$20, %edx	#, tmp318
	movl	%edx, -196(%ebp)	# tmp318, %sfp
	.loc 1 96 0
	movl	$0, -208(%ebp)	#, %sfp
	.loc 1 97 0
	movl	%eax, %edx	# k, tmp320
	notl	%edx	# tmp320
	addl	$1023, %edx	#, tmp321
	sall	$20, %edx	#, tmp321
	movl	%edx, -204(%ebp)	# tmp321, %sfp
.LVL350:
	.loc 1 158 0
	leal	34(%eax), %edx	#, tmp323
	cmpl	$68, %edx	#, tmp323
	ja	.L282	#,
	.loc 1 160 0
	fldl	-200(%ebp)	# %sfp
.LVL351:
	fld	%st(0)	#
	fmul	%st(4), %st	#,
.LVL352:
	.loc 1 161 0
	fld	%st(3)	#
.LVL353:
	fmul	%st(2), %st	#,
	fstpl	-216(%ebp)	# %sfp
.LVL354:
	.loc 1 162 0
	fldl	-208(%ebp)	# %sfp
.LVL355:
	fmul	%st, %st(5)	#,
.LVL356:
	.loc 1 163 0
	fmul	%st, %st(4)	#,
	fxch	%st(4)	#
	fstpl	-232(%ebp)	# %sfp
.LVL357:
	.loc 1 164 0
	fld	%st(5)	#
.LVL358:
	fmul	%st(2), %st	#,
	fxch	%st(2)	#
.LVL359:
	.loc 1 165 0
	fmul	%st(3), %st	#,
.LVL360:
	fstpl	-208(%ebp)	# %sfp
	fxch	%st(5)	#
.LVL361:
	.loc 1 166 0
	fchs
	fmul	%st(3), %st	#,
	fxch	%st(2)	#
.LVL362:
	.loc 1 167 0
	fchs
.LVL363:
	fmulp	%st, %st(3)	#,
.LVL364:
	fxch	%st(2)	#
	fstpl	-200(%ebp)	# %sfp
.LVL365:
.LBB54:
	.loc 1 169 0
	fld	%st(2)	#
.LVL366:
	fadd	%st(1), %st	#,
.LVL367:
	fld	%st(3)	#
.LVL368:
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L285	#,
	fchs
.L285:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L395	#,
	fchs
	fxch	%st(1)	#
	jmp	.L288	#
.L395:
	fxch	%st(1)	#
.L288:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L386	#,
	fsubr	%st, %st(3)	#,
	fxch	%st(3)	#
	faddp	%st, %st(1)	#,
	fldl	-200(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
	faddl	-232(%ebp)	# %sfp
	jmp	.L291	#
.L386:
	fsubr	%st, %st(1)	#,
	fxch	%st(1)	#
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
	faddl	-232(%ebp)	# %sfp
	faddl	-200(%ebp)	# %sfp
.L291:
.LVL369:
	fld	%st(0)	#
	fadd	%st(3), %st	#,
.LVL370:
	fsubr	%st, %st(3)	#,
	fxch	%st(1)	#
	faddp	%st, %st(3)	#,
.LVL371:
.LBE54:
.LBB55:
	.loc 1 170 0
	fld	%st(1)	#
	fadd	%st(1), %st	#,
.LVL372:
	fld	%st(2)	#
.LVL373:
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L294	#,
	fchs
.L294:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L396	#,
	fchs
	fxch	%st(1)	#
	jmp	.L297	#
.L396:
	fxch	%st(1)	#
.L297:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L387	#,
	fsubr	%st, %st(2)	#,
.LVL374:
	fxch	%st(1)	#
	faddp	%st, %st(2)	#,
	fxch	%st(2)	#
	faddp	%st, %st(1)	#,
	faddl	-208(%ebp)	# %sfp
	jmp	.L300	#
.LVL375:
.L387:
	fsubr	%st, %st(1)	#,
	fxch	%st(2)	#
.LVL376:
	faddp	%st, %st(1)	#,
	faddl	-208(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
.L300:
.LVL377:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL378:
	fsubr	%st, %st(2)	#,
	fxch	%st(1)	#
.LVL379:
	faddp	%st, %st(2)	#,
.LVL380:
.LBE55:
.LBB56:
	.loc 1 171 0
	fld	%st(2)	#
	fadd	%st(1), %st	#,
.LVL381:
	fld	%st(3)	#
.LVL382:
	fldz
	fxch	%st(5)	#
	fucomi	%st(5), %st	#,
	fstp	%st(5)	#
	ja	.L303	#,
	fchs
.L303:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L397	#,
	fchs
	fxch	%st(1)	#
.LVL383:
	jmp	.L306	#
.LVL384:
.L397:
	fxch	%st(1)	#
.LVL385:
.L306:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L388	#,
	fsubr	%st, %st(3)	#,
	fxch	%st(1)	#
	faddp	%st, %st(3)	#,
	fxch	%st(1)	#
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	faddl	-216(%ebp)	# %sfp
	jmp	.L309	#
.L388:
	fsubr	%st, %st(1)	#,
	fxch	%st(3)	#
	faddp	%st, %st(1)	#,
	faddl	-216(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
.L309:
.LVL386:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL387:
	fstl	-176(%ebp)	# res_hi
.LVL388:
	fsubrp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
	fstpl	-200(%ebp)	# %sfp
.LVL389:
	jmp	.L310	#
.LVL390:
.L282:
.LBE56:
	.loc 1 173 0
	cmpl	$34, %eax	#, k
	jle	.L311	#,
	.loc 1 175 0
	fldl	-200(%ebp)	# %sfp
.LVL391:
	fmul	%st, %st(3)	#,
.LVL392:
	.loc 1 176 0
	fmul	%st, %st(2)	#,
	fxch	%st(2)	#
	fstpl	-200(%ebp)	# %sfp
	fxch	%st(3)	#
.LVL393:
	.loc 1 177 0
	fmul	%st(1), %st	#,
	fxch	%st(1)	#
.LVL394:
	.loc 1 178 0
	fmulp	%st, %st(3)	#,
.LVL395:
.LBB57:
	.loc 1 179 0
	fld	%st(1)	#
.LVL396:
	fadd	%st(1), %st	#,
.LVL397:
	fld	%st(2)	#
.LVL398:
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L314	#,
	fchs
.L314:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L398	#,
	fchs
	fxch	%st(1)	#
	jmp	.L317	#
.L398:
	fxch	%st(1)	#
.L317:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L389	#,
	fsubr	%st, %st(2)	#,
.LVL399:
	fxch	%st(1)	#
	faddp	%st, %st(2)	#,
	fxch	%st(2)	#
	faddp	%st, %st(1)	#,
	faddl	-200(%ebp)	# %sfp
	jmp	.L320	#
.LVL400:
.L389:
	fsubr	%st, %st(1)	#,
	fxch	%st(2)	#
.LVL401:
	faddp	%st, %st(1)	#,
	faddl	-200(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
.L320:
.LVL402:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL403:
	fstl	-176(%ebp)	# res_hi
.LVL404:
	fsubrp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
	fstpl	-200(%ebp)	# %sfp
.LVL405:
	jmp	.L310	#
.LVL406:
.L311:
.LBE57:
	.loc 1 183 0
	fldl	-208(%ebp)	# %sfp
.LVL407:
	fmul	%st, %st(3)	#,
.LVL408:
	.loc 1 184 0
	fmul	%st, %st(2)	#,
	fxch	%st(2)	#
	fstpl	-200(%ebp)	# %sfp
	fxch	%st(3)	#
.LVL409:
	.loc 1 185 0
	fchs
	fmul	%st(1), %st	#,
	fxch	%st(3)	#
.LVL410:
	.loc 1 186 0
	fchs
.LVL411:
	fmulp	%st, %st(1)	#,
.LVL412:
.LBB58:
	.loc 1 187 0
	fld	%st(1)	#
.LVL413:
	fadd	%st(3), %st	#,
.LVL414:
	fld	%st(2)	#
.LVL415:
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L323	#,
	fchs
.L323:
	fld	%st(4)	#
	fldz
	fxch	%st(6)	#
	fucomi	%st(6), %st	#,
	fstp	%st(6)	#
	ja	.L399	#,
	fchs
	fxch	%st(1)	#
	jmp	.L326	#
.L399:
	fxch	%st(1)	#
.L326:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L390	#,
	fsubr	%st, %st(2)	#,
	fxch	%st(3)	#
	faddp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
	faddl	-200(%ebp)	# %sfp
	jmp	.L329	#
.L390:
	fsubr	%st, %st(3)	#,
	fxch	%st(2)	#
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
	faddl	-200(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
.L329:
.LVL416:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL417:
	fstl	-176(%ebp)	# res_hi
.LVL418:
	fsubrp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
	fstpl	-200(%ebp)	# %sfp
.LVL419:
	jmp	.L310	#
.LVL420:
.L262:
	fstp	%st(3)	#
.LVL421:
	fstp	%st(3)	#
	fstp	%st(0)	#
.LBE58:
	.loc 1 191 0
	fstpl	-176(%ebp)	# res_hi
.LVL422:
	fstpl	-200(%ebp)	# %sfp
.LVL423:
.L310:
	.loc 1 195 0
	cmpl	$2, %esi	#, rounding_mode
	je	.L332	#,
	cmpl	$3, %esi	#, rounding_mode
	je	.L333	#,
	testl	%esi, %esi	# rounding_mode
	jne	.L330	#,
	.loc 1 198 0
	fldl	-176(%ebp)	# res_hi
	movl	round_cst_cosh@GOT(%ebx), %edx	#, tmp383
	fldl	-200(%ebp)	# %sfp
	fmull	(%edx)	# round_cst_cosh.d
	fadd	%st(1), %st	#,
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jne	.L400	#,
	jnp	.L334	#,
	fstp	%st(0)	#
	jmp	.L330	#
.L333:
	.loc 1 204 0
	fldl	-176(%ebp)	# res_hi
	fstl	-208(%ebp)	# %sfp
	.loc 1 205 0
	fldl	-200(%ebp)	# %sfp
	fstl	-216(%ebp)	# %sfp
	.loc 1 206 0
	andl	$2147483647, -204(%ebp)	#, %sfp
	.loc 1 207 0
	andl	$2147483647, -212(%ebp)	#, %sfp
	.loc 1 209 0
	movl	$0, -232(%ebp)	#, %sfp
	movl	-204(%ebp), %edx	# %sfp,
	andl	$2146435072, %edx	#,
	movl	%edx, -228(%ebp)	#, %sfp
	movl	-232(%ebp), %edx	# %sfp,
	movl	-228(%ebp), %ecx	# %sfp,
	addl	$0, %edx	#,
	adcl	$1048576, %ecx	#,
	movl	%edx, -208(%ebp)	#, %sfp
	movl	%ecx, -204(%ebp)	#, %sfp
	.loc 1 212 0
	fldl	-208(%ebp)	# %sfp
	fmull	.LC6@GOTOFF(%ebx)	#
	fldl	-216(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L401	#,
	.loc 1 213 0
	fldz
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L402	#,
	movl	%edx, %eax	#,
	movl	%ecx, %edx	#,
	addl	$0, %eax	#,
	adcl	$-55574528, %edx	#,
	movl	%eax, -208(%ebp)	#, %sfp
	movl	%edx, -204(%ebp)	#, %sfp
	faddl	-208(%ebp)	# %sfp
	fstpl	-176(%ebp)	# res_hi
	jmp	.L336	#
.L402:
	fstp	%st(0)	#
.L336:
	.loc 1 214 0
	fldl	-176(%ebp)	# res_hi
	jmp	.L334	#
.L332:
	.loc 1 221 0
	fldl	-176(%ebp)	# res_hi
	fstpl	-232(%ebp)	# %sfp
	.loc 1 225 0
	movl	$0, -208(%ebp)	#, %sfp
	movl	-228(%ebp), %edx	# %sfp,
	andl	$2146435072, %edx	#,
	movl	%edx, -204(%ebp)	#, %sfp
	movl	-208(%ebp), %edx	# %sfp,
	movl	-204(%ebp), %ecx	# %sfp,
	addl	$0, %edx	#,
	adcl	$1048576, %ecx	#,
	movl	%edx, -216(%ebp)	#, %sfp
	movl	%ecx, -212(%ebp)	#, %sfp
	.loc 1 227 0
	fldl	-216(%ebp)	# %sfp
	fmull	.LC6@GOTOFF(%ebx)	#
	.loc 1 224 0
	movl	-200(%ebp), %ecx	# %sfp,
	movl	%ecx, -208(%ebp)	#, %sfp
	movl	-196(%ebp), %edi	# %sfp,
	andl	$2147483647, %edi	#,
	movl	%edi, -204(%ebp)	#, %sfp
	.loc 1 227 0
	fldl	-208(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L330	#,
	.loc 1 228 0
	fldz
	fldl	-200(%ebp)	# %sfp
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L339	#,
	movl	-216(%ebp), %eax	# %sfp,
	movl	-212(%ebp), %edx	# %sfp,
	addl	$0, %eax	#,
	adcl	$-55574528, %edx	#,
	movl	%eax, -216(%ebp)	#, %sfp
	movl	%edx, -212(%ebp)	#, %sfp
	fldl	-232(%ebp)	# %sfp
	fsubl	-216(%ebp)	# %sfp
	fstpl	-176(%ebp)	# res_hi
.L339:
	.loc 1 229 0
	fldl	-176(%ebp)	# res_hi
	jmp	.L334	#
.L400:
	fstp	%st(0)	#
	jmp	.L330	#
.L401:
	fstp	%st(0)	#
	fstp	%st(0)	#
.L330:
	.loc 1 237 0
	movl	crlibm_second_step_taken@GOT(%ebx), %edx	#, tmp405
	addl	$1, (%edx)	#, crlibm_second_step_taken
	.loc 1 241 0
	leal	79(%eax), %edx	#, tmp409
	cmpl	$158, %edx	#, tmp409
	ja	.L341	#,
	.loc 1 242 0
	fldl	-224(%ebp)	# %sfp
	fstpl	4(%esp)	#
	leal	-120(%ebp), %edi	#, tmp410
	movl	%edi, (%esp)	# tmp410,
	call	exp_SC@PLT	#
	.loc 1 243 0
	movl	%edi, 4(%esp)	# tmp410,
	leal	-168(%ebp), %eax	#,
	movl	%eax, -224(%ebp)	#, %sfp
	movl	%eax, (%esp)	#,
	call	scs_inv@PLT	#
	.loc 1 244 0
	movl	-224(%ebp), %edx	# %sfp,
	movl	%edx, 8(%esp)	#,
	movl	%edi, 4(%esp)	# tmp410,
	leal	-72(%ebp), %edi	#, tmp415
	movl	%edi, (%esp)	# tmp415,
	call	scs_add@PLT	#
	.loc 1 245 0
	movl	%edi, (%esp)	# tmp415,
	call	scs_div_2@PLT	#
	jmp	.L342	#
.L341:
	.loc 1 247 0
	cmpl	$79, %eax	#, k
	.p2align 4,,2
	jle	.L343	#,
	.loc 1 248 0
	fldl	-224(%ebp)	# %sfp
	fstpl	4(%esp)	#
	leal	-72(%ebp), %edi	#, tmp417
	movl	%edi, (%esp)	# tmp417,
	call	exp_SC@PLT	#
	.loc 1 249 0
	movl	%edi, (%esp)	# tmp417,
	call	scs_div_2@PLT	#
	jmp	.L342	#
.L343:
	.loc 1 252 0
	fldl	-224(%ebp)	# %sfp
	fchs
	fstpl	4(%esp)	#
	leal	-72(%ebp), %edi	#, tmp420
	movl	%edi, (%esp)	# tmp420,
	call	exp_SC@PLT	#
	.loc 1 253 0
	movl	%edi, (%esp)	# tmp420,
	call	scs_div_2@PLT	#
.L342:
	.loc 1 256 0
	cmpl	$2, %esi	#, rounding_mode
	je	.L346	#,
	cmpl	$3, %esi	#, rounding_mode
	je	.L347	#,
	testl	%esi, %esi	# rounding_mode
	.p2align 4,,3
	jne	.L344	#,
	.loc 1 258 0
	leal	-72(%ebp), %eax	#, tmp422
	movl	%eax, 4(%esp)	# tmp422,
	leal	-176(%ebp), %eax	#, tmp423
	movl	%eax, (%esp)	# tmp423,
	call	scs_get_d@PLT	#
	jmp	.L344	#
.L347:
	.loc 1 260 0
	leal	-72(%ebp), %eax	#, tmp424
	movl	%eax, 4(%esp)	# tmp424,
	leal	-176(%ebp), %eax	#, tmp425
	movl	%eax, (%esp)	# tmp425,
	call	scs_get_d_pinf@PLT	#
	jmp	.L344	#
.L346:
	.loc 1 262 0
	leal	-72(%ebp), %eax	#, tmp426
	movl	%eax, 4(%esp)	# tmp426,
	leal	-176(%ebp), %eax	#, tmp427
	movl	%eax, (%esp)	# tmp427,
	call	scs_get_d_minf@PLT	#
.L344:
	.loc 1 264 0
	fldl	-176(%ebp)	# res_hi
.L334:
	.loc 1 265 0
	addl	$268, %esp	#,
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
	.size	do_cosh, .-do_cosh
.globl cosh_rd
	.type	cosh_rd, @function
cosh_rd:
.LFB12:
	.loc 1 310 0
	.cfi_startproc
.LVL424:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$36, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 312 0
	fstl	-16(%ebp)	# %sfp
	.loc 1 313 0
	movl	-12(%ebp), %eax	# %sfp, D.2400
	andl	$2147483647, %eax	#, D.2400
	movl	%eax, -12(%ebp)	# D.2400, %sfp
	.loc 1 314 0
	andl	$2146435072, %eax	#, tmp63
	cmpl	$2146435071, %eax	#, tmp63
	jle	.L404	#,
	fstp	%st(0)	#
	.loc 1 315 0
	fldl	-16(%ebp)	# %sfp
	jmp	.L405	#
.L404:
	.loc 1 317 0
	movl	max_input_ch@GOT(%ebx), %eax	#, tmp64
	fldl	(%eax)	# max_input_ch.d
	fldl	-16(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L410	#,
	fstp	%st(0)	#
	.loc 1 318 0
	movl	$-1, -16(%ebp)	#, %sfp
	movl	$2146435071, -12(%ebp)	#, %sfp
	fldl	-16(%ebp)	# %sfp
	jmp	.L405	#
.L410:
	.loc 1 320 0
	movl	$2, 8(%esp)	#,
	fstpl	(%esp)	#
	call	do_cosh@PLT	#
.L405:
	.loc 1 321 0
	addl	$36, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	cosh_rd, .-cosh_rd
.globl cosh_ru
	.type	cosh_ru, @function
cosh_ru:
.LFB11:
	.loc 1 296 0
	.cfi_startproc
.LVL425:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$36, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 298 0
	fstl	-16(%ebp)	# %sfp
	.loc 1 299 0
	movl	-12(%ebp), %eax	# %sfp, D.2384
	andl	$2147483647, %eax	#, D.2384
	movl	%eax, -12(%ebp)	# D.2384, %sfp
	.loc 1 300 0
	fldl	-16(%ebp)	# %sfp
	movl	max_input_ch@GOT(%ebx), %edx	#, tmp63
	fldl	(%edx)	# max_input_ch.d
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L417	#,
	fstp	%st(0)	#
	fstp	%st(0)	#
	.loc 1 301 0
	movl	$0, -16(%ebp)	#, %sfp
	movl	$2146435072, -12(%ebp)	#, %sfp
	fldl	-16(%ebp)	# %sfp
	jmp	.L414	#
.L417:
	.loc 1 303 0
	andl	$2146435072, %eax	#, tmp65
	cmpl	$2146435071, %eax	#, tmp65
	jg	.L418	#,
	fstp	%st(0)	#
	.loc 1 306 0
	movl	$3, 8(%esp)	#,
	fstpl	(%esp)	#
	call	do_cosh@PLT	#
	jmp	.L414	#
.L418:
	fstp	%st(1)	#
.L414:
	.loc 1 307 0
	addl	$36, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	cosh_ru, .-cosh_ru
.globl cosh_rz
	.type	cosh_rz, @function
cosh_rz:
.LFB10:
	.loc 1 282 0
	.cfi_startproc
.LVL426:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$36, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 284 0
	fstl	-16(%ebp)	# %sfp
	.loc 1 285 0
	movl	-12(%ebp), %eax	# %sfp, D.2368
	andl	$2147483647, %eax	#, D.2368
	movl	%eax, -12(%ebp)	# D.2368, %sfp
	.loc 1 286 0
	andl	$2146435072, %eax	#, tmp63
	cmpl	$2146435071, %eax	#, tmp63
	jle	.L420	#,
	fstp	%st(0)	#
	.loc 1 287 0
	fldl	-16(%ebp)	# %sfp
	jmp	.L421	#
.L420:
	.loc 1 289 0
	movl	max_input_ch@GOT(%ebx), %eax	#, tmp64
	fldl	(%eax)	# max_input_ch.d
	fldl	-16(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L426	#,
	fstp	%st(0)	#
	.loc 1 290 0
	movl	$-1, -16(%ebp)	#, %sfp
	movl	$2146435071, -12(%ebp)	#, %sfp
	fldl	-16(%ebp)	# %sfp
	jmp	.L421	#
.L426:
	.loc 1 292 0
	movl	$2, 8(%esp)	#,
	fstpl	(%esp)	#
	call	do_cosh@PLT	#
.L421:
	.loc 1 293 0
	addl	$36, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	cosh_rz, .-cosh_rz
.globl cosh_rn
	.type	cosh_rn, @function
cosh_rn:
.LFB9:
	.loc 1 268 0
	.cfi_startproc
.LVL427:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$36, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	.loc 1 270 0
	fstl	-16(%ebp)	# %sfp
	.loc 1 271 0
	movl	-12(%ebp), %eax	# %sfp, D.2352
	andl	$2147483647, %eax	#, D.2352
	movl	%eax, -12(%ebp)	# D.2352, %sfp
	.loc 1 272 0
	fldl	-16(%ebp)	# %sfp
	movl	max_input_ch@GOT(%ebx), %edx	#, tmp63
	fldl	(%edx)	# max_input_ch.d
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L433	#,
	fstp	%st(0)	#
	fstp	%st(0)	#
	.loc 1 273 0
	movl	$0, -16(%ebp)	#, %sfp
	movl	$2146435072, -12(%ebp)	#, %sfp
	fldl	-16(%ebp)	# %sfp
	jmp	.L430	#
.L433:
	.loc 1 275 0
	andl	$2146435072, %eax	#, tmp65
	cmpl	$2146435071, %eax	#, tmp65
	jg	.L434	#,
	fstp	%st(0)	#
	.loc 1 278 0
	movl	$0, 8(%esp)	#,
	fstpl	(%esp)	#
	call	do_cosh@PLT	#
	jmp	.L430	#
.L434:
	fstp	%st(1)	#
.L430:
	.loc 1 279 0
	addl	$36, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	cosh_rn, .-cosh_rn
.globl inv_ln_2
	.section	.rodata
	.align 4
	.type	inv_ln_2, @object
	.size	inv_ln_2, 8
inv_ln_2:
# i:
	.long	1697350398
	.long	1073157447
.globl ln2_hi
	.align 4
	.type	ln2_hi, @object
	.size	ln2_hi, 8
ln2_hi:
# i:
	.long	-17156096
	.long	1072049730
.globl ln2_lo
	.align 4
	.type	ln2_lo, @object
	.size	ln2_lo, 8
ln2_lo:
# i:
	.long	-1815648464
	.long	1026487127
.globl two_43_44
	.align 4
	.type	two_43_44, @object
	.size	two_43_44, 8
two_43_44:
# i:
	.long	0
	.long	1119354880
.globl two_minus_30
	.align 4
	.type	two_minus_30, @object
	.size	two_minus_30, 8
two_minus_30:
# i:
	.long	0
	.long	1030750208
.globl bias
	.align 4
	.type	bias, @object
	.size	bias, 4
bias:
	.long	89
.globl max_input_ch
	.align 4
	.type	max_input_ch, @object
	.size	max_input_ch, 8
max_input_ch:
# i:
	.long	-1883637634
	.long	1082536910
.globl max_input_sh
	.align 4
	.type	max_input_sh, @object
	.size	max_input_sh, 8
max_input_sh:
# i:
	.long	-1883637634
	.long	1082536910
.globl round_cst_cosh
	.align 4
	.type	round_cst_cosh, @object
	.size	round_cst_cosh, 8
round_cst_cosh:
# i:
	.long	652835029
	.long	1072695345
.globl round_cst_sinh
	.align 4
	.type	round_cst_sinh, @object
	.size	round_cst_sinh, 8
round_cst_sinh:
# i:
	.long	652835029
	.long	1072695345
.globl c0
	.align 4
	.type	c0, @object
	.size	c0, 8
c0:
# i:
	.long	0
	.long	1072693248
.globl c2
	.align 4
	.type	c2, @object
	.size	c2, 8
c2:
# i:
	.long	0
	.long	1071644672
.globl c4
	.align 4
	.type	c4, @object
	.size	c4, 8
c4:
# i:
	.long	1431655765
	.long	1067799893
.globl c6
	.align 4
	.type	c6, @object
	.size	c6, 8
c6:
# i:
	.long	381774871
	.long	1062650220
.globl c8
	.align 4
	.type	c8, @object
	.size	c8, 8
c8:
# i:
	.long	436314138
	.long	1056571808
.globl s1
	.align 4
	.type	s1, @object
	.size	s1, 8
s1:
# i:
	.long	0
	.long	1072693248
.globl s3
	.align 4
	.type	s3, @object
	.size	s3, 8
s3:
# i:
	.long	1431655765
	.long	1069897045
.globl s5
	.align 4
	.type	s5, @object
	.size	s5, 8
s5:
# i:
	.long	286331153
	.long	1065423121
.globl s7
	.align 4
	.type	s7, @object
	.size	s7, 8
s7:
# i:
	.long	436314138
	.long	1059717536
	.align 32
	.type	cosh_sinh_table, @object
	.size	cosh_sinh_table, 5728
cosh_sinh_table:
# i:
	.long	-755802217
	.long	1072757256
# i:
	.long	-1649722639
	.long	1016805841
# i:
	.long	-1148925656
	.long	-1076448401
# i:
	.long	-16900513
	.long	-1133978888
# i:
	.long	1930917953
	.long	1072755812
# i:
	.long	693443665
	.long	-1130897568
# i:
	.long	-425693239
	.long	-1076465774
# i:
	.long	-643404990
	.long	1014015877
# i:
	.long	128019892
	.long	1072754385
# i:
	.long	-740265483
	.long	1016627464
# i:
	.long	-2125407317
	.long	-1076483124
# i:
	.long	-111345462
	.long	-1133051715
# i:
	.long	-1963076602
	.long	1072752974
# i:
	.long	-1330557111
	.long	-1131204405
# i:
	.long	1204789723
	.long	-1076500452
# i:
	.long	1316695139
	.long	1014570693
# i:
	.long	-139842021
	.long	1072751580
# i:
	.long	-134532800
	.long	1016858045
# i:
	.long	-160660687
	.long	-1076517759
# i:
	.long	-805859887
	.long	-1133605364
# i:
	.long	1211426862
	.long	1072750204
# i:
	.long	1598230084
	.long	-1131971604
# i:
	.long	1233987754
	.long	-1076535043
# i:
	.long	-857044442
	.long	1011812275
# i:
	.long	2000507477
	.long	1072748844
# i:
	.long	1029512610
	.long	-1132161684
# i:
	.long	-39002171
	.long	-1076552307
# i:
	.long	-1734972538
	.long	1010933518
# i:
	.long	2138282792
	.long	1072747501
# i:
	.long	-360014123
	.long	-1130794449
# i:
	.long	-816031997
	.long	-1076569549
# i:
	.long	2078744510
	.long	-1132781817
# i:
	.long	1536739948
	.long	1072746175
# i:
	.long	163181088
	.long	1017020544
# i:
	.long	2067880568
	.long	-1076586770
# i:
	.long	-1107402255
	.long	1011991482
# i:
	.long	108968922
	.long	1072744866
# i:
	.long	-2143460877
	.long	1015102680
# i:
	.long	-1105817492
	.long	-1076603971
# i:
	.long	1171805038
	.long	-1132931199
# i:
	.long	2064128489
	.long	1072743573
# i:
	.long	1850915364
	.long	1016735456
# i:
	.long	1420506653
	.long	-1076621151
# i:
	.long	-813849880
	.long	1014553782
# i:
	.long	-1272424264
	.long	1072742297
# i:
	.long	186593445
	.long	-1134056061
# i:
	.long	-69018490
	.long	-1076638312
# i:
	.long	646985980
	.long	1014827614
# i:
	.long	-1394364164
	.long	1072741038
# i:
	.long	1968316023
	.long	-1131206353
# i:
	.long	1890919753
	.long	-1076655452
# i:
	.long	184662182
	.long	1013446987
# i:
	.long	1615796999
	.long	1072739796
# i:
	.long	133091237
	.long	1014180884
# i:
	.long	1882029988
	.long	-1076672573
# i:
	.long	1880367816
	.long	-1133234754
# i:
	.long	-913290786
	.long	1072738570
# i:
	.long	1628425262
	.long	-1134461907
# i:
	.long	-1217731202
	.long	-1076689675
# i:
	.long	1122290332
	.long	1014360841
# i:
	.long	-472013221
	.long	1072737361
# i:
	.long	-1649628809
	.long	1016799936
# i:
	.long	60790913
	.long	-1076706757
# i:
	.long	-1693964494
	.long	-1135119615
# i:
	.long	-1434563992
	.long	1072736169
# i:
	.long	672473312
	.long	1014084246
# i:
	.long	303095636
	.long	-1076723821
# i:
	.long	1344937561
	.long	1013905817
# i:
	.long	415890497
	.long	1072734994
# i:
	.long	165692610
	.long	1015566937
# i:
	.long	-1609121063
	.long	-1076740867
# i:
	.long	1151178859
	.long	1011877730
# i:
	.long	707340753
	.long	1072733835
# i:
	.long	1398032052
	.long	-1130437131
# i:
	.long	1796983690
	.long	-1076757894
# i:
	.long	1514976822
	.long	-1135582694
# i:
	.long	-636165099
	.long	1072732692
# i:
	.long	591079880
	.long	-1130998168
# i:
	.long	815578849
	.long	-1076774903
# i:
	.long	-1145975947
	.long	-1133618410
# i:
	.long	605477530
	.long	1072731567
# i:
	.long	970749769
	.long	1015030944
# i:
	.long	-1373086506
	.long	-1076791895
# i:
	.long	-1001820615
	.long	1010677577
# i:
	.long	63526661
	.long	1072730458
# i:
	.long	198298880
	.long	1014540454
# i:
	.long	-1587602068
	.long	-1076808869
# i:
	.long	874436534
	.long	1012125199
# i:
	.long	1960261804
	.long	1072729365
# i:
	.long	-995573693
	.long	-1130869803
# i:
	.long	-940380589
	.long	-1076825826
# i:
	.long	-986359044
	.long	-1133135137
# i:
	.long	1929113665
	.long	1072728289
# i:
	.long	223679503
	.long	-1130503889
# i:
	.long	-542707557
	.long	-1076842766
# i:
	.long	-1484623736
	.long	1010912864
# i:
	.long	-100435057
	.long	1072727229
# i:
	.long	-473568260
	.long	-1132619806
# i:
	.long	-1504758157
	.long	-1076859689
# i:
	.long	-2087161372
	.long	-1134333766
# i:
	.long	97149254
	.long	1072726187
# i:
	.long	-60409969
	.long	-1133366762
# i:
	.long	-640646910
	.long	-1076876596
# i:
	.long	549467925
	.long	1012504755
# i:
	.long	-1841451818
	.long	1072725160
# i:
	.long	-415836550
	.long	-1130998873
# i:
	.long	1883241615
	.long	-1076899420
# i:
	.long	-1467611111
	.long	-1134958021
# i:
	.long	-1688540580
	.long	1072724150
# i:
	.long	1802338715
	.long	-1131904810
# i:
	.long	-24768984
	.long	-1076933170
# i:
	.long	-962410888
	.long	-1134001196
# i:
	.long	489693857
	.long	1072723157
# i:
	.long	606531475
	.long	1017025528
# i:
	.long	-627197415
	.long	-1076966888
# i:
	.long	1226672792
	.long	1010226288
# i:
	.long	333174569
	.long	1072722180
# i:
	.long	-900519699
	.long	1014392160
# i:
	.long	-2133798529
	.long	-1077000575
# i:
	.long	1703741024
	.long	1012946471
# i:
	.long	2072837709
	.long	1072721219
# i:
	.long	-788373890
	.long	-1133269513
# i:
	.long	1837625238
	.long	-1077034232
# i:
	.long	714584908
	.long	1013713881
# i:
	.long	1350762350
	.long	1072720275
# i:
	.long	-684107105
	.long	1014400452
# i:
	.long	491386400
	.long	-1077067859
# i:
	.long	653059312
	.long	1012787281
# i:
	.long	-1894928588
	.long	1072719347
# i:
	.long	-1357569879
	.long	-1132977741
# i:
	.long	213617133
	.long	-1077101457
# i:
	.long	1359554692
	.long	-1135918944
# i:
	.long	864898012
	.long	1072718436
# i:
	.long	-213638492
	.long	-1131413489
# i:
	.long	-1197568129
	.long	-1077135027
# i:
	.long	1378430253
	.long	-1134268553
# i:
	.long	980580761
	.long	1072717541
# i:
	.long	1715955341
	.long	1016221999
# i:
	.long	-1647204404
	.long	-1077168568
# i:
	.long	1054048845
	.long	1008944165
# i:
	.long	-1606533369
	.long	1072716662
# i:
	.long	726853477
	.long	1014801941
# i:
	.long	961522971
	.long	-1077202081
# i:
	.long	884284110
	.long	-1136135593
# i:
	.long	1635910056
	.long	1072715800
# i:
	.long	1515551059
	.long	-1131677032
# i:
	.long	137310210
	.long	-1077235567
# i:
	.long	1623130668
	.long	1011574310
# i:
	.long	2061468279
	.long	1072714954
# i:
	.long	930783116
	.long	1015660737
# i:
	.long	-2019429255
	.long	-1077269027
# i:
	.long	-260830798
	.long	-1134041650
# i:
	.long	-385295732
	.long	1072714124
# i:
	.long	631584226
	.long	1016626456
# i:
	.long	888434448
	.long	-1077302460
# i:
	.long	1465331795
	.long	-1139641156
# i:
	.long	-1463781428
	.long	1072713311
# i:
	.long	-319783950
	.long	-1130528368
# i:
	.long	-1920122314
	.long	-1077335868
# i:
	.long	923721601
	.long	-1135255480
# i:
	.long	-1227286103
	.long	1072712514
# i:
	.long	-1834350069
	.long	-1130421448
# i:
	.long	250395557
	.long	-1077369250
# i:
	.long	107208469
	.long	1013135835
# i:
	.long	271961594
	.long	1072711734
# i:
	.long	-1144656868
	.long	-1130475350
# i:
	.long	917262813
	.long	-1077402608
# i:
	.long	-544427179
	.long	-1134935332
# i:
	.long	-1312166438
	.long	1072710969
# i:
	.long	-950435199
	.long	1015882276
# i:
	.long	-2105663037
	.long	-1077435942
# i:
	.long	114581637
	.long	-1133725793
# i:
	.long	-1734796641
	.long	1072710221
# i:
	.long	-1590663107
	.long	1013365539
# i:
	.long	1881959503
	.long	-1077469252
# i:
	.long	13120221
	.long	-1133794774
# i:
	.long	-1044956455
	.long	1072709489
# i:
	.long	-1474285947
	.long	-1131916952
# i:
	.long	2107184216
	.long	-1077502539
# i:
	.long	-1750037550
	.long	1013527068
# i:
	.long	709392233
	.long	1072708774
# i:
	.long	-1185272221
	.long	-1131051523
# i:
	.long	683482227
	.long	-1077535803
# i:
	.long	577236203
	.long	1013077337
# i:
	.long	-813614940
	.long	1072708074
# i:
	.long	-1880749683
	.long	1015729164
# i:
	.long	-274193167
	.long	-1077569046
# i:
	.long	731619752
	.long	1012869351
# i:
	.long	-1364843638
	.long	1072707391
# i:
	.long	1922603666
	.long	-1133254239
# i:
	.long	1350560235
	.long	-1077602266
# i:
	.long	1766251048
	.long	1013629465
# i:
	.long	-989063418
	.long	1072706724
# i:
	.long	2127310633
	.long	-1131769738
# i:
	.long	-914374296
	.long	-1077635466
# i:
	.long	-1816104060
	.long	1013669139
# i:
	.long	270018886
	.long	1072706074
# i:
	.long	-27312143
	.long	1015609948
# i:
	.long	-654829159
	.long	-1077668645
# i:
	.long	186802348
	.long	1010701368
# i:
	.long	-1925208799
	.long	1072705439
# i:
	.long	-2002681291
	.long	-1135041462
# i:
	.long	-45222102
	.long	-1077701804
# i:
	.long	1693203212
	.long	-1135695166
# i:
	.long	973604745
	.long	1072704821
# i:
	.long	-154671368
	.long	-1131382912
# i:
	.long	-1258654810
	.long	-1077734943
# i:
	.long	1283917853
	.long	1012991582
# i:
	.long	336002322
	.long	1072704219
# i:
	.long	1913488182
	.long	1016501033
# i:
	.long	2122988527
	.long	-1077768063
# i:
	.long	-1893657315
	.long	1013294306
# i:
	.long	417488779
	.long	1072703633
# i:
	.long	1380629094
	.long	-1130725980
# i:
	.long	-660795699
	.long	-1077801165
# i:
	.long	1437145485
	.long	1013274615
# i:
	.long	1179661212
	.long	1072703063
# i:
	.long	109632850
	.long	-1137578915
# i:
	.long	1105542028
	.long	-1077834248
# i:
	.long	1357284027
	.long	-1136032467
# i:
	.long	-1709791611
	.long	1072702509
# i:
	.long	693270491
	.long	-1133292803
# i:
	.long	958865584
	.long	-1077867314
# i:
	.long	508333608
	.long	-1135238511
# i:
	.long	302779358
	.long	1072701972
# i:
	.long	1802671950
	.long	-1131129134
# i:
	.long	1027123895
	.long	-1077900363
# i:
	.long	-746770057
	.long	-1134494867
# i:
	.long	-1407788177
	.long	1072701450
# i:
	.long	-1722323007
	.long	-1132422321
# i:
	.long	-855584015
	.long	-1077933396
# i:
	.long	342051294
	.long	1012132393
# i:
	.long	1714269976
	.long	1072700945
# i:
	.long	824206652
	.long	-1132249214
# i:
	.long	-823247671
	.long	-1077996696
# i:
	.long	2077828267
	.long	1012012007
# i:
	.long	1045905605
	.long	1072700456
# i:
	.long	-1631575785
	.long	1016451733
# i:
	.long	390478225
	.long	-1078062697
# i:
	.long	1091461545
	.long	-1134682166
# i:
	.long	850028664
	.long	1072699983
# i:
	.long	1740425397
	.long	1015234522
# i:
	.long	1899482904
	.long	-1078128669
# i:
	.long	1770922828
	.long	1011541789
# i:
	.long	1095637596
	.long	1072699526
# i:
	.long	-525233702
	.long	1011447493
# i:
	.long	-619757100
	.long	-1078194612
# i:
	.long	-910178933
	.long	1012426021
# i:
	.long	1752786159
	.long	1072699085
# i:
	.long	546477997
	.long	-1130547029
# i:
	.long	1396041253
	.long	-1078260526
# i:
	.long	-69462950
	.long	-1136131753
# i:
	.long	-1502384330
	.long	1072698660
# i:
	.long	-1001325520
	.long	1016268803
# i:
	.long	-667869506
	.long	-1078326414
# i:
	.long	1343831409
	.long	-1135576408
# i:
	.long	-107776246
	.long	1072698251
# i:
	.long	-1207327529
	.long	-1133182240
# i:
	.long	1755405095
	.long	-1078392275
# i:
	.long	2136302932
	.long	-1134879773
# i:
	.long	1614860135
	.long	1072697859
# i:
	.long	1110421692
	.long	1016612800
# i:
	.long	54597216
	.long	-1078458111
# i:
	.long	276010102
	.long	-1134701758
# i:
	.long	-655171877
	.long	1072697482
# i:
	.long	1404307096
	.long	1016323105
# i:
	.long	-1495018085
	.long	-1078523924
# i:
	.long	-195624961
	.long	1011888306
# i:
	.long	1647386104
	.long	1072697122
# i:
	.long	-1480322829
	.long	1016672814
# i:
	.long	1383409421
	.long	-1078589713
# i:
	.long	-420590141
	.long	1012306190
# i:
	.long	-91023905
	.long	1072696777
# i:
	.long	1613450326
	.long	-1132146462
# i:
	.long	83337437
	.long	-1078655480
# i:
	.long	-307284014
	.long	-1138515977
# i:
	.long	-1598005548
	.long	1072696449
# i:
	.long	2052566062
	.long	-1133037913
# i:
	.long	-1115430874
	.long	-1078721227
# i:
	.long	1594591941
	.long	1011587955
# i:
	.long	1399889642
	.long	1072696137
# i:
	.long	-120738608
	.long	-1130498860
# i:
	.long	2068285452
	.long	-1078786953
# i:
	.long	997712306
	.long	-1135510555
# i:
	.long	292260022
	.long	1072695841
# i:
	.long	-1431386716
	.long	-1133390760
# i:
	.long	1032077551
	.long	-1078852660
# i:
	.long	1102423265
	.long	1008660834
# i:
	.long	-645342693
	.long	1072695560
# i:
	.long	-1798738779
	.long	1016404401
# i:
	.long	59684775
	.long	-1078918349
# i:
	.long	830189223
	.long	1006914453
# i:
	.long	-1431282912
	.long	1072695296
# i:
	.long	-1611932895
	.long	-1131188551
# i:
	.long	-858940195
	.long	-1078984022
# i:
	.long	-87440260
	.long	1012115453
# i:
	.long	-2082874155
	.long	1072695048
# i:
	.long	1124983705
	.long	-1130444985
# i:
	.long	829507805
	.long	-1079114651
# i:
	.long	2032760410
	.long	1011572145
# i:
	.long	1678587983
	.long	1072694816
# i:
	.long	386904137
	.long	-1130890052
# i:
	.long	-844166705
	.long	-1079245934
# i:
	.long	2102358839
	.long	1009473997
# i:
	.long	1247956398
	.long	1072694600
# i:
	.long	602521984
	.long	1012729205
# i:
	.long	1837231634
	.long	-1079377188
# i:
	.long	2113976889
	.long	1009409595
# i:
	.long	906036022
	.long	1072694400
# i:
	.long	280932932
	.long	-1131863427
# i:
	.long	271805119
	.long	-1079508416
# i:
	.long	-1037453785
	.long	1011433903
# i:
	.long	639714420
	.long	1072694216
# i:
	.long	1172288155
	.long	-1135943302
# i:
	.long	-1255737393
	.long	-1079639621
# i:
	.long	765557099
	.long	1010385455
# i:
	.long	436928889
	.long	1072694048
# i:
	.long	-770028390
	.long	1017095259
# i:
	.long	1540886400
	.long	-1079770803
# i:
	.long	-1535034789
	.long	-1136287002
# i:
	.long	286666274
	.long	1072693896
# i:
	.long	714278756
	.long	1013911074
# i:
	.long	64499152
	.long	-1079901965
# i:
	.long	213760363
	.long	-1135875601
# i:
	.long	178962796
	.long	1072693760
# i:
	.long	1468915085
	.long	1015570831
# i:
	.long	-1395863539
	.long	-1080033110
# i:
	.long	520054728
	.long	-1141006759
# i:
	.long	104903905
	.long	1072693640
# i:
	.long	-2010658423
	.long	1015001359
# i:
	.long	-1394939660
	.long	-1080295196
# i:
	.long	580958918
	.long	-1142339775
# i:
	.long	56624141
	.long	1072693536
# i:
	.long	1076800351
	.long	-1131918249
# i:
	.long	16987153
	.long	-1080557424
# i:
	.long	-583794287
	.long	-1137188543
# i:
	.long	27307014
	.long	1072693448
# i:
	.long	1731866350
	.long	-1132734780
# i:
	.long	1438482494
	.long	-1080819629
# i:
	.long	-898415091
	.long	-1143891589
# i:
	.long	11184902
	.long	1072693376
# i:
	.long	716888333
	.long	-1131158850
# i:
	.long	-1429418790
	.long	-1081081814
# i:
	.long	985755932
	.long	1009332257
# i:
	.long	3538960
	.long	1072693320
# i:
	.long	-611382720
	.long	1015651046
# i:
	.long	1061687
	.long	-1081606108
# i:
	.long	-1349995776
	.long	1009059636
# i:
	.long	699052
	.long	1072693280
# i:
	.long	409120253
	.long	1014415750
# i:
	.long	-1431515955
	.long	-1082130422
# i:
	.long	-1852599746
	.long	-1145437700
# i:
	.long	43691
	.long	1072693256
# i:
	.long	-1922509189
	.long	-1131157186
# i:
	.long	-1431647027
	.long	-1083179006
# i:
	.long	398439643
	.long	1007235475
# i:
	.long	0
	.long	1072693248
# i:
	.long	0
	.long	0
# i:
	.long	0
	.long	0
# i:
	.long	0
	.long	0
# i:
	.long	43691
	.long	1072693256
# i:
	.long	-1922509189
	.long	-1131157186
# i:
	.long	-1431647027
	.long	1064304642
# i:
	.long	398439643
	.long	-1140248173
# i:
	.long	699052
	.long	1072693280
# i:
	.long	409120253
	.long	1014415750
# i:
	.long	-1431515955
	.long	1065353226
# i:
	.long	-1852599746
	.long	1002045948
# i:
	.long	3538960
	.long	1072693320
# i:
	.long	-611382720
	.long	1015651046
# i:
	.long	1061687
	.long	1065877540
# i:
	.long	-1349995776
	.long	-1138424012
# i:
	.long	11184902
	.long	1072693376
# i:
	.long	716888333
	.long	-1131158850
# i:
	.long	-1429418790
	.long	1066401834
# i:
	.long	985755932
	.long	-1138151391
# i:
	.long	27307014
	.long	1072693448
# i:
	.long	1731866350
	.long	-1132734780
# i:
	.long	1438482494
	.long	1066664019
# i:
	.long	-898415091
	.long	1003592059
# i:
	.long	56624141
	.long	1072693536
# i:
	.long	1076800351
	.long	-1131918249
# i:
	.long	16987153
	.long	1066926224
# i:
	.long	-583794287
	.long	1010295105
# i:
	.long	104903905
	.long	1072693640
# i:
	.long	-2010658423
	.long	1015001359
# i:
	.long	-1394939660
	.long	1067188452
# i:
	.long	580958918
	.long	1005143873
# i:
	.long	178962796
	.long	1072693760
# i:
	.long	1468915085
	.long	1015570831
# i:
	.long	-1395863539
	.long	1067450538
# i:
	.long	520054728
	.long	1006476889
# i:
	.long	286666274
	.long	1072693896
# i:
	.long	714278756
	.long	1013911074
# i:
	.long	64499152
	.long	1067581683
# i:
	.long	213760363
	.long	1011608047
# i:
	.long	436928889
	.long	1072694048
# i:
	.long	-770028390
	.long	1017095259
# i:
	.long	1540886400
	.long	1067712845
# i:
	.long	-1535034789
	.long	1011196646
# i:
	.long	639714420
	.long	1072694216
# i:
	.long	1172288155
	.long	-1135943302
# i:
	.long	-1255737393
	.long	1067844027
# i:
	.long	765557099
	.long	-1137098193
# i:
	.long	906036022
	.long	1072694400
# i:
	.long	280932932
	.long	-1131863427
# i:
	.long	271805119
	.long	1067975232
# i:
	.long	-1037453785
	.long	-1136049745
# i:
	.long	1247956398
	.long	1072694600
# i:
	.long	602521984
	.long	1012729205
# i:
	.long	1837231634
	.long	1068106460
# i:
	.long	2113976889
	.long	-1138074053
# i:
	.long	1678587983
	.long	1072694816
# i:
	.long	386904137
	.long	-1130890052
# i:
	.long	-844166705
	.long	1068237714
# i:
	.long	2102358839
	.long	-1138009651
# i:
	.long	-2082874155
	.long	1072695048
# i:
	.long	1124983705
	.long	-1130444985
# i:
	.long	829507805
	.long	1068368997
# i:
	.long	2032760410
	.long	-1135911503
# i:
	.long	-1431282912
	.long	1072695296
# i:
	.long	-1611932895
	.long	-1131188551
# i:
	.long	-858940195
	.long	1068499626
# i:
	.long	-87440260
	.long	-1135368195
# i:
	.long	-645342693
	.long	1072695560
# i:
	.long	-1798738779
	.long	1016404401
# i:
	.long	59684775
	.long	1068565299
# i:
	.long	830189223
	.long	-1140569195
# i:
	.long	292260022
	.long	1072695841
# i:
	.long	-1431386716
	.long	-1133390760
# i:
	.long	1032077551
	.long	1068630988
# i:
	.long	1102423265
	.long	-1138822814
# i:
	.long	1399889642
	.long	1072696137
# i:
	.long	-120738608
	.long	-1130498860
# i:
	.long	2068285452
	.long	1068696695
# i:
	.long	997712306
	.long	1011973093
# i:
	.long	-1598005548
	.long	1072696449
# i:
	.long	2052566062
	.long	-1133037913
# i:
	.long	-1115430874
	.long	1068762421
# i:
	.long	1594591941
	.long	-1135895693
# i:
	.long	-91023905
	.long	1072696777
# i:
	.long	1613450326
	.long	-1132146462
# i:
	.long	83337437
	.long	1068828168
# i:
	.long	-307284014
	.long	1008967671
# i:
	.long	1647386104
	.long	1072697122
# i:
	.long	-1480322829
	.long	1016672814
# i:
	.long	1383409421
	.long	1068893935
# i:
	.long	-420590141
	.long	-1135177458
# i:
	.long	-655171877
	.long	1072697482
# i:
	.long	1404307096
	.long	1016323105
# i:
	.long	-1495018085
	.long	1068959724
# i:
	.long	-195624961
	.long	-1135595342
# i:
	.long	1614860135
	.long	1072697859
# i:
	.long	1110421692
	.long	1016612800
# i:
	.long	54597216
	.long	1069025537
# i:
	.long	276010102
	.long	1012781890
# i:
	.long	-107776246
	.long	1072698251
# i:
	.long	-1207327529
	.long	-1133182240
# i:
	.long	1755405095
	.long	1069091373
# i:
	.long	2136302932
	.long	1012603875
# i:
	.long	-1502384330
	.long	1072698660
# i:
	.long	-1001325520
	.long	1016268803
# i:
	.long	-667869506
	.long	1069157234
# i:
	.long	1343831409
	.long	1011907240
# i:
	.long	1752786159
	.long	1072699085
# i:
	.long	546477997
	.long	-1130547029
# i:
	.long	1396041253
	.long	1069223122
# i:
	.long	-69462950
	.long	1011351895
# i:
	.long	1095637596
	.long	1072699526
# i:
	.long	-525233702
	.long	1011447493
# i:
	.long	-619757100
	.long	1069289036
# i:
	.long	-910178933
	.long	-1135057627
# i:
	.long	850028664
	.long	1072699983
# i:
	.long	1740425397
	.long	1015234522
# i:
	.long	1899482904
	.long	1069354979
# i:
	.long	1770922828
	.long	-1135941859
# i:
	.long	1045905605
	.long	1072700456
# i:
	.long	-1631575785
	.long	1016451733
# i:
	.long	390478225
	.long	1069420951
# i:
	.long	1091461545
	.long	1012801482
# i:
	.long	1714269976
	.long	1072700945
# i:
	.long	824206652
	.long	-1132249214
# i:
	.long	-823247671
	.long	1069486952
# i:
	.long	2077828267
	.long	-1135471641
# i:
	.long	-1407788177
	.long	1072701450
# i:
	.long	-1722323007
	.long	-1132422321
# i:
	.long	-855584015
	.long	1069550252
# i:
	.long	342051294
	.long	-1135351255
# i:
	.long	302779358
	.long	1072701972
# i:
	.long	1802671950
	.long	-1131129134
# i:
	.long	1027123895
	.long	1069583285
# i:
	.long	-746770057
	.long	1012988781
# i:
	.long	-1709791611
	.long	1072702509
# i:
	.long	693270491
	.long	-1133292803
# i:
	.long	958865584
	.long	1069616334
# i:
	.long	508333608
	.long	1012245137
# i:
	.long	1179661212
	.long	1072703063
# i:
	.long	109632850
	.long	-1137578915
# i:
	.long	1105542028
	.long	1069649400
# i:
	.long	1357284027
	.long	1011451181
# i:
	.long	417488779
	.long	1072703633
# i:
	.long	1380629094
	.long	-1130725980
# i:
	.long	-660795699
	.long	1069682483
# i:
	.long	1437145485
	.long	-1134209033
# i:
	.long	336002322
	.long	1072704219
# i:
	.long	1913488182
	.long	1016501033
# i:
	.long	2122988527
	.long	1069715585
# i:
	.long	-1893657315
	.long	-1134189342
# i:
	.long	973604745
	.long	1072704821
# i:
	.long	-154671368
	.long	-1131382912
# i:
	.long	-1258654810
	.long	1069748705
# i:
	.long	1283917853
	.long	-1134492066
# i:
	.long	-1925208799
	.long	1072705439
# i:
	.long	-2002681291
	.long	-1135041462
# i:
	.long	-45222102
	.long	1069781844
# i:
	.long	1693203212
	.long	1011788482
# i:
	.long	270018886
	.long	1072706074
# i:
	.long	-27312143
	.long	1015609948
# i:
	.long	-654829159
	.long	1069815003
# i:
	.long	186802348
	.long	-1136782280
# i:
	.long	-989063418
	.long	1072706724
# i:
	.long	2127310633
	.long	-1131769738
# i:
	.long	-914374296
	.long	1069848182
# i:
	.long	-1816104060
	.long	-1133814509
# i:
	.long	-1364843638
	.long	1072707391
# i:
	.long	1922603666
	.long	-1133254239
# i:
	.long	1350560235
	.long	1069881382
# i:
	.long	1766251048
	.long	-1133854183
# i:
	.long	-813614940
	.long	1072708074
# i:
	.long	-1880749683
	.long	1015729164
# i:
	.long	-274193167
	.long	1069914602
# i:
	.long	731619752
	.long	-1134614297
# i:
	.long	709392233
	.long	1072708774
# i:
	.long	-1185272221
	.long	-1131051523
# i:
	.long	683482227
	.long	1069947845
# i:
	.long	577236203
	.long	-1134406311
# i:
	.long	-1044956455
	.long	1072709489
# i:
	.long	-1474285947
	.long	-1131916952
# i:
	.long	2107184216
	.long	1069981109
# i:
	.long	-1750037550
	.long	-1133956580
# i:
	.long	-1734796641
	.long	1072710221
# i:
	.long	-1590663107
	.long	1013365539
# i:
	.long	1881959503
	.long	1070014396
# i:
	.long	13120221
	.long	1013688874
# i:
	.long	-1312166438
	.long	1072710969
# i:
	.long	-950435199
	.long	1015882276
# i:
	.long	-2105663037
	.long	1070047706
# i:
	.long	114581637
	.long	1013757855
# i:
	.long	271961594
	.long	1072711734
# i:
	.long	-1144656868
	.long	-1130475350
# i:
	.long	917262813
	.long	1070081040
# i:
	.long	-544427179
	.long	1012548316
# i:
	.long	-1227286103
	.long	1072712514
# i:
	.long	-1834350069
	.long	-1130421448
# i:
	.long	250395557
	.long	1070114398
# i:
	.long	107208469
	.long	-1134347813
# i:
	.long	-1463781428
	.long	1072713311
# i:
	.long	-319783950
	.long	-1130528368
# i:
	.long	-1920122314
	.long	1070147780
# i:
	.long	923721601
	.long	1012228168
# i:
	.long	-385295732
	.long	1072714124
# i:
	.long	631584226
	.long	1016626456
# i:
	.long	888434448
	.long	1070181188
# i:
	.long	1465331795
	.long	1007842492
# i:
	.long	2061468279
	.long	1072714954
# i:
	.long	930783116
	.long	1015660737
# i:
	.long	-2019429255
	.long	1070214621
# i:
	.long	-260830798
	.long	1013441998
# i:
	.long	1635910056
	.long	1072715800
# i:
	.long	1515551059
	.long	-1131677032
# i:
	.long	137310210
	.long	1070248081
# i:
	.long	1623130668
	.long	-1135909338
# i:
	.long	-1606533369
	.long	1072716662
# i:
	.long	726853477
	.long	1014801941
# i:
	.long	961522971
	.long	1070281567
# i:
	.long	884284110
	.long	1011348055
# i:
	.long	980580761
	.long	1072717541
# i:
	.long	1715955341
	.long	1016221999
# i:
	.long	-1647204404
	.long	1070315080
# i:
	.long	1054048845
	.long	-1138539483
# i:
	.long	864898012
	.long	1072718436
# i:
	.long	-213638492
	.long	-1131413489
# i:
	.long	-1197568129
	.long	1070348621
# i:
	.long	1378430253
	.long	1013215095
# i:
	.long	-1894928588
	.long	1072719347
# i:
	.long	-1357569879
	.long	-1132977741
# i:
	.long	213617133
	.long	1070382191
# i:
	.long	1359554692
	.long	1011564704
# i:
	.long	1350762350
	.long	1072720275
# i:
	.long	-684107105
	.long	1014400452
# i:
	.long	491386400
	.long	1070415789
# i:
	.long	653059312
	.long	-1134696367
# i:
	.long	2072837709
	.long	1072721219
# i:
	.long	-788373890
	.long	-1133269513
# i:
	.long	1837625238
	.long	1070449416
# i:
	.long	714584908
	.long	-1133769767
# i:
	.long	333174569
	.long	1072722180
# i:
	.long	-900519699
	.long	1014392160
# i:
	.long	-2133798529
	.long	1070483073
# i:
	.long	1703741024
	.long	-1134537177
# i:
	.long	489693857
	.long	1072723157
# i:
	.long	606531475
	.long	1017025528
# i:
	.long	-627197415
	.long	1070516760
# i:
	.long	1226672792
	.long	-1137257360
# i:
	.long	-1688540580
	.long	1072724150
# i:
	.long	1802338715
	.long	-1131904810
# i:
	.long	-24768984
	.long	1070550478
# i:
	.long	-962410888
	.long	1013482452
# i:
	.long	-1841451818
	.long	1072725160
# i:
	.long	-415836550
	.long	-1130998873
# i:
	.long	1883241615
	.long	1070584228
# i:
	.long	-1467611111
	.long	1012525627
# i:
	.long	97149254
	.long	1072726187
# i:
	.long	-60409969
	.long	-1133366762
# i:
	.long	-640646910
	.long	1070607052
# i:
	.long	549467925
	.long	-1134978893
# i:
	.long	-100435057
	.long	1072727229
# i:
	.long	-473568260
	.long	-1132619806
# i:
	.long	-1504758157
	.long	1070623959
# i:
	.long	-2087161372
	.long	1013149882
# i:
	.long	1929113665
	.long	1072728289
# i:
	.long	223679503
	.long	-1130503889
# i:
	.long	-542707557
	.long	1070640882
# i:
	.long	-1484623736
	.long	-1136570784
# i:
	.long	1960261804
	.long	1072729365
# i:
	.long	-995573693
	.long	-1130869803
# i:
	.long	-940380589
	.long	1070657822
# i:
	.long	-986359044
	.long	1014348511
# i:
	.long	63526661
	.long	1072730458
# i:
	.long	198298880
	.long	1014540454
# i:
	.long	-1587602068
	.long	1070674779
# i:
	.long	874436534
	.long	-1135358449
# i:
	.long	605477530
	.long	1072731567
# i:
	.long	970749769
	.long	1015030944
# i:
	.long	-1373086506
	.long	1070691753
# i:
	.long	-1001820615
	.long	-1136806071
# i:
	.long	-636165099
	.long	1072732692
# i:
	.long	591079880
	.long	-1130998168
# i:
	.long	815578849
	.long	1070708745
# i:
	.long	-1145975947
	.long	1013865238
# i:
	.long	707340753
	.long	1072733835
# i:
	.long	1398032052
	.long	-1130437131
# i:
	.long	1796983690
	.long	1070725754
# i:
	.long	1514976822
	.long	1011900954
# i:
	.long	415890497
	.long	1072734994
# i:
	.long	165692610
	.long	1015566937
# i:
	.long	-1609121063
	.long	1070742781
# i:
	.long	1151178859
	.long	-1135605918
# i:
	.long	-1434563992
	.long	1072736169
# i:
	.long	672473312
	.long	1014084246
# i:
	.long	303095636
	.long	1070759827
# i:
	.long	1344937561
	.long	-1133577831
# i:
	.long	-472013221
	.long	1072737361
# i:
	.long	-1649628809
	.long	1016799936
# i:
	.long	60790913
	.long	1070776891
# i:
	.long	-1693964494
	.long	1012364033
# i:
	.long	-913290786
	.long	1072738570
# i:
	.long	1628425262
	.long	-1134461907
# i:
	.long	-1217731202
	.long	1070793973
# i:
	.long	1122290332
	.long	-1133122807
# i:
	.long	1615796999
	.long	1072739796
# i:
	.long	133091237
	.long	1014180884
# i:
	.long	1882029988
	.long	1070811075
# i:
	.long	1880367816
	.long	1014248894
# i:
	.long	-1394364164
	.long	1072741038
# i:
	.long	1968316023
	.long	-1131206353
# i:
	.long	1890919753
	.long	1070828196
# i:
	.long	184662182
	.long	-1134036661
# i:
	.long	-1272424264
	.long	1072742297
# i:
	.long	186593445
	.long	-1134056061
# i:
	.long	-69018490
	.long	1070845336
# i:
	.long	646985980
	.long	-1132656034
# i:
	.long	2064128489
	.long	1072743573
# i:
	.long	1850915364
	.long	1016735456
# i:
	.long	1420506653
	.long	1070862497
# i:
	.long	-813849880
	.long	-1132929866
# i:
	.long	108968922
	.long	1072744866
# i:
	.long	-2143460877
	.long	1015102680
# i:
	.long	-1105817492
	.long	1070879677
# i:
	.long	1171805038
	.long	1014552449
# i:
	.long	1536739948
	.long	1072746175
# i:
	.long	163181088
	.long	1017020544
# i:
	.long	2067880568
	.long	1070896878
# i:
	.long	-1107402255
	.long	-1135492166
# i:
	.long	2138282792
	.long	1072747501
# i:
	.long	-360014123
	.long	-1130794449
# i:
	.long	-816031997
	.long	1070914099
# i:
	.long	2078744510
	.long	1014701831
# i:
	.long	2000507477
	.long	1072748844
# i:
	.long	1029512610
	.long	-1132161684
# i:
	.long	-39002171
	.long	1070931341
# i:
	.long	-1734972538
	.long	-1136550130
# i:
	.long	1211426862
	.long	1072750204
# i:
	.long	1598230084
	.long	-1131971604
# i:
	.long	1233987754
	.long	1070948605
# i:
	.long	-857044442
	.long	-1135671373
# i:
	.long	-139842021
	.long	1072751580
# i:
	.long	-134532800
	.long	1016858045
# i:
	.long	-160660687
	.long	1070965889
# i:
	.long	-805859887
	.long	1013878284
# i:
	.long	-1963076602
	.long	1072752974
# i:
	.long	-1330557111
	.long	-1131204405
# i:
	.long	1204789723
	.long	1070983196
# i:
	.long	1316695139
	.long	-1132912955
# i:
	.long	128019892
	.long	1072754385
# i:
	.long	-740265483
	.long	1016627464
# i:
	.long	-2125407317
	.long	1071000524
# i:
	.long	-111345462
	.long	1014431933
# i:
	.long	1930917953
	.long	1072755812
# i:
	.long	693443665
	.long	-1130897568
# i:
	.long	-425693239
	.long	1071017874
# i:
	.long	-643404990
	.long	-1133467771
# i:
	.long	-755802217
	.long	1072757256
# i:
	.long	-1649722639
	.long	1016805841
# i:
	.long	-1148925656
	.long	1071035247
# i:
	.long	-16900513
	.long	1013504760
	.comm	crlibm_second_step_taken,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	1056964608
	.align 4
.LC2:
	.long	1505755136
	.align 4
.LC3:
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	33554432
	.long	1101004800
	.align 8
.LC6:
	.long	1337381548
	.long	1006470089
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
.LFB18:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE18:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL5-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL3-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x10
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0xc
	.long	0x3fffffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL6-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x10
	.byte	0x70
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0xc
	.long	0x3fffffff
	.byte	0x1a
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL3-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.long	.LVL6-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL176-.Ltext0
	.long	.LVL178-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	.LVL196-.Ltext0
	.long	.LVL198-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	.LVL211-.Ltext0
	.long	.LVL214-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	.LVL215-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL161-.Ltext0
	.long	.LVL162-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL177-.Ltext0
	.long	.LVL178-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL197-.Ltext0
	.long	.LVL198-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL213-.Ltext0
	.long	.LVL214-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL215-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL45-.Ltext0
	.long	.LVL46-.Ltext0
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.long	.LVL46-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL48-.Ltext0
	.long	.LVL49-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL49-.Ltext0
	.long	.LVL62-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	.LVL62-.Ltext0
	.long	.LVL63-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL64-.Ltext0
	.long	.LVL65-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL66-.Ltext0
	.long	.LVL67-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL67-.Ltext0
	.long	.LVL81-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -280
	.long	.LVL81-.Ltext0
	.long	.LVL91-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -272
	.long	.LVL91-.Ltext0
	.long	.LVL92-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL93-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	.LVL96-.Ltext0
	.long	.LVL97-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL97-.Ltext0
	.long	.LVL98-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL99-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL126-.Ltext0
	.long	.LVL127-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL137-.Ltext0
	.long	.LVL138-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL178-.Ltext0
	.long	.LVL179-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL198-.Ltext0
	.long	.LVL199-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL214-.Ltext0
	.long	.LVL215-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL107-.Ltext0
	.long	.LVL108-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL111-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL134-.Ltext0
	.long	.LVL135-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL137-.Ltext0
	.long	.LVL156-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL157-.Ltext0
	.long	.LVL158-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL178-.Ltext0
	.long	.LVL180-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL198-.Ltext0
	.long	.LVL200-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL214-.Ltext0
	.long	.LVL215-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL79-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL116-.Ltext0
	.long	.LVL117-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL137-.Ltext0
	.long	.LVL147-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL178-.Ltext0
	.long	.LVL181-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL198-.Ltext0
	.long	.LVL201-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL214-.Ltext0
	.long	.LVL215-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL81-.Ltext0
	.long	.LVL82-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL82-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	.LVL121-.Ltext0
	.long	.LVL122-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL125-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL33-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.long	.LVL34-.Ltext0
	.long	.LVL43-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL112-.Ltext0
	.long	.LVL128-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL129-.Ltext0
	.long	.LVL130-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL139-.Ltext0
	.long	.LVL140-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL180-.Ltext0
	.long	.LVL187-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL188-.Ltext0
	.long	.LVL189-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL141-.Ltext0
	.long	.LVL142-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL142-.Ltext0
	.long	.LVL178-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -232
	.long	.LVL181-.Ltext0
	.long	.LVL190-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL191-.Ltext0
	.long	.LVL192-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL143-.Ltext0
	.long	.LVL144-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL166-.Ltext0
	.long	.LVL167-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL201-.Ltext0
	.long	.LVL202-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL145-.Ltext0
	.long	.LVL146-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL146-.Ltext0
	.long	.LVL168-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -224
	.long	.LVL168-.Ltext0
	.long	.LVL171-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL172-.Ltext0
	.long	.LVL173-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL203-.Ltext0
	.long	.LVL204-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL147-.Ltext0
	.long	.LVL148-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL182-.Ltext0
	.long	.LVL193-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL149-.Ltext0
	.long	.LVL178-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.long	.LVL183-.Ltext0
	.long	.LVL184-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL150-.Ltext0
	.long	.LVL151-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL205-.Ltext0
	.long	.LVL206-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL152-.Ltext0
	.long	.LVL153-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL153-.Ltext0
	.long	.LVL178-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	.LVL206-.Ltext0
	.long	.LVL207-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL35-.Ltext0
	.long	.LVL37-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL37-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL26-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL30-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -256
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL60-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL68-.Ltext0
	.long	.LVL69-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL69-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -248
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL17-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL73-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL75-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -248
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL89-.Ltext0
	.long	.LVL90-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL41-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL42-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0xa
	.byte	0x77
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	cosh_sinh_table
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL44-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL45-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL38-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL39-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -232
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL24-.Ltext0
	.long	.LVL25-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL17-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL17-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL48-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL50-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL53-.Ltext0
	.long	.LVL54-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL56-.Ltext0
	.long	.LVL57-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL51-.Ltext0
	.long	.LVL52-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL54-.Ltext0
	.long	.LVL55-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LVL58-.Ltext0
	.long	.LVL59-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL59-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LVL48-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LVL48-.Ltext0
	.long	.LVL53-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LVL71-.Ltext0
	.long	.LVL72-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LVL66-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LVL66-.Ltext0
	.long	.LVL67-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL67-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -280
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LVL76-.Ltext0
	.long	.LVL77-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LVL78-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LVL81-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LVL83-.Ltext0
	.long	.LVL84-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LVL85-.Ltext0
	.long	.LVL86-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LVL87-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LVL85-.Ltext0
	.long	.LVL95-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LVL87-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LVL81-.Ltext0
	.long	.LVL94-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LVL81-.Ltext0
	.long	.LVL101-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LVL106-.Ltext0
	.long	.LVL107-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL109-.Ltext0
	.long	.LVL110-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LVL97-.Ltext0
	.long	.LVL102-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL103-.Ltext0
	.long	.LVL104-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LVL97-.Ltext0
	.long	.LVL98-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LVL119-.Ltext0
	.long	.LVL120-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL123-.Ltext0
	.long	.LVL124-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LVL112-.Ltext0
	.long	.LVL113-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LVL114-.Ltext0
	.long	.LVL115-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LVL132-.Ltext0
	.long	.LVL133-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LVL125-.Ltext0
	.long	.LVL137-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x3ff00000
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LVL125-.Ltext0
	.long	.LVL137-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -224
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LVL154-.Ltext0
	.long	.LVL155-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LVL159-.Ltext0
	.long	.LVL160-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LVL163-.Ltext0
	.long	.LVL164-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LVL165-.Ltext0
	.long	.LVL166-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LVL169-.Ltext0
	.long	.LVL170-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LVL174-.Ltext0
	.long	.LVL175-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LVL185-.Ltext0
	.long	.LVL186-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LVL194-.Ltext0
	.long	.LVL195-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LVL208-.Ltext0
	.long	.LVL209-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LVL210-.Ltext0
	.long	.LVL212-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LVL388-.Ltext0
	.long	.LVL390-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	.LVL404-.Ltext0
	.long	.LVL406-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	.LVL418-.Ltext0
	.long	.LVL420-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	.LVL422-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LVL371-.Ltext0
	.long	.LVL374-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL375-.Ltext0
	.long	.LVL376-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL389-.Ltext0
	.long	.LVL390-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL405-.Ltext0
	.long	.LVL406-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL419-.Ltext0
	.long	.LVL420-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL422-.Ltext0
	.long	.LVL423-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL423-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LVL271-.Ltext0
	.long	.LVL272-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL284-.Ltext0
	.long	.LVL285-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL294-.Ltext0
	.long	.LVL296-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL326-.Ltext0
	.long	.LVL329-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL329-.Ltext0
	.long	.LVL341-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL343-.Ltext0
	.long	.LVL347-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL420-.Ltext0
	.long	.LVL423-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LVL278-.Ltext0
	.long	.LVL279-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL282-.Ltext0
	.long	.LVL283-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL288-.Ltext0
	.long	.LVL289-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL292-.Ltext0
	.long	.LVL293-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL294-.Ltext0
	.long	.LVL297-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL326-.Ltext0
	.long	.LVL334-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL335-.Ltext0
	.long	.LVL336-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL420-.Ltext0
	.long	.LVL423-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LVL323-.Ltext0
	.long	.LVL324-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL332-.Ltext0
	.long	.LVL333-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL350-.Ltext0
	.long	.LVL364-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	.LVL390-.Ltext0
	.long	.LVL392-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	.LVL406-.Ltext0
	.long	.LVL408-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LVL325-.Ltext0
	.long	.LVL326-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL342-.Ltext0
	.long	.LVL343-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	.LVL350-.Ltext0
	.long	.LVL351-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL390-.Ltext0
	.long	.LVL391-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL406-.Ltext0
	.long	.LVL407-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LVL240-.Ltext0
	.long	.LVL241-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	.LVL241-.Ltext0
	.long	.LVL349-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL420-.Ltext0
	.long	.LVL423-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LVL223-.Ltext0
	.long	.LVL224-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL313-.Ltext0
	.long	.LVL315-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LVL225-.Ltext0
	.long	.LVL228-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL229-.Ltext0
	.long	.LVL230-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL318-.Ltext0
	.long	.LVL319-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL319-.Ltext0
	.long	.LVL326-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LVL269-.Ltext0
	.long	.LVL270-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL312-.Ltext0
	.long	.LVL314-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LVL226-.Ltext0
	.long	.LVL227-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL238-.Ltext0
	.long	.LVL239-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL242-.Ltext0
	.long	.LVL244-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL244-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LVL234-.Ltext0
	.long	.LVL235-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL238-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -240
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LVL309-.Ltext0
	.long	.LVL310-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LVL266-.Ltext0
	.long	.LVL267-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LVL221-.Ltext0
	.long	.LVL248-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL248-.Ltext0
	.long	.LVL249-.Ltext0
	.value	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.long	.LVL249-.Ltext0
	.long	.LVL283-.Ltext0
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x22
	.long	.LVL283-.Ltext0
	.long	.LVL294-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL294-.Ltext0
	.long	.LVL317-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	.LVL326-.Ltext0
	.long	.LVL340-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	.LVL343-.Ltext0
	.long	.LVL346-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	.LVL420-.Ltext0
	.long	.LVL421-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LVL221-.Ltext0
	.long	.LVL250-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL250-.Ltext0
	.long	.LVL251-.Ltext0
	.value	0xa
	.byte	0x77
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	cosh_sinh_table
	.byte	0x22
	.long	.LVL251-.Ltext0
	.long	.LVL252-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL252-.Ltext0
	.long	.LVL283-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -256
	.long	.LVL283-.Ltext0
	.long	.LVL294-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL294-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -256
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LVL221-.Ltext0
	.long	.LVL252-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL252-.Ltext0
	.long	.LVL253-.Ltext0
	.value	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.long	.LVL253-.Ltext0
	.long	.LVL254-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL283-.Ltext0
	.long	.LVL294-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL294-.Ltext0
	.long	.LVL311-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL326-.Ltext0
	.long	.LVL327-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL420-.Ltext0
	.long	.LVL423-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LVL221-.Ltext0
	.long	.LVL255-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL255-.Ltext0
	.long	.LVL283-.Ltext0
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.long	.LVL283-.Ltext0
	.long	.LVL294-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL294-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -248
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LVL245-.Ltext0
	.long	.LVL246-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL246-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LVL352-.Ltext0
	.long	.LVL353-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL392-.Ltext0
	.long	.LVL393-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LVL354-.Ltext0
	.long	.LVL355-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL355-.Ltext0
	.long	.LVL390-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -224
	.long	.LVL393-.Ltext0
	.long	.LVL406-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LVL356-.Ltext0
	.long	.LVL361-.Ltext0
	.value	0x1
	.byte	0x60
	.long	.LVL378-.Ltext0
	.long	.LVL379-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL408-.Ltext0
	.long	.LVL409-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LVL357-.Ltext0
	.long	.LVL358-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL358-.Ltext0
	.long	.LVL380-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -240
	.long	.LVL380-.Ltext0
	.long	.LVL383-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL384-.Ltext0
	.long	.LVL385-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL409-.Ltext0
	.long	.LVL420-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LVL359-.Ltext0
	.long	.LVL360-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL394-.Ltext0
	.long	.LVL396-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LVL361-.Ltext0
	.long	.LVL390-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.long	.LVL395-.Ltext0
	.long	.LVL399-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL400-.Ltext0
	.long	.LVL401-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LVL362-.Ltext0
	.long	.LVL363-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL410-.Ltext0
	.long	.LVL411-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LVL365-.Ltext0
	.long	.LVL366-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL366-.Ltext0
	.long	.LVL390-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	.LVL412-.Ltext0
	.long	.LVL413-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LVL232-.Ltext0
	.long	.LVL233-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL236-.Ltext0
	.long	.LVL237-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LVL225-.Ltext0
	.long	.LVL226-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LVL225-.Ltext0
	.long	.LVL228-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL229-.Ltext0
	.long	.LVL230-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST105:
	.long	.LVL255-.Ltext0
	.long	.LVL283-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST106:
	.long	.LVL256-.Ltext0
	.long	.LVL257-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST107:
	.long	.LVL259-.Ltext0
	.long	.LVL260-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST108:
	.long	.LVL262-.Ltext0
	.long	.LVL263-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST109:
	.long	.LVL257-.Ltext0
	.long	.LVL258-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST110:
	.long	.LVL260-.Ltext0
	.long	.LVL261-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST111:
	.long	.LVL264-.Ltext0
	.long	.LVL265-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL265-.Ltext0
	.long	.LVL283-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LVL255-.Ltext0
	.long	.LVL283-.Ltext0
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LVL255-.Ltext0
	.long	.LVL259-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LVL280-.Ltext0
	.long	.LVL281-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST115:
	.long	.LVL269-.Ltext0
	.long	.LVL278-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL279-.Ltext0
	.long	.LVL283-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST116:
	.long	.LVL269-.Ltext0
	.long	.LVL270-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST117:
	.long	.LVL287-.Ltext0
	.long	.LVL288-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST118:
	.long	.LVL283-.Ltext0
	.long	.LVL294-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x3ff00000
	.long	0x0
	.long	0x0
.LLST119:
	.long	.LVL283-.Ltext0
	.long	.LVL294-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -208
	.long	0x0
	.long	0x0
.LLST120:
	.long	.LVL295-.Ltext0
	.long	.LVL326-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST121:
	.long	.LVL297-.Ltext0
	.long	.LVL298-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST122:
	.long	.LVL301-.Ltext0
	.long	.LVL302-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST123:
	.long	.LVL305-.Ltext0
	.long	.LVL306-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL306-.Ltext0
	.long	.LVL326-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -272
	.long	0x0
	.long	0x0
.LLST124:
	.long	.LVL299-.Ltext0
	.long	.LVL300-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL300-.Ltext0
	.long	.LVL326-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.long	0x0
	.long	0x0
.LLST125:
	.long	.LVL303-.Ltext0
	.long	.LVL304-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL304-.Ltext0
	.long	.LVL326-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.long	0x0
	.long	0x0
.LLST126:
	.long	.LVL307-.Ltext0
	.long	.LVL308-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL308-.Ltext0
	.long	.LVL326-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -264
	.long	0x0
	.long	0x0
.LLST127:
	.long	.LVL295-.Ltext0
	.long	.LVL317-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST128:
	.long	.LVL295-.Ltext0
	.long	.LVL314-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST129:
	.long	.LVL314-.Ltext0
	.long	.LVL316-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST130:
	.long	.LVL312-.Ltext0
	.long	.LVL317-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST131:
	.long	.LVL312-.Ltext0
	.long	.LVL314-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST132:
	.long	.LVL320-.Ltext0
	.long	.LVL321-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST133:
	.long	.LVL322-.Ltext0
	.long	.LVL323-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST134:
	.long	.LVL338-.Ltext0
	.long	.LVL339-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	.LVL344-.Ltext0
	.long	.LVL345-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST135:
	.long	.LVL328-.Ltext0
	.long	.LVL329-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL329-.Ltext0
	.long	.LVL341-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL343-.Ltext0
	.long	.LVL347-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST136:
	.long	.LVL330-.Ltext0
	.long	.LVL331-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST137:
	.long	.LVL367-.Ltext0
	.long	.LVL368-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST138:
	.long	.LVL369-.Ltext0
	.long	.LVL370-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST139:
	.long	.LVL372-.Ltext0
	.long	.LVL373-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST140:
	.long	.LVL377-.Ltext0
	.long	.LVL378-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST141:
	.long	.LVL381-.Ltext0
	.long	.LVL382-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST142:
	.long	.LVL386-.Ltext0
	.long	.LVL387-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST143:
	.long	.LVL397-.Ltext0
	.long	.LVL398-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST144:
	.long	.LVL402-.Ltext0
	.long	.LVL403-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST145:
	.long	.LVL414-.Ltext0
	.long	.LVL415-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST146:
	.long	.LVL416-.Ltext0
	.long	.LVL417-.Ltext0
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
	.file 9 "csh_fast.h"
	.file 10 "exp.h"
	.section	.debug_info
	.long	0x1572
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF150
	.byte	0xc
	.long	.LASF151
	.long	.LASF152
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
	.long	.LASF153
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
	.uleb128 0x8
	.byte	0x4
	.long	0x2ea
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.byte	0x7f
	.long	0x353
	.uleb128 0x5
	.long	0x2ea
	.long	0x363
	.uleb128 0x6
	.long	0x30
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.byte	0x4
	.byte	0x1
	.byte	0x36
	.long	0x380
	.uleb128 0x13
	.string	"RN"
	.sleb128 0
	.uleb128 0x13
	.string	"RZ"
	.sleb128 1
	.uleb128 0x13
	.string	"RD"
	.sleb128 2
	.uleb128 0x13
	.string	"RU"
	.sleb128 3
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF154
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0x3ef
	.uleb128 0x15
	.string	"num"
	.byte	0x1
	.byte	0x16
	.long	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.byte	0x18
	.long	0x30
	.long	.LLST0
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0x18
	.long	0x30
	.long	.LLST1
	.uleb128 0x17
	.long	.LASF57
	.byte	0x1
	.byte	0x18
	.long	0x30
	.long	0x3fffffff
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0x18
	.long	0x30
	.long	.LLST2
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x19
	.long	0x5a
	.long	.LLST3
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.value	0x150
	.byte	0x1
	.long	0x2d8
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.long	0xa2f
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.value	0x150
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF59
	.byte	0x1
	.value	0x150
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.string	"k"
	.byte	0x1
	.value	0x153
	.long	0x5a
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x154
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0x1d
	.long	.LASF60
	.byte	0x1
	.value	0x155
	.long	0x348
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF61
	.byte	0x1
	.value	0x155
	.long	0x348
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1d
	.long	.LASF62
	.byte	0x1
	.value	0x155
	.long	0x348
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF63
	.byte	0x1
	.value	0x156
	.long	0x2d8
	.byte	0x8
	.long	0x4fb6d2ac
	.long	0x3bfd83c9
	.uleb128 0x1f
	.long	.LASF64
	.byte	0x1
	.value	0x157
	.long	0x2d8
	.long	.LLST4
	.uleb128 0x1f
	.long	.LASF65
	.byte	0x1
	.value	0x157
	.long	0x2d8
	.long	.LLST5
	.uleb128 0x1f
	.long	.LASF66
	.byte	0x1
	.value	0x157
	.long	0x2d8
	.long	.LLST6
	.uleb128 0x1f
	.long	.LASF67
	.byte	0x1
	.value	0x158
	.long	0x2d8
	.long	.LLST7
	.uleb128 0x1f
	.long	.LASF68
	.byte	0x1
	.value	0x158
	.long	0x2d8
	.long	.LLST8
	.uleb128 0x1f
	.long	.LASF69
	.byte	0x1
	.value	0x158
	.long	0x2d8
	.long	.LLST9
	.uleb128 0x1f
	.long	.LASF70
	.byte	0x1
	.value	0x158
	.long	0x2d8
	.long	.LLST10
	.uleb128 0x1d
	.long	.LASF71
	.byte	0x1
	.value	0x159
	.long	0x2d8
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.long	.LASF72
	.byte	0x1
	.value	0x15a
	.long	0x5a
	.long	.LLST11
	.uleb128 0x1f
	.long	.LASF73
	.byte	0x1
	.value	0x15b
	.long	0x2d8
	.long	.LLST12
	.uleb128 0x1f
	.long	.LASF74
	.byte	0x1
	.value	0x15b
	.long	0x2d8
	.long	.LLST13
	.uleb128 0x1f
	.long	.LASF75
	.byte	0x1
	.value	0x15b
	.long	0x2d8
	.long	.LLST14
	.uleb128 0x1f
	.long	.LASF76
	.byte	0x1
	.value	0x15b
	.long	0x2d8
	.long	.LLST15
	.uleb128 0x1f
	.long	.LASF77
	.byte	0x1
	.value	0x15c
	.long	0x2d8
	.long	.LLST16
	.uleb128 0x1f
	.long	.LASF78
	.byte	0x1
	.value	0x15c
	.long	0x2d8
	.long	.LLST17
	.uleb128 0x1f
	.long	.LASF79
	.byte	0x1
	.value	0x15c
	.long	0x2d8
	.long	.LLST18
	.uleb128 0x1f
	.long	.LASF80
	.byte	0x1
	.value	0x15c
	.long	0x2d8
	.long	.LLST19
	.uleb128 0x1f
	.long	.LASF81
	.byte	0x1
	.value	0x15d
	.long	0x2d8
	.long	.LLST20
	.uleb128 0x1f
	.long	.LASF82
	.byte	0x1
	.value	0x15d
	.long	0x2d8
	.long	.LLST21
	.uleb128 0x1f
	.long	.LASF83
	.byte	0x1
	.value	0x15e
	.long	0x2d8
	.long	.LLST22
	.uleb128 0x20
	.long	.LASF87
	.byte	0x1
	.value	0x15e
	.long	0x2d8
	.uleb128 0x1f
	.long	.LASF84
	.byte	0x1
	.value	0x15e
	.long	0x2d8
	.long	.LLST23
	.uleb128 0x1f
	.long	.LASF85
	.byte	0x1
	.value	0x15e
	.long	0x2d8
	.long	.LLST24
	.uleb128 0x1f
	.long	.LASF86
	.byte	0x1
	.value	0x15e
	.long	0x2d8
	.long	.LLST25
	.uleb128 0x20
	.long	.LASF88
	.byte	0x1
	.value	0x15e
	.long	0x2d8
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x15f
	.long	0x2d8
	.long	.LLST26
	.uleb128 0x1f
	.long	.LASF90
	.byte	0x1
	.value	0x15f
	.long	0x2d8
	.long	.LLST27
	.uleb128 0x1f
	.long	.LASF91
	.byte	0x1
	.value	0x15f
	.long	0x2d8
	.long	.LLST28
	.uleb128 0x1f
	.long	.LASF92
	.byte	0x1
	.value	0x15f
	.long	0x2d8
	.long	.LLST29
	.uleb128 0x1d
	.long	.LASF93
	.byte	0x1
	.value	0x160
	.long	0x2d8
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1f
	.long	.LASF94
	.byte	0x1
	.value	0x160
	.long	0x2d8
	.long	.LLST30
	.uleb128 0x1d
	.long	.LASF95
	.byte	0x1
	.value	0x161
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -208
	.uleb128 0x1d
	.long	.LASF96
	.byte	0x1
	.value	0x161
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -216
	.uleb128 0x20
	.long	.LASF97
	.byte	0x1
	.value	0x162
	.long	0x2d8
	.uleb128 0x1d
	.long	.LASF98
	.byte	0x1
	.value	0x163
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -208
	.uleb128 0x1d
	.long	.LASF99
	.byte	0x1
	.value	0x163
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -216
	.uleb128 0x21
	.string	"u53"
	.byte	0x1
	.value	0x163
	.long	0x2df
	.uleb128 0x21
	.string	"u"
	.byte	0x1
	.value	0x163
	.long	0x2df
	.uleb128 0x22
	.long	.LBB16
	.long	.LBE16
	.long	0x6ef
	.uleb128 0x1c
	.string	"_t"
	.byte	0x1
	.value	0x171
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.byte	0x0
	.uleb128 0x22
	.long	.LBB17
	.long	.LBE17
	.long	0x72a
	.uleb128 0x23
	.string	"_z"
	.byte	0x1
	.value	0x175
	.long	0x2d8
	.long	.LLST31
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.value	0x175
	.long	0x2d8
	.long	.LLST32
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.value	0x175
	.long	0x2d8
	.long	.LLST33
	.byte	0x0
	.uleb128 0x22
	.long	.LBB18
	.long	.LBE18
	.long	0x7be
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.value	0x1a7
	.long	0xa2f
	.long	.LLST34
	.uleb128 0x23
	.string	"up"
	.byte	0x1
	.value	0x1a7
	.long	0x2d8
	.long	.LLST35
	.uleb128 0x23
	.string	"u1"
	.byte	0x1
	.value	0x1a7
	.long	0x2d8
	.long	.LLST36
	.uleb128 0x23
	.string	"u2"
	.byte	0x1
	.value	0x1a7
	.long	0x2d8
	.long	.LLST37
	.uleb128 0x23
	.string	"vp"
	.byte	0x1
	.value	0x1a7
	.long	0x2d8
	.long	.LLST38
	.uleb128 0x23
	.string	"v1"
	.byte	0x1
	.value	0x1a7
	.long	0x2d8
	.long	.LLST39
	.uleb128 0x23
	.string	"v2"
	.byte	0x1
	.value	0x1a7
	.long	0x2d8
	.long	.LLST40
	.uleb128 0x23
	.string	"_u"
	.byte	0x1
	.value	0x1a7
	.long	0x2d8
	.long	.LLST41
	.uleb128 0x23
	.string	"_v"
	.byte	0x1
	.value	0x1a7
	.long	0x2d8
	.long	.LLST42
	.byte	0x0
	.uleb128 0x22
	.long	.LBB19
	.long	.LBE19
	.long	0x7f9
	.uleb128 0x23
	.string	"_z"
	.byte	0x1
	.value	0x1ab
	.long	0x2d8
	.long	.LLST43
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.value	0x1ab
	.long	0x2d8
	.long	.LLST44
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.value	0x1ab
	.long	0x2d8
	.long	.LLST45
	.byte	0x0
	.uleb128 0x22
	.long	.LBB20
	.long	.LBE20
	.long	0x823
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x1ac
	.long	0x2d8
	.long	.LLST46
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x1ac
	.long	0x2d8
	.long	.LLST47
	.byte	0x0
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x0
	.long	0x8af
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.value	0x1af
	.long	0xa2f
	.long	.LLST48
	.uleb128 0x23
	.string	"up"
	.byte	0x1
	.value	0x1af
	.long	0x2d8
	.long	.LLST49
	.uleb128 0x23
	.string	"u1"
	.byte	0x1
	.value	0x1af
	.long	0x2d8
	.long	.LLST50
	.uleb128 0x23
	.string	"u2"
	.byte	0x1
	.value	0x1af
	.long	0x2d8
	.long	.LLST51
	.uleb128 0x21
	.string	"vp"
	.byte	0x1
	.value	0x1af
	.long	0x2d8
	.uleb128 0x23
	.string	"v1"
	.byte	0x1
	.value	0x1af
	.long	0x2d8
	.long	.LLST52
	.uleb128 0x23
	.string	"v2"
	.byte	0x1
	.value	0x1af
	.long	0x2d8
	.long	.LLST53
	.uleb128 0x23
	.string	"_u"
	.byte	0x1
	.value	0x1af
	.long	0x2d8
	.long	.LLST54
	.uleb128 0x23
	.string	"_v"
	.byte	0x1
	.value	0x1af
	.long	0x2d8
	.long	.LLST55
	.byte	0x0
	.uleb128 0x22
	.long	.LBB23
	.long	.LBE23
	.long	0x8ea
	.uleb128 0x23
	.string	"_z"
	.byte	0x1
	.value	0x1b6
	.long	0x2d8
	.long	.LLST56
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.value	0x1b6
	.long	0x2d8
	.long	.LLST57
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.value	0x1b6
	.long	0x2d8
	.long	.LLST58
	.byte	0x0
	.uleb128 0x22
	.long	.LBB24
	.long	.LBE24
	.long	0x925
	.uleb128 0x23
	.string	"_z"
	.byte	0x1
	.value	0x1b9
	.long	0x2d8
	.long	.LLST59
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.value	0x1b9
	.long	0x2d8
	.long	.LLST60
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.value	0x1b9
	.long	0x2d8
	.long	.LLST61
	.byte	0x0
	.uleb128 0x22
	.long	.LBB25
	.long	.LBE25
	.long	0x960
	.uleb128 0x23
	.string	"_z"
	.byte	0x1
	.value	0x1ba
	.long	0x2d8
	.long	.LLST62
	.uleb128 0x23
	.string	"_a"
	.byte	0x1
	.value	0x1ba
	.long	0x2d8
	.long	.LLST63
	.uleb128 0x23
	.string	"_b"
	.byte	0x1
	.value	0x1ba
	.long	0x2d8
	.long	.LLST64
	.byte	0x0
	.uleb128 0x22
	.long	.LBB26
	.long	.LBE26
	.long	0x98a
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x1c8
	.long	0x2d8
	.long	.LLST65
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x1c8
	.long	0x2d8
	.long	.LLST66
	.byte	0x0
	.uleb128 0x22
	.long	.LBB27
	.long	.LBE27
	.long	0x9b4
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x1c9
	.long	0x2d8
	.long	.LLST67
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x1c9
	.long	0x2d8
	.long	.LLST68
	.byte	0x0
	.uleb128 0x22
	.long	.LBB28
	.long	.LBE28
	.long	0x9de
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x1ca
	.long	0x2d8
	.long	.LLST69
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x1ca
	.long	0x2d8
	.long	.LLST70
	.byte	0x0
	.uleb128 0x22
	.long	.LBB29
	.long	.LBE29
	.long	0xa08
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x1d2
	.long	0x2d8
	.long	.LLST71
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x1d2
	.long	0x2d8
	.long	.LLST72
	.byte	0x0
	.uleb128 0x25
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x1da
	.long	0x2d8
	.long	.LLST73
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x1da
	.long	0x2d8
	.long	.LLST74
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x2d8
	.uleb128 0x19
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.value	0x269
	.byte	0x1
	.long	0x2d8
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.long	0xa6b
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.value	0x269
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x26a
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.value	0x255
	.byte	0x1
	.long	0x2d8
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.long	0xaa2
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.value	0x255
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x256
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.value	0x240
	.byte	0x1
	.long	0x2d8
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.long	0xad9
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.value	0x240
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x241
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.value	0x231
	.byte	0x1
	.long	0x2d8
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.long	0xb10
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.value	0x231
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x232
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.long	0x2d8
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0x10fb
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0x39
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF59
	.byte	0x1
	.byte	0x39
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.byte	0x3c
	.long	0x5a
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x29
	.string	"y"
	.byte	0x1
	.byte	0x3d
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0x2a
	.long	.LASF63
	.byte	0x1
	.byte	0x3e
	.long	0x2d8
	.byte	0x8
	.long	0x4fb6d2ac
	.long	0x3bfd83c9
	.uleb128 0x2b
	.long	.LASF60
	.byte	0x1
	.byte	0x3f
	.long	0x348
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF61
	.byte	0x1
	.byte	0x3f
	.long	0x348
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF62
	.byte	0x1
	.byte	0x3f
	.long	0x348
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x16
	.long	.LASF64
	.byte	0x1
	.byte	0x40
	.long	0x2d8
	.long	.LLST75
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.byte	0x40
	.long	0x2d8
	.long	.LLST76
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0x41
	.long	0x2d8
	.long	.LLST77
	.uleb128 0x16
	.long	.LASF68
	.byte	0x1
	.byte	0x41
	.long	0x2d8
	.long	.LLST78
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.byte	0x41
	.long	0x2d8
	.long	.LLST79
	.uleb128 0x16
	.long	.LASF70
	.byte	0x1
	.byte	0x41
	.long	0x2d8
	.long	.LLST80
	.uleb128 0x2b
	.long	.LASF71
	.byte	0x1
	.byte	0x42
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.byte	0x43
	.long	0x5a
	.long	.LLST81
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x44
	.long	0x2d8
	.long	.LLST82
	.uleb128 0x16
	.long	.LASF85
	.byte	0x1
	.byte	0x44
	.long	0x2d8
	.long	.LLST83
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.byte	0x44
	.long	0x2d8
	.long	.LLST84
	.uleb128 0x16
	.long	.LASF81
	.byte	0x1
	.byte	0x45
	.long	0x2d8
	.long	.LLST85
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.byte	0x45
	.long	0x2d8
	.long	.LLST86
	.uleb128 0x16
	.long	.LASF107
	.byte	0x1
	.byte	0x45
	.long	0x2d8
	.long	.LLST87
	.uleb128 0x2c
	.long	.LASF108
	.byte	0x1
	.byte	0x45
	.long	0x2d8
	.uleb128 0x16
	.long	.LASF109
	.byte	0x1
	.byte	0x45
	.long	0x2d8
	.long	.LLST88
	.uleb128 0x2c
	.long	.LASF110
	.byte	0x1
	.byte	0x45
	.long	0x2d8
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.byte	0x47
	.long	0x2d8
	.long	.LLST89
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x48
	.long	0x2d8
	.long	.LLST90
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.byte	0x49
	.long	0x2d8
	.long	.LLST91
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.byte	0x4a
	.long	0x2d8
	.long	.LLST92
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.byte	0x4b
	.long	0x2d8
	.long	.LLST93
	.uleb128 0x2b
	.long	.LASF94
	.byte	0x1
	.byte	0x4b
	.long	0x2d8
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2c
	.long	.LASF111
	.byte	0x1
	.byte	0x4c
	.long	0x2d8
	.uleb128 0x16
	.long	.LASF73
	.byte	0x1
	.byte	0x4d
	.long	0x2d8
	.long	.LLST94
	.uleb128 0x16
	.long	.LASF74
	.byte	0x1
	.byte	0x4d
	.long	0x2d8
	.long	.LLST95
	.uleb128 0x16
	.long	.LASF75
	.byte	0x1
	.byte	0x4d
	.long	0x2d8
	.long	.LLST96
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x4d
	.long	0x2d8
	.long	.LLST97
	.uleb128 0x16
	.long	.LASF77
	.byte	0x1
	.byte	0x4e
	.long	0x2d8
	.long	.LLST98
	.uleb128 0x16
	.long	.LASF78
	.byte	0x1
	.byte	0x4e
	.long	0x2d8
	.long	.LLST99
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.byte	0x4e
	.long	0x2d8
	.long	.LLST100
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.byte	0x4e
	.long	0x2d8
	.long	.LLST101
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.byte	0x4f
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0x2b
	.long	.LASF96
	.byte	0x1
	.byte	0x4f
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF98
	.byte	0x1
	.byte	0x50
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF99
	.byte	0x1
	.byte	0x50
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -216
	.uleb128 0x2d
	.string	"u53"
	.byte	0x1
	.byte	0x50
	.long	0x2df
	.uleb128 0x2d
	.string	"u"
	.byte	0x1
	.byte	0x50
	.long	0x2df
	.uleb128 0x22
	.long	.LBB45
	.long	.LBE45
	.long	0xde0
	.uleb128 0x29
	.string	"_t"
	.byte	0x1
	.byte	0x54
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.byte	0x0
	.uleb128 0x22
	.long	.LBB46
	.long	.LBE46
	.long	0xe18
	.uleb128 0x18
	.string	"_z"
	.byte	0x1
	.byte	0x58
	.long	0x2d8
	.long	.LLST102
	.uleb128 0x18
	.string	"_a"
	.byte	0x1
	.byte	0x58
	.long	0x2d8
	.long	.LLST103
	.uleb128 0x18
	.string	"_b"
	.byte	0x1
	.byte	0x58
	.long	0x2d8
	.long	.LLST104
	.byte	0x0
	.uleb128 0x22
	.long	.LBB47
	.long	.LBE47
	.long	0xea3
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x89
	.long	0xa2f
	.long	.LLST105
	.uleb128 0x18
	.string	"up"
	.byte	0x1
	.byte	0x89
	.long	0x2d8
	.long	.LLST106
	.uleb128 0x18
	.string	"u1"
	.byte	0x1
	.byte	0x89
	.long	0x2d8
	.long	.LLST107
	.uleb128 0x18
	.string	"u2"
	.byte	0x1
	.byte	0x89
	.long	0x2d8
	.long	.LLST108
	.uleb128 0x18
	.string	"vp"
	.byte	0x1
	.byte	0x89
	.long	0x2d8
	.long	.LLST109
	.uleb128 0x18
	.string	"v1"
	.byte	0x1
	.byte	0x89
	.long	0x2d8
	.long	.LLST110
	.uleb128 0x18
	.string	"v2"
	.byte	0x1
	.byte	0x89
	.long	0x2d8
	.long	.LLST111
	.uleb128 0x18
	.string	"_u"
	.byte	0x1
	.byte	0x89
	.long	0x2d8
	.long	.LLST112
	.uleb128 0x18
	.string	"_v"
	.byte	0x1
	.byte	0x89
	.long	0x2d8
	.long	.LLST113
	.byte	0x0
	.uleb128 0x22
	.long	.LBB48
	.long	.LBE48
	.long	0xedb
	.uleb128 0x18
	.string	"_z"
	.byte	0x1
	.byte	0x8b
	.long	0x2d8
	.long	.LLST114
	.uleb128 0x18
	.string	"_a"
	.byte	0x1
	.byte	0x8b
	.long	0x2d8
	.long	.LLST115
	.uleb128 0x18
	.string	"_b"
	.byte	0x1
	.byte	0x8b
	.long	0x2d8
	.long	.LLST116
	.byte	0x0
	.uleb128 0x22
	.long	.LBB49
	.long	.LBE49
	.long	0xf13
	.uleb128 0x18
	.string	"_z"
	.byte	0x1
	.byte	0x8f
	.long	0x2d8
	.long	.LLST117
	.uleb128 0x18
	.string	"_a"
	.byte	0x1
	.byte	0x8f
	.long	0x2d8
	.long	.LLST118
	.uleb128 0x18
	.string	"_b"
	.byte	0x1
	.byte	0x8f
	.long	0x2d8
	.long	.LLST119
	.byte	0x0
	.uleb128 0x22
	.long	.LBB50
	.long	.LBE50
	.long	0xf9e
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x96
	.long	0xa2f
	.long	.LLST120
	.uleb128 0x18
	.string	"up"
	.byte	0x1
	.byte	0x96
	.long	0x2d8
	.long	.LLST121
	.uleb128 0x18
	.string	"u1"
	.byte	0x1
	.byte	0x96
	.long	0x2d8
	.long	.LLST122
	.uleb128 0x18
	.string	"u2"
	.byte	0x1
	.byte	0x96
	.long	0x2d8
	.long	.LLST123
	.uleb128 0x18
	.string	"vp"
	.byte	0x1
	.byte	0x96
	.long	0x2d8
	.long	.LLST124
	.uleb128 0x18
	.string	"v1"
	.byte	0x1
	.byte	0x96
	.long	0x2d8
	.long	.LLST125
	.uleb128 0x18
	.string	"v2"
	.byte	0x1
	.byte	0x96
	.long	0x2d8
	.long	.LLST126
	.uleb128 0x18
	.string	"_u"
	.byte	0x1
	.byte	0x96
	.long	0x2d8
	.long	.LLST127
	.uleb128 0x18
	.string	"_v"
	.byte	0x1
	.byte	0x96
	.long	0x2d8
	.long	.LLST128
	.byte	0x0
	.uleb128 0x22
	.long	.LBB51
	.long	.LBE51
	.long	0xfd6
	.uleb128 0x18
	.string	"_z"
	.byte	0x1
	.byte	0x98
	.long	0x2d8
	.long	.LLST129
	.uleb128 0x18
	.string	"_a"
	.byte	0x1
	.byte	0x98
	.long	0x2d8
	.long	.LLST130
	.uleb128 0x18
	.string	"_b"
	.byte	0x1
	.byte	0x98
	.long	0x2d8
	.long	.LLST131
	.byte	0x0
	.uleb128 0x22
	.long	.LBB52
	.long	.LBE52
	.long	0xffe
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x99
	.long	0x2d8
	.long	.LLST132
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x99
	.long	0x2d8
	.long	.LLST133
	.byte	0x0
	.uleb128 0x22
	.long	.LBB53
	.long	.LBE53
	.long	0x1036
	.uleb128 0x18
	.string	"_z"
	.byte	0x1
	.byte	0x9c
	.long	0x2d8
	.long	.LLST134
	.uleb128 0x18
	.string	"_a"
	.byte	0x1
	.byte	0x9c
	.long	0x2d8
	.long	.LLST135
	.uleb128 0x18
	.string	"_b"
	.byte	0x1
	.byte	0x9c
	.long	0x2d8
	.long	.LLST136
	.byte	0x0
	.uleb128 0x22
	.long	.LBB54
	.long	.LBE54
	.long	0x105e
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0xa9
	.long	0x2d8
	.long	.LLST137
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xa9
	.long	0x2d8
	.long	.LLST138
	.byte	0x0
	.uleb128 0x22
	.long	.LBB55
	.long	.LBE55
	.long	0x1086
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0xaa
	.long	0x2d8
	.long	.LLST139
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xaa
	.long	0x2d8
	.long	.LLST140
	.byte	0x0
	.uleb128 0x22
	.long	.LBB56
	.long	.LBE56
	.long	0x10ae
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0xab
	.long	0x2d8
	.long	.LLST141
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xab
	.long	0x2d8
	.long	.LLST142
	.byte	0x0
	.uleb128 0x22
	.long	.LBB57
	.long	.LBE57
	.long	0x10d6
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0xb3
	.long	0x2d8
	.long	.LLST143
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xb3
	.long	0x2d8
	.long	.LLST144
	.byte	0x0
	.uleb128 0x25
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0xbb
	.long	0x2d8
	.long	.LLST145
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xbb
	.long	0x2d8
	.long	.LLST146
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF112
	.byte	0x1
	.value	0x136
	.byte	0x1
	.long	0x2d8
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.long	0x1132
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.value	0x136
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x137
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF113
	.byte	0x1
	.value	0x128
	.byte	0x1
	.long	0x2d8
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.long	0x1169
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.value	0x128
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x129
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	0x2d8
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.long	0x11a0
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.value	0x11a
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x11b
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF115
	.byte	0x1
	.value	0x10c
	.byte	0x1
	.long	0x2d8
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0x11d7
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.value	0x10c
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x10d
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF116
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF117
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF118
	.byte	0x7
	.byte	0x47
	.long	0x11fc
	.uleb128 0x26
	.long	0x2df
	.uleb128 0x2c
	.long	.LASF119
	.byte	0x7
	.byte	0x48
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF120
	.byte	0x7
	.byte	0x49
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF121
	.byte	0x7
	.byte	0x4a
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF122
	.byte	0x7
	.byte	0x4b
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF123
	.byte	0x7
	.byte	0x4c
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF124
	.byte	0x7
	.byte	0x4d
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF125
	.byte	0x7
	.byte	0x4e
	.long	0x11fc
	.uleb128 0x2e
	.long	.LASF126
	.byte	0x8
	.byte	0x32
	.long	0x5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF127
	.byte	0x8
	.byte	0xca
	.long	0x1266
	.uleb128 0x26
	.long	0x2ea
	.uleb128 0x2c
	.long	.LASF128
	.byte	0x8
	.byte	0xce
	.long	0x1266
	.uleb128 0x2c
	.long	.LASF129
	.byte	0x8
	.byte	0xd2
	.long	0x1266
	.uleb128 0x2c
	.long	.LASF130
	.byte	0x8
	.byte	0xd6
	.long	0x1266
	.uleb128 0x2c
	.long	.LASF131
	.byte	0x8
	.byte	0xda
	.long	0x1266
	.uleb128 0x2f
	.long	.LASF132
	.byte	0x9
	.value	0x186
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF133
	.byte	0x9
	.value	0x187
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF134
	.byte	0x9
	.value	0x188
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF135
	.byte	0x9
	.value	0x189
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF136
	.byte	0x9
	.value	0x18a
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF137
	.byte	0x9
	.value	0x18b
	.long	0x12eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	0x5a
	.uleb128 0x2f
	.long	.LASF138
	.byte	0x9
	.value	0x18e
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF139
	.byte	0x9
	.value	0x190
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x2df
	.long	0x1322
	.uleb128 0x6
	.long	0x30
	.byte	0xb2
	.uleb128 0x6
	.long	0x30
	.byte	0x3
	.byte	0x0
	.uleb128 0x1d
	.long	.LASF140
	.byte	0x9
	.value	0x192
	.long	0x1334
	.byte	0x5
	.byte	0x3
	.long	cosh_sinh_table
	.uleb128 0x26
	.long	0x130c
	.uleb128 0x30
	.string	"c2"
	.byte	0x9
	.value	0x2fc
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"c4"
	.byte	0x9
	.value	0x2fd
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"c6"
	.byte	0x9
	.value	0x2fe
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"s3"
	.byte	0x9
	.value	0x302
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"s5"
	.byte	0x9
	.value	0x303
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"s7"
	.byte	0x9
	.value	0x304
	.long	0x11fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF141
	.byte	0xa
	.byte	0x10
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF142
	.byte	0xa
	.byte	0x11
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF143
	.byte	0xa
	.byte	0x12
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF144
	.byte	0xa
	.byte	0x13
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF145
	.byte	0xa
	.byte	0x17
	.long	0x1266
	.uleb128 0x2c
	.long	.LASF146
	.byte	0xa
	.byte	0x1a
	.long	0x1266
	.uleb128 0x5
	.long	0x337
	.long	0x13d9
	.uleb128 0x6
	.long	0x30
	.byte	0x9
	.byte	0x0
	.uleb128 0x2c
	.long	.LASF147
	.byte	0xa
	.byte	0x23
	.long	0x13e4
	.uleb128 0x26
	.long	0x13c9
	.uleb128 0x2e
	.long	.LASF116
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF117
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF126
	.byte	0x8
	.byte	0x32
	.long	0x5a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	crlibm_second_step_taken
	.uleb128 0x32
	.long	.LASF132
	.byte	0x9
	.value	0x186
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	inv_ln_2
	.uleb128 0x32
	.long	.LASF133
	.byte	0x9
	.value	0x187
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ln2_hi
	.uleb128 0x32
	.long	.LASF134
	.byte	0x9
	.value	0x188
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ln2_lo
	.uleb128 0x32
	.long	.LASF135
	.byte	0x9
	.value	0x189
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	two_43_44
	.uleb128 0x32
	.long	.LASF136
	.byte	0x9
	.value	0x18a
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	two_minus_30
	.uleb128 0x32
	.long	.LASF137
	.byte	0x9
	.value	0x18b
	.long	0x12eb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bias
	.uleb128 0x32
	.long	.LASF138
	.byte	0x9
	.value	0x18e
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	max_input_ch
	.uleb128 0x32
	.long	.LASF148
	.byte	0x9
	.value	0x18f
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	max_input_sh
	.uleb128 0x32
	.long	.LASF139
	.byte	0x9
	.value	0x190
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	round_cst_cosh
	.uleb128 0x32
	.long	.LASF149
	.byte	0x9
	.value	0x191
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	round_cst_sinh
	.uleb128 0x33
	.string	"c0"
	.byte	0x9
	.value	0x2fb
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	c0
	.uleb128 0x33
	.string	"c2"
	.byte	0x9
	.value	0x2fc
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	c2
	.uleb128 0x33
	.string	"c4"
	.byte	0x9
	.value	0x2fd
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	c4
	.uleb128 0x33
	.string	"c6"
	.byte	0x9
	.value	0x2fe
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	c6
	.uleb128 0x33
	.string	"c8"
	.byte	0x9
	.value	0x2ff
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	c8
	.uleb128 0x33
	.string	"s1"
	.byte	0x9
	.value	0x301
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	s1
	.uleb128 0x33
	.string	"s3"
	.byte	0x9
	.value	0x302
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	s3
	.uleb128 0x33
	.string	"s5"
	.byte	0x9
	.value	0x303
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	s5
	.uleb128 0x33
	.string	"s7"
	.byte	0x9
	.value	0x304
	.long	0x11fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	s7
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
	.uleb128 0x4
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x29
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x183
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1576
	.long	0x380
	.string	"scs_div_2"
	.long	0x3ef
	.string	"do_sinh"
	.long	0xa34
	.string	"sinh_rd"
	.long	0xa6b
	.string	"sinh_ru"
	.long	0xaa2
	.string	"sinh_rz"
	.long	0xad9
	.string	"sinh_rn"
	.long	0xb10
	.string	"do_cosh"
	.long	0x10fb
	.string	"cosh_rd"
	.long	0x1132
	.string	"cosh_ru"
	.long	0x1169
	.string	"cosh_rz"
	.long	0x11a0
	.string	"cosh_rn"
	.long	0x1403
	.string	"crlibm_second_step_taken"
	.long	0x1415
	.string	"inv_ln_2"
	.long	0x1428
	.string	"ln2_hi"
	.long	0x143b
	.string	"ln2_lo"
	.long	0x144e
	.string	"two_43_44"
	.long	0x1461
	.string	"two_minus_30"
	.long	0x1474
	.string	"bias"
	.long	0x1487
	.string	"max_input_ch"
	.long	0x149a
	.string	"max_input_sh"
	.long	0x14ad
	.string	"round_cst_cosh"
	.long	0x14c0
	.string	"round_cst_sinh"
	.long	0x14d3
	.string	"c0"
	.long	0x14e5
	.string	"c2"
	.long	0x14f7
	.string	"c4"
	.long	0x1509
	.string	"c6"
	.long	0x151b
	.string	"c8"
	.long	0x152d
	.string	"s1"
	.long	0x153f
	.string	"s3"
	.long	0x1551
	.string	"s5"
	.long	0x1563
	.string	"s7"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x93
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1576
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
	.long	0x348
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
	.long	.LBB21-.Ltext0
	.long	.LBE21-.Ltext0
	.long	.LBB22-.Ltext0
	.long	.LBE22-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_chain"
.LASF8:
	.string	"size_t"
.LASF148:
	.string	"max_input_sh"
.LASF109:
	.string	"b_sa_hi"
.LASF33:
	.string	"_shortbuf"
.LASF79:
	.string	"sh_2_mk_hi"
.LASF85:
	.string	"temp_lo"
.LASF124:
	.string	"max_double"
.LASF91:
	.string	"sa_hi"
.LASF54:
	.string	"scs_t"
.LASF21:
	.string	"_IO_buf_base"
.LASF7:
	.string	"long long unsigned int"
.LASF61:
	.string	"exp_scs"
.LASF150:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF143:
	.string	"smll_int"
.LASF127:
	.string	"scs_zer"
.LASF135:
	.string	"two_43_44"
.LASF28:
	.string	"_fileno"
.LASF151:
	.string	"csh_fast.c"
.LASF73:
	.string	"ch_2_pk_hi"
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
.LASF58:
	.string	"old_value"
.LASF64:
	.string	"res_hi"
.LASF142:
	.string	"tiny_int"
.LASF9:
	.string	"__quad_t"
.LASF48:
	.string	"double"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF90:
	.string	"ca_lo"
.LASF131:
	.string	"scs_sixinv"
.LASF154:
	.string	"scs_div_2"
.LASF93:
	.string	"tcb_hi"
.LASF71:
	.string	"table_index_float"
.LASF56:
	.string	"new_value"
.LASF120:
	.string	"radix_mone_double"
.LASF57:
	.string	"mask"
.LASF139:
	.string	"round_cst_cosh"
.LASF105:
	.string	"do_cosh"
.LASF130:
	.string	"scs_two"
.LASF75:
	.string	"ch_2_mk_hi"
.LASF69:
	.string	"sh_hi"
.LASF106:
	.string	"temp"
.LASF136:
	.string	"two_minus_30"
.LASF44:
	.string	"_IO_marker"
.LASF116:
	.string	"stdin"
.LASF0:
	.string	"unsigned int"
.LASF101:
	.string	"sinh_rd"
.LASF152:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF146:
	.string	"sc_ln2_o512_2"
.LASF128:
	.string	"scs_half"
.LASF3:
	.string	"long unsigned int"
.LASF62:
	.string	"exp_minus_scs"
.LASF19:
	.string	"_IO_write_ptr"
.LASF125:
	.string	"min_double"
.LASF147:
	.string	"constant_poly"
.LASF95:
	.string	"two_p_plus_k"
.LASF46:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF81:
	.string	"b_hi"
.LASF23:
	.string	"_IO_save_base"
.LASF83:
	.string	"ca_b_hi"
.LASF134:
	.string	"ln2_lo"
.LASF97:
	.string	"square_y_hi"
.LASF51:
	.string	"exception"
.LASF126:
	.string	"crlibm_second_step_taken"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF117:
	.string	"stdout"
.LASF68:
	.string	"ch_lo"
.LASF78:
	.string	"sh_2_pk_lo"
.LASF50:
	.string	"h_word"
.LASF16:
	.string	"_IO_read_end"
.LASF88:
	.string	"sa_b_lo"
.LASF112:
	.string	"cosh_rd"
.LASF108:
	.string	"b_ca_lo"
.LASF84:
	.string	"temp_hi"
.LASF20:
	.string	"_IO_write_end"
.LASF115:
	.string	"cosh_rn"
.LASF144:
	.string	"larg_int"
.LASF63:
	.string	"delta_cst_cosh"
.LASF82:
	.string	"b_lo"
.LASF153:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF110:
	.string	"b_sa_lo"
.LASF113:
	.string	"cosh_ru"
.LASF102:
	.string	"sinh_ru"
.LASF80:
	.string	"sh_2_mk_lo"
.LASF47:
	.string	"_pos"
.LASF114:
	.string	"cosh_rz"
.LASF92:
	.string	"sa_lo"
.LASF26:
	.string	"_markers"
.LASF121:
	.string	"radix_mtwo_double"
.LASF55:
	.string	"carry"
.LASF104:
	.string	"sinh_rn"
.LASF118:
	.string	"radix_one_double"
.LASF1:
	.string	"unsigned char"
.LASF96:
	.string	"two_p_minus_k"
.LASF103:
	.string	"sinh_rz"
.LASF5:
	.string	"short int"
.LASF137:
	.string	"bias"
.LASF32:
	.string	"_vtable_offset"
.LASF49:
	.string	"db_number"
.LASF89:
	.string	"ca_hi"
.LASF74:
	.string	"ch_2_pk_lo"
.LASF66:
	.string	"temp1"
.LASF72:
	.string	"table_index"
.LASF13:
	.string	"char"
.LASF132:
	.string	"inv_ln_2"
.LASF86:
	.string	"sa_b_hi"
.LASF52:
	.string	"index"
.LASF140:
	.string	"cosh_sinh_table"
.LASF45:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF76:
	.string	"ch_2_mk_lo"
.LASF70:
	.string	"sh_lo"
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
.LASF122:
	.string	"radix_rng_double"
.LASF59:
	.string	"rounding_mode"
.LASF42:
	.string	"_unused2"
.LASF60:
	.string	"res_scs"
.LASF133:
	.string	"ln2_hi"
.LASF24:
	.string	"_IO_backup_base"
.LASF138:
	.string	"max_input_ch"
.LASF119:
	.string	"radix_two_double"
.LASF67:
	.string	"ch_hi"
.LASF77:
	.string	"sh_2_pk_hi"
.LASF141:
	.string	"iln2_o512"
.LASF65:
	.string	"res_lo"
.LASF149:
	.string	"round_cst_sinh"
.LASF87:
	.string	"ca_b_lo"
.LASF100:
	.string	"do_sinh"
.LASF111:
	.string	"square_b_hi"
.LASF98:
	.string	"absyh"
.LASF99:
	.string	"absyl"
.LASF18:
	.string	"_IO_write_base"
.LASF107:
	.string	"b_ca_hi"
.LASF145:
	.string	"sc_ln2_o512_1"
.LASF123:
	.string	"radix_mrng_double"
.LASF129:
	.string	"scs_one"
.LASF94:
	.string	"tsb_hi"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
