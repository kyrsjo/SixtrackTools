	.file	"trigo_fast.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# trigo_fast.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
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
	.type	do_sin, @function
do_sin:
.LFB7:
	.file 1 "trigo_fast.c"
	.loc 1 70 0
	.cfi_startproc
.LVL0:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$40, %esp	#,
	call	__i686.get_pc_thunk.cx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx	# tmp3,
	fldl	8(%ebp)	# yh
	fldl	16(%ebp)	# yl
	fstpl	-16(%ebp)	# %sfp
	.loc 1 75 0
	fld	%st(0)	#
	fmul	%st(1), %st	#,
.LVL1:
	.loc 1 77 0
	fldl	sah@GOTOFF(%ecx)	# sah
.LVL2:
	fldz
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jne	.L7	#,
	jp	.L7	#,
	fstp	%st(0)	#
.LVL3:
	.loc 1 82 0
	fld	%st(0)	#
	fmull	s7@GOTOFF(%ecx)	# s7.d
.LVL4:
	faddl	s5@GOTOFF(%ecx)	# s5.d
	fmul	%st(1), %st	#,
	faddl	s3@GOTOFF(%ecx)	# s3.d
	fmulp	%st, %st(1)	#,
.LVL5:
.LBB2:
	fmul	%st(1), %st	#,
	faddl	-16(%ebp)	# %sfp
.LVL6:
	fld	%st(1)	#
.LVL7:
	fadd	%st(1), %st	#,
	fstl	(%eax)	#* sh
.LVL8:
	fsubp	%st, %st(2)	#,
.LVL9:
	fsubp	%st, %st(1)	#,
.LVL10:
	fstpl	(%edx)	#* sl
	jmp	.L5	#
.LVL11:
.L7:
.LBE2:
.LBB3:
	.loc 1 86 0
	fldl	cah@GOTOFF(%ecx)	# cah
.LVL12:
	fldl	.LC1@GOTOFF(%ecx)	#
	fld	%st(1)	#
	fmul	%st(1), %st	#,
	fxch	%st(1)	#
.LVL13:
	fmul	%st(5), %st	#,
.LVL14:
	fld	%st(2)	#
.LVL15:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL16:
	fld	%st(5)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL17:
	fld	%st(2)	#
.LVL18:
	fsub	%st(2), %st	#,
	fstpl	-32(%ebp)	# %sfp
.LVL19:
	fld	%st(5)	#
.LVL20:
	fsub	%st(1), %st	#,
	fstpl	-24(%ebp)	# %sfp
.LVL21:
	fld	%st(5)	#
.LVL22:
	fmul	%st(3), %st	#,
.LVL23:
.LBE3:
.LBB4:
	.loc 1 87 0
	fld	%st(4)	#
.LVL24:
	fadd	%st(1), %st	#,
	fstpl	-8(%ebp)	# %sfp
.LVL25:
.LBE4:
	.loc 1 96 0
	fld	%st(5)	#
.LVL26:
	fmull	s7@GOTOFF(%ecx)	# s7.d
	faddl	s5@GOTOFF(%ecx)	# s5.d
	fmul	%st(6), %st	#,
	faddl	s3@GOTOFF(%ecx)	# s3.d
	fmul	%st(6), %st	#,
	fmul	%st(1), %st	#,
	fstpl	-40(%ebp)	# %sfp
.LBB5:
	fld	%st(2)	#
	fmul	%st(2), %st	#,
	fsub	%st(1), %st	#,
	fxch	%st(3)	#
