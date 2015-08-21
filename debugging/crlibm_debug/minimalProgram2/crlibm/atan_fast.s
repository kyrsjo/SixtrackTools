	.file	"atan_fast.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# atan_fast.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
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
	.type	atan_quick, @function
atan_quick:
.LFB7:
	.file 1 "atan_fast.c"
	.loc 1 21 0
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
	subl	$28, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	12(%ebp)	# x
	.loc 1 32 0
	fldl	.LC0@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L40	#,
.LBB2:
	.loc 1 45 0
	fldl	1960+arctan_table@GOTOFF(%ebx)	# <variable>.d
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	jbe	.L41	#,
	fxch	%st(1)	#
.LVL1:
.LBB3:
	.loc 1 47 0
	fchs
.LVL2:
	fld	%st(1)	#
.LVL3:
	fadd	%st(1), %st	#,
.LVL4:
	fld	%st(0)	#
	fsub	%st(3), %st	#,
.LVL5:
	fsubrp	%st, %st(2)	#,
	fxch	%st(1)	#
.LVL6:
	fstpl	-24(%ebp)	# %sfp
.LVL7:
	movl	$61, %ecx	#, i.53
	jmp	.L6	#
.LVL8:
.L41:
	fstp	%st(1)	#
.LVL9:
.LBE3:
	.loc 1 53 0
	fldl	992+arctan_table@GOTOFF(%ebx)	# <variable>.d
	fucomip	%st(1), %st	#,
	movl	$47, %ecx	#, tmp227
	movl	$15, %esi	#, tmp226
	cmovbe	%ecx, %esi	# tmp226,, tmp227, i
.LVL10:
	.loc 1 55 0
	movl	%esi, %ecx	# i, tmp110
	sall	$5, %ecx	#, tmp110
	fldl	arctan_table@GOTOFF(%ebx,%ecx)	# <variable>.d
	.loc 1 56 0
	leal	8(%esi), %edi	#, tmp236
	leal	-8(%esi), %ecx	#, tmp237
	fucomip	%st(1), %st	#,
	cmovbe	%edi, %ecx	# tmp237,, tmp236, i.50
.LVL11:
	.loc 1 57 0
	movl	%ecx, %esi	# i.50, tmp113
	sall	$5, %esi	#, tmp113
	fldl	arctan_table@GOTOFF(%ebx,%esi)	# <variable>.d
	.loc 1 58 0
	leal	4(%ecx), %esi	#, tmp228
	leal	-4(%ecx), %edi	#, tmp229
	fucomip	%st(1), %st	#,
	cmovbe	%esi, %edi	# tmp229,, tmp228, i.51
.LVL12:
	.loc 1 59 0
	movl	%edi, %ecx	# i.51, tmp116
	sall	$5, %ecx	#, tmp116
	fldl	arctan_table@GOTOFF(%ebx,%ecx)	# <variable>.d
	.loc 1 60 0
	leal	2(%edi), %ecx	#, tmp239
	leal	-2(%edi), %esi	#, tmp240
	fucomip	%st(1), %st	#,
	cmovbe	%ecx, %esi	# tmp240,, tmp239, i.52
.LVL13:
	.loc 1 61 0
	movl	%esi, %ecx	# i.52, tmp119
	sall	$5, %ecx	#, tmp119
	fldl	arctan_table@GOTOFF(%ebx,%ecx)	# <variable>.d
	.loc 1 62 0
	leal	1(%esi), %edi	#, tmp230
	leal	-1(%esi), %ecx	#, tmp231
	fucomip	%st(1), %st	#,
	cmovbe	%edi, %ecx	# tmp231,, tmp230, i.53
.LVL14:
	.loc 1 63 0
	movl	%ecx, %esi	# i.53, tmp122
	sall	$5, %esi	#, tmp122
	fldl	arctan_table@GOTOFF(%ebx,%esi)	# <variable>.d
	leal	-1(%ecx), %esi	#, tmp238
	fucomip	%st(1), %st	#,
	cmova	%esi, %ecx	# i.53,, tmp238, i.53
.LVL15:
	.loc 1 64 0
	leal	1(,%ecx,4), %esi	#, tmp125
	fld	%st(0)	#
	fsubl	arctan_table@GOTOFF(%ebx,%esi,8)	# <variable>.d
.LVL16:
	fldz
.LVL17:
	fstpl	-24(%ebp)	# %sfp
.LVL18:
.L6:
.LBB4:
	.loc 1 80 0
	leal	1(,%ecx,4), %esi	#, tmp130
	fldl	arctan_table@GOTOFF(%ebx,%esi,8)	# <variable>.d
.LVL19:
	fldl	.LC2@GOTOFF(%ebx)	#
	fld	%st(3)	#
	fmul	%st(1), %st	#,
	fxch	%st(1)	#
.LVL20:
	fmul	%st(2), %st	#,
.LVL21:
	fld	%st(4)	#
.LVL22:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL23:
	fld	%st(2)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL24:
	fld	%st(4)	#
.LVL25:
	fsub	%st(2), %st	#,
.LVL26:
	fld	%st(3)	#
.LVL27:
	fsub	%st(2), %st	#,
	fxch	%st(4)	#
.LVL28:
	fmul	%st(6), %st	#,
.LVL29:
	fld	%st(3)	#
.LVL30:
	fmul	%st(3), %st	#,
	fsub	%st(1), %st	#,
	fxch	%st(4)	#
	fmul	%st(5), %st	#,
	faddp	%st, %st(4)	#,
	fxch	%st(2)	#
	fmul	%st(1), %st	#,
	faddp	%st, %st(3)	#,
	fmulp	%st, %st(3)	#,
	fxch	%st(1)	#
	faddp	%st, %st(2)	#,
.LVL31:
.LBE4:
	.loc 1 82 0
	fld1
	fxch	%st(4)	#
	fucomip	%st(4), %st	#,
	jbe	.L42	#,
.LBB5:
	.loc 1 83 0
	fld	%st(0)	#
	fadd	%st(4), %st	#,
.LVL32:
	fsubr	%st, %st(1)	#,
.LVL33:
	fxch	%st(4)	#
.LVL34:
	faddp	%st, %st(1)	#,
	fadds	.LC1@GOTOFF(%ebx)	#
	faddp	%st, %st(1)	#,
.LVL35:
	fld	%st(2)	#
.LVL36:
	fadd	%st(1), %st	#,
.LVL37:
	fsubr	%st, %st(3)	#,
	fxch	%st(3)	#
.LVL38:
	faddp	%st, %st(1)	#,
	fstpl	-32(%ebp)	# %sfp
.LVL39:
	jmp	.L25	#
.LVL40:
.L42:
	fstp	%st(3)	#
	fxch	%st(1)	#
.LVL41:
	fxch	%st(2)	#
.LBE5:
.LBB6:
	.loc 1 84 0
	fld1
	fld	%st(1)	#
	fadd	%st(1), %st	#,
.LVL42:
	fsubr	%st, %st(1)	#,
	fxch	%st(2)	#
.LVL43:
	faddp	%st, %st(1)	#,
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
	fadds	.LC1@GOTOFF(%ebx)	#
.LVL44:
	fld	%st(1)	#
.LVL45:
	fadd	%st(1), %st	#,
.LVL46:
	fsubr	%st, %st(2)	#,
	fxch	%st(2)	#
.LVL47:
	faddp	%st, %st(1)	#,
	fstpl	-32(%ebp)	# %sfp
	fxch	%st(1)	#
.LVL48:
.L25:
.LBE6:
.LBB7:
	.loc 1 86 0
	fld	%st(0)	#
	fdiv	%st(2), %st	#,
.LVL49:
.LBB9:
	fldl	.LC2@GOTOFF(%ebx)	#
.LVL50:
	fld	%st(1)	#
	fmul	%st(1), %st	#,
	fxch	%st(1)	#
.LVL51:
	fmul	%st(4), %st	#,
.LVL52:
	fld	%st(2)	#
.LVL53:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL54:
	fld	%st(4)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL55:
	fld	%st(2)	#
.LVL56:
	fsub	%st(2), %st	#,
.LVL57:
	fld	%st(5)	#
.LVL58:
	fsub	%st(2), %st	#,
.LVL59:
	fld	%st(4)	#
.LVL60:
	fmul	%st(7), %st	#,