.LVL27:
	fmull	-24(%ebp)	# %sfp
	faddp	%st, %st(3)	#,
	fxch	%st(1)	#
	fmull	-32(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fldl	-32(%ebp)	# %sfp
	fmull	-24(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fxch	%st(5)	#
.LVL28:
.LBE5:
	fmull	cal@GOTOFF(%ecx)	# cal
	fxch	%st(2)	#
	fmull	-16(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
.LBB6:
	fldl	-8(%ebp)	# %sfp
	fsub	%st(2), %st	#,
	fsubrp	%st, %st(4)	#,
.LVL29:
.LBE6:
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
	faddl	sal@GOTOFF(%ecx)	# sal
	faddl	-40(%ebp)	# %sfp
	fld	%st(1)	#
	fmull	c6@GOTOFF(%ecx)	# c6.d
	faddl	c4@GOTOFF(%ecx)	# c4.d
	fmul	%st(2), %st	#,
	faddl	c2@GOTOFF(%ecx)	# c2.d
	fmulp	%st, %st(2)	#,
	fxch	%st(2)	#
	fmulp	%st, %st(1)	#,
	faddp	%st, %st(1)	#,
.LVL30:
.LBB7:
	.loc 1 97 0
	fldl	-8(%ebp)	# %sfp
.LVL31:
	fadd	%st(1), %st	#,
	fstl	(%eax)	#* sh
.LVL32:
	fsubl	-8(%ebp)	# %sfp
.LVL33:
	fsubrp	%st, %st(1)	#,
	fstpl	(%edx)	#* sl
.LVL34:
.L5:
.LBE7:
	.loc 1 99 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	do_sin, .-do_sin
	.type	do_cos, @function
do_cos:
.LFB8:
	.loc 1 102 0
	.cfi_startproc
.LVL35:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$40, %esp	#,
	call	__i686.get_pc_thunk.cx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx	# tmp3,
	fldl	8(%ebp)	# yh
	fldl	16(%ebp)	# yl
	fstpl	-32(%ebp)	# %sfp
	.loc 1 105 0
	fld	%st(0)	#
	fmul	%st(1), %st	#,
.LVL36:
	.loc 1 107 0
	fldl	sah@GOTOFF(%ecx)	# sah
.LVL37:
	fldz
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jne	.L14	#,
	jp	.L14	#,
	fstp	%st(0)	#
	fstp	%st(1)	#
	.loc 1 109 0
	fld	%st(0)	#
	fmull	c6@GOTOFF(%ecx)	# c6.d
	faddl	c4@GOTOFF(%ecx)	# c4.d
	fmul	%st(1), %st	#,
	faddl	c2@GOTOFF(%ecx)	# c2.d
	fmulp	%st, %st(1)	#,
.LVL38:
.LBB8:
	.loc 1 113 0
	fld1
.LVL39:
	fld	%st(1)	#
	fadd	%st(1), %st	#,
	fstl	(%eax)	#* ch
.LVL40:
	fsubp	%st, %st(1)	#,
	fsubrp	%st, %st(1)	#,
	fstpl	(%edx)	#* cl
	jmp	.L12	#
.LVL41:
.L14:
.LBE8:
.LBB9:
	.loc 1 119 0
	fldl	.LC1@GOTOFF(%ecx)	#
.LVL42:
	fld	%st(1)	#
	fmul	%st(1), %st	#,
	fxch	%st(1)	#
.LVL43:
	fmul	%st(4), %st	#,
.LVL44:
	fld	%st(2)	#
.LVL45:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL46:
	fld	%st(4)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL47:
	fld	%st(2)	#
.LVL48:
	fsub	%st(2), %st	#,
	fstpl	-24(%ebp)	# %sfp
.LVL49:
	fld	%st(4)	#
.LVL50:
	fsub	%st(1), %st	#,
	fstpl	-16(%ebp)	# %sfp
.LVL51:
	fld	%st(4)	#
.LVL52:
	fmul	%st(3), %st	#,
.LVL53:
.LBE9:
.LBB10:
	.loc 1 127 0
	fld	%st(0)	#
	fchs
.LVL54:
	fstpl	-8(%ebp)	# %sfp
.LVL55:
	fldl	cah@GOTOFF(%ecx)	# cah
.LVL56:
	faddl	-8(%ebp)	# %sfp
.LVL57:
.LBE10:
	.loc 1 128 0
	fld	%st(5)	#
.LVL58:
	fmull	s7@GOTOFF(%ecx)	# s7.d
	faddl	s5@GOTOFF(%ecx)	# s5.d
	fmul	%st(6), %st	#,
	faddl	s3@GOTOFF(%ecx)	# s3.d
	fmul	%st(6), %st	#,
	fmul	%st(2), %st	#,
	fstpl	-40(%ebp)	# %sfp
.LBB11:
	fldl	cah@GOTOFF(%ecx)	# cah
	fsubr	%st(1), %st	#,
	fsubrl	-8(%ebp)	# %sfp
	fstpl	-8(%ebp)	# %sfp
.LBE11:
.LBB12:
	fld	%st(3)	#
	fmul	%st(3), %st	#,
	fsubp	%st, %st(2)	#,
	fxch	%st(3)	#
	fmull	-16(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
	fxch	%st(1)	#
	fmull	-24(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
	fldl	-24(%ebp)	# %sfp
	fmull	-16(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
	fxch	%st(4)	#
.LVL59:
.LBE12:
	fmull	sal@GOTOFF(%ecx)	# sal
	fxch	%st(2)	#
	fmull	-32(%ebp)	# %sfp
	faddp	%st, %st(2)	#,
	fxch	%st(3)	#
	faddp	%st, %st(1)	#,
	fldl	-8(%ebp)	# %sfp
	fsubp	%st, %st(1)	#,
	faddl	cal@GOTOFF(%ecx)	# cal
	fsubrl	-40(%ebp)	# %sfp
	fld	%st(1)	#
	fmull	c6@GOTOFF(%ecx)	# c6.d
	faddl	c4@GOTOFF(%ecx)	# c4.d
	fmul	%st(2), %st	#,
	faddl	c2@GOTOFF(%ecx)	# c2.d
	fmulp	%st, %st(2)	#,
	fxch	%st(1)	#
	fmull	cah@GOTOFF(%ecx)	# cah
	fsubp	%st, %st(1)	#,
.LVL60:
.LBB13:
	.loc 1 129 0
	fld	%st(1)	#
.LVL61:
	fadd	%st(1), %st	#,
	fstl	(%eax)	#* ch
.LVL62:
	fsubp	%st, %st(2)	#,
.LVL63:
	fsubp	%st, %st(1)	#,
.LVL64:
	fstpl	(%edx)	#* cl
.LVL65:
.L12:
.LBE13:
	.loc 1 131 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	do_cos, .-do_cos
.globl tan_rz
	.type	tan_rz, @function
tan_rz:
.LFB21:
	.loc 1 619 0
	.cfi_startproc
.LVL66:
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
	.loc 1 620 0
	fldl	8(%ebp)	# x
	fstpl	(%esp)	#
	call	scs_tan_rz@PLT	#
	.loc 1 621 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	tan_rz, .-tan_rz
.globl tan_ru
	.type	tan_ru, @function
tan_ru:
.LFB20:
	.loc 1 609 0
	.cfi_startproc
.LVL67:
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
	.loc 1 610 0
	fldl	8(%ebp)	# x
	fstpl	(%esp)	#
	call	scs_tan_ru@PLT	#
	.loc 1 611 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	tan_ru, .-tan_ru
.globl tan_rd
	.type	tan_rd, @function
tan_rd:
.LFB19:
	.loc 1 599 0
	.cfi_startproc
.LVL68:
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
	.loc 1 600 0
	fldl	8(%ebp)	# x
	fstpl	(%esp)	#
	call	scs_tan_rd@PLT	#
	.loc 1 601 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	tan_rd, .-tan_rd
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Inside range reduction!"
.LC4:
	.string	"x=%.20e absxhi=%i\n"
.LC5:
	.string	"pyh=%.20e, pyl=%.20e\n"
.LC6:
	.string	"XMAX_CODY_WAITE_3=%i\n"
.LC8:
	.string	"INV_PIO256       =%.20e\n"
.LC10:
	.string	"RR_DD_MCH        =%.20e\n"
.LC12:
	.string	"k=%i\n"
.LC13:
	.string	"kd=%.20e\n"
.LC14:
	.string	"YES (k&127) == 0"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC15:
	.string	"kch_h=%.20e kch_l=%.20e kd=%.20e\n\n"
	.align 4
.LC18:
	.string	"kch_h=%.20e kch_l=%.20e kd=%.20e\n"
	.align 4
.LC19:
	.string	"kcm_h=%.20e kcm_l=%.20e kd=%.20e\n\n"
	.text
	.type	trig_range_reduction, @function
trig_range_reduction:
.LFB9:
	.loc 1 145 0
	.cfi_startproc
.LVL69:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$524, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	movl	%eax, %edi	# pyh, pyh
	movl	%edx, -444(%ebp)	# pyl, %sfp
	fldl	8(%ebp)	# x
	fstpl	-432(%ebp)	# %sfp
	movl	16(%ebp), %esi	# absxhi, absxhi
	.loc 1 146 0
	leal	.LC3@GOTOFF(%ebx), %eax	#, tmp103
.LVL70:
	movl	%eax, (%esp)	# tmp103,
	call	puts@PLT	#
.LVL71:
	.loc 1 147 0
	movl	%esi, 12(%esp)	# absxhi,
	fldl	-432(%ebp)	# %sfp
	fstpl	4(%esp)	#
	leal	.LC4@GOTOFF(%ebx), %eax	#, tmp104
	movl	%eax, (%esp)	# tmp104,
	call	printf@PLT	#
	.loc 1 148 0
	movl	-444(%ebp), %eax	# %sfp,
	fldl	(%eax)	#
	fstpl	12(%esp)	#
	fldl	(%edi)	#* pyh
	fstpl	4(%esp)	#
	leal	.LC5@GOTOFF(%ebx), %eax	#, tmp107
	movl	%eax, (%esp)	# tmp107,
	call	printf@PLT	#
	.loc 1 149 0
	movl	$1098457595, 4(%esp)	#,
	leal	.LC6@GOTOFF(%ebx), %eax	#, tmp108
	movl	%eax, (%esp)	# tmp108,
	call	printf@PLT	#
	.loc 1 150 0
	fldl	.LC7@GOTOFF(%ebx)	#
	fstpl	4(%esp)	#
	leal	.LC8@GOTOFF(%ebx), %eax	#, tmp110
	movl	%eax, (%esp)	# tmp110,
	call	printf@PLT	#
	.loc 1 151 0
	fldl	.LC9@GOTOFF(%ebx)	#
	fstpl	4(%esp)	#
	leal	.LC10@GOTOFF(%ebx), %eax	#, tmp112
	movl	%eax, (%esp)	# tmp112,
	call	printf@PLT	#
	.loc 1 154 0
	cmpl	$1098457594, %esi	#, absxhi
	jg	.L22	#,
.LBB30:
	.loc 1 155 0
	fldl	-432(%ebp)	# %sfp
	fmull	.LC7@GOTOFF(%ebx)	#
	fadds	.LC11@GOTOFF(%ebx)	#
	fstpl	-456(%ebp)	# %sfp
	movl	-456(%ebp), %eax	# %sfp,
	movl	%eax, -440(%ebp)	#, %sfp
.LVL72:
.LBE30:
	.loc 1 156 0
	movl	%eax, 4(%esp)	#,
	leal	.LC12@GOTOFF(%ebx), %eax	#, tmp118
	movl	%eax, (%esp)	# tmp118,
	call	printf@PLT	#
	.loc 1 157 0
	fildl	-440(%ebp)	# %sfp
	fstl	-456(%ebp)	# %sfp
.LVL73:
	.loc 1 158 0
	fstpl	4(%esp)	#
	leal	.LC13@GOTOFF(%ebx), %eax	#, tmp119
	movl	%eax, (%esp)	# tmp119,
	call	printf@PLT	#
.LVL74:
	.loc 1 159 0
	testb	$127, -440(%ebp)	#, %sfp
	jne	.L23	#,
.LBB31:
	.loc 1 160 0
	leal	.LC14@GOTOFF(%ebx), %eax	#, tmp121
	movl	%eax, (%esp)	# tmp121,
	call	puts@PLT	#
.LVL75:
	.loc 1 171 0
	fldl	-456(%ebp)	# %sfp
	fstpl	20(%esp)	#
	fldz
	fstl	12(%esp)	#
	fstpl	4(%esp)	#
	leal	.LC15@GOTOFF(%ebx), %eax	#, tmp124
	movl	%eax, (%esp)	# tmp124,
	call	printf@PLT	#
.LVL76:
.LBB32:
	.loc 1 172 0
	fldl	-456(%ebp)	# %sfp
	fmull	.LC1@GOTOFF(%ebx)	#
.LVL77:
	fldl	-456(%ebp)	# %sfp
.LVL78:
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
	fstl	-464(%ebp)	# %sfp
.LVL79:
	fldl	-456(%ebp)	# %sfp
.LVL80:
	fsubp	%st, %st(1)	#,
	fstpl	-488(%ebp)	# %sfp
.LVL81:
	fldl	-456(%ebp)	# %sfp
	fmull	.LC9@GOTOFF(%ebx)	#
	fstpl	-480(%ebp)	# %sfp
.LVL82:
	fldl	.LC16@GOTOFF(%ebx)	#
.LVL83:
	fldl	-464(%ebp)	# %sfp
	fmul	%st(1), %st	#,
	fsubl	-480(%ebp)	# %sfp
	flds	.LC17@GOTOFF(%ebx)	#
	fldl	-464(%ebp)	# %sfp
	fmul	%st(1), %st	#,
	faddp	%st, %st(2)	#,
	fxch	%st(2)	#
	fmull	-488(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
	fxch	%st(1)	#
	fmull	-488(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
	fstl	-472(%ebp)	# %sfp
.LVL84:
.LBE32:
	.loc 1 173 0
	fldl	-456(%ebp)	# %sfp
.LVL85:
	fstpl	20(%esp)	#
	fstpl	12(%esp)	#
	fldl	-480(%ebp)	# %sfp
	fstpl	4(%esp)	#
	leal	.LC18@GOTOFF(%ebx), %eax	#, tmp141
	movl	%eax, (%esp)	# tmp141,
	call	printf@PLT	#
	.loc 1 175 0
	leal	.LC19@GOTOFF(%ebx), %esi	#, D.2137
	fldl	-456(%ebp)	# %sfp
	fstpl	20(%esp)	#
	fldl	-472(%ebp)	# %sfp
	fstpl	12(%esp)	#
	fldl	-480(%ebp)	# %sfp
	fstpl	4(%esp)	#
	movl	%esi, (%esp)	# D.2137,
	call	printf@PLT	#
.LVL86:
.LBB33:
	.loc 1 176 0
	fldl	-456(%ebp)	# %sfp
	fmull	.LC20@GOTOFF(%ebx)	#
	fstpl	-496(%ebp)	# %sfp
.LVL87:
.LBE33:
	.loc 1 177 0
	fldl	-456(%ebp)	# %sfp
.LVL88:
	fstpl	20(%esp)	#
	fldl	-472(%ebp)	# %sfp
	fstpl	12(%esp)	#
	fldl	-480(%ebp)	# %sfp
	fstpl	4(%esp)	#
	movl	%esi, (%esp)	# D.2137,
	call	printf@PLT	#
.LVL89:
.LBB34:
	.loc 1 179 0
	fldl	-472(%ebp)	# %sfp
	faddl	-496(%ebp)	# %sfp
.LVL90:
.LBE34:
.LBB35:
	.loc 1 181 0
	fldl	-432(%ebp)	# %sfp
.LVL91:
	faddl	-480(%ebp)	# %sfp
	fld	%st(0)	#
	fadd	%st(2), %st	#,
.LVL92:
	fsubr	%st, %st(1)	#,
	fxch	%st(1)	#
.LVL93:
	fadd	%st(2), %st	#,
.LBE35:
.LBB36:
	fldl	-472(%ebp)	# %sfp
	fsubrp	%st, %st(3)	#,
	fxch	%st(2)	#
	fsubrl	-496(%ebp)	# %sfp
.LBE36:
.LBB37:
	faddp	%st, %st(2)	#,
.LBE37:
.LBB38:
	fldl	.LC21@GOTOFF(%ebx)	#
	fldl	-464(%ebp)	# %sfp
	fmul	%st(1), %st	#,
	fsubl	-496(%ebp)	# %sfp
	fldl	.LC22@GOTOFF(%ebx)	#
	fldl	-464(%ebp)	# %sfp
	fmul	%st(1), %st	#,
	faddp	%st, %st(2)	#,
	fxch	%st(2)	#
	fmull	-488(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
	fxch	%st(1)	#
	fmull	-488(%ebp)	# %sfp
	faddp	%st, %st(1)	#,
.LBE38:
.LBB39:
	fldl	-456(%ebp)	# %sfp
	fmull	.LC23@GOTOFF(%ebx)	#
	faddp	%st, %st(1)	#,
	faddp	%st, %st(2)	#,
.LVL94:
	fld	%st(0)	#
	fadd	%st(2), %st	#,
	fstl	(%edi)	#* pyh
	fsubrp	%st, %st(1)	#,
.LVL95:
	faddp	%st, %st(1)	#,
	movl	-444(%ebp), %eax	# %sfp,
	fstpl	(%eax)	#
	jmp	.L24	#
.LVL96:
.L23:
.LBE39:
.LBE31:
	.loc 1 186 0
	cmpl	$1089020410, %esi	#, absxhi
	jg	.L25	#,
.LBB40:
	.loc 1 188 0
	fldl	-456(%ebp)	# %sfp
	fmull	.LC24@GOTOFF(%ebx)	#
	faddl	-432(%ebp)	# %sfp
.LVL97:
	fldl	-456(%ebp)	# %sfp
.LVL98:
	fmull	.LC25@GOTOFF(%ebx)	#
.LVL99:
	fld	%st(1)	#
.LVL100:
	fadd	%st(1), %st	#,
	fstl	(%edi)	#* pyh
.LVL101:
	fsubp	%st, %st(2)	#,
.LVL102:
	fsubp	%st, %st(1)	#,
	movl	-444(%ebp), %eax	# %sfp,
	fstpl	(%eax)	#
	jmp	.L24	#
.LVL103:
.L25:
.LBE40:
.LBB41:
	.loc 1 192 0
	fldl	-456(%ebp)	# %sfp
	fmuls	.LC26@GOTOFF(%ebx)	#
	faddl	-432(%ebp)	# %sfp
	fldl	-456(%ebp)	# %sfp
	fmuls	.LC27@GOTOFF(%ebx)	#
	faddp	%st, %st(1)	#,
.LVL104:
	fldl	-456(%ebp)	# %sfp
.LVL105:
	fmull	.LC28@GOTOFF(%ebx)	#
.LVL106:
	fld	%st(1)	#
.LVL107:
	fadd	%st(1), %st	#,
	fstl	(%edi)	#* pyh
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L28	#,
	fchs
.L28:
	fld	%st(2)	#
	fldz
	fxch	%st(4)	#
	fucomi	%st(4), %st	#,
	fstp	%st(4)	#
	ja	.L48	#,
	fstp	%st(0)	#
	fldl	-456(%ebp)	# %sfp
	fmull	.LC29@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	jmp	.L31	#
.L48:
	fxch	%st(1)	#
.L31:
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jbe	.L46	#,
.LVL108:
	fsubp	%st, %st(2)	#,
.LVL109:
	fsubp	%st, %st(1)	#,
	movl	-444(%ebp), %eax	# %sfp,
	fstpl	(%eax)	#
	jmp	.L24	#
.LVL110:
.L46:
	fsubp	%st, %st(1)	#,
.LVL111:
	fsubrp	%st, %st(1)	#,
.LVL112:
	movl	-444(%ebp), %eax	# %sfp,
	fstpl	(%eax)	#
	jmp	.L24	#
.LVL113:
.L22:
.LBE41:
	.loc 1 195 0
	cmpl	$1119429114, %esi	#, absxhi
	jg	.L34	#,
.LBB42:
.LBB43:
	.loc 1 198 0
	fldl	-432(%ebp)	# %sfp
	fmull	.LC7@GOTOFF(%ebx)	#
	fld	%st(0)	#
	fadds	.LC11@GOTOFF(%ebx)	#
	fstpl	-440(%ebp)	# %sfp
	fldz
	fxch	%st(1)	#
	fucomip	%st(1), %st	#,
	fstp	%st(0)	#
	jb	.L47	#,
	movl	-440(%ebp), %eax	# %sfp, kl
	movl	-436(%ebp), %edx	# %sfp,
	andl	$524287, %edx	#,
.LVL114:
	jmp	.L37	#
.LVL115:
.L47:
	movl	-440(%ebp), %eax	# %sfp, kl
	movl	-436(%ebp), %edx	# %sfp,
	orl	$-524288, %edx	#,
.LVL116:
.L37:
.LBE43:
	.loc 1 200 0
	movl	%eax, -440(%ebp)	# kl, %sfp
.LVL117:
	.loc 1 204 0
	testb	$127, %al	#,
	jne	.L38	#,
.LBB44:
	.loc 1 206 0
	fldl	-432(%ebp)	# %sfp
	fmuls	.LC30@GOTOFF(%ebx)	#
	fstpl	4(%esp)	#
	leal	-72(%ebp), %esi	#, tmp196
	movl	%esi, (%esp)	# tmp196,
	call	scs_set_d@PLT	#
.LVL118:
	.loc 1 207 0
	movl	%esi, 4(%esp)	# tmp196,
	leal	-120(%ebp), %esi	#, tmp198
	movl	%esi, (%esp)	# tmp198,
	call	rem_pio2_scs@PLT	#
	movl	%eax, -440(%ebp)	#, %sfp
.LVL119:
	.loc 1 209 0
	movl	%esi, 4(%esp)	# tmp198,
	movl	%edi, (%esp)	# pyh,
	call	scs_get_d@PLT	#
.LVL120:
	.loc 1 210 0
	fldl	(%edi)	#* pyh
	fstpl	4(%esp)	#
	leal	-168(%ebp), %eax	#,
	movl	%eax, -432(%ebp)	#, %sfp
	movl	%eax, (%esp)	#,
	call	scs_set_d@PLT	#
	.loc 1 211 0
	movl	-432(%ebp), %eax	# %sfp,
	movl	%eax, 8(%esp)	#,
	movl	%esi, 4(%esp)	# tmp198,
	leal	-216(%ebp), %esi	#, tmp204
	movl	%esi, (%esp)	# tmp204,
	call	scs_sub@PLT	#
	.loc 1 212 0
	movl	%esi, 4(%esp)	# tmp204,
	movl	-444(%ebp), %eax	# %sfp,
	movl	%eax, (%esp)	#,
	call	scs_get_d@PLT	#
	.loc 1 213 0
	flds	.LC31@GOTOFF(%ebx)	#
	fldl	(%edi)	#* pyh
	fmul	%st(1), %st	#,
	fstpl	(%edi)	#* pyh
	.loc 1 214 0
	movl	-444(%ebp), %eax	# %sfp,
	fmull	(%eax)	#
	fstpl	(%eax)	#
	jmp	.L24	#
.LVL121:
.L38:
.LBE44:
	.loc 1 199 0
	movl	%eax, -424(%ebp)	# kl,
	movl	%edx, -420(%ebp)	# kl,
	fildll	-424(%ebp)	#
.LVL122:
.LBB45:
	.loc 1 218 0
	fld	%st(0)	#
	fmull	.LC1@GOTOFF(%ebx)	#
.LVL123:
	fld	%st(1)	#
.LVL124:
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL125:
	fld	%st(1)	#
.LVL126:
	fsub	%st(1), %st	#,
.LVL127:
	fld	%st(2)	#
.LVL128:
	fmull	.LC9@GOTOFF(%ebx)	#
.LVL129:
	fldl	.LC16@GOTOFF(%ebx)	#
.LVL130:
	fld	%st(3)	#
	fmul	%st(1), %st	#,
	fsub	%st(2), %st	#,
	flds	.LC17@GOTOFF(%ebx)	#
	fld	%st(5)	#
	fmul	%st(1), %st	#,
	faddp	%st, %st(2)	#,
	fxch	%st(2)	#
	fmul	%st(4), %st	#,
	faddp	%st, %st(1)	#,
.LVL131:
	fxch	%st(1)	#
	fmul	%st(3), %st	#,
	faddp	%st, %st(1)	#,
.LVL132:
.LBE45:
.LBB46:
	.loc 1 219 0
	fld	%st(4)	#
.LVL133:
	fmull	.LC20@GOTOFF(%ebx)	#
.LVL134:
.LBE46:
.LBB47:
	.loc 1 220 0
	fld	%st(1)	#
.LVL135:
	fadd	%st(1), %st	#,
	fxch	%st(3)	#
.LVL136:
.LBE47:
.LBB48:
	.loc 1 222 0
	faddl	-432(%ebp)	# %sfp
.LVL137:
	fld	%st(0)	#
	fadd	%st(4), %st	#,
.LVL138:
	fsubr	%st, %st(1)	#,
.LVL139:
	fxch	%st(1)	#
.LVL140:
	fadd	%st(4), %st	#,
	fxch	%st(3)	#
.LBE48:
.LBB49:
	fsubrp	%st, %st(4)	#,
	fxch	%st(3)	#
	fsubr	%st(1), %st	#,
.LBE49:
.LBB50:
	faddp	%st, %st(2)	#,
.LVL141:
.LBE50:
.LBB51:
	fldl	.LC21@GOTOFF(%ebx)	#
	fld	%st(5)	#
	fmul	%st(1), %st	#,
	fsubp	%st, %st(2)	#,
	fldl	.LC22@GOTOFF(%ebx)	#
	fmul	%st, %st(6)	#,
	fxch	%st(6)	#
	faddp	%st, %st(2)	#,
	fmul	%st(4), %st	#,
	faddp	%st, %st(1)	#,
	fxch	%st(4)	#
	fmulp	%st, %st(3)	#,
	fxch	%st(3)	#
	faddp	%st, %st(2)	#,
	fxch	%st(3)	#
.LBE51:
.LBB52:
	fmull	.LC23@GOTOFF(%ebx)	#
	faddp	%st, %st(1)	#,
	faddp	%st, %st(1)	#,
.LVL142:
	fld	%st(1)	#
.LVL143:
	fadd	%st(1), %st	#,
	fstl	(%edi)	#* pyh
	fsubrp	%st, %st(2)	#,
	faddp	%st, %st(1)	#,
	movl	-444(%ebp), %eax	# %sfp,
.LVL144:
	fstpl	(%eax)	#
	jmp	.L24	#
.LVL145:
.L34:
.LBE52:
.LBE42:
.LBB53:
	.loc 1 227 0
	cmpl	$2138046464, %esi	#, absxhi
	jle	.L39	#,
	.loc 1 228 0
	fldl	-432(%ebp)	# %sfp
	fstpl	(%esp)	#
	call	*20(%ebp)	# scs_fun
	fnstcw	-410(%ebp)	#
	movzwl	-410(%ebp), %eax	#, tmp275
	movb	$12, %ah	#, tmp275
	movw	%ax, -412(%ebp)	# tmp275,
	fldcw	-412(%ebp)	#
	fistpl	-440(%ebp)	# %sfp
	fldcw	-410(%ebp)	#
	jmp	.L40	#
.L39:
	.loc 1 230 0
	fldl	-432(%ebp)	# %sfp
	fmuls	.LC30@GOTOFF(%ebx)	#
	fstpl	4(%esp)	#
	leal	-264(%ebp), %esi	#, tmp256
	movl	%esi, (%esp)	# tmp256,
	call	scs_set_d@PLT	#
	.loc 1 231 0
	movl	%esi, 4(%esp)	# tmp256,
	leal	-312(%ebp), %esi	#, tmp258
	movl	%esi, (%esp)	# tmp258,
	call	rem_pio2_scs@PLT	#
	movl	%eax, -440(%ebp)	#, %sfp
.LVL146:
	.loc 1 233 0
	movl	%esi, 4(%esp)	# tmp258,
	movl	%edi, (%esp)	# pyh,
	call	scs_get_d@PLT	#
.LVL147:
	.loc 1 234 0
	fldl	(%edi)	#* pyh
	fstpl	4(%esp)	#
	leal	-360(%ebp), %eax	#,
	movl	%eax, -432(%ebp)	#, %sfp
	movl	%eax, (%esp)	#,
	call	scs_set_d@PLT	#
	.loc 1 235 0
	movl	-432(%ebp), %eax	# %sfp,
	movl	%eax, 8(%esp)	#,
	movl	%esi, 4(%esp)	# tmp258,
	leal	-408(%ebp), %esi	#, tmp264
	movl	%esi, (%esp)	# tmp264,
	call	scs_sub@PLT	#
	.loc 1 236 0
	movl	%esi, 4(%esp)	# tmp264,
	movl	-444(%ebp), %eax	# %sfp,
	movl	%eax, (%esp)	#,
	call	scs_get_d@PLT	#
	.loc 1 237 0
	flds	.LC31@GOTOFF(%ebx)	#
	fldl	(%edi)	#* pyh
	fmul	%st(1), %st	#,
	fstpl	(%edi)	#* pyh
	.loc 1 238 0
	movl	-444(%ebp), %eax	# %sfp,
	fmull	(%eax)	#
	fstpl	(%eax)	#
.L24:
.LBE53:
	.loc 1 241 0
	movl	$10, (%esp)	#,
	call	putchar@PLT	#
.LVL148:
.L40:
	.loc 1 243 0
	movl	-440(%ebp), %eax	# %sfp,
	addl	$524, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%esi	#
	.cfi_restore 6
	popl	%edi	#
	.cfi_restore 7
.LVL149:
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	trig_range_reduction, .-trig_range_reduction
	.section	.rodata.str1.4
	.align 4
.LC32:
	.string	"ERREUR: %d is not a valid value in sn_tan \n"
	.text
.globl tan_rn
	.type	tan_rn, @function
tan_rn:
.LFB18:
	.loc 1 470 0
	.cfi_startproc
.LVL150:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%esi	#
	pushl	%ebx	#
	subl	$80, %esp	#,
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	fstl	-72(%ebp)	# %sfp
	.loc 1 483 0
	fstl	-64(%ebp)	# %sfp
	.loc 1 484 0
	movl	-60(%ebp), %ecx	# %sfp, D.2479
.LVL151:
	.loc 1 488 0
	movl	-60(%ebp), %eax	# %sfp, tmp83
	andl	$2147483647, %eax	#, tmp83
	cmpl	$1045162706, %eax	#, tmp83
	jle	.L51	#,
	.loc 1 498 0
	leal	-56(%ebp), %edx	#, tmp84
	leal	-48(%ebp), %eax	#, tmp85
	movl	scs_cos_rn@GOT(%ebx), %esi	#, tmp87
	movl	%esi, 12(%esp)	# tmp87,
	andl	$2147483647, %ecx	#, tmp88
	movl	%ecx, 8(%esp)	# tmp88,
	fstpl	(%esp)	#
	call	trig_range_reduction	#
.LVL152:
	.loc 1 500 0
	movl	%eax, %edx	# k, tmp89
	sarl	$7, %edx	#, tmp89
	andl	$3, %edx	#, quadrant
.LVL153:
	.loc 1 502 0
	andl	$127, %eax	#, D.2487
.LVL154:
	sall	$2, %eax	#, k.247
.LVL155:
	.loc 1 504 0
	cmpl	$1, %edx	#, quadrant
	je	.L54	#,
	cmpl	$1, %edx	#, quadrant
	jg	.L57	#,
	testl	%edx, %edx	# quadrant
	je	.L53	#,
	.p2align 4,,6
	jmp	.L52	#
.L57:
	cmpl	$2, %edx	#, quadrant
	.p2align 4,,6
	je	.L55	#,
	cmpl	$3, %edx	#, quadrant
	.p2align 4,,5
	jne	.L52	#,
	.p2align 4,,5
	jmp	.L66	#
.L53:
	.loc 1 509 0
	cmpl	$256, %eax	#, k.247
	.p2align 4,,3
	jg	.L58	#,
	.loc 1 510 0
	fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 511 0
	fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	sal@GOTOFF(%ebx)	# sal
	.loc 1 512 0
	fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 513 0
	fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	cal@GOTOFF(%ebx)	# cal
	jmp	.L59	#
.L58:
.LBB60:
	.loc 1 515 0
	movl	$512, %edx	#, tmp105
.LVL156:
	subl	%eax, %edx	# k.247, tmp105
.LVL157:
	.loc 1 516 0
	fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 517 0
	fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	cal@GOTOFF(%ebx)	# cal
	.loc 1 518 0
	fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 519 0
	fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	sal@GOTOFF(%ebx)	# sal
	jmp	.L59	#
.LVL158:
.L54:
.LBE60:
	.loc 1 526 0
	cmpl	$256, %eax	#, k.247
	jg	.L60	#,
	.loc 1 527 0
	fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fchs
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 528 0
	fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fchs
	fstpl	cal@GOTOFF(%ebx)	# cal
	.loc 1 529 0
	fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 530 0
	fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	sal@GOTOFF(%ebx)	# sal
	jmp	.L59	#
.L60:
.LBB61:
	.loc 1 532 0
	movl	$512, %edx	#, tmp138
.LVL159:
	subl	%eax, %edx	# k.247, tmp138
.LVL160:
	.loc 1 533 0
	fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 534 0
	fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	sal@GOTOFF(%ebx)	# sal
	.loc 1 535 0
	fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fchs
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 536 0
	fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fchs
	fstpl	cal@GOTOFF(%ebx)	# cal
	jmp	.L59	#
.LVL161:
.L55:
.LBE61:
	.loc 1 540 0
	cmpl	$256, %eax	#, k.247
	jg	.L61	#,
	.loc 1 541 0
	fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fchs
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 542 0
	fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fchs
	fstpl	sal@GOTOFF(%ebx)	# sal
	.loc 1 543 0
	fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fchs
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 544 0
	fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fchs
	fstpl	cal@GOTOFF(%ebx)	# cal
	jmp	.L59	#
.L61:
.LBB62:
	.loc 1 546 0
	movl	$512, %edx	#, tmp175
.LVL162:
	subl	%eax, %edx	# k.247, tmp175
.LVL163:
	.loc 1 547 0
	fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fchs
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 548 0
	fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fchs
	fstpl	cal@GOTOFF(%ebx)	# cal
	.loc 1 549 0
	fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fchs
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 550 0
	fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fchs
	fstpl	sal@GOTOFF(%ebx)	# sal
	jmp	.L59	#
.LVL164:
.L66:
.LBE62:
	.loc 1 554 0
	cmpl	$256, %eax	#, k.247
	jg	.L62	#,
	.loc 1 555 0
	fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 556 0
	fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	cal@GOTOFF(%ebx)	# cal
	.loc 1 557 0
	fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fchs
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 558 0
	fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fchs
	fstpl	sal@GOTOFF(%ebx)	# sal
	jmp	.L59	#
.L62:
.LBB63:
	.loc 1 560 0
	movl	$512, %edx	#, tmp212
.LVL165:
	subl	%eax, %edx	# k.247, tmp212
.LVL166:
	.loc 1 561 0
	fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fchs
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 562 0
	fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fchs
	fstpl	sal@GOTOFF(%ebx)	# sal
	.loc 1 563 0
	fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 564 0
	fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	cal@GOTOFF(%ebx)	# cal
	jmp	.L59	#
.LVL167:
.L52:
.LBE63:
	.loc 1 568 0
	movl	%edx, 8(%esp)	# quadrant,
	leal	.LC32@GOTOFF(%ebx), %eax	#, tmp230
.LVL168:
	movl	%eax, 4(%esp)	# tmp230,
	movl	stderr@GOT(%ebx), %eax	#, tmp231
	movl	(%eax), %eax	# stderr, stderr
	movl	%eax, (%esp)	# stderr,
	call	fprintf@PLT	#
.LVL169:
	fldz
	.loc 1 569 0
	jmp	.L51	#
.LVL170:
.L59:
	.loc 1 576 0
	leal	-24(%ebp), %edx	#, tmp234
	leal	-16(%ebp), %eax	#, tmp235
.LVL171:
	fldl	-56(%ebp)	# yl
	fstpl	8(%esp)	#
.LVL172:
	fldl	-48(%ebp)	# yh
	fstpl	(%esp)	#
	call	do_sin	#
	.loc 1 577 0
	leal	-40(%ebp), %edx	#, tmp238
	leal	-32(%ebp), %eax	#, tmp239
	fldl	-56(%ebp)	# yl
	fstpl	8(%esp)	#
	fldl	-48(%ebp)	# yh
	fstpl	(%esp)	#
	call	do_cos	#
.LVL173:
.LBB64:
	.loc 1 580 0
	fldl	-16(%ebp)	# sh
.LVL174:
	fldl	-32(%ebp)	# ch
	fld	%st(1)	#
	fdiv	%st(1), %st	#,
.LVL175:
.LBB65:
	fldl	.LC1@GOTOFF(%ebx)	#
.LVL176:
	fld	%st(1)	#
	fmul	%st(1), %st	#,
	fxch	%st(1)	#
.LVL177:
	fmul	%st(3), %st	#,
.LVL178:
	fld	%st(2)	#
.LVL179:
	fsub	%st(2), %st	#,
	faddp	%st, %st(2)	#,
.LVL180:
	fld	%st(3)	#
	fsub	%st(1), %st	#,
	faddp	%st, %st(1)	#,
.LVL181:
	fld	%st(2)	#
.LVL182:
	fsub	%st(2), %st	#,
.LVL183:
	fld	%st(4)	#
.LVL184:
	fsub	%st(2), %st	#,
.LVL185:
	fld	%st(5)	#
.LVL186:
	fmul	%st(5), %st	#,
.LVL187:
.LBE65:
	fsubr	%st, %st(7)	#,
	fxch	%st(7)	#
.LVL188:
	fstpl	-64(%ebp)	# %sfp
.LBB66:
	fld	%st(3)	#
	fmul	%st(3), %st	#,
	fsubp	%st, %st(7)	#,
	fmul	%st, %st(3)	#,
	fxch	%st(6)	#
	faddp	%st, %st(3)	#,
	fmul	%st, %st(1)	#,
	fxch	%st(1)	#
	faddp	%st, %st(2)	#,
	fmulp	%st, %st(4)	#,
	faddp	%st, %st(3)	#,
	fxch	%st(2)	#
.LBE66:
	fsubrl	-64(%ebp)	# %sfp
.LVL189:
	faddl	-24(%ebp)	# sl
	fld	%st(2)	#
.LVL190:
	fmull	-40(%ebp)	# cl
	fsubrp	%st, %st(1)	#,
	fdivp	%st, %st(1)	#,
.LVL191:
	fld	%st(1)	#
.LVL192:
	fadd	%st(1), %st	#,
.LVL193:
	fsubr	%st, %st(2)	#,
.LVL194:
	fxch	%st(1)	#
.LVL195:
	faddp	%st, %st(2)	#,
	fxch	%st(1)	#
.LBE64:
	.loc 1 584 0
	fmull	.LC33@GOTOFF(%ebx)	#
	fadd	%st(1), %st	#,
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jp	.L67	#,
	je	.L51	#,
	fstp	%st(0)	#
	jmp	.L65	#
.L67:
	fstp	%st(0)	#
.L65:
	.loc 1 587 0
	fldl	-72(%ebp)	# %sfp
	fstpl	(%esp)	#
	call	scs_tan_rn@PLT	#
.LVL196:
.L51:
	.loc 1 590 0
	addl	$80, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%esi	#
	.cfi_restore 6
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	tan_rn, .-tan_rn
	.section	.rodata.str1.1
.LC35:
	.string	"JUST BEFORE RANGEREDUCE!"
.LC36:
	.string	"yh=%.20e, yl=%.20e\n"
.LC37:
	.string	"JUST AFTER RANGEREDUCE!"
	.text
.globl cos_rn
	.type	cos_rn, @function
cos_rn:
.LFB14:
	.loc 1 360 0
	.cfi_startproc
.LVL197:
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
	fstl	-64(%ebp)	# %sfp
	.loc 1 371 0
	fstpl	-72(%ebp)	# %sfp
	.loc 1 372 0
	movl	-68(%ebp), %esi	# %sfp, absxhi
	andl	$2147483647, %esi	#, absxhi
.LVL198:
	.loc 1 374 0
	cmpl	$1067450367, %esi	#, absxhi
	jg	.L69	#,
	.loc 1 375 0
	cmpl	$1044381695, %esi	#, absxhi
	jg	.L70	#,
	fld1
	jmp	.L71	#
.L70:
	.loc 1 378 0
	fldl	-64(%ebp)	# %sfp
	fmul	%st(0), %st	#,
	.loc 1 379 0
	fld	%st(0)	#
	fmull	c8@GOTOFF(%ebx)	# c8.d
	faddl	c6@GOTOFF(%ebx)	# c6.d
	fmul	%st(1), %st	#,
	faddl	c4@GOTOFF(%ebx)	# c4.d
	fmul	%st(1), %st	#,
	faddl	c2@GOTOFF(%ebx)	# c2.d
	fmul	%st(1), %st	#,
.LVL199:
.LBB69:
	.loc 1 380 0
	fld1
.LVL200:
	fld	%st(1)	#
	fadd	%st(1), %st	#,
.LVL201:
	fsub	%st, %st(1)	#,
	fxch	%st(2)	#
.LVL202:
	fsubp	%st, %st(1)	#,
	fstl	-40(%ebp)	# cl
.LVL203:
.LBE69:
	.loc 1 381 0
	fmull	.LC34@GOTOFF(%ebx)	#
	fadd	%st(1), %st	#,
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jp	.L80	#,
	je	.L82	#,
.L80:
.LBB70:
	.loc 1 380 0
	fstpl	-32(%ebp)	# ch
.LVL204:
.LBE70:
	.loc 1 378 0
	fstpl	-48(%ebp)	# yh
.LVL205:
	.loc 1 384 0
	fldl	-64(%ebp)	# %sfp
	fstpl	(%esp)	#
	call	scs_cos_rn@PLT	#
	jmp	.L71	#
.LVL206:
.L69:
	.loc 1 389 0
	leal	.LC35@GOTOFF(%ebx), %eax	#, tmp92
	movl	%eax, (%esp)	# tmp92,
	call	puts@PLT	#
	.loc 1 390 0
	leal	.LC4@GOTOFF(%ebx), %edi	#, D.2383
	movl	%esi, 12(%esp)	# absxhi,
	fldl	-64(%ebp)	# %sfp
	fstpl	4(%esp)	#
	movl	%edi, (%esp)	# D.2383,
	call	printf@PLT	#
	.loc 1 392 0
	leal	.LC36@GOTOFF(%ebx), %eax	#,
	movl	%eax, -76(%ebp)	#, %sfp
.LVL207:
	fldl	-56(%ebp)	# yl
	fstpl	12(%esp)	#
.LVL208:
	fldl	-48(%ebp)	# yh
	fstpl	4(%esp)	#
	movl	%eax, (%esp)	#,
	call	printf@PLT	#
	.loc 1 393 0
	movl	$10, (%esp)	#,
	call	putchar@PLT	#
	.loc 1 395 0
	leal	-56(%ebp), %edx	#, tmp95
	leal	-48(%ebp), %eax	#, tmp96
	movl	scs_cos_rn@GOT(%ebx), %ecx	#, tmp98
	movl	%ecx, 12(%esp)	# tmp98,
	movl	%esi, 8(%esp)	# absxhi,
	fldl	-64(%ebp)	# %sfp
	fstpl	(%esp)	#
	call	trig_range_reduction	#
	movl	%eax, -72(%ebp)	#, %sfp
.LVL209:
	.loc 1 397 0
	leal	.LC37@GOTOFF(%ebx), %eax	#, tmp99
.LVL210:
	movl	%eax, (%esp)	# tmp99,
	call	puts@PLT	#
	.loc 1 398 0
	movl	%esi, 12(%esp)	# absxhi,
	fldl	-64(%ebp)	# %sfp
	fstpl	4(%esp)	#
	movl	%edi, (%esp)	# D.2383,
	call	printf@PLT	#
	.loc 1 399 0
	fldl	-56(%ebp)	# yl
	fstpl	12(%esp)	#
	fldl	-48(%ebp)	# yh
	fstpl	4(%esp)	#
	movl	-76(%ebp), %eax	# %sfp,
	movl	%eax, (%esp)	#,
	call	printf@PLT	#
	.loc 1 400 0
	movl	$10, (%esp)	#,
	call	putchar@PLT	#
	.loc 1 405 0
	movl	-72(%ebp), %esi	# %sfp, tmp102
.LVL211:
	sarl	$7, %esi	#, tmp102
	andl	$3, %esi	#, quadrant
.LVL212:
	.loc 1 406 0
	movl	-72(%ebp), %eax	# %sfp, D.2388
	andl	$127, %eax	#, D.2388
	sall	$2, %eax	#, k.290
.LVL213:
	.loc 1 408 0
	cmpl	$256, %eax	#, k.290
	jg	.L72	#,
	.loc 1 409 0
	fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 410 0
	fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	sal@GOTOFF(%ebx)	# sal
	.loc 1 411 0
	fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 412 0
	fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	cal@GOTOFF(%ebx)	# cal
	jmp	.L73	#
.L72:
.LBB71:
	.loc 1 414 0
	movl	$512, %edx	#, tmp118
	subl	%eax, %edx	# k.290, tmp118
.LVL214:
	.loc 1 415 0
	fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 416 0
	fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	cal@GOTOFF(%ebx)	# cal
	.loc 1 417 0
	fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 418 0
	fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	sal@GOTOFF(%ebx)	# sal
.LVL215:
.L73:
.LBE71:
	.loc 1 430 0
	testl	$1, %esi	#, quadrant
	je	.L74	#,
	.loc 1 431 0
	leal	-40(%ebp), %edx	#, tmp135
	leal	-32(%ebp), %eax	#, tmp136
.LVL216:
	fldl	-56(%ebp)	# yl
	fstpl	8(%esp)	#
	fldl	-48(%ebp)	# yh
	fstpl	(%esp)	#
	call	do_sin	#
	jmp	.L75	#
.LVL217:
.L74:
	.loc 1 433 0
	leal	-40(%ebp), %edx	#, tmp139
	leal	-32(%ebp), %eax	#, tmp140
.LVL218:
	fldl	-56(%ebp)	# yl
	fstpl	8(%esp)	#
	fldl	-48(%ebp)	# yh
	fstpl	(%esp)	#
	call	do_cos	#
.L75:
	.loc 1 436 0
	subl	$1, %esi	#, tmp143
.LVL219:
	cmpl	$1, %esi	#, tmp143
	ja	.L76	#,
.LVL220:
	.loc 1 437 0
	fldl	-32(%ebp)	# ch
	fchs
	fstpl	-32(%ebp)	# ch
.LVL221:
	.loc 1 438 0
	fldl	-40(%ebp)	# cl
	fchs
	fstpl	-40(%ebp)	# cl
.L76:
	.loc 1 441 0
	fldl	-32(%ebp)	# ch
	fldl	.LC33@GOTOFF(%ebx)	#
	fmull	-40(%ebp)	# cl
	fadd	%st(1), %st	#,
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jp	.L83	#,
	je	.L71	#,
	fstp	%st(0)	#
	jmp	.L81	#
.L83:
	fstp	%st(0)	#
.L81:
	.loc 1 444 0
	fldl	-64(%ebp)	# %sfp
	fstpl	(%esp)	#
	call	scs_cos_rn@PLT	#
	jmp	.L71	#
.LVL222:
.L82:
	fstp	%st(1)	#
.LVL223:
.L71:
	.loc 1 447 0
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
.LFE14:
	.size	cos_rn, .-cos_rn
.globl cos_rz
	.type	cos_rz, @function
cos_rz:
.LFB17:
	.loc 1 461 0
	.cfi_startproc
.LVL224:
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
	.loc 1 462 0
	fldl	8(%ebp)	# x
	fstpl	(%esp)	#
	call	scs_cos_rz@PLT	#
	.loc 1 463 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	cos_rz, .-cos_rz
.globl cos_ru
	.type	cos_ru, @function
cos_ru:
.LFB16:
	.loc 1 456 0
	.cfi_startproc
.LVL225:
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
	.loc 1 457 0
	fldl	8(%ebp)	# x
	fstpl	(%esp)	#
	call	scs_cos_ru@PLT	#
	.loc 1 458 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	cos_ru, .-cos_ru
.globl cos_rd
	.type	cos_rd, @function
cos_rd:
.LFB15:
	.loc 1 451 0
	.cfi_startproc
.LVL226:
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
	.loc 1 452 0
	fldl	8(%ebp)	# x
	fstpl	(%esp)	#
	call	scs_cos_rd@PLT	#
	.loc 1 453 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	cos_rd, .-cos_rd
.globl sin_rz
	.type	sin_rz, @function
sin_rz:
.LFB13:
	.loc 1 351 0
	.cfi_startproc
.LVL227:
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
	.loc 1 352 0
	fldl	8(%ebp)	# x
	fstpl	(%esp)	#
	call	scs_sin_rz@PLT	#
	.loc 1 353 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	sin_rz, .-sin_rz
.globl sin_ru
	.type	sin_ru, @function
sin_ru:
.LFB12:
	.loc 1 346 0
	.cfi_startproc
.LVL228:
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
	.loc 1 347 0
	fldl	8(%ebp)	# x
	fstpl	(%esp)	#
	call	scs_sin_ru@PLT	#
	.loc 1 348 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	sin_ru, .-sin_ru
.globl sin_rd
	.type	sin_rd, @function
sin_rd:
.LFB11:
	.loc 1 341 0
	.cfi_startproc
.LVL229:
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
	.loc 1 342 0
	fldl	8(%ebp)	# x
	fstpl	(%esp)	#
	call	scs_sin_rd@PLT	#
	.loc 1 343 0
	addl	$20, %esp	#,
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	sin_rd, .-sin_rd
.globl sin_rn
	.type	sin_rn, @function
sin_rn:
.LFB10:
	.loc 1 258 0
	.cfi_startproc
.LVL230:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%esi	#
	pushl	%ebx	#
	subl	$64, %esp	#,
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
	fstl	-48(%ebp)	# %sfp
	.loc 1 269 0
	fstl	-56(%ebp)	# %sfp
	.loc 1 270 0
	movl	-52(%ebp), %ecx	# %sfp, absxhi
	andl	$2147483647, %ecx	#, absxhi
.LVL231:
	.loc 1 272 0
	cmpl	$1068498943, %ecx	#, absxhi
	jg	.L97	#,
	.loc 1 273 0
	cmpl	$1045430271, %ecx	#, absxhi
	jle	.L99	#,
	.loc 1 276 0
	fld	%st(0)	#
	fmul	%st(1), %st	#,
.LVL232:
	.loc 1 278 0
	fld	%st(0)	#
	fmull	s9@GOTOFF(%ebx)	# s9.d
	faddl	s7@GOTOFF(%ebx)	# s7.d
	fmul	%st(1), %st	#,
	faddl	s5@GOTOFF(%ebx)	# s5.d
	fmul	%st(1), %st	#,
	faddl	s3@GOTOFF(%ebx)	# s3.d
	fmul	%st(1), %st	#,
.LBB74:
	fmul	%st(2), %st	#,
.LVL233:
	fadd	%st, %st(2)	#,
.LVL234:
	fldl	-48(%ebp)	# %sfp
.LVL235:
	fsubr	%st(3), %st	#,
	fsubrp	%st, %st(1)	#,
.LBE74:
	.loc 1 279 0
	fld	%st(0)	#
	fmull	.LC38@GOTOFF(%ebx)	#
	fadd	%st(3), %st	#,
	fxch	%st(3)	#
	fucomi	%st(3), %st	#,
	fstp	%st(3)	#
	jp	.L108	#,
	je	.L110	#,
.L108:
.LBB75:
	.loc 1 278 0
	fstpl	-24(%ebp)	# sl
.LVL236:
	fxch	%st(1)	#
	fstpl	-16(%ebp)	# sh
.LVL237:
.LBE75:
	.loc 1 276 0
	fstpl	-32(%ebp)	# yh
.LVL238:
	.loc 1 282 0
	fldl	-48(%ebp)	# %sfp
	fstpl	(%esp)	#
	call	scs_sin_rn@PLT	#
.LVL239:
	jmp	.L99	#
.LVL240:
.L97:
	fstp	%st(0)	#
	.loc 1 287 0
	leal	-40(%ebp), %edx	#, tmp86
	leal	-32(%ebp), %eax	#, tmp87
	movl	scs_sin_rn@GOT(%ebx), %esi	#, tmp89
	movl	%esi, 12(%esp)	# tmp89,
	movl	%ecx, 8(%esp)	# absxhi,
	fldl	-48(%ebp)	# %sfp
	fstpl	(%esp)	#
	call	trig_range_reduction	#
.LVL241:
	.loc 1 292 0
	movl	%eax, %esi	# k, tmp90
	sarl	$7, %esi	#, tmp90
	andl	$3, %esi	#, quadrant
.LVL242:
	.loc 1 293 0
	andl	$127, %eax	#, D.2290
.LVL243:
	sall	$2, %eax	#, k.374
.LVL244:
	.loc 1 295 0
	cmpl	$256, %eax	#, k.374
	jg	.L100	#,
	.loc 1 296 0
	fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 297 0
	fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	sal@GOTOFF(%ebx)	# sal
	.loc 1 298 0
	fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 299 0
	fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
	fstpl	cal@GOTOFF(%ebx)	# cal
	jmp	.L101	#
.L100:
.LBB76:
	.loc 1 301 0
	movl	$512, %edx	#, tmp106
	subl	%eax, %edx	# k.374, tmp106
.LVL245:
	.loc 1 302 0
	fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	cah@GOTOFF(%ebx)	# cah
	.loc 1 303 0
	fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	cal@GOTOFF(%ebx)	# cal
	.loc 1 304 0
	fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	sah@GOTOFF(%ebx)	# sah
	.loc 1 305 0
	fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
	fstpl	sal@GOTOFF(%ebx)	# sal
.LVL246:
.L101:
.LBE76:
	.loc 1 321 0
	testl	$1, %esi	#, quadrant
	je	.L102	#,
	.loc 1 322 0
	leal	-24(%ebp), %edx	#, tmp123
	leal	-16(%ebp), %eax	#, tmp124
.LVL247:
	fldl	-40(%ebp)	# yl
	fstpl	8(%esp)	#
.LVL248:
	fldl	-32(%ebp)	# yh
	fstpl	(%esp)	#
	call	do_cos	#
	jmp	.L103	#
.LVL249:
.L102:
	.loc 1 324 0
	leal	-24(%ebp), %edx	#, tmp127
	leal	-16(%ebp), %eax	#, tmp128
.LVL250:
	fldl	-40(%ebp)	# yl
	fstpl	8(%esp)	#
.LVL251:
	fldl	-32(%ebp)	# yh
	fstpl	(%esp)	#
	call	do_sin	#
.L103:
	.loc 1 327 0
	cmpl	$1, %esi	#, quadrant
	jle	.L104	#,
.LVL252:
	.loc 1 328 0
	fldl	-16(%ebp)	# sh
	fchs
	fstpl	-16(%ebp)	# sh
.LVL253:
	.loc 1 329 0
	fldl	-24(%ebp)	# sl
	fchs
	fstpl	-24(%ebp)	# sl
.L104:
	.loc 1 332 0
	fldl	-16(%ebp)	# sh
	fldl	.LC33@GOTOFF(%ebx)	#
	fmull	-24(%ebp)	# sl
	fadd	%st(1), %st	#,
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jp	.L111	#,
	je	.L99	#,
	fstp	%st(0)	#
	jmp	.L109	#
.L111:
	fstp	%st(0)	#
.L109:
	.loc 1 335 0
	fldl	-48(%ebp)	# %sfp
	fstpl	(%esp)	#
	call	scs_sin_rn@PLT	#
	jmp	.L99	#
.LVL254:
.L110:
	fstp	%st(0)	#
	fstp	%st(0)	#
.LVL255:
.L99:
	.loc 1 338 0
	addl	$64, %esp	#,
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
	.size	sin_rn, .-sin_rn
	.section	.rodata
	.align 32
	.type	sincosTable, @object
	.size	sincosTable, 2080
sincosTable:
# i:
	.long	0
	.long	0
# i:
	.long	0
	.long	0
# i:
	.long	0
	.long	1072693248
# i:
	.long	0
	.long	0
# i:
	.long	-52508796
	.long	1065951697
# i:
	.long	-1098682979
	.long	1009354638
# i:
	.long	379294427
	.long	1072693090
# i:
	.long	-937444083
	.long	1015405987
# i:
	.long	-140286338
	.long	1067000149
# i:
	.long	152699184
	.long	-1141170845
# i:
	.long	1619315981
	.long	1072692616
# i:
	.long	1163322571
	.long	-1132382899
# i:
	.long	1972655565
	.long	1067636837
# i:
	.long	1537817280
	.long	1009157878
# i:
	.long	-268503203
	.long	1072691826
# i:
	.long	-843949738
	.long	-1131891507
# i:
	.long	-250750956
	.long	1068048229
# i:
	.long	223779472
	.long	-1138158915
# i:
	.long	-478581378
	.long	1072690721
# i:
	.long	774154773
	.long	-1133750340
# i:
	.long	2046304480
	.long	1068459374
# i:
	.long	-476921858
	.long	-1138564629
# i:
	.long	1703834029
	.long	1072689301
# i:
	.long	-511030370
	.long	1015028364
# i:
	.long	-1831986698
	.long	1068684576
# i:
	.long	-1463850196
	.long	-1136025464
# i:
	.long	-1392408518
	.long	1072687565
# i:
	.long	-792297931
	.long	1013260780
# i:
	.long	177906713
	.long	1068889808
# i:
	.long	-801149798
	.long	-1135656926
# i:
	.long	-54699255
	.long	1072685514
# i:
	.long	539658318
	.long	1013588963
# i:
	.long	-1138117588
	.long	1069094822
# i:
	.long	-764488056
	.long	-1136777448
# i:
	.long	-1546574554
	.long	1072683149
# i:
	.long	931664327
	.long	-1131905546
# i:
	.long	-945896747
	.long	1069299589
# i:
	.long	-248251615
	.long	-1138429027
# i:
	.long	-43145605
	.long	1072680469
# i:
	.long	-2096280567
	.long	-1133126289
# i:
	.long	1453945614
	.long	1069504078
# i:
	.long	1922753901
	.long	1011492612
# i:
	.long	1893834707
	.long	1072677476
# i:
	.long	1760341230
	.long	1015147654
# i:
	.long	-824511113
	.long	1069627888
# i:
	.long	1293630714
	.long	-1134222525
# i:
	.long	1905645377
	.long	1072674169
# i:
	.long	1939328008
	.long	1014087596
# i:
	.long	1854824762
	.long	1069729808
# i:
	.long	-1466297888
	.long	1011953664
# i:
	.long	2131272983
	.long	1072670549
# i:
	.long	-904702177
	.long	-1131962200
# i:
	.long	-1322697126
	.long	1069831542
# i:
	.long	1092220849
	.long	-1135442526
# i:
	.long	617154971
	.long	1072666617
# i:
	.long	-291137989
	.long	-1131533600
# i:
	.long	1149976518
	.long	1069933076
# i:
	.long	2006833862
	.long	1013264895
# i:
	.long	-93238359
	.long	1072662372
# i:
	.long	2005925046
	.long	1014674006
# i:
	.long	-565133519
	.long	1070034393
# i:
	.long	-330294481
	.long	1013044718
# i:
	.long	-1549721481
	.long	1072657817
# i:
	.long	-683468452
	.long	1015566129
# i:
	.long	1013556747
	.long	1070135480
# i:
	.long	-1174434430
	.long	-1134400231
# i:
	.long	-805872464
	.long	1072652951
# i:
	.long	708190163
	.long	1014325783
# i:
	.long	632292433
	.long	1070236320
# i:
	.long	-3111763
	.long	-1134003963
# i:
	.long	990588717
	.long	1072647776
# i:
	.long	-426398715
	.long	-1132925439
# i:
	.long	1786662755
	.long	1070336898
# i:
	.long	-1638786763
	.long	-1139084989
# i:
	.long	-1402673783
	.long	1072642291
# i:
	.long	-1256230170
	.long	-1132627025
# i:
	.long	-448445679
	.long	1070437199
# i:
	.long	661718957
	.long	1013406610
# i:
	.long	-143246630
	.long	1072636498
# i:
	.long	479040683
	.long	-1132327752
# i:
	.long	2065784603
	.long	1070537209
# i:
	.long	-249716028
	.long	-1134285330
# i:
	.long	-74305321
	.long	1072630398
# i:
	.long	-596948599
	.long	1014312058
# i:
	.long	238550446
	.long	1070616504
# i:
	.long	-1222278196
	.long	-1140583731
# i:
	.long	-1545309246
	.long	1072623992
# i:
	.long	1744729935
	.long	1015427338
# i:
	.long	1655830135
	.long	1070666194
# i:
	.long	179808922
	.long	1014506690
# i:
	.long	-412595869
	.long	1072617280
# i:
	.long	-1846174526
	.long	1014923975
# i:
	.long	1062001470
	.long	1070715716
# i:
	.long	471028126
	.long	-1134092076
# i:
	.long	-924906636
	.long	1072610264
# i:
	.long	1633579639
	.long	1014787212
# i:
	.long	785751814
	.long	1070765062
# i:
	.long	-1564188371
	.long	-1133129075
# i:
	.long	1455828442
	.long	1072602945
# i:
	.long	-488376290
	.long	1015505073
# i:
	.long	-1025408686
	.long	1070814224
# i:
	.long	798416994
	.long	-1133262080
# i:
	.long	-1421029107
	.long	1072595323
# i:
	.long	1751866890
	.long	-1132655874
# i:
	.long	-1810405887
	.long	1070863196
# i:
	.long	1257907480
	.long	1014024572
# i:
	.long	-330768110
	.long	1072587400
# i:
	.long	-226199724
	.long	-1134466218
# i:
	.long	1115219818
	.long	1070911970
# i:
	.long	410593368
	.long	1013072242
# i:
	.long	1261158782
	.long	1072579178
# i:
	.long	-1988867966
	.long	1015711544
# i:
	.long	1974149085
	.long	1070960538
# i:
	.long	-712182240
	.long	-1138819648
# i:
	.long	83265253
	.long	1072570657
# i:
	.long	1813144871
	.long	-1132456761
# i:
	.long	-583063610
	.long	1071008893
# i:
	.long	1248215329
	.long	1011944747
# i:
	.long	1647164971
	.long	1072561838
# i:
	.long	-2008918681
	.long	-1132129046
# i:
	.long	821708191
	.long	1071057029
# i:
	.long	-528069539
	.long	-1133229287
# i:
	.long	-1228094916
	.long	1072552723
# i:
	.long	-971997773
	.long	1015561271
# i:
	.long	824036583
	.long	1071104937
# i:
	.long	519301337
	.long	1008313330
# i:
	.long	1647878299
	.long	1072543314
# i:
	.long	-353987488
	.long	-1132798233
# i:
	.long	-1498502813
	.long	1071152610
# i:
	.long	-740973040
	.long	-1134088979
# i:
	.long	-818770618
	.long	1072533611
# i:
	.long	270736066
	.long	1014257638
# i:
	.long	1673302999
	.long	1071200042
# i:
	.long	-1638214223
	.long	1013351473
# i:
	.long	1942611595
	.long	1072523617
# i:
	.long	-969327275
	.long	-1132557215
# i:
	.long	1135144330
	.long	1071247225
# i:
	.long	688642987
	.long	1013373569
# i:
	.long	-783431366
	.long	1072513332
# i:
	.long	-1781376270
	.long	-1132138670
# i:
	.long	728580042
	.long	1071294152
# i:
	.long	1860553975
	.long	-1132634352
# i:
	.long	1950234076
	.long	1072502759
# i:
	.long	893391626
	.long	-1135541798
# i:
	.long	165764288
	.long	1071340816
# i:
	.long	-879279741
	.long	1013298018
# i:
	.long	-197343373
	.long	1072491898
# i:
	.long	-1247061842
	.long	-1134658709
# i:
	.long	-671015193
	.long	1071387209
# i:
	.long	-1152298490
	.long	-1132981334
# i:
	.long	-201524132
	.long	1072480752
# i:
	.long	996734635
	.long	1014912865
# i:
	.long	-1724791714
	.long	1071433326
# i:
	.long	1505984399
	.long	1012303118
# i:
	.long	557060597
	.long	1072469323
# i:
	.long	513041923
	.long	-1135412362
# i:
	.long	1535566729
	.long	1071479159
# i:
	.long	-2017720971
	.long	1014321388
# i:
	.long	881357723
	.long	1072457611
# i:
	.long	-943325349
	.long	1013810890
# i:
	.long	939980347
	.long	1071524701
# i:
	.long	490498113
	.long	1012796809
# i:
	.long	-243221071
	.long	1072445618
# i:
	.long	1971096839
	.long	-1133059919
# i:
	.long	1391425750
	.long	1071569945
# i:
	.long	-1019289882
	.long	-1132605193
# i:
	.long	645027145
	.long	1072433348
# i:
	.long	-670160570
	.long	1012602239
# i:
	.long	-604464454
	.long	1071614884
# i:
	.long	-1044941128
	.long	-1137513441
# i:
	.long	-1401973462
	.long	1072420800
# i:
	.long	850161674
	.long	-1131928153
# i:
	.long	-2025046345
	.long	1071652092
# i:
	.long	-406702452
	.long	-1133295051
# i:
	.long	1731563730
	.long	1072407978
# i:
	.long	923227062
	.long	1015540302
# i:
	.long	-1725759506
	.long	1071674247
# i:
	.long	1128743020
	.long	-1131783679
# i:
	.long	1159294526
	.long	1072394883
# i:
	.long	844000609
	.long	-1131690337
# i:
	.long	1297975695
	.long	1071696240
# i:
	.long	-563156558
	.long	-1131883561
# i:
	.long	1056266002
	.long	1072381517
# i:
	.long	-1089362797
	.long	-1131497800
# i:
	.long	1411074851
	.long	1071718067
# i:
	.long	1772872945
	.long	-1131482565
# i:
	.long	1477771776
	.long	1072367882
# i:
	.long	806354126
	.long	-1131862310
# i:
	.long	1675549513
	.long	1071739725
# i:
	.long	-859503243
	.long	-1131942158
# i:
	.long	-1641949935
	.long	1072353980
# i:
	.long	129934664
	.long	-1132167234
# i:
	.long	967731400
	.long	1071761211
# i:
	.long	645883392
	.long	1015752157
# i:
	.long	688824739
	.long	1072339814
# i:
	.long	-390669624
	.long	1010431536
# i:
	.long	-1724650663
	.long	1071782521
# i:
	.long	2009501618
	.long	-1132222543
# i:
	.long	453180130
	.long	1072325385
# i:
	.long	1378127120
	.long	-1132556015
# i:
	.long	1289556703
	.long	1071803653
# i:
	.long	1056143116
	.long	-1132078476
# i:
	.long	-1606015102
	.long	1072310695
# i:
	.long	22933877
	.long	-1133434693
# i:
	.long	637203434
	.long	1071824603
# i:
	.long	-946409914
	.long	-1135523455
# i:
	.long	-282480748
	.long	1072295747
# i:
	.long	-1241233982
	.long	1014701564
# i:
	.long	-52334539
	.long	1071845367
# i:
	.long	653740655
	.long	-1133577018
# i:
	.long	1207142209
	.long	1072280544
# i:
	.long	-2039405452
	.long	-1132261662
# i:
	.long	-1324983821
	.long	1071865944
# i:
	.long	-1554491417
	.long	-1132331853
# i:
	.long	-188229822
	.long	1072265086
# i:
	.long	-1572837794
	.long	-1132374919
# i:
	.long	689983673
	.long	1071886330
# i:
	.long	-476755612
	.long	1014906405
# i:
	.long	1234330619
	.long	1072249378
# i:
	.long	-1457463541
	.long	1015272473
# i:
	.long	1397053140
	.long	1071906521
# i:
	.long	1619808353
	.long	1015245078
# i:
	.long	-1544580083
	.long	1072233420
# i:
	.long	-1668877583
	.long	-1134108759
# i:
	.long	621354454
	.long	1071926515
# i:
	.long	754828979
	.long	1013450602
# i:
	.long	1796544321
	.long	1072217216
# i:
	.long	785462125
	.long	-1132280351
# i:
	.long	-1684338375
	.long	1071946308
# i:
	.long	1836161940
	.long	-1132298527
# i:
	.long	263859903
	.long	1072200768
# i:
	.long	205481165
	.long	-1132275012
# i:
	.long	-1142692375
	.long	1071965898
# i:
	.long	-305220825
	.long	1013170835
# i:
	.long	201299822
	.long	1072184078
# i:
	.long	-118868875
	.long	-1133054944
# i:
	.long	-1834789482
	.long	1071985282
# i:
	.long	-1982201257
	.long	-1132850453
# i:
	.long	-480831631
	.long	1072167148
# i:
	.long	-829175529
	.long	-1131820840
# i:
	.long	881650848
	.long	1072004457
# i:
	.long	-1725170766
	.long	-1131981024
# i:
	.long	577417135
	.long	1072149983
# i:
	.long	-1394668841
	.long	-1133447881
# i:
	.long	-1100676724
	.long	1072023419
# i:
	.long	-1676950742
	.long	1015048682
# i:
	.long	1594061409
	.long	1072132583
# i:
	.long	-1920727409
	.long	1014353870
# i:
	.long	1427975391
	.long	1072042167
# i:
	.long	1392454199
	.long	-1133358669
# i:
	.long	938475414
	.long	1072114952
# i:
	.long	253595996
	.long	1015076079
# i:
	.long	636516413
	.long	1072060697
# i:
	.long	-67772893
	.long	1015823716
# i:
	.long	1424664751
	.long	1072097092
# i:
	.long	-934403474
	.long	-1131561981
# i:
	.long	1719614413
	.long	1072079006
# i:
	.long	330458198
	.long	-1131684556
# i:
	.long	1719614413
	.long	1072079006
# i:
	.long	330458198
	.long	-1131684556
	.align 4
	.type	s3, @object
	.size	s3, 8
s3:
# i:
	.long	1431655765
	.long	-1077586603
	.align 4
	.type	s5, @object
	.size	s5, 8
s5:
# i:
	.long	286331153
	.long	1065423121
	.align 4
	.type	s7, @object
	.size	s7, 8
s7:
# i:
	.long	436314138
	.long	-1087766112
	.align 4
	.type	c2, @object
	.size	c2, 8
c2:
# i:
	.long	0
	.long	-1075838976
	.align 4
	.type	c4, @object
	.size	c4, 8
c4:
# i:
	.long	1431655765
	.long	1067799893
	.align 4
	.type	c6, @object
	.size	c6, 8
c6:
# i:
	.long	381774871
	.long	-1084833428
	.align 4
	.type	c8, @object
	.size	c8, 8
c8:
# i:
	.long	436314138
	.long	1056571808
	.align 4
	.type	s9, @object
	.size	s9, 8
s9:
# i:
	.long	-1521039564
	.long	1053236707
	.local	sah
	.comm	sah,8,8
	.local	sal
	.comm	sal,8,8
	.local	cah
	.comm	cah,8,8
	.local	cal
	.comm	cal,8,8
	.comm	crlibm_second_step_taken,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	33554432
	.long	1101004800
	.align 8
.LC7:
	.long	1841940611
	.long	1079271216
	.align 8
.LC9:
	.long	1413754136
	.long	-1081531909
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC11:
	.long	1505755136
	.section	.rodata.cst8
	.align 8
.LC16:
	.long	1476395008
	.long	-1081531909
	.section	.rodata.cst4
	.align 4
.LC17:
	.long	787412154
	.section	.rodata.cst8
	.align 8
.LC20:
	.long	856972295
	.long	-1138645466
	.align 8
.LC21:
	.long	805306368
	.long	-1138645466
	.align 8
.LC22:
	.long	939524096
	.long	-1166499104
	.align 8
.LC23:
	.long	3085799356
	.long	950999414
	.align 8
.LC24:
	.long	1413480448
	.long	-1081531909
	.align 8
.LC25:
	.long	442655537
	.long	-1117735839
	.section	.rodata.cst4
	.align 4
.LC26:
	.long	3158904792
	.align 4
.LC27:
	.long	2972223584
	.section	.rodata.cst8
	.align 8
.LC28:
	.long	993631604
	.long	1020739019
	.align 8
.LC29:
	.long	993631604
	.long	-1126744629
	.section	.rodata.cst4
	.align 4
.LC30:
	.long	1124073472
	.align 4
.LC31:
	.long	1006632960
	.section	.rodata.cst8
	.align 8
.LC33:
	.long	1848553924
	.long	1072693667
	.align 8
.LC34:
	.long	3910962860
	.long	1072696332
	.align 8
.LC38:
	.long	620399436
	.long	1072699511
	.section	.text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
.globl __i686.get_pc_thunk.cx
	.hidden	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
.LFB22:
	.cfi_startproc
	movl	(%esp), %ecx	#,
	ret
	.cfi_endproc
.LFE22:
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
.LFB23:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE23:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL25-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL26-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -16
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL23-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL5-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL9-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL11-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL16-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL19-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL20-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL17-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL22-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL12-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x5
	.byte	0x3
	.long	cah
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL12-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL23-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x1
	.byte	0x5f
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL23-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL30-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -16
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL36-.Ltext0
	.long	.LVL37-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL38-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL57-.Ltext0
	.long	.LVL58-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL60-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL53-.Ltext0
	.long	.LVL54-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL38-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x3ff00000
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL38-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL41-.Ltext0
	.long	.LVL65-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL43-.Ltext0
	.long	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL46-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL50-.Ltext0
	.long	.LVL65-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL44-.Ltext0
	.long	.LVL45-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL47-.Ltext0
	.long	.LVL48-.Ltext0
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
	.long	.LVL65-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL41-.Ltext0
	.long	.LVL42-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL42-.Ltext0
	.long	.LVL43-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL41-.Ltext0
	.long	.LVL46-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL55-.Ltext0
	.long	.LVL56-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL56-.Ltext0
	.long	.LVL65-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -16
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL63-.Ltext0
	.long	.LVL65-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL60-.Ltext0
	.long	.LVL64-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LVL60-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LVL69-.Ltext0
	.long	.LVL70-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL70-.Ltext0
	.long	.LVL149-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LVL69-.Ltext0
	.long	.LVL71-1-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL71-1-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -452
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LVL72-.Ltext0
	.long	.LVL113-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -464
	.long	.LVL117-.Ltext0
	.long	.LVL118-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL118-1-.Ltext0
	.long	.LVL119-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -448
	.long	.LVL119-.Ltext0
	.long	.LVL120-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL120-1-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -448
	.long	.LVL146-.Ltext0
	.long	.LVL147-1-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL147-1-.Ltext0
	.long	.LVL148-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -448
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LVL73-.Ltext0
	.long	.LVL74-1-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL74-1-.Ltext0
	.long	.LVL113-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -464
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LVL75-.Ltext0
	.long	.LVL82-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL82-.Ltext0
	.long	.LVL83-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL83-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -488
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LVL75-.Ltext0
	.long	.LVL84-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x0
	.long	.LVL84-.Ltext0
	.long	.LVL85-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL85-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -480
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LVL87-.Ltext0
	.long	.LVL88-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL88-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -504
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LVL90-.Ltext0
	.long	.LVL91-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LVL76-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LVL77-.Ltext0
	.long	.LVL78-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LVL79-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	.LVL80-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -472
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LVL81-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -464
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LVL77-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x57686c83
	.long	0xc13921fb
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LVL79-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x58000000
	.long	0xbf8921fb
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LVL81-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x40000000
	.long	0x3dddde97
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LVL76-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -464
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LVL76-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x54442d18
	.long	0xbf8921fb
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LVL86-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LVL86-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -472
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LVL86-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -496
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LVL86-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x354920cd
	.long	0xbdd1a626
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LVL86-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x30000000
	.long	0xbc21a626
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LVL86-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x38000000
	.long	0xba78a2e0
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LVL86-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -464
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LVL86-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x33145c07
	.long	0xbc21a626
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LVL89-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -480
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LVL89-.Ltext0
	.long	.LVL96-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -504
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LVL92-.Ltext0
	.long	.LVL93-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LVL94-.Ltext0
	.long	.LVL95-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LVL102-.Ltext0
	.long	.LVL103-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LVL97-.Ltext0
	.long	.LVL98-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LVL99-.Ltext0
	.long	.LVL100-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LVL109-.Ltext0
	.long	.LVL110-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	.LVL111-.Ltext0
	.long	.LVL112-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LVL104-.Ltext0
	.long	.LVL105-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LVL106-.Ltext0
	.long	.LVL107-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LVL114-.Ltext0
	.long	.LVL115-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL116-.Ltext0
	.long	.LVL118-1-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL121-.Ltext0
	.long	.LVL144-.Ltext0
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LVL129-.Ltext0
	.long	.LVL130-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LVL132-.Ltext0
	.long	.LVL133-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LVL134-.Ltext0
	.long	.LVL135-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LVL136-.Ltext0
	.long	.LVL137-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LVL122-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LVL123-.Ltext0
	.long	.LVL124-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LVL125-.Ltext0
	.long	.LVL126-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LVL127-.Ltext0
	.long	.LVL128-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LVL123-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x57686c83
	.long	0xc13921fb
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LVL125-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x58000000
	.long	0xbf8921fb
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LVL127-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x40000000
	.long	0x3dddde97
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LVL122-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x54442d18
	.long	0xbf8921fb
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LVL132-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LVL132-.Ltext0
	.long	.LVL136-.Ltext0
	.value	0x1
	.byte	0x5e
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LVL132-.Ltext0
	.long	.LVL141-.Ltext0
	.value	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LVL132-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x354920cd
	.long	0xbdd1a626
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LVL132-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x30000000
	.long	0xbc21a626
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LVL132-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x38000000
	.long	0xba78a2e0
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LVL132-.Ltext0
	.long	.LVL145-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x33145c07
	.long	0xbc21a626
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LVL134-.Ltext0
	.long	.LVL139-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LVL134-.Ltext0
	.long	.LVL135-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LVL138-.Ltext0
	.long	.LVL140-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LVL142-.Ltext0
	.long	.LVL143-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LVL193-.Ltext0
	.long	.LVL195-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LVL152-.Ltext0
	.long	.LVL154-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL155-.Ltext0
	.long	.LVL168-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL170-.Ltext0
	.long	.LVL171-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LVL153-.Ltext0
	.long	.LVL156-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL158-.Ltext0
	.long	.LVL159-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL161-.Ltext0
	.long	.LVL162-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL164-.Ltext0
	.long	.LVL165-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL167-.Ltext0
	.long	.LVL169-1-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LVL157-.Ltext0
	.long	.LVL158-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LVL160-.Ltext0
	.long	.LVL161-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST105:
	.long	.LVL163-.Ltext0
	.long	.LVL164-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST106:
	.long	.LVL166-.Ltext0
	.long	.LVL167-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST107:
	.long	.LVL175-.Ltext0
	.long	.LVL176-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST108:
	.long	.LVL191-.Ltext0
	.long	.LVL192-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST109:
	.long	.LVL187-.Ltext0
	.long	.LVL188-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST110:
	.long	.LVL175-.Ltext0
	.long	.LVL196-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x2000000
	.long	0x41a00000
	.long	0x0
	.long	0x0
.LLST111:
	.long	.LVL177-.Ltext0
	.long	.LVL178-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LVL180-.Ltext0
	.long	.LVL181-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LVL183-.Ltext0
	.long	.LVL184-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LVL178-.Ltext0
	.long	.LVL179-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST115:
	.long	.LVL181-.Ltext0
	.long	.LVL182-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST116:
	.long	.LVL185-.Ltext0
	.long	.LVL186-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST117:
	.long	.LVL175-.Ltext0
	.long	.LVL176-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST118:
	.long	.LVL175-.Ltext0
	.long	.LVL177-.Ltext0
	.value	0x1
	.byte	0x5c
	.long	0x0
	.long	0x0
.LLST119:
	.long	.LVL204-.Ltext0
	.long	.LVL206-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL220-.Ltext0
	.long	.LVL222-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL223-.Ltext0
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST120:
	.long	.LVL203-.Ltext0
	.long	.LVL206-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL221-.Ltext0
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST121:
	.long	.LVL205-.Ltext0
	.long	.LVL206-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	.LVL208-.Ltext0
	.long	.LVL222-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	.LVL223-.Ltext0
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0x0
	.long	0x0
.LLST122:
	.long	.LVL207-.Ltext0
	.long	.LVL222-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	.LVL223-.Ltext0
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0x0
	.long	0x0
.LLST123:
	.long	.LVL199-.Ltext0
	.long	.LVL200-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST124:
	.long	.LVL212-.Ltext0
	.long	.LVL219-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL219-.Ltext0
	.long	.LVL222-.Ltext0
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST125:
	.long	.LVL209-.Ltext0
	.long	.LVL210-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL210-.Ltext0
	.long	.LVL213-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	.LVL213-.Ltext0
	.long	.LVL216-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL217-.Ltext0
	.long	.LVL218-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST126:
	.long	.LVL198-.Ltext0
	.long	.LVL211-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL222-.Ltext0
	.long	.LVL223-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST127:
	.long	.LVL199-.Ltext0
	.long	.LVL206-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x3ff00000
	.long	.LVL222-.Ltext0
	.long	.LVL223-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x0
	.long	0x3ff00000
	.long	0x0
	.long	0x0
.LLST128:
	.long	.LVL199-.Ltext0
	.long	.LVL200-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST129:
	.long	.LVL214-.Ltext0
	.long	.LVL215-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
.LLST130:
	.long	.LVL237-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL252-.Ltext0
	.long	.LVL254-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL255-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0x0
	.long	0x0
.LLST131:
	.long	.LVL236-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	.LVL253-.Ltext0
	.long	.LVL254-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	.LVL255-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0x0
	.long	0x0
.LLST132:
	.long	.LVL238-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL248-.Ltext0
	.long	.LVL249-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL251-.Ltext0
	.long	.LVL254-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL255-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0x0
	.long	0x0
.LLST133:
	.long	.LVL247-.Ltext0
	.long	.LVL249-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL250-.Ltext0
	.long	.LVL254-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	.LVL255-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0x0
	.long	0x0
.LLST134:
	.long	.LVL242-.Ltext0
	.long	.LVL254-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0x0
	.long	0x0
.LLST135:
	.long	.LVL241-.Ltext0
	.long	.LVL243-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL244-.Ltext0
	.long	.LVL247-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL249-.Ltext0
	.long	.LVL250-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0x0
	.long	0x0
.LLST136:
	.long	.LVL231-.Ltext0
	.long	.LVL239-1-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL240-.Ltext0
	.long	.LVL241-1-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL254-.Ltext0
	.long	.LVL255-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0x0
	.long	0x0
.LLST137:
	.long	.LVL232-.Ltext0
	.long	.LVL240-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL254-.Ltext0
	.long	.LVL255-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST138:
	.long	.LVL233-.Ltext0
	.long	.LVL235-.Ltext0
	.value	0x1
	.byte	0x5b
	.long	0x0
	.long	0x0
.LLST139:
	.long	.LVL245-.Ltext0
	.long	.LVL246-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0x0
	.long	0x0
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "scs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "scs_private.h"
	.file 8 "crlibm_private.h"
	.file 9 "trigo_fast.h"
	.file 10 "coefpi2.h"
	.section	.debug_info
	.long	0x1402
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF103
	.byte	0xc
	.long	.LASF104
	.long	.LASF105
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
	.long	.LASF106
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
	.byte	0x7f
	.long	0x34d
	.uleb128 0x5
	.long	0x2ea
	.long	0x35d
	.uleb128 0x6
	.long	0x30
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.long	0x524
	.uleb128 0x13
	.string	"sh"
	.byte	0x1
	.byte	0x46
	.long	0x524
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.string	"sl"
	.byte	0x1
	.byte	0x46
	.long	0x524
	.byte	0x1
	.byte	0x52
	.uleb128 0x13
	.string	"yh"
	.byte	0x1
	.byte	0x46
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"yl"
	.byte	0x1
	.byte	0x46
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"thi"
	.byte	0x1
	.byte	0x47
	.long	0x2d8
	.long	.LLST0
	.uleb128 0x14
	.string	"tlo"
	.byte	0x1
	.byte	0x47
	.long	0x2d8
	.long	.LLST1
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.byte	0x47
	.long	0x2d8
	.long	.LLST2
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0x47
	.long	0x2d8
	.uleb128 0x14
	.string	"yh2"
	.byte	0x1
	.byte	0x47
	.long	0x2d8
	.long	.LLST3
	.uleb128 0x14
	.string	"ts"
	.byte	0x1
	.byte	0x47
	.long	0x2d8
	.long	.LLST4
	.uleb128 0x17
	.string	"tc"
	.byte	0x1
	.byte	0x47
	.long	0x2d8
	.uleb128 0x18
	.long	.LBB2
	.long	.LBE2
	.long	0x43c
	.uleb128 0x14
	.string	"_z"
	.byte	0x1
	.byte	0x52
	.long	0x2d8
	.long	.LLST5
	.uleb128 0x14
	.string	"_a"
	.byte	0x1
	.byte	0x52
	.long	0x2d8
	.long	.LLST6
	.uleb128 0x14
	.string	"_b"
	.byte	0x1
	.byte	0x52
	.long	0x2d8
	.long	.LLST7
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x0
	.long	0x4c3
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0x56
	.long	0x52a
	.long	.LLST8
	.uleb128 0x14
	.string	"up"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST9
	.uleb128 0x14
	.string	"u1"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST10
	.uleb128 0x14
	.string	"u2"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST11
	.uleb128 0x14
	.string	"vp"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST12
	.uleb128 0x14
	.string	"v1"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST13
	.uleb128 0x14
	.string	"v2"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST14
	.uleb128 0x14
	.string	"_u"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST15
	.uleb128 0x14
	.string	"_v"
	.byte	0x1
	.byte	0x56
	.long	0x2d8
	.long	.LLST16
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x18
	.long	0x4f3
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.byte	0x57
	.long	0x2d8
	.uleb128 0x14
	.string	"_a"
	.byte	0x1
	.byte	0x57
	.long	0x2d8
	.long	.LLST17
	.uleb128 0x14
	.string	"_b"
	.byte	0x1
	.byte	0x57
	.long	0x2d8
	.long	.LLST18
	.byte	0x0
	.uleb128 0x1a
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.byte	0x61
	.long	0x2d8
	.uleb128 0x14
	.string	"_a"
	.byte	0x1
	.byte	0x61
	.long	0x2d8
	.long	.LLST19
	.uleb128 0x14
	.string	"_b"
	.byte	0x1
	.byte	0x61
	.long	0x2d8
	.long	.LLST20
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x2d8
	.uleb128 0x1b
	.long	0x2d8
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.long	0x6f8
	.uleb128 0x13
	.string	"ch"
	.byte	0x1
	.byte	0x66
	.long	0x524
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.string	"cl"
	.byte	0x1
	.byte	0x66
	.long	0x524
	.byte	0x1
	.byte	0x52
	.uleb128 0x13
	.string	"yh"
	.byte	0x1
	.byte	0x66
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"yl"
	.byte	0x1
	.byte	0x66
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"yh2"
	.byte	0x1
	.byte	0x67
	.long	0x2d8
	.long	.LLST21
	.uleb128 0x17
	.string	"ts"
	.byte	0x1
	.byte	0x67
	.long	0x2d8
	.uleb128 0x14
	.string	"tc"
	.byte	0x1
	.byte	0x67
	.long	0x2d8
	.long	.LLST22
	.uleb128 0x14
	.string	"thi"
	.byte	0x1
	.byte	0x67
	.long	0x2d8
	.long	.LLST23
	.uleb128 0x14
	.string	"tlo"
	.byte	0x1
	.byte	0x67
	.long	0x2d8
	.long	.LLST24
	.uleb128 0x15
	.long	.LASF59
	.byte	0x1
	.byte	0x67
	.long	0x2d8
	.long	.LLST25
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.byte	0x67
	.long	0x2d8
	.uleb128 0x18
	.long	.LBB8
	.long	.LBE8
	.long	0x60a
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.byte	0x71
	.long	0x2d8
	.uleb128 0x14
	.string	"_a"
	.byte	0x1
	.byte	0x71
	.long	0x2d8
	.long	.LLST26
	.uleb128 0x14
	.string	"_b"
	.byte	0x1
	.byte	0x71
	.long	0x2d8
	.long	.LLST27
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x30
	.long	0x691
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0x77
	.long	0x52a
	.long	.LLST28
	.uleb128 0x14
	.string	"up"
	.byte	0x1
	.byte	0x77
	.long	0x2d8
	.long	.LLST29
	.uleb128 0x14
	.string	"u1"
	.byte	0x1
	.byte	0x77
	.long	0x2d8
	.long	.LLST30
	.uleb128 0x14
	.string	"u2"
	.byte	0x1
	.byte	0x77
	.long	0x2d8
	.long	.LLST31
	.uleb128 0x14
	.string	"vp"
	.byte	0x1
	.byte	0x77
	.long	0x2d8
	.long	.LLST32
	.uleb128 0x14
	.string	"v1"
	.byte	0x1
	.byte	0x77
	.long	0x2d8
	.long	.LLST33
	.uleb128 0x14
	.string	"v2"
	.byte	0x1
	.byte	0x77
	.long	0x2d8
	.long	.LLST34
	.uleb128 0x14
	.string	"_u"
	.byte	0x1
	.byte	0x77
	.long	0x2d8
	.long	.LLST35
	.uleb128 0x14
	.string	"_v"
	.byte	0x1
	.byte	0x77
	.long	0x2d8
	.long	.LLST36
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x48
	.long	0x6c3
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.byte	0x7f
	.long	0x2d8
	.uleb128 0x1c
	.string	"_a"
	.byte	0x1
	.byte	0x7f
	.long	0x2d8
	.byte	0x5
	.byte	0x3
	.long	cah
	.uleb128 0x14
	.string	"_b"
	.byte	0x1
	.byte	0x7f
	.long	0x2d8
	.long	.LLST37
	.byte	0x0
	.uleb128 0x1a
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x14
	.string	"_z"
	.byte	0x1
	.byte	0x81
	.long	0x2d8
	.long	.LLST38
	.uleb128 0x14
	.string	"_a"
	.byte	0x1
	.byte	0x81
	.long	0x2d8
	.long	.LLST39
	.uleb128 0x14
	.string	"_b"
	.byte	0x1
	.byte	0x81
	.long	0x2d8
	.long	.LLST40
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.value	0x26b
	.byte	0x1
	.long	0x2d8
	.long	.LFB21
	.long	.LFE21
	.byte	0x1
	.byte	0x9c
	.long	0x722
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x26b
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.value	0x261
	.byte	0x1
	.long	0x2d8
	.long	.LFB20
	.long	.LFE20
	.byte	0x1
	.byte	0x9c
	.long	0x74c
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x261
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.value	0x257
	.byte	0x1
	.long	0x2d8
	.long	.LFB19
	.long	.LFE19
	.byte	0x1
	.byte	0x9c
	.long	0x776
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x257
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.long	0x5a
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.long	0xc98
	.uleb128 0x20
	.string	"pyh"
	.byte	0x1
	.byte	0x8f
	.long	0x524
	.long	.LLST41
	.uleb128 0x20
	.string	"pyl"
	.byte	0x1
	.byte	0x8f
	.long	0x524
	.long	.LLST42
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0x90
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF64
	.byte	0x1
	.byte	0x90
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF65
	.byte	0x1
	.byte	0x91
	.long	0xca8
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0x98
	.long	0x5a
	.long	.LLST43
	.uleb128 0x14
	.string	"kd"
	.byte	0x1
	.byte	0x99
	.long	0x2d8
	.long	.LLST44
	.uleb128 0x18
	.long	.LBB30
	.long	.LBE30
	.long	0x80d
	.uleb128 0x1c
	.string	"_t"
	.byte	0x1
	.byte	0x9b
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -456
	.byte	0x0
	.uleb128 0x18
	.long	.LBB31
	.long	.LBE31
	.long	0x9c9
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0xa3
	.long	0x2d8
	.long	.LLST45
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0xa3
	.long	0x2d8
	.long	.LLST46
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0xa3
	.long	0x2d8
	.long	.LLST47
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.byte	0xa3
	.long	0x2d8
	.uleb128 0x14
	.string	"th"
	.byte	0x1
	.byte	0xa3
	.long	0x2d8
	.long	.LLST48
	.uleb128 0x17
	.string	"tl"
	.byte	0x1
	.byte	0xa3
	.long	0x2d8
	.uleb128 0x18
	.long	.LBB32
	.long	.LBE32
	.long	0x8f5
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0xac
	.long	0x52a
	.long	.LLST49
	.uleb128 0x14
	.string	"up"
	.byte	0x1
	.byte	0xac
	.long	0x2d8
	.long	.LLST50
	.uleb128 0x14
	.string	"u1"
	.byte	0x1
	.byte	0xac
	.long	0x2d8
	.long	.LLST51
	.uleb128 0x14
	.string	"u2"
	.byte	0x1
	.byte	0xac
	.long	0x2d8
	.long	.LLST52
	.uleb128 0x14
	.string	"vp"
	.byte	0x1
	.byte	0xac
	.long	0x2d8
	.long	.LLST53
	.uleb128 0x14
	.string	"v1"
	.byte	0x1
	.byte	0xac
	.long	0x2d8
	.long	.LLST54
	.uleb128 0x14
	.string	"v2"
	.byte	0x1
	.byte	0xac
	.long	0x2d8
	.long	.LLST55
	.uleb128 0x14
	.string	"_u"
	.byte	0x1
	.byte	0xac
	.long	0x2d8
	.long	.LLST56
	.uleb128 0x14
	.string	"_v"
	.byte	0x1
	.byte	0xac
	.long	0x2d8
	.long	.LLST57
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x60
	.long	0x978
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0xb0
	.long	0x52a
	.long	.LLST58
	.uleb128 0x17
	.string	"up"
	.byte	0x1
	.byte	0xb0
	.long	0x2d8
	.uleb128 0x14
	.string	"u1"
	.byte	0x1
	.byte	0xb0
	.long	0x2d8
	.long	.LLST59
	.uleb128 0x14
	.string	"u2"
	.byte	0x1
	.byte	0xb0
	.long	0x2d8
	.long	.LLST60
	.uleb128 0x14
	.string	"vp"
	.byte	0x1
	.byte	0xb0
	.long	0x2d8
	.long	.LLST61
	.uleb128 0x14
	.string	"v1"
	.byte	0x1
	.byte	0xb0
	.long	0x2d8
	.long	.LLST62
	.uleb128 0x14
	.string	"v2"
	.byte	0x1
	.byte	0xb0
	.long	0x2d8
	.long	.LLST63
	.uleb128 0x14
	.string	"_u"
	.byte	0x1
	.byte	0xb0
	.long	0x2d8
	.long	.LLST64
	.uleb128 0x14
	.string	"_v"
	.byte	0x1
	.byte	0xb0
	.long	0x2d8
	.long	.LLST65
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x78
	.long	0x9a8
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.byte	0xb3
	.long	0x2d8
	.uleb128 0x14
	.string	"_a"
	.byte	0x1
	.byte	0xb3
	.long	0x2d8
	.long	.LLST66
	.uleb128 0x14
	.string	"_b"
	.byte	0x1
	.byte	0xb3
	.long	0x2d8
	.long	.LLST67
	.byte	0x0
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x14
	.string	"r"
	.byte	0x1
	.byte	0xb5
	.long	0x2d8
	.long	.LLST68
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0xb5
	.long	0x2d8
	.long	.LLST69
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	.LBB40
	.long	.LBE40
	.long	0xa01
	.uleb128 0x14
	.string	"_z"
	.byte	0x1
	.byte	0xbc
	.long	0x2d8
	.long	.LLST70
	.uleb128 0x14
	.string	"_a"
	.byte	0x1
	.byte	0xbc
	.long	0x2d8
	.long	.LLST71
	.uleb128 0x14
	.string	"_b"
	.byte	0x1
	.byte	0xbc
	.long	0x2d8
	.long	.LLST72
	.byte	0x0
	.uleb128 0x18
	.long	.LBB41
	.long	.LBE41
	.long	0xa39
	.uleb128 0x14
	.string	"_z"
	.byte	0x1
	.byte	0xc0
	.long	0x2d8
	.long	.LLST73
	.uleb128 0x14
	.string	"_a"
	.byte	0x1
	.byte	0xc0
	.long	0x2d8
	.long	.LLST74
	.uleb128 0x14
	.string	"_b"
	.byte	0x1
	.byte	0xc0
	.long	0x2d8
	.long	.LLST75
	.byte	0x0
	.uleb128 0x18
	.long	.LBB42
	.long	.LBE42
	.long	0xc57
	.uleb128 0x14
	.string	"kl"
	.byte	0x1
	.byte	0xc4
	.long	0x61
	.long	.LLST76
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0xc5
	.long	0x2d8
	.long	.LLST77
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0xc5
	.long	0x2d8
	.long	.LLST78
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0xc5
	.long	0x2d8
	.long	.LLST79
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.byte	0xc5
	.long	0x2d8
	.uleb128 0x14
	.string	"th"
	.byte	0x1
	.byte	0xc5
	.long	0x2d8
	.long	.LLST80
	.uleb128 0x17
	.string	"tl"
	.byte	0x1
	.byte	0xc5
	.long	0x2d8
	.uleb128 0x18
	.long	.LBB43
	.long	.LBE43
	.long	0xabc
	.uleb128 0x17
	.string	"_t"
	.byte	0x1
	.byte	0xc6
	.long	0x2df
	.byte	0x0
	.uleb128 0x18
	.long	.LBB44
	.long	.LBE44
	.long	0xb00
	.uleb128 0x1c
	.string	"X"
	.byte	0x1
	.byte	0xcd
	.long	0x342
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.string	"Y"
	.byte	0x1
	.byte	0xcd
	.long	0x342
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1c
	.string	"Yh"
	.byte	0x1
	.byte	0xcd
	.long	0x342
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1c
	.string	"Yl"
	.byte	0x1
	.byte	0xcd
	.long	0x342
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.byte	0x0
	.uleb128 0x18
	.long	.LBB45
	.long	.LBE45
	.long	0xb87
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0xda
	.long	0x52a
	.long	.LLST81
	.uleb128 0x14
	.string	"up"
	.byte	0x1
	.byte	0xda
	.long	0x2d8
	.long	.LLST82
	.uleb128 0x14
	.string	"u1"
	.byte	0x1
	.byte	0xda
	.long	0x2d8
	.long	.LLST83
	.uleb128 0x14
	.string	"u2"
	.byte	0x1
	.byte	0xda
	.long	0x2d8
	.long	.LLST84
	.uleb128 0x14
	.string	"vp"
	.byte	0x1
	.byte	0xda
	.long	0x2d8
	.long	.LLST85
	.uleb128 0x14
	.string	"v1"
	.byte	0x1
	.byte	0xda
	.long	0x2d8
	.long	.LLST86
	.uleb128 0x14
	.string	"v2"
	.byte	0x1
	.byte	0xda
	.long	0x2d8
	.long	.LLST87
	.uleb128 0x17
	.string	"_u"
	.byte	0x1
	.byte	0xda
	.long	0x2d8
	.uleb128 0x14
	.string	"_v"
	.byte	0x1
	.byte	0xda
	.long	0x2d8
	.long	.LLST88
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0xb0
	.long	0xc06
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0xdb
	.long	0x52a
	.long	.LLST89
	.uleb128 0x17
	.string	"up"
	.byte	0x1
	.byte	0xdb
	.long	0x2d8
	.uleb128 0x14
	.string	"u1"
	.byte	0x1
	.byte	0xdb
	.long	0x2d8
	.long	.LLST90
	.uleb128 0x14
	.string	"u2"
	.byte	0x1
	.byte	0xdb
	.long	0x2d8
	.long	.LLST91
	.uleb128 0x14
	.string	"vp"
	.byte	0x1
	.byte	0xdb
	.long	0x2d8
	.long	.LLST92
	.uleb128 0x14
	.string	"v1"
	.byte	0x1
	.byte	0xdb
	.long	0x2d8
	.long	.LLST93
	.uleb128 0x14
	.string	"v2"
	.byte	0x1
	.byte	0xdb
	.long	0x2d8
	.long	.LLST94
	.uleb128 0x17
	.string	"_u"
	.byte	0x1
	.byte	0xdb
	.long	0x2d8
	.uleb128 0x14
	.string	"_v"
	.byte	0x1
	.byte	0xdb
	.long	0x2d8
	.long	.LLST95
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0xc8
	.long	0xc36
	.uleb128 0x17
	.string	"_z"
	.byte	0x1
	.byte	0xdc
	.long	0x2d8
	.uleb128 0x14
	.string	"_a"
	.byte	0x1
	.byte	0xdc
	.long	0x2d8
	.long	.LLST96
	.uleb128 0x14
	.string	"_b"
	.byte	0x1
	.byte	0xdc
	.long	0x2d8
	.long	.LLST97
	.byte	0x0
	.uleb128 0x22
	.long	.Ldebug_ranges0+0xe0
	.uleb128 0x14
	.string	"r"
	.byte	0x1
	.byte	0xde
	.long	0x2d8
	.long	.LLST98
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0xde
	.long	0x2d8
	.long	.LLST99
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x1c
	.string	"X"
	.byte	0x1
	.byte	0xe2
	.long	0x342
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1c
	.string	"Y"
	.byte	0x1
	.byte	0xe2
	.long	0x342
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1c
	.string	"Yh"
	.byte	0x1
	.byte	0xe2
	.long	0x342
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1c
	.string	"Yl"
	.byte	0x1
	.byte	0xe2
	.long	0x342
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.long	0x2d8
	.long	0xca8
	.uleb128 0x24
	.long	0x2d8
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0xc98
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.value	0x1d6
	.byte	0x1
	.long	0x2d8
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.long	0xeea
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x1d6
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF71
	.byte	0x1
	.value	0x1d7
	.long	0x2d8
	.long	.LLST100
	.uleb128 0x26
	.long	.LASF72
	.byte	0x1
	.value	0x1d7
	.long	0x2d8
	.uleb128 0x27
	.string	"sh"
	.byte	0x1
	.value	0x1d7
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"sl"
	.byte	0x1
	.value	0x1d7
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"ch"
	.byte	0x1
	.value	0x1d7
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"cl"
	.byte	0x1
	.value	0x1d7
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"kd"
	.byte	0x1
	.value	0x1d7
	.long	0x2d8
	.uleb128 0x27
	.string	"yh"
	.byte	0x1
	.value	0x1d7
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"yl"
	.byte	0x1
	.value	0x1d7
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"y"
	.byte	0x1
	.value	0x1d8
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -64
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.value	0x1d9
	.long	0x5a
	.long	.LLST101
	.uleb128 0x25
	.long	.LASF73
	.byte	0x1
	.value	0x1d9
	.long	0x5a
	.long	.LLST102
	.uleb128 0x2a
	.long	.LASF64
	.byte	0x1
	.value	0x1dc
	.long	0x5a
	.byte	0xb
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0xc
	.long	0x7fffffff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x27
	.string	"xx"
	.byte	0x1
	.value	0x1dd
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -64
	.uleb128 0x18
	.long	.LBB60
	.long	.LBE60
	.long	0xdc0
	.uleb128 0x29
	.string	"k1"
	.byte	0x1
	.value	0x203
	.long	0x5a
	.long	.LLST103
	.byte	0x0
	.uleb128 0x18
	.long	.LBB61
	.long	.LBE61
	.long	0xddd
	.uleb128 0x29
	.string	"k1"
	.byte	0x1
	.value	0x214
	.long	0x5a
	.long	.LLST104
	.byte	0x0
	.uleb128 0x18
	.long	.LBB62
	.long	.LBE62
	.long	0xdfa
	.uleb128 0x29
	.string	"k1"
	.byte	0x1
	.value	0x222
	.long	0x5a
	.long	.LLST105
	.byte	0x0
	.uleb128 0x18
	.long	.LBB63
	.long	.LBE63
	.long	0xe17
	.uleb128 0x29
	.string	"k1"
	.byte	0x1
	.value	0x230
	.long	0x5a
	.long	.LLST106
	.byte	0x0
	.uleb128 0x1a
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x29
	.string	"_ch"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST107
	.uleb128 0x29
	.string	"_cl"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST108
	.uleb128 0x29
	.string	"_uh"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST109
	.uleb128 0x28
	.string	"_ul"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x29
	.string	"c"
	.byte	0x1
	.value	0x244
	.long	0x52a
	.long	.LLST110
	.uleb128 0x29
	.string	"up"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST111
	.uleb128 0x29
	.string	"u1"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST112
	.uleb128 0x29
	.string	"u2"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST113
	.uleb128 0x29
	.string	"vp"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST114
	.uleb128 0x29
	.string	"v1"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST115
	.uleb128 0x29
	.string	"v2"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST116
	.uleb128 0x29
	.string	"_u"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST117
	.uleb128 0x29
	.string	"_v"
	.byte	0x1
	.value	0x244
	.long	0x2d8
	.long	.LLST118
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.value	0x168
	.byte	0x1
	.long	0x2d8
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.long	0xfe8
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x168
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"ch"
	.byte	0x1
	.value	0x169
	.long	0x2d8
	.long	.LLST119
	.uleb128 0x29
	.string	"cl"
	.byte	0x1
	.value	0x169
	.long	0x2d8
	.long	.LLST120
	.uleb128 0x29
	.string	"yh"
	.byte	0x1
	.value	0x169
	.long	0x2d8
	.long	.LLST121
	.uleb128 0x29
	.string	"yl"
	.byte	0x1
	.value	0x169
	.long	0x2d8
	.long	.LLST122
	.uleb128 0x29
	.string	"tc"
	.byte	0x1
	.value	0x169
	.long	0x2d8
	.long	.LLST123
	.uleb128 0x25
	.long	.LASF73
	.byte	0x1
	.value	0x16a
	.long	0x5a
	.long	.LLST124
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.value	0x16b
	.long	0x5a
	.long	.LLST125
	.uleb128 0x25
	.long	.LASF64
	.byte	0x1
	.value	0x16c
	.long	0x5a
	.long	.LLST126
	.uleb128 0x27
	.string	"xx"
	.byte	0x1
	.value	0x16d
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -72
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x118
	.long	0xfce
	.uleb128 0x28
	.string	"_z"
	.byte	0x1
	.value	0x17c
	.long	0x2d8
	.uleb128 0x29
	.string	"_a"
	.byte	0x1
	.value	0x17c
	.long	0x2d8
	.long	.LLST127
	.uleb128 0x29
	.string	"_b"
	.byte	0x1
	.value	0x17c
	.long	0x2d8
	.long	.LLST128
	.byte	0x0
	.uleb128 0x1a
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x29
	.string	"k1"
	.byte	0x1
	.value	0x19e
	.long	0x5a
	.long	.LLST129
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.value	0x1cd
	.byte	0x1
	.long	0x2d8
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.long	0x1012
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x1cd
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.value	0x1c8
	.byte	0x1
	.long	0x2d8
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.long	0x103c
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x1c8
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.value	0x1c3
	.byte	0x1
	.long	0x2d8
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.long	0x1066
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x1c3
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.value	0x15f
	.byte	0x1
	.long	0x2d8
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.long	0x1090
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x15f
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.value	0x15a
	.byte	0x1
	.long	0x2d8
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.long	0x10ba
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x15a
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.value	0x155
	.byte	0x1
	.long	0x2d8
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.long	0x10e4
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x155
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.value	0x102
	.byte	0x1
	.long	0x2d8
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.long	0x11dd
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x102
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"sh"
	.byte	0x1
	.value	0x103
	.long	0x2d8
	.long	.LLST130
	.uleb128 0x29
	.string	"sl"
	.byte	0x1
	.value	0x103
	.long	0x2d8
	.long	.LLST131
	.uleb128 0x29
	.string	"yh"
	.byte	0x1
	.value	0x103
	.long	0x2d8
	.long	.LLST132
	.uleb128 0x29
	.string	"yl"
	.byte	0x1
	.value	0x103
	.long	0x2d8
	.long	.LLST133
	.uleb128 0x28
	.string	"ts"
	.byte	0x1
	.value	0x103
	.long	0x2d8
	.uleb128 0x25
	.long	.LASF73
	.byte	0x1
	.value	0x104
	.long	0x5a
	.long	.LLST134
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.value	0x105
	.long	0x5a
	.long	.LLST135
	.uleb128 0x25
	.long	.LASF64
	.byte	0x1
	.value	0x106
	.long	0x5a
	.long	.LLST136
	.uleb128 0x27
	.string	"xx"
	.byte	0x1
	.value	0x107
	.long	0x2df
	.byte	0x2
	.byte	0x75
	.sleb128 -56
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x130
	.long	0x11c3
	.uleb128 0x28
	.string	"_z"
	.byte	0x1
	.value	0x116
	.long	0x2d8
	.uleb128 0x29
	.string	"_a"
	.byte	0x1
	.value	0x116
	.long	0x2d8
	.long	.LLST137
	.uleb128 0x29
	.string	"_b"
	.byte	0x1
	.value	0x116
	.long	0x2d8
	.long	.LLST138
	.byte	0x0
	.uleb128 0x1a
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x29
	.string	"k1"
	.byte	0x1
	.value	0x12d
	.long	0x5a
	.long	.LLST139
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF82
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF83
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF84
	.byte	0x6
	.byte	0xa7
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	.LASF85
	.byte	0x7
	.byte	0x47
	.long	0x120f
	.uleb128 0x1b
	.long	0x2df
	.uleb128 0x16
	.long	.LASF86
	.byte	0x7
	.byte	0x48
	.long	0x120f
	.uleb128 0x16
	.long	.LASF87
	.byte	0x7
	.byte	0x49
	.long	0x120f
	.uleb128 0x16
	.long	.LASF88
	.byte	0x7
	.byte	0x4a
	.long	0x120f
	.uleb128 0x16
	.long	.LASF89
	.byte	0x7
	.byte	0x4b
	.long	0x120f
	.uleb128 0x16
	.long	.LASF90
	.byte	0x7
	.byte	0x4c
	.long	0x120f
	.uleb128 0x16
	.long	.LASF91
	.byte	0x7
	.byte	0x4d
	.long	0x120f
	.uleb128 0x16
	.long	.LASF92
	.byte	0x7
	.byte	0x4e
	.long	0x120f
	.uleb128 0x16
	.long	.LASF93
	.byte	0x8
	.byte	0xca
	.long	0x126c
	.uleb128 0x1b
	.long	0x2ea
	.uleb128 0x16
	.long	.LASF94
	.byte	0x8
	.byte	0xce
	.long	0x126c
	.uleb128 0x16
	.long	.LASF95
	.byte	0x8
	.byte	0xd2
	.long	0x126c
	.uleb128 0x16
	.long	.LASF96
	.byte	0x8
	.byte	0xd6
	.long	0x126c
	.uleb128 0x16
	.long	.LASF97
	.byte	0x8
	.byte	0xda
	.long	0x126c
	.uleb128 0x27
	.string	"s3"
	.byte	0x9
	.value	0x138
	.long	0x120f
	.byte	0x5
	.byte	0x3
	.long	s3
	.uleb128 0x27
	.string	"s5"
	.byte	0x9
	.value	0x139
	.long	0x120f
	.byte	0x5
	.byte	0x3
	.long	s5
	.uleb128 0x27
	.string	"s7"
	.byte	0x9
	.value	0x13a
	.long	0x120f
	.byte	0x5
	.byte	0x3
	.long	s7
	.uleb128 0x27
	.string	"s9"
	.byte	0x9
	.value	0x13b
	.long	0x120f
	.byte	0x5
	.byte	0x3
	.long	s9
	.uleb128 0x27
	.string	"c2"
	.byte	0x9
	.value	0x13d
	.long	0x120f
	.byte	0x5
	.byte	0x3
	.long	c2
	.uleb128 0x27
	.string	"c4"
	.byte	0x9
	.value	0x13e
	.long	0x120f
	.byte	0x5
	.byte	0x3
	.long	c4
	.uleb128 0x27
	.string	"c6"
	.byte	0x9
	.value	0x13f
	.long	0x120f
	.byte	0x5
	.byte	0x3
	.long	c6
	.uleb128 0x27
	.string	"c8"
	.byte	0x9
	.value	0x140
	.long	0x120f
	.byte	0x5
	.byte	0x3
	.long	c8
	.uleb128 0x5
	.long	0x2df
	.long	0x1336
	.uleb128 0x2c
	.long	0x30
	.value	0x103
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF98
	.byte	0x9
	.value	0x145
	.long	0x1348
	.byte	0x5
	.byte	0x3
	.long	sincosTable
	.uleb128 0x1b
	.long	0x1325
	.uleb128 0x5
	.long	0x5a
	.long	0x135d
	.uleb128 0x6
	.long	0x30
	.byte	0x2f
	.byte	0x0
	.uleb128 0x16
	.long	.LASF99
	.byte	0xa
	.byte	0xb
	.long	0x1368
	.uleb128 0x1b
	.long	0x134d
	.uleb128 0x16
	.long	.LASF100
	.byte	0xa
	.byte	0x1f
	.long	0x1378
	.uleb128 0x1b
	.long	0x337
	.uleb128 0x16
	.long	.LASF101
	.byte	0xa
	.byte	0x29
	.long	0x1378
	.uleb128 0x1c
	.string	"sah"
	.byte	0x1
	.byte	0x43
	.long	0x2d8
	.byte	0x5
	.byte	0x3
	.long	sah
	.uleb128 0x1c
	.string	"sal"
	.byte	0x1
	.byte	0x43
	.long	0x2d8
	.byte	0x5
	.byte	0x3
	.long	sal
	.uleb128 0x1c
	.string	"cah"
	.byte	0x1
	.byte	0x43
	.long	0x2d8
	.byte	0x5
	.byte	0x3
	.long	cah
	.uleb128 0x1c
	.string	"cal"
	.byte	0x1
	.byte	0x43
	.long	0x2d8
	.byte	0x5
	.byte	0x3
	.long	cal
	.uleb128 0x2b
	.long	.LASF82
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF83
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF84
	.byte	0x6
	.byte	0xa7
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF102
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.long	0xaf
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1406
	.long	0x6f8
	.string	"tan_rz"
	.long	0x722
	.string	"tan_ru"
	.long	0x74c
	.string	"tan_rd"
	.long	0xcae
	.string	"tan_rn"
	.long	0xeea
	.string	"cos_rn"
	.long	0xfe8
	.string	"cos_rz"
	.long	0x1012
	.string	"cos_ru"
	.long	0x103c
	.string	"cos_rd"
	.long	0x1066
	.string	"sin_rz"
	.long	0x1090
	.string	"sin_ru"
	.long	0x10ba
	.string	"sin_rd"
	.long	0x10e4
	.string	"sin_rn"
	.long	0x13f3
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x93
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1406
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
	.long	.LBB6-.Ltext0
	.long	.LBE6-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB9-.Ltext0
	.long	.LBE9-.Ltext0
	.long	.LBB12-.Ltext0
	.long	.LBE12-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB10-.Ltext0
	.long	.LBE10-.Ltext0
	.long	.LBB11-.Ltext0
	.long	.LBE11-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB33-.Ltext0
	.long	.LBE33-.Ltext0
	.long	.LBB38-.Ltext0
	.long	.LBE38-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB34-.Ltext0
	.long	.LBE34-.Ltext0
	.long	.LBB36-.Ltext0
	.long	.LBE36-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB35-.Ltext0
	.long	.LBE35-.Ltext0
	.long	.LBB39-.Ltext0
	.long	.LBE39-.Ltext0
	.long	.LBB37-.Ltext0
	.long	.LBE37-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB46-.Ltext0
	.long	.LBE46-.Ltext0
	.long	.LBB51-.Ltext0
	.long	.LBE51-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB47-.Ltext0
	.long	.LBE47-.Ltext0
	.long	.LBB49-.Ltext0
	.long	.LBE49-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB48-.Ltext0
	.long	.LBE48-.Ltext0
	.long	.LBB52-.Ltext0
	.long	.LBE52-.Ltext0
	.long	.LBB50-.Ltext0
	.long	.LBE50-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB65-.Ltext0
	.long	.LBE65-.Ltext0
	.long	.LBB66-.Ltext0
	.long	.LBE66-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB69-.Ltext0
	.long	.LBE69-.Ltext0
	.long	.LBB70-.Ltext0
	.long	.LBE70-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB74-.Ltext0
	.long	.LBE74-.Ltext0
	.long	.LBB75-.Ltext0
	.long	.LBE75-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_chain"
.LASF70:
	.string	"tan_rn"
.LASF8:
	.string	"size_t"
.LASF61:
	.string	"tan_rz"
.LASF33:
	.string	"_shortbuf"
.LASF91:
	.string	"max_double"
.LASF54:
	.string	"scs_t"
.LASF21:
	.string	"_IO_buf_base"
.LASF99:
	.string	"two_over_pi"
.LASF7:
	.string	"long long unsigned int"
.LASF107:
	.string	"trig_range_reduction"
.LASF64:
	.string	"absxhi"
.LASF103:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF93:
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
.LASF9:
	.string	"__quad_t"
.LASF48:
	.string	"double"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF97:
	.string	"scs_sixinv"
.LASF57:
	.string	"do_sin"
.LASF59:
	.string	"sahyh_h"
.LASF60:
	.string	"sahyh_l"
.LASF87:
	.string	"radix_mone_double"
.LASF62:
	.string	"tan_ru"
.LASF96:
	.string	"scs_two"
.LASF44:
	.string	"_IO_marker"
.LASF82:
	.string	"stdin"
.LASF0:
	.string	"unsigned int"
.LASF105:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF94:
	.string	"scs_half"
.LASF3:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF92:
	.string	"min_double"
.LASF46:
	.string	"_sbuf"
.LASF71:
	.string	"reshi"
.LASF2:
	.string	"short unsigned int"
.LASF101:
	.string	"Pio4"
.LASF23:
	.string	"_IO_save_base"
.LASF98:
	.string	"sincosTable"
.LASF51:
	.string	"exception"
.LASF102:
	.string	"crlibm_second_step_taken"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF83:
	.string	"stdout"
.LASF50:
	.string	"h_word"
.LASF20:
	.string	"_IO_write_end"
.LASF106:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF74:
	.string	"cos_rn"
.LASF47:
	.string	"_pos"
.LASF26:
	.string	"_markers"
.LASF88:
	.string	"radix_mtwo_double"
.LASF85:
	.string	"radix_one_double"
.LASF1:
	.string	"unsigned char"
.LASF77:
	.string	"cos_rd"
.LASF5:
	.string	"short int"
.LASF32:
	.string	"_vtable_offset"
.LASF76:
	.string	"cos_ru"
.LASF49:
	.string	"db_number"
.LASF66:
	.string	"kch_h"
.LASF75:
	.string	"cos_rz"
.LASF67:
	.string	"kch_l"
.LASF55:
	.string	"cahyh_h"
.LASF56:
	.string	"cahyh_l"
.LASF65:
	.string	"scs_fun"
.LASF13:
	.string	"char"
.LASF100:
	.string	"Pio2"
.LASF52:
	.string	"index"
.LASF68:
	.string	"kcm_h"
.LASF45:
	.string	"_next"
.LASF69:
	.string	"kcm_l"
.LASF12:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF73:
	.string	"quadrant"
.LASF90:
	.string	"radix_mrng_double"
.LASF104:
	.string	"trigo_fast.c"
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
.LASF89:
	.string	"radix_rng_double"
.LASF42:
	.string	"_unused2"
.LASF84:
	.string	"stderr"
.LASF80:
	.string	"sin_rd"
.LASF58:
	.string	"do_cos"
.LASF24:
	.string	"_IO_backup_base"
.LASF81:
	.string	"sin_rn"
.LASF72:
	.string	"reslo"
.LASF79:
	.string	"sin_ru"
.LASF78:
	.string	"sin_rz"
.LASF86:
	.string	"radix_two_double"
.LASF18:
	.string	"_IO_write_base"
.LASF95:
	.string	"scs_one"
.LASF63:
	.string	"tan_rd"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