.LVL61:
.LBE9:
	fsubr	%st, %st(6)	#,
	fxch	%st(6)	#
.LVL62:
	fstpl	-40(%ebp)	# %sfp
.LBB8:
	fld	%st(3)	#
	fmul	%st(3), %st	#,
	fsubp	%st, %st(6)	#,
	fmul	%st, %st(3)	#,
	fxch	%st(5)	#
	faddp	%st, %st(3)	#,
	fmul	%st, %st(1)	#,
	fxch	%st(2)	#
.LVL63:
	faddp	%st, %st(1)	#,
	fxch	%st(1)	#
	fmulp	%st, %st(3)	#,
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
.LBE8:
	fsubrl	-40(%ebp)	# %sfp
	faddl	-24(%ebp)	# %sfp
	fldl	-32(%ebp)	# %sfp
	fmul	%st(2), %st	#,
	fsubrp	%st, %st(1)	#,
	fdivp	%st, %st(2)	#,
.LVL64:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL65:
.LBE7:
	.loc 1 95 0
	fld	%st(0)	#
	fmul	%st(1), %st	#,
.LVL66:
.LBB10:
	.loc 1 104 0
	leal	1(%ecx,%ecx), %edi	#, tmp184
	leal	arctan_table@GOTOFF(%ebx), %esi	#, tmp185
.LVL67:
	sall	$4, %edi	#, tmp186
	fldl	(%edi,%esi)	# <variable>.d
.LVL68:
	fld	%st(2)	#
	fadd	%st(1), %st	#,
.LVL69:
	.loc 1 105 0
	fsub	%st, %st(1)	#,
.LVL70:
	fxch	%st(1)	#
.LVL71:
	fsubr	%st(3), %st	#,
	fxch	%st(4)	#
.LBE10:
.LBB11:
	fsub	%st(3), %st	#,
	faddp	%st, %st(5)	#,
	fxch	%st(4)	#
.LBE11:
	movl	%ecx, %edi	# i.53, tmp192
.LVL72:
	sall	$5, %edi	#, tmp192
	faddl	24(%esi,%edi)	# <variable>.d
	fld	%st(1)	#
	fmull	.LC4@GOTOFF(%ebx)	#
	fsubl	.LC5@GOTOFF(%ebx)	#
	fmul	%st(2), %st	#,
	faddl	.LC6@GOTOFF(%ebx)	#
	fmul	%st(2), %st	#,
	fsubl	.LC7@GOTOFF(%ebx)	#
	fmulp	%st, %st(2)	#,
.LVL73:
	fxch	%st(2)	#
	fmulp	%st, %st(1)	#,
	faddp	%st, %st(1)	#,
.LBB12:
	faddp	%st, %st(1)	#,
.LVL74:
	fld	%st(1)	#
.LVL75:
	fadd	%st(1), %st	#,
	fstl	(%eax)	#* atanhi
.LVL76:
	fsubp	%st, %st(2)	#,
.LVL77:
	fsubp	%st, %st(1)	#,
	fstpl	(%edx)	#* atanlo
.LBE12:
	.loc 1 108 0
	cmpl	$9, %ecx	#, i.53
	setg	%al	#, tmp233
.LVL78:
	movzbl	%al, %eax	# tmp233, tmp232
	movl	8(%ebp), %edx	# index_of_e,
.LVL79:
	movl	%eax, (%edx)	# tmp232,
	jmp	.L30	#
.LVL80:
.L40:
.LBE2:
	.loc 1 122 0
	fld	%st(0)	#
	fmul	%st(1), %st	#,
.LVL81:
	.loc 1 127 0
	fld	%st(0)	#
	fmull	.LC4@GOTOFF(%ebx)	#
.LVL82:
	fsubl	.LC5@GOTOFF(%ebx)	#
	fmul	%st(1), %st	#,
	faddl	.LC6@GOTOFF(%ebx)	#
	fmul	%st(1), %st	#,
	fsubl	.LC7@GOTOFF(%ebx)	#
	fmulp	%st, %st(1)	#,
.LVL83:
.LBB13:
	fmul	%st(1), %st	#,
.LVL84:
	fld	%st(1)	#
.LVL85:
	fadd	%st(1), %st	#,
	fstl	(%eax)	#* atanhi
.LVL86:
	fsub	%st(2), %st	#,
.LVL87:
	fsubrp	%st, %st(1)	#,
	fstpl	(%edx)	#* atanlo
.LBE13:
	.loc 1 129 0
	flds	.LC8@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	.loc 1 132 0
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	setbe	%al	#, tmp235
.LVL88:
	movzbl	%al, %eax	# tmp235, tmp234
	addl	$2, %eax	#, tmp234
	movl	8(%ebp), %ecx	# index_of_e,
	movl	%eax, (%ecx)	# tmp234,
.LVL89:
.L30:
	.loc 1 134 0
	addl	$28, %esp	#,
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
	.size	atan_quick, .-atan_quick
.globl atan_ru
	.type	atan_ru, @function
atan_ru:
.LFB10:
	.loc 1 265 0
	.cfi_startproc
.LVL90:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$120, %esp	#,
	movl	%ebx, -12(%ebp)	#,
	movl	%esi, -8(%ebp)	#,
	movl	%edi, -4(%ebp)	#,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	fstpl	-72(%ebp)	# %sfp
	.loc 1 274 0
	movl	$1, %esi	#, sign
	fldz
	fldl	-72(%ebp)	# %sfp
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	jbe	.L62	#,
.LVL91:
	.loc 1 276 0
	fchs
	fstpl	-72(%ebp)	# %sfp
.LVL92:
	movl	$-1, %esi	#, sign
	jmp	.L45	#
.LVL93:
.L62:
	fstp	%st(0)	#
.LVL94:
.L45:
	.loc 1 280 0
	fldl	-72(%ebp)	# %sfp
	fstpl	-80(%ebp)	# %sfp
	.loc 1 281 0
	movl	-76(%ebp), %eax	# %sfp, hx
	andl	$2147483647, %eax	#, hx
.LVL95:
	.loc 1 284 0
	cmpl	$1129316351, %eax	#, hx
	jbe	.L46	#,
	.loc 1 286 0
	andl	$1048575, %eax	#, tmp72
.LVL96:
	cmpl	$524288, %eax	#, tmp72
	jne	.L47	#,
	movl	-80(%ebp), %eax	# %sfp, x_db
	testl	%eax, %eax	# x_db
	je	.L48	#,
.L47:
	.loc 1 290 0
	testl	%esi, %esi	# sign
	jle	.L49	#,
	.loc 1 291 0
	fldl	HALFPI_TO_PLUS_INFINITY@GOTOFF(%ebx)	# HALFPI_TO_PLUS_INFINITY.d
	fstpl	-72(%ebp)	# %sfp
	jmp	.L48	#
.L49:
	.loc 1 293 0
	fldl	HALFPI@GOTOFF(%ebx)	# HALFPI.d
	fchs
	fstpl	-72(%ebp)	# %sfp
	jmp	.L48	#
.LVL97:
.L46:
	.loc 1 298 0
	cmpl	$1044381695, %eax	#, hx
	ja	.L50	#,
	.loc 1 299 0
	testl	%esi, %esi	# sign
	jns	.L51	#,
	movl	-72(%ebp), %eax	# %sfp,
.LVL98:
	movl	-68(%ebp), %edx	# %sfp,
	addl	$-1, %eax	#,
	adcl	$-1, %edx	#,
	movl	%eax, -72(%ebp)	#, %sfp
	movl	%edx, -68(%ebp)	#, %sfp
	fldl	-72(%ebp)	# %sfp
	.loc 1 301 0
	fchs
	fstpl	-72(%ebp)	# %sfp
	jmp	.L48	#
.LVL99:
.L51:
	.loc 1 304 0
	fldz
	fldl	-72(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	jne	.L63	#,
	jp	.L64	#,
	fstpl	-72(%ebp)	# %sfp
	jmp	.L48	#
.L50:
	.loc 1 309 0
	leal	-40(%ebp), %edx	#, tmp81
	leal	-32(%ebp), %eax	#, tmp82
.LVL100:
	fldl	-72(%ebp)	# %sfp
	fstpl	4(%esp)	#
	leal	-44(%ebp), %ecx	#, tmp83
	movl	%ecx, (%esp)	# tmp83,
	call	atan_quick	#
.LVL101:
	.loc 1 310 0
	movl	-44(%ebp), %eax	# index_of_e, index_of_e
	fldl	epsilon@GOTOFF(%ebx,%eax,8)	# epsilon
.LVL102:
	.loc 1 311 0
	movl	%esi, -60(%ebp)	# sign,
	fildl	-60(%ebp)	#
	fld	%st(0)	#
.LVL103:
	fmull	-32(%ebp)	# atanhi
	fstl	-96(%ebp)	# %sfp
	fstpl	-32(%ebp)	# atanhi
	.loc 1 312 0
	fld	%st(0)	#
.LVL104:
	fmull	-40(%ebp)	# atanlo
	fstpl	-88(%ebp)	# %sfp
	fxch	%st(1)	#
	.loc 1 321 0
	movl	$0, %eax	#, tmp87
	movl	-92(%ebp), %edx	# %sfp,
	andl	$2146435072, %edx	#,
	movl	%eax, %esi	# tmp87,
.LVL105:
	movl	%edx, %edi	#,
	addl	$0, %esi	#,
	adcl	$1048576, %edi	#,
	movl	%esi, -104(%ebp)	#, %sfp
	movl	%edi, -100(%ebp)	#, %sfp
	.loc 1 324 0
	fmull	-104(%ebp)	# %sfp
	.loc 1 320 0
	movl	-88(%ebp), %edi	# %sfp,
	movl	%edi, -80(%ebp)	#, %sfp
	movl	-84(%ebp), %eax	# %sfp,
	andl	$2147483647, %eax	#,
	movl	%eax, -76(%ebp)	#, %sfp
	.loc 1 324 0
	fldl	-80(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L61	#,
	fstp	%st(0)	#
	.loc 1 325 0
	fldz
	fldl	-88(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L55	#,
	.loc 1 326 0
	movl	-104(%ebp), %eax	# %sfp,
	movl	-100(%ebp), %edx	# %sfp,
	addl	$0, %eax	#,
	adcl	$-55574528, %edx	#,
	movl	%eax, -104(%ebp)	#, %sfp
	movl	%edx, -100(%ebp)	#, %sfp
	fldl	-96(%ebp)	# %sfp
	faddl	-104(%ebp)	# %sfp
	fstpl	-32(%ebp)	# atanhi
.L55:
	.loc 1 327 0
	fldl	-32(%ebp)	# atanhi
	fstpl	-72(%ebp)	# %sfp
	jmp	.L48	#
.L61:
	.loc 1 330 0
	fmull	-72(%ebp)	# %sfp
	.loc 1 312 0
	fldl	-88(%ebp)	# %sfp
	fstpl	-40(%ebp)	# atanlo
	.loc 1 330 0
	fstpl	(%esp)	#
	call	scs_atan_ru@PLT	#
.LVL106:
	fstpl	-72(%ebp)	# %sfp
	jmp	.L48	#
.LVL107:
.L63:
	fstp	%st(0)	#
	jmp	.L48	#
.L64:
	fstp	%st(0)	#
.LVL108:
.L48:
	.loc 1 332 0
	fldl	-72(%ebp)	# %sfp
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
.LFE10:
	.size	atan_ru, .-atan_ru
.globl atan_rd
	.type	atan_rd, @function
atan_rd:
.LFB9:
	.loc 1 193 0
	.cfi_startproc
.LVL109:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$120, %esp	#,
	movl	%ebx, -12(%ebp)	#,
	movl	%esi, -8(%ebp)	#,
	movl	%edi, -4(%ebp)	#,
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	fstl	-72(%ebp)	# %sfp
	.loc 1 201 0
	fstl	-88(%ebp)	# %sfp
	.loc 1 202 0
	movl	-84(%ebp), %eax	# %sfp, hx
	andl	$2147483647, %eax	#, hx
.LVL110:
	.loc 1 204 0
	fstpl	-80(%ebp)	# %sfp
	movl	$1, %esi	#, sign
	fldz
	fldl	-72(%ebp)	# %sfp
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	jbe	.L88	#,
.LVL111:
	.loc 1 206 0
	fchs
	fstpl	-80(%ebp)	# %sfp
.LVL112:
	movl	$-1, %esi	#, sign
	jmp	.L67	#
.LVL113:
.L88:
	fstp	%st(0)	#
.LVL114:
.L67:
	.loc 1 210 0
	cmpl	$1129316351, %eax	#, hx
	jbe	.L68	#,
	.loc 1 212 0
	andl	$1048575, %eax	#, tmp72
.LVL115:
	cmpl	$524288, %eax	#, tmp72
	jne	.L69	#,
	movl	-88(%ebp), %eax	# %sfp, x_db
	testl	%eax, %eax	# x_db
	je	.L70	#,
.L69:
	.loc 1 215 0
	testl	%esi, %esi	# sign
	jle	.L71	#,
	.loc 1 216 0
	fldl	HALFPI@GOTOFF(%ebx)	# HALFPI.d
	fstpl	-80(%ebp)	# %sfp
	jmp	.L70	#
.L71:
	.loc 1 218 0
	fldl	HALFPI_TO_PLUS_INFINITY@GOTOFF(%ebx)	# HALFPI_TO_PLUS_INFINITY.d
	fchs
	fstpl	-80(%ebp)	# %sfp
	jmp	.L70	#
.LVL116:
.L68:
	.loc 1 221 0
	cmpl	$1044381695, %eax	#, hx
	ja	.L72	#,
	.loc 1 222 0
	testl	%esi, %esi	# sign
	jle	.L73	#,
	.loc 1 224 0
	movl	$-2147483648, -84(%ebp)	#, %sfp
	.loc 1 225 0
	movl	$0, -88(%ebp)	#, %sfp
	.loc 1 223 0
	fldz
	fldl	-80(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jp	.L87	#,
	je	.L76	#,
.L87:
	.loc 1 227 0
	movl	-72(%ebp), %eax	# %sfp,
.LVL117:
	movl	-68(%ebp), %edx	# %sfp,
	addl	$-1, %eax	#,
	adcl	$-1, %edx	#,
	movl	%eax, -88(%ebp)	#, %sfp
	movl	%edx, -84(%ebp)	#, %sfp
.L76:
	.loc 1 228 0
	fldl	-88(%ebp)	# %sfp
	fstpl	-80(%ebp)	# %sfp
	jmp	.L70	#
.LVL118:
.L73:
	.loc 1 231 0
	fldl	-80(%ebp)	# %sfp
	fchs
	fstpl	-80(%ebp)	# %sfp
	jmp	.L70	#
.L72:
	.loc 1 234 0
	leal	-40(%ebp), %edx	#, tmp80
	leal	-32(%ebp), %eax	#, tmp81
.LVL119:
	fldl	-80(%ebp)	# %sfp
	fstpl	4(%esp)	#
	leal	-44(%ebp), %ecx	#, tmp82
	movl	%ecx, (%esp)	# tmp82,
	call	atan_quick	#
.LVL120:
	.loc 1 235 0
	movl	-44(%ebp), %eax	# index_of_e, index_of_e
	fldl	epsilon@GOTOFF(%ebx,%eax,8)	# epsilon
.LVL121:
	.loc 1 236 0
	movl	%esi, -60(%ebp)	# sign,
	fildl	-60(%ebp)	#
	fld	%st(0)	#
.LVL122:
	fmull	-32(%ebp)	# atanhi
	fstl	-96(%ebp)	# %sfp
	fstpl	-32(%ebp)	# atanhi
	.loc 1 237 0
	fld	%st(0)	#
.LVL123:
	fmull	-40(%ebp)	# atanlo
	fstpl	-88(%ebp)	# %sfp
	fxch	%st(1)	#
	.loc 1 246 0
	movl	$0, %eax	#, tmp86
	movl	-92(%ebp), %edx	# %sfp,
	andl	$2146435072, %edx	#,
	movl	%eax, %esi	# tmp86,
.LVL124:
	movl	%edx, %edi	#,
	addl	$0, %esi	#,
	adcl	$1048576, %edi	#,
	movl	%esi, -104(%ebp)	#, %sfp
	movl	%edi, -100(%ebp)	#, %sfp
	.loc 1 249 0
	fmull	-104(%ebp)	# %sfp
	.loc 1 245 0
	movl	-88(%ebp), %edi	# %sfp,
	movl	%edi, -72(%ebp)	#, %sfp
	movl	-84(%ebp), %eax	# %sfp,
	andl	$2147483647, %eax	#,
	movl	%eax, -68(%ebp)	#, %sfp
	.loc 1 249 0
	fldl	-72(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L85	#,
	fstp	%st(0)	#
	.loc 1 250 0
	fldz
	fldl	-88(%ebp)	# %sfp
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L79	#,
	.loc 1 251 0
	movl	-104(%ebp), %eax	# %sfp,
	movl	-100(%ebp), %edx	# %sfp,
	addl	$0, %eax	#,
	adcl	$-55574528, %edx	#,
	movl	%eax, -104(%ebp)	#, %sfp
	movl	%edx, -100(%ebp)	#, %sfp
	fldl	-96(%ebp)	# %sfp
	fsubl	-104(%ebp)	# %sfp
	fstpl	-32(%ebp)	# atanhi
.L79:
	.loc 1 252 0
	fldl	-32(%ebp)	# atanhi
	fstpl	-80(%ebp)	# %sfp
	jmp	.L70	#
.L85:
	.loc 1 255 0
	fmull	-80(%ebp)	# %sfp
	.loc 1 237 0
	fldl	-88(%ebp)	# %sfp
	fstpl	-40(%ebp)	# atanlo
	.loc 1 255 0
	fstpl	(%esp)	#
	call	scs_atan_rd@PLT	#
.LVL125:
	fstpl	-80(%ebp)	# %sfp
.L70:
	.loc 1 257 0
	fldl	-80(%ebp)	# %sfp
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
.LFE9:
	.size	atan_rd, .-atan_rd
.globl atan_rz
	.type	atan_rz, @function
atan_rz:
.LFB11:
	.loc 1 340 0
	.cfi_startproc
.LVL126:
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
	.loc 1 341 0
	fldz
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L95	#,
	.loc 1 342 0
	fstpl	(%esp)	#
	call	atan_rd@PLT	#
	jmp	.L92	#
.L95:
	.loc 1 344 0
	fstpl	(%esp)	#
	call	atan_ru@PLT	#
.L92:
	.loc 1 345 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	atan_rz, .-atan_rz
.globl atan_rn
	.type	atan_rn, @function
atan_rn:
.LFB8:
	.loc 1 151 0
	.cfi_startproc
.LVL127:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$84, %esp	#,
	.cfi_offset 3, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	fstl	-48(%ebp)	# %sfp
	.loc 1 157 0
	fstpl	-56(%ebp)	# %sfp
	.loc 1 158 0
	movl	-52(%ebp), %eax	# %sfp, hx
	andl	$2147483647, %eax	#, hx
.LVL128:
	.loc 1 159 0
	fldz
	fldl	-48(%ebp)	# %sfp
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jb	.L109	#,
	fld1
	fstpl	-64(%ebp)	# %sfp
	jmp	.L99	#
.L109:
	.loc 1 162 0
	fldl	-48(%ebp)	# %sfp
	fchs
	fstpl	-48(%ebp)	# %sfp
.LVL129:
	fld1
.LVL130:
	fchs
	fstpl	-64(%ebp)	# %sfp
.LVL131:
.L99:
	.loc 1 166 0
	cmpl	$1129316351, %eax	#, hx
	jbe	.L100	#,
	.loc 1 168 0
	andl	$1048575, %eax	#, tmp69
.LVL132:
	cmpl	$524288, %eax	#, tmp69
	jne	.L101	#,
	movl	-56(%ebp), %eax	# %sfp, x_db
	testl	%eax, %eax	# x_db
	je	.L102	#,
.L101:
	.loc 1 171 0
	fldl	-64(%ebp)	# %sfp
	fmull	HALFPI@GOTOFF(%ebx)	# HALFPI.d
	fstpl	-48(%ebp)	# %sfp
	jmp	.L102	#
.LVL133:
.L100:
	.loc 1 174 0
	cmpl	$1044381695, %eax	#, hx
	ja	.L103	#,
	.loc 1 175 0
	fldl	-48(%ebp)	# %sfp
	fmull	-64(%ebp)	# %sfp
	fstpl	-48(%ebp)	# %sfp
	jmp	.L102	#
.L103:
	.loc 1 177 0
	leal	-24(%ebp), %edx	#, tmp72
	leal	-16(%ebp), %eax	#, tmp73
.LVL134:
	fldl	-48(%ebp)	# %sfp
	fstpl	4(%esp)	#
	leal	-28(%ebp), %ecx	#, tmp74
	movl	%ecx, (%esp)	# tmp74,
	call	atan_quick	#
.LVL135:
	.loc 1 179 0
	fldl	-16(%ebp)	# atanhi
.LVL136:
	movl	-28(%ebp), %eax	# index_of_e, index_of_e
	fldl	rncst@GOTOFF(%ebx,%eax,8)	# rncst
.LVL137:
	fmull	-24(%ebp)	# atanlo
	fadd	%st(1), %st	#,
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jne	.L111	#,
	jp	.L112	#,
	.loc 1 180 0
	fmull	-64(%ebp)	# %sfp
	fstpl	-48(%ebp)	# %sfp
	jmp	.L102	#
.L111:
	fstp	%st(0)	#
	.p2align 4,,3
	jmp	.L110	#
.L112:
	fstp	%st(0)	#
.L110:
	.loc 1 184 0
	fldl	-48(%ebp)	# %sfp
	fstpl	(%esp)	#
	call	scs_atan_rn@PLT	#
	fmull	-64(%ebp)	# %sfp
	fstpl	-48(%ebp)	# %sfp
.L102:
	.loc 1 186 0
	fldl	-48(%ebp)	# %sfp
	addl	$84, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	atan_rn, .-atan_rn
	.section	.rodata
	.align 4
	.type	HALFPI_TO_PLUS_INFINITY, @object
	.size	HALFPI_TO_PLUS_INFINITY, 8
HALFPI_TO_PLUS_INFINITY:
# i:
	.long	1413754137
	.long	1073291771
	.align 4
	.type	HALFPI, @object
	.size	HALFPI, 8
HALFPI:
# i:
	.long	1413754136
	.long	1073291771
	.align 32
	.type	epsilon, @object
	.size	epsilon, 32
epsilon:
	.long	1729118114
	.long	1007893194
	.long	3930486361
	.long	1001505378
	.long	3373977511
	.long	1006883189
	.long	4211106362
	.long	999019926
	.align 32
	.type	arctan_table, @object
	.size	arctan_table, 1984
arctan_table:
# i:
	.long	-1127328963
	.long	1066008056
# i:
	.long	662044679
	.long	1067056907
# i:
	.long	1231681900
	.long	1067056541
# i:
	.long	1963361770
	.long	-1137698409
# i:
	.long	-1865499599
	.long	1067679903
# i:
	.long	-481002302
	.long	1068106581
# i:
	.long	1228285485
	.long	1068105117
# i:
	.long	976031577
	.long	-1135861866
# i:
	.long	1761322278
	.long	1068516377
# i:
	.long	-1409826887
	.long	1068730336
# i:
	.long	-155066260
	.long	1068727861
# i:
	.long	-2089230300
	.long	-1135253744
# i:
	.long	-1412564443
	.long	1068944710
# i:
	.long	-496650069
	.long	1069159569
# i:
	.long	1221532054
	.long	1069153693
# i:
	.long	-1220809412
	.long	-1136434980
# i:
	.long	1831773510
	.long	1069374985
# i:
	.long	-1859857301
	.long	1069569274
# i:
	.long	1298235734
	.long	1069563522
# i:
	.long	1235772228
	.long	1013080142
# i:
	.long	-695080815
	.long	1069677646
# i:
	.long	1375039555
	.long	1069786406
# i:
	.long	-162596802
	.long	1069776437
# i:
	.long	-1264230746
	.long	1012869907
# i:
	.long	1394565387
	.long	1069895590
# i:
	.long	-1180752383
	.long	1070005236
# i:
	.long	-1624234971
	.long	1069989353
# i:
	.long	-992792370
	.long	-1138510294
# i:
	.long	89189105
	.long	1070115384
# i:
	.long	1641666109
	.long	1070226071
# i:
	.long	1208303560
	.long	1070202269
# i:
	.long	-1740158223
	.long	-1134059220
# i:
	.long	-1198040103
	.long	1070337338
# i:
	.long	-1128305988
	.long	1070449226
# i:
	.long	-254898727
	.long	1070415184
# i:
	.long	976343891
	.long	1013903959
# i:
	.long	-18585467
	.long	1070561776
# i:
	.long	-50959483
	.long	1070635563
# i:
	.long	1288055915
	.long	1070612098
# i:
	.long	-1782127486
	.long	1012770196
# i:
	.long	-1808632630
	.long	1070692565
# i:
	.long	-1992038909
	.long	1070749963
# i:
	.long	555710825
	.long	1070718556
# i:
	.long	184676164
	.long	1010585223
# i:
	.long	-1295010313
	.long	1070807780
# i:
	.long	-2119118369
	.long	1070866040
# i:
	.long	-176989535
	.long	1070825013
# i:
	.long	-1924957463
	.long	-1133040379
# i:
	.long	232000091
	.long	1070924767
# i:
	.long	515286617
	.long	1070983985
# i:
	.long	-910032800
	.long	1070931471
# i:
	.long	549091963
	.long	-1133768877
# i:
	.long	966319380
	.long	1071043720
# i:
	.long	-1426561615
	.long	1071103998
# i:
	.long	-1643405721
	.long	1071037929
# i:
	.long	-2029166962
	.long	1014593426
# i:
	.long	-1773486171
	.long	1071164847
# i:
	.long	10941518
	.long	1071226295
# i:
	.long	1917873098
	.long	1071144387
# i:
	.long	1134676899
	.long	1014107089
# i:
	.long	-499052210
	.long	1071288369
# i:
	.long	847187600
	.long	1071351102
# i:
	.long	1183883976
	.long	1071250845
# i:
	.long	-273207244
	.long	-1133902706
# i:
	.long	-75975651
	.long	1071414522
# i:
	.long	1740518202
	.long	1071478664
# i:
	.long	449609894
	.long	1071357303
# i:
	.long	-386198195
	.long	1013619671
# i:
	.long	-668230202
	.long	1071543559
# i:
	.long	-206263604
	.long	1071609243
# i:
	.long	-284932727
	.long	1071463760
# i:
	.long	166225198
	.long	1012357207
# i:
	.long	1609872043
	.long	1071660212
# i:
	.long	-644535313
	.long	1071693897
# i:
	.long	-1019726774
	.long	1071570218
# i:
	.long	-2125385070
	.long	1008977799
# i:
	.long	-400104214
	.long	1071728033
# i:
	.long	-572953120
	.long	1071762640
# i:
	.long	1270106403
	.long	1071660674
# i:
	.long	1239353944
	.long	1015852801
# i:
	.long	-314168404
	.long	1071797739
# i:
	.long	900759964
	.long	1071833353
# i:
	.long	902484893
	.long	1071713903
# i:
	.long	220115819
	.long	1011211059
# i:
	.long	-724706900
	.long	1071869503
# i:
	.long	-183355943
	.long	1071906215
# i:
	.long	534765188
	.long	1071767132
# i:
	.long	-745399130
	.long	1015479279
# i:
	.long	-503633519
	.long	1071943514
# i:
	.long	416337072
	.long	1071981427
# i:
	.long	166957001
	.long	1071820361
# i:
	.long	92308678
	.long	-1132151883
# i:
	.long	1609068071
	.long	1072019980
# i:
	.long	-631730879
	.long	1072059203
# i:
	.long	-200929731
	.long	1071873589
# i:
	.long	-1373259337
	.long	1005986652
# i:
	.long	583113309
	.long	1072099128
# i:
	.long	1653605052
	.long	1072139785
# i:
	.long	-568884865
	.long	1071926818
# i:
	.long	443360739
	.long	-1132071826
# i:
	.long	1895393213
	.long	1072181209
# i:
	.long	-292842155
	.long	1072223435
# i:
	.long	-936898084
	.long	1071980047
# i:
	.long	-54955508
	.long	-1132344073
# i:
	.long	1765087757
	.long	1072266502
# i:
	.long	2098028906
	.long	1072310448
# i:
	.long	-1304958920
	.long	1072033276
# i:
	.long	-118321080
	.long	-1132249432
# i:
	.long	-26013747
	.long	1072355315
# i:
	.long	557014589
	.long	1072401149
# i:
	.long	-1673056783
	.long	1072086505
# i:
	.long	-2132880823
	.long	1012826407
# i:
	.long	-1442155714
	.long	1072447994
# i:
	.long	496662121
	.long	1072495902
# i:
	.long	-2041180987
	.long	1072139734
# i:
	.long	-1818831599
	.long	-1132554705
# i:
	.long	-85005601
	.long	1072544923
# i:
	.long	-200009241
	.long	1072595115
# i:
	.long	1885646516
	.long	1072192963
# i:
	.long	1378200785
	.long	1014481148
# i:
	.long	866941194
	.long	1072646537
# i:
	.long	1354444034
	.long	1072696249
# i:
	.long	1517501929
	.long	1072246192
# i:
	.long	-1558654911
	.long	-1134192439
# i:
	.long	-1698094412
	.long	1072723285
# i:
	.long	636795991
	.long	1072751037
# i:
	.long	1149363353
	.long	1072299421
# i:
	.long	-1805343731
	.long	-1132271457
# i:
	.long	71362771
	.long	1072779542
# i:
	.long	-557262310
	.long	1072808840
# i:
	.long	781241578
	.long	1072352650
# i:
	.long	-28654789
	.long	1012971739
# i:
	.long	849165784
	.long	1072838977
# i:
	.long	-1885539411
	.long	1072869997
# i:
	.long	413147352
	.long	1072405879
# i:
	.long	1138608110
	.long	1014058659
# i:
	.long	-488935276
	.long	1072901951
# i:
	.long	-997914310
	.long	1072934893
# i:
	.long	45091351
	.long	1072459108
# i:
	.long	-1041929855
	.long	1012725538
# i:
	.long	-745916969
	.long	1072968880
# i:
	.long	383294407
	.long	1073003975
# i:
	.long	-322915848
	.long	1072512336
# i:
	.long	-964055525
	.long	1016069530
# i:
	.long	1866594669
	.long	1073040243
# i:
	.long	298136082
	.long	1073077758
# i:
	.long	-690863791
	.long	1072565565
# i:
	.long	-936331932
	.long	-1134211313
# i:
	.long	375170529
	.long	1073116597
# i:
	.long	320277595
	.long	1073156845
# i:
	.long	-1058742181
	.long	1072618794
# i:
	.long	-1083740162
	.long	-1131418941
# i:
	.long	-790715450
	.long	1073198593
# i:
	.long	301722176
	.long	1073241943
# i:
	.long	-1426540898
	.long	1072672023
# i:
	.long	-425772297
	.long	1015778723
# i:
	.long	2035314513
	.long	1073287001
# i:
	.long	-1963695905
	.long	1073333887
# i:
	.long	1250358635
	.long	1072709250
# i:
	.long	-568462325
	.long	1015825985
# i:
	.long	-682821743
	.long	1073382730
# i:
	.long	1248423700
	.long	1073433673
# i:
	.long	-1080929940
	.long	1072735864
# i:
	.long	1779001007
	.long	-1131309825
# i:
	.long	-1281940922
	.long	1073486870
# i:
	.long	-2131707842
	.long	1073542494
# i:
	.long	882803130
	.long	1072762479
# i:
	.long	1020288019
	.long	1016888594
# i:
	.long	-958719951
	.long	1073600733
# i:
	.long	-1837300836
	.long	1073661797
# i:
	.long	-1448372170
	.long	1072789093
# i:
	.long	2073825627
	.long	-1131262470
# i:
	.long	-1527328718
	.long	1073725917
# i:
	.long	-840146164
	.long	1073767587
# i:
	.long	515483172
	.long	1072815708
# i:
	.long	1499382109
	.long	-1133509898
# i:
	.long	1454308082
	.long	1073803105
# i:
	.long	49954711
	.long	1073840584
# i:
	.long	-1815561176
	.long	1072842322
# i:
	.long	-971078283
	.long	-1131420874
# i:
	.long	-40206143
	.long	1073880203
# i:
	.long	411047360
	.long	1073922168
# i:
	.long	148433463
	.long	1072868937
# i:
	.long	1445467735
	.long	-1130772157
# i:
	.long	2103912092
	.long	1073966705
# i:
	.long	401456115
	.long	1074014076
# i:
	.long	2112503692
	.long	1072895551
# i:
	.long	-1863618021
	.long	1016779561
# i:
	.long	-261492252
	.long	1074064575
# i:
	.long	-1450110023
	.long	1074118543
# i:
	.long	-218314077
	.long	1072922165
# i:
	.long	-1959365388
	.long	-1130969897
# i:
	.long	2013358519
	.long	1074176368
# i:
	.long	-288367047
	.long	1074238499
# i:
	.long	1745918246
	.long	1072948780
# i:
	.long	1180052861
	.long	1016936798
# i:
	.long	832323330
	.long	1074305460
# i:
	.long	877206682
	.long	1074377859
# i:
	.long	-584730640
	.long	1072975394
# i:
	.long	-1775658295
	.long	-1130707960
# i:
	.long	95454026
	.long	1074456414
# i:
	.long	1683076841
	.long	1074541973
# i:
	.long	1379676920
	.long	1073002009
# i:
	.long	-1704134613
	.long	1016608557
# i:
	.long	1939591395
	.long	1074635549
# i:
	.long	143338003
	.long	1074738359
# i:
	.long	-950790827
	.long	1073028623
# i:
	.long	-646135433
	.long	-1135763231
# i:
	.long	411483223
	.long	1074821139
# i:
	.long	-1920886460
	.long	1074884157
# i:
	.long	1013803309
	.long	1073055238
# i:
	.long	-640598970
	.long	-1132614755
# i:
	.long	-1949425087
	.long	1074954554
# i:
	.long	-1626452289
	.long	1075033733
# i:
	.long	-1316472908
	.long	1073081852
# i:
	.long	-1132114063
	.long	-1132101120
# i:
	.long	1255067256
	.long	1075123478
# i:
	.long	-204668535
	.long	1075226089
# i:
	.long	648317220
	.long	1073108467
# i:
	.long	250640131
	.long	-1131029292
# i:
	.long	-1792607559
	.long	1075344590
# i:
	.long	-1174046711
	.long	1075483028
# i:
	.long	-1681759049
	.long	1073135081
# i:
	.long	1431839157
	.long	1015259063
# i:
	.long	-527120109
	.long	1075646955
# i:
	.long	-1608582454
	.long	1075841585
# i:
	.long	283234469
	.long	1073161696
# i:
	.long	1457183491
	.long	1015461435
# i:
	.long	571341337
	.long	1075962556
# i:
	.long	-72931176
	.long	1076114501
# i:
	.long	-2046635491
	.long	1073188310
# i:
	.long	1294903008
	.long	-1130375210
# i:
	.long	-801932215
	.long	1076311139
# i:
	.long	1246386717
	.long	1076575687
# i:
	.long	-81433280
	.long	1073214924
# i:
	.long	-1567819908
	.long	1016417950
# i:
	.long	641009942
	.long	1076919182
# i:
	.long	617878975
	.long	1077205974
# i:
	.long	1883874598
	.long	1073241539
# i:
	.long	-382253824
	.long	-1132190491
# i:
	.long	1232859890
	.long	1077699279
# i:
	.long	1816052796
	.long	1078342152
# i:
	.long	-445678638
	.long	1073268153
# i:
	.long	796836179
	.long	-1132341894
# i:
	.long	-90304780
	.long	1079602371
# i:
	.long	2080342825
	.long	1079292612
# i:
	.long	-214709318
	.long	1073279106
# i:
	.long	956939322
	.long	1016407415
	.align 32
	.type	rncst, @object
	.size	rncst, 32
rncst:
	.long	411013073
	.long	1072698191
	.long	178770874
	.long	1072693320
	.long	2981981215
	.long	1072695790
	.long	3939660522
	.long	1072693262
	.comm	crlibm_second_step_taken,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	3167638333
	.long	1066008056
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	0
	.section	.rodata.cst8
	.align 8
.LC2:
	.long	33554432
	.long	1101004800
	.align 8
.LC4:
	.long	477218588
	.long	1069314503
	.align 8
.LC5:
	.long	2454267026
	.long	1069697316
	.align 8
.LC6:
	.long	2576980378
	.long	1070176665
	.align 8
.LC7:
	.long	1431655765
	.long	1070945621
	.section	.rodata.cst4
	.align 4
.LC8:
	.long	1316831232
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
	.long	.LVL78-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL80-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL0-.Ltext0
	.long	.LVL79-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL80-.Ltext0
	.long	.LVL89-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL29-.Ltext0
	.long	.LVL30-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL31-.Ltext0
	.long	.LVL33-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	.LVL40-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL37-.Ltext0
	.long	.LVL38-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL46-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL48-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL39-.Ltext0
	.long	.LVL40-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL48-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL66-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL81-.Ltext0
	.long	.LVL82-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL65-.Ltext0
	.long	.LVL66-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL69-.Ltext0
	.long	.LVL71-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL1-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x3d
	.byte	0x9f
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x2
	.byte	0x4f
	.byte	0x9f
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL14-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL16-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL16-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL18-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL1-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL18-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL20-.Ltext0
	.long	.LVL21-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL23-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL26-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL24-.Ltext0
	.long	.LVL25-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL18-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL19-.Ltext0
	.long	.LVL67-.Ltext0
	.value	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	arctan_table
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL32-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL35-.Ltext0
	.long	.LVL36-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL42-.Ltext0
	.long	.LVL43-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL44-.Ltext0
	.long	.LVL45-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL64-.Ltext0
	.long	.LVL70-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL61-.Ltext0
	.long	.LVL62-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL49-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL51-.Ltext0
	.long	.LVL52-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL54-.Ltext0
	.long	.LVL55-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL57-.Ltext0
	.long	.LVL58-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL52-.Ltext0
	.long	.LVL53-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL55-.Ltext0
	.long	.LVL56-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL59-.Ltext0
	.long	.LVL60-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL49-.Ltext0
	.long	.LVL54-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LVL70-.Ltext0
	.long	.LVL71-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LVL68-.Ltext0
	.long	.LVL72-.Ltext0
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LVL68-.Ltext0
	.long	.LVL73-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LVL77-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LVL69-.Ltext0
	.long	.LVL71-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LVL74-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LVL88-.Ltext0
	.long	.LVL89-.Ltext0
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LVL81-.Ltext0
	.long	.LVL83-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LVL84-.Ltext0
	.long	.LVL85-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LVL90-.Ltext0
	.long	.LVL92-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL92-.Ltext0
	.long	.LVL93-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL93-.Ltext0
	.long	.LVL94-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL94-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LVL95-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL97-.Ltext0
	.long	.LVL98-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL99-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL107-.Ltext0
	.long	.LVL108-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LVL103-.Ltext0
	.long	.LVL107-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL108-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LVL104-.Ltext0
	.long	.LVL107-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL108-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LVL101-.Ltext0
	.long	.LVL107-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	.LVL108-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LVL91-.Ltext0
	.long	.LVL93-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL94-.Ltext0
	.long	.LVL105-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL105-.Ltext0
	.long	.LVL106-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL107-.Ltext0
	.long	.LVL108-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LVL102-.Ltext0
	.long	.LVL106-1-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	epsilon
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LVL109-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL112-.Ltext0
	.long	.LVL113-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL113-.Ltext0
	.long	.LVL114-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL114-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LVL110-.Ltext0
	.long	.LVL115-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL116-.Ltext0
	.long	.LVL117-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL118-.Ltext0
	.long	.LVL119-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LVL111-.Ltext0
	.long	.LVL113-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL114-.Ltext0
	.long	.LVL124-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL124-.Ltext0
	.long	.LVL125-1-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LVL121-.Ltext0
	.long	.LVL125-1-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	epsilon
	.byte	0x22
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LVL127-.Ltext0
	.long	.LVL129-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL129-.Ltext0
	.long	.LVL130-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL130-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LVL128-.Ltext0
	.long	.LVL132-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL133-.Ltext0
	.long	.LVL134-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LVL129-.Ltext0
	.long	.LVL131-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0xbff00000
	.long	.LVL131-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0x0
	.long	0x0
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "scs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "scs_private.h"
	.file 8 "crlibm_private.h"
	.file 9 "atan_fast.h"
	.section	.debug_info
	.long	0xa84
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF99
	.byte	0xc
	.long	.LASF100
	.long	.LASF101
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
	.long	.LASF102
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
	.long	.LASF103
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0x6d4
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x15
	.long	0x6d4
	.long	.LLST0
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x15
	.long	0x6d4
	.long	.LLST1
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x15
	.long	0x6da
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x15
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.byte	0x17
	.long	0x2d8
	.long	.LLST2
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.byte	0x17
	.long	0x2d8
	.long	.LLST3
	.uleb128 0x15
	.long	.LASF59
	.byte	0x1
	.byte	0x17
	.long	0x2d8
	.long	.LLST4
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.byte	0x17
	.long	0x2d8
	.long	.LLST5
	.uleb128 0x16
	.string	"q"
	.byte	0x1
	.byte	0x18
	.long	0x2d8
	.uleb128 0x15
	.long	.LASF61
	.byte	0x1
	.byte	0x18
	.long	0x2d8
	.long	.LLST6
	.uleb128 0x17
	.string	"x2"
	.byte	0x1
	.byte	0x18
	.long	0x2d8
	.long	.LLST7
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.byte	0x19
	.long	0x2d8
	.long	.LLST8
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.byte	0x19
	.long	0x2d8
	.uleb128 0x18
	.long	.LASF64
	.byte	0x1
	.byte	0x1a
	.long	0x2d8
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.byte	0x1b
	.long	0x2d8
	.long	.LLST9
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.byte	0x1b
	.long	0x2d8
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x1e
	.long	0x5a
	.long	.LLST10
	.uleb128 0x19
	.long	.LBB2
	.long	.LBE2
	.long	0x69f
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x2b
	.long	0x2d8
	.long	.LLST11
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x2b
	.long	0x2d8
	.long	.LLST12
	.uleb128 0x19
	.long	.LBB3
	.long	.LBE3
	.long	0x492
	.uleb128 0x16
	.string	"_z"
	.byte	0x1
	.byte	0x2f
	.long	0x2d8
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.byte	0x2f
	.long	0x2d8
	.long	.LLST13
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.byte	0x2f
	.long	0x2d8
	.long	.LLST14
	.byte	0x0
	.uleb128 0x19
	.long	.LBB4
	.long	.LBE4
	.long	0x51d
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.byte	0x50
	.long	0x6e0
	.long	.LLST15
	.uleb128 0x17
	.string	"up"
	.byte	0x1
	.byte	0x50
	.long	0x2d8
	.long	.LLST16
	.uleb128 0x17
	.string	"u1"
	.byte	0x1
	.byte	0x50
	.long	0x2d8
	.long	.LLST17
	.uleb128 0x17
	.string	"u2"
	.byte	0x1
	.byte	0x50
	.long	0x2d8
	.long	.LLST18
	.uleb128 0x17
	.string	"vp"
	.byte	0x1
	.byte	0x50
	.long	0x2d8
	.long	.LLST19
	.uleb128 0x17
	.string	"v1"
	.byte	0x1
	.byte	0x50
	.long	0x2d8
	.long	.LLST20
	.uleb128 0x17
	.string	"v2"
	.byte	0x1
	.byte	0x50
	.long	0x2d8
	.long	.LLST21
	.uleb128 0x17
	.string	"_u"
	.byte	0x1
	.byte	0x50
	.long	0x2d8
	.long	.LLST22
	.uleb128 0x17
	.string	"_v"
	.byte	0x1
	.byte	0x50
	.long	0x2d8
	.long	.LLST23
	.byte	0x0
	.uleb128 0x19
	.long	.LBB5
	.long	.LBE5
	.long	0x545
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0x53
	.long	0x2d8
	.long	.LLST24
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x53
	.long	0x2d8
	.long	.LLST25
	.byte	0x0
	.uleb128 0x19
	.long	.LBB6
	.long	.LBE6
	.long	0x56d
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0x54
	.long	0x2d8
	.long	.LLST26
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x54
	.long	0x2d8
	.long	.LLST27
	.byte	0x0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x0
	.long	0x632
	.uleb128 0x17
	.string	"_ch"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST28
	.uleb128 0x17
	.string	"_cl"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST29
	.uleb128 0x17
	.string	"_uh"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST30
	.uleb128 0x16
	.string	"_ul"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.byte	0x56
	.long	0x6e0
	.long	.LLST31
	.uleb128 0x17
	.string	"up"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST32
	.uleb128 0x17
	.string	"u1"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST33
	.uleb128 0x17
	.string	"u2"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST34
	.uleb128 0x17
	.string	"vp"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST35
	.uleb128 0x17
	.string	"v1"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST36
	.uleb128 0x17
	.string	"v2"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST37
	.uleb128 0x17
	.string	"_u"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST38
	.uleb128 0x17
	.string	"_v"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST39
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	.LBB10
	.long	.LBE10
	.long	0x66a
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.byte	0x68
	.long	0x2d8
	.long	.LLST40
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.byte	0x68
	.long	0x2d8
	.long	.LLST41
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.byte	0x68
	.long	0x2d8
	.long	.LLST42
	.byte	0x0
	.uleb128 0x1c
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.byte	0x69
	.long	0x2d8
	.long	.LLST43
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.byte	0x69
	.long	0x2d8
	.long	.LLST44
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.byte	0x69
	.long	0x2d8
	.long	.LLST45
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.byte	0x7f
	.long	0x2d8
	.long	.LLST46
	.uleb128 0x17
	.string	"_a"
	.byte	0x1
	.byte	0x7f
	.long	0x2d8
	.long	.LLST47
	.uleb128 0x17
	.string	"_b"
	.byte	0x1
	.byte	0x7f
	.long	0x2d8
	.long	.LLST48
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x2d8
	.uleb128 0x8
	.byte	0x4
	.long	0x5a
	.uleb128 0x1d
	.long	0x2d8
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.value	0x109
	.byte	0x1
	.long	0x2d8
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.long	0x7ad
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.value	0x109
	.long	0x2d8
	.long	.LLST49
	.uleb128 0x20
	.string	"hx"
	.byte	0x1
	.value	0x10a
	.long	0x30
	.long	.LLST50
	.uleb128 0x21
	.long	.LASF69
	.byte	0x1
	.value	0x10b
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF54
	.byte	0x1
	.value	0x10c
	.long	0x2d8
	.long	.LLST51
	.uleb128 0x22
	.long	.LASF55
	.byte	0x1
	.value	0x10c
	.long	0x2d8
	.long	.LLST52
	.uleb128 0x23
	.long	.LASF70
	.byte	0x1
	.value	0x10d
	.long	0x2df
	.uleb128 0x23
	.long	.LASF71
	.byte	0x1
	.value	0x10d
	.long	0x2df
	.uleb128 0x24
	.string	"u"
	.byte	0x1
	.value	0x10d
	.long	0x2df
	.uleb128 0x24
	.string	"u53"
	.byte	0x1
	.value	0x10d
	.long	0x2df
	.uleb128 0x22
	.long	.LASF56
	.byte	0x1
	.value	0x10e
	.long	0x5a
	.long	.LLST53
	.uleb128 0x22
	.long	.LASF53
	.byte	0x1
	.value	0x10f
	.long	0x5a
	.long	.LLST54
	.uleb128 0x22
	.long	.LASF72
	.byte	0x1
	.value	0x110
	.long	0x2d8
	.long	.LLST55
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.long	0x2d8
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0x865
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.byte	0xc1
	.long	0x2d8
	.long	.LLST56
	.uleb128 0x17
	.string	"hx"
	.byte	0x1
	.byte	0xc2
	.long	0x30
	.long	.LLST57
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0xc3
	.long	0x5a
	.long	.LLST58
	.uleb128 0x27
	.long	.LASF54
	.byte	0x1
	.byte	0xc4
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF55
	.byte	0x1
	.byte	0xc4
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.byte	0xc5
	.long	0x2df
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.byte	0xc5
	.long	0x2df
	.uleb128 0x16
	.string	"u"
	.byte	0x1
	.byte	0xc5
	.long	0x2df
	.uleb128 0x16
	.string	"u53"
	.byte	0x1
	.byte	0xc5
	.long	0x2df
	.uleb128 0x27
	.long	.LASF56
	.byte	0x1
	.byte	0xc6
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.long	.LASF72
	.byte	0x1
	.byte	0xc7
	.long	0x2d8
	.long	.LLST59
	.uleb128 0x27
	.long	.LASF69
	.byte	0x1
	.byte	0xc8
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -88
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.value	0x154
	.byte	0x1
	.long	0x2d8
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.long	0x88f
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x154
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.long	0x2d8
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0x90d
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.byte	0x97
	.long	0x2d8
	.long	.LLST60
	.uleb128 0x17
	.string	"hx"
	.byte	0x1
	.byte	0x98
	.long	0x30
	.long	.LLST61
	.uleb128 0x27
	.long	.LASF54
	.byte	0x1
	.byte	0x99
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF55
	.byte	0x1
	.byte	0x99
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF56
	.byte	0x1
	.byte	0x9a
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0x9b
	.long	0x2d8
	.long	.LLST62
	.uleb128 0x27
	.long	.LASF69
	.byte	0x1
	.byte	0x9c
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -56
	.byte	0x0
	.uleb128 0x29
	.long	.LASF77
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF78
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.long	.LASF79
	.byte	0x7
	.byte	0x47
	.long	0x932
	.uleb128 0x1d
	.long	0x2df
	.uleb128 0x18
	.long	.LASF80
	.byte	0x7
	.byte	0x48
	.long	0x932
	.uleb128 0x18
	.long	.LASF81
	.byte	0x7
	.byte	0x49
	.long	0x932
	.uleb128 0x18
	.long	.LASF82
	.byte	0x7
	.byte	0x4a
	.long	0x932
	.uleb128 0x18
	.long	.LASF83
	.byte	0x7
	.byte	0x4b
	.long	0x932
	.uleb128 0x18
	.long	.LASF84
	.byte	0x7
	.byte	0x4c
	.long	0x932
	.uleb128 0x18
	.long	.LASF85
	.byte	0x7
	.byte	0x4d
	.long	0x932
	.uleb128 0x18
	.long	.LASF86
	.byte	0x7
	.byte	0x4e
	.long	0x932
	.uleb128 0x18
	.long	.LASF87
	.byte	0x8
	.byte	0xca
	.long	0x98f
	.uleb128 0x1d
	.long	0x2ea
	.uleb128 0x18
	.long	.LASF88
	.byte	0x8
	.byte	0xce
	.long	0x98f
	.uleb128 0x18
	.long	.LASF89
	.byte	0x8
	.byte	0xd2
	.long	0x98f
	.uleb128 0x18
	.long	.LASF90
	.byte	0x8
	.byte	0xd6
	.long	0x98f
	.uleb128 0x18
	.long	.LASF91
	.byte	0x8
	.byte	0xda
	.long	0x98f
	.uleb128 0x27
	.long	.LASF92
	.byte	0x9
	.byte	0xb
	.long	0x932
	.byte	0x5
	.byte	0x3
	.long	HALFPI
	.uleb128 0x27
	.long	.LASF93
	.byte	0x9
	.byte	0xb
	.long	0x932
	.byte	0x5
	.byte	0x3
	.long	HALFPI_TO_PLUS_INFINITY
	.uleb128 0x5
	.long	0x2d8
	.long	0x9f2
	.uleb128 0x6
	.long	0x30
	.byte	0x3
	.byte	0x0
	.uleb128 0x27
	.long	.LASF94
	.byte	0x9
	.byte	0x10
	.long	0xa03
	.byte	0x5
	.byte	0x3
	.long	rncst
	.uleb128 0x1d
	.long	0x9e2
	.uleb128 0x27
	.long	.LASF95
	.byte	0x9
	.byte	0x16
	.long	0xa19
	.byte	0x5
	.byte	0x3
	.long	epsilon
	.uleb128 0x1d
	.long	0x9e2
	.uleb128 0x18
	.long	.LASF96
	.byte	0x9
	.byte	0x1d
	.long	0xa29
	.uleb128 0x1d
	.long	0x9e2
	.uleb128 0x5
	.long	0x2df
	.long	0xa44
	.uleb128 0x6
	.long	0x30
	.byte	0x3d
	.uleb128 0x6
	.long	0x30
	.byte	0x3
	.byte	0x0
	.uleb128 0x21
	.long	.LASF97
	.byte	0x9
	.value	0x169
	.long	0xa56
	.byte	0x5
	.byte	0x3
	.long	arctan_table
	.uleb128 0x1d
	.long	0xa2e
	.uleb128 0x29
	.long	.LASF77
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF78
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF98
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.long	0x5b
	.value	0x2
	.long	.Ldebug_info0
	.long	0xa88
	.long	0x6e5
	.string	"atan_ru"
	.long	0x7ad
	.string	"atan_rd"
	.long	0x865
	.string	"atan_rz"
	.long	0x88f
	.string	"atan_rn"
	.long	0xa75
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x81
	.value	0x2
	.long	.Ldebug_info0
	.long	0xa88
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
	.long	.LBB7-.Ltext0
	.long	.LBE7-.Ltext0
	.long	.LBB11-.Ltext0
	.long	.LBE11-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB9-.Ltext0
	.long	.LBE9-.Ltext0
	.long	.LBB8-.Ltext0
	.long	.LBE8-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_chain"
.LASF88:
	.string	"scs_half"
.LASF8:
	.string	"size_t"
.LASF83:
	.string	"radix_rng_double"
.LASF33:
	.string	"_shortbuf"
.LASF85:
	.string	"max_double"
.LASF65:
	.string	"tmphi2"
.LASF21:
	.string	"_IO_buf_base"
.LASF7:
	.string	"long long unsigned int"
.LASF99:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF64:
	.string	"atanlolo"
.LASF87:
	.string	"scs_zer"
.LASF63:
	.string	"Xredlo"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF53:
	.string	"sign"
.LASF11:
	.string	"long int"
.LASF61:
	.string	"Xred2"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF54:
	.string	"atanhi"
.LASF9:
	.string	"__quad_t"
.LASF48:
	.string	"double"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF91:
	.string	"scs_sixinv"
.LASF81:
	.string	"radix_mone_double"
.LASF90:
	.string	"scs_two"
.LASF55:
	.string	"atanlo"
.LASF79:
	.string	"radix_one_double"
.LASF57:
	.string	"tmphi"
.LASF44:
	.string	"_IO_marker"
.LASF77:
	.string	"stdin"
.LASF0:
	.string	"unsigned int"
.LASF101:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF3:
	.string	"long unsigned int"
.LASF67:
	.string	"xmBihi"
.LASF19:
	.string	"_IO_write_ptr"
.LASF86:
	.string	"min_double"
.LASF46:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF23:
	.string	"_IO_save_base"
.LASF51:
	.string	"exception"
.LASF98:
	.string	"crlibm_second_step_taken"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF78:
	.string	"stdout"
.LASF74:
	.string	"atan_rd"
.LASF66:
	.string	"tmplo2"
.LASF50:
	.string	"h_word"
.LASF73:
	.string	"atan_ru"
.LASF75:
	.string	"atan_rz"
.LASF103:
	.string	"atan_quick"
.LASF20:
	.string	"_IO_write_end"
.LASF102:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF47:
	.string	"_pos"
.LASF26:
	.string	"_markers"
.LASF82:
	.string	"radix_mtwo_double"
.LASF76:
	.string	"atan_rn"
.LASF56:
	.string	"index_of_e"
.LASF62:
	.string	"Xredhi"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF60:
	.string	"x0lo"
.LASF32:
	.string	"_vtable_offset"
.LASF49:
	.string	"db_number"
.LASF69:
	.string	"x_db"
.LASF94:
	.string	"rncst"
.LASF13:
	.string	"char"
.LASF100:
	.string	"atan_fast.c"
.LASF59:
	.string	"x0hi"
.LASF52:
	.string	"index"
.LASF72:
	.string	"roundcst"
.LASF93:
	.string	"HALFPI_TO_PLUS_INFINITY"
.LASF45:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF84:
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
.LASF58:
	.string	"tmplo"
.LASF42:
	.string	"_unused2"
.LASF97:
	.string	"arctan_table"
.LASF95:
	.string	"epsilon"
.LASF68:
	.string	"xmBilo"
.LASF24:
	.string	"_IO_backup_base"
.LASF92:
	.string	"HALFPI"
.LASF80:
	.string	"radix_two_double"
.LASF70:
	.string	"absyh"
.LASF71:
	.string	"absyl"
.LASF18:
	.string	"_IO_write_base"
.LASF89:
	.string	"scs_one"
.LASF96:
	.string	"coef_poly"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
