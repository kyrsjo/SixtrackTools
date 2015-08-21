	.file	"log10.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H log10.c
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
.globl log10_ru
	.type	log10_ru, @function
log10_ru:
.LFB2:
	.file 1 "log10.c"
	.loc 1 267 0
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
	subl	$220, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
.LVL1:
	.loc 1 275 0
	fstl	-200(%ebp)	# %sfp
	.loc 1 277 0
	movl	-196(%ebp), %eax	# %sfp, D.1455
	movl	$0, %edx	#, E
	cmpl	$1048575, %eax	#, D.1455
	jg	.L3	#,
	.loc 1 278 0
	testl	$2147483647, %eax	#, D.1455
	jne	.L4	#,
	movl	-200(%ebp), %edx	# %sfp, nb
	testl	%edx, %edx	# nb
	jne	.L4	#,
	fstp	%st(0)	#
	.loc 1 280 0
	fldl	NInf@GOTOFF(%ebx)	# NInf.d
	jmp	.L5	#
.L4:
	.loc 1 281 0
	testl	%eax, %eax	# D.1455
	jns	.L6	#,
	fstp	%st(0)	#
	.loc 1 283 0
	fldl	NaN@GOTOFF(%ebx)	# NaN.d
	jmp	.L5	#
.L6:
.LVL2:
	.loc 1 287 0
	fld	%st(0)	#
	fmull	radix_two_double@GOTOFF(%ebx)	# radix_two_double.d
	fstpl	-200(%ebp)	# %sfp
	movl	$-60, %edx	#, E
.LVL3:
.L3:
	.loc 1 291 0
	movl	-196(%ebp), %eax	# %sfp, temp.35
	cmpl	$2146435071, %eax	#, temp.35
	jle	.L7	#,
	.loc 1 292 0
	fadd	%st(0), %st	#,
	jmp	.L5	#
.L7:
	fstp	%st(0)	#
	.loc 1 295 0
	movl	%eax, %ecx	# temp.35, tmp146
	sarl	$20, %ecx	#, tmp146
	leal	-1023(%edx,%ecx), %edi	#, E.34
.LVL4:
	.loc 1 296 0
	andl	$1048575, %eax	#, tmp148
	orl	$1072693248, %eax	#, tmp148
	movl	%eax, -196(%ebp)	# tmp148, %sfp
	.loc 1 297 0
	fldl	-200(%ebp)	# %sfp
	fldl	.LC0@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L16	#,
	.loc 1 298 0
	fmuls	.LC1@GOTOFF(%ebx)	#
	fstpl	-200(%ebp)	# %sfp
	.loc 1 299 0
	addl	$1, %edi	#, E.34
.LVL5:
	jmp	.L8	#
.L16:
	fstp	%st(0)	#
.L8:
	.loc 1 305 0
	fldl	-200(%ebp)	# %sfp
	fld	%st(0)	#
	faddl	norm_number@GOTOFF(%ebx)	# norm_number.d
	fstpl	-200(%ebp)	# %sfp
	.loc 1 306 0
	movl	-196(%ebp), %eax	# %sfp, i
	andl	$1048575, %eax	#, i
.LVL6:
	.loc 1 307 0
	sarl	$16, %eax	#, i.37
.LVL7:
	.loc 1 315 0
	leal	(%eax,%eax,2), %edx	#, tmp158
	sall	$4, %edx	#, tmp158
	movl	%edx, -208(%ebp)	# tmp158, %sfp
.LVL8:
	.loc 1 320 0
	addl	$11, %eax	#, tmp160
.LVL9:
	movl	%eax, -188(%ebp)	# tmp160,
	fildl	-188(%ebp)	#
	fmuls	.LC2@GOTOFF(%ebx)	#
	fsubrp	%st, %st(1)	#,
	fstpl	4(%esp)	#
	leal	-72(%ebp), %esi	#, tmp166
	movl	%esi, (%esp)	# tmp166,
	call	scs_set_d@PLT	#
.LVL10:
	.loc 1 321 0
	movl	-208(%ebp), %edx	# %sfp,
	leal	table_inv_wi@GOTOFF(%ebx,%edx), %eax	#, tmp167
	movl	%eax, 8(%esp)	# tmp167,
	movl	%esi, 4(%esp)	# tmp166,
	movl	%esi, (%esp)	# tmp166,
	call	scs_mul@PLT	#
	.loc 1 325 0
	leal	sc_ln2_r10@GOTOFF(%ebx), %eax	#, tmp171
	movl	%eax, 4(%esp)	# tmp171,
	leal	-168(%ebp), %eax	#, tmp172
	movl	%eax, (%esp)	# tmp172,
	call	scs_set@PLT	#
	.loc 1 327 0
	testl	%edi, %edi	# E.34
	js	.L10	#,
	.loc 1 328 0
	movl	%edi, 4(%esp)	# E.34,
	leal	-168(%ebp), %eax	#, tmp173
	movl	%eax, (%esp)	# tmp173,
	call	scs_mul_ui@PLT	#
	jmp	.L11	#
.L10:
	.loc 1 330 0
	negl	%edi	# tmp174
.LVL11:
	movl	%edi, 4(%esp)	# tmp174,
	leal	-168(%ebp), %eax	#, tmp175
	movl	%eax, (%esp)	# tmp175,
	call	scs_mul_ui@PLT	#
	.loc 1 331 0
	movl	$-1, -124(%ebp)	#, <variable>.sign
.LVL12:
.L11:
	.loc 1 338 0
	leal	-72(%ebp), %eax	#, tmp176
	movl	%eax, 8(%esp)	# tmp176,
	leal	constant_poly@GOTOFF(%ebx), %esi	#, tmp177
	movl	%esi, 4(%esp)	# tmp177,
	leal	-120(%ebp), %eax	#, tmp178
	movl	%eax, (%esp)	# tmp178,
	call	scs_mul@PLT	#
.LVL13:
	leal	48(%esi), %edi	#, ivtmp.29
	.loc 1 266 0
	leal	960(%esi), %esi	#,
	movl	%esi, -200(%ebp)	#, %sfp
	.loc 1 340 0
	leal	-120(%ebp), %esi	#, tmp194
	.loc 1 341 0
	leal	-72(%ebp), %eax	#,
	movl	%eax, -204(%ebp)	#, %sfp
.LVL14:
.L12:
	.loc 1 340 0
	movl	%esi, 8(%esp)	# tmp194,
	movl	%edi, 4(%esp)	# ivtmp.29,
	movl	%esi, (%esp)	# tmp194,
	call	scs_add@PLT	#
	.loc 1 341 0
	movl	-204(%ebp), %edx	# %sfp,
	movl	%edx, 8(%esp)	#,
	movl	%esi, 4(%esp)	# tmp194,
	movl	%esi, (%esp)	# tmp194,
	call	scs_mul@PLT	#
	addl	$48, %edi	#, ivtmp.29
	.loc 1 339 0
	cmpl	-200(%ebp), %edi	# %sfp, ivtmp.29
	jne	.L12	#,
	.loc 1 343 0
	movl	-208(%ebp), %edx	# %sfp,
	leal	table_ti@GOTOFF(%ebx,%edx), %eax	#, tmp184
	movl	%eax, 8(%esp)	# tmp184,
	leal	-120(%ebp), %esi	#, tmp186
	movl	%esi, 4(%esp)	# tmp186,
	movl	%esi, (%esp)	# tmp186,
	call	scs_add@PLT	#
	.loc 1 344 0
	leal	-168(%ebp), %eax	#, tmp188
	movl	%eax, 8(%esp)	# tmp188,
	movl	%esi, 4(%esp)	# tmp186,
	movl	%esi, (%esp)	# tmp186,
	call	scs_add@PLT	#
	.loc 1 347 0
	movl	%esi, 4(%esp)	# tmp186,
	leal	-176(%ebp), %eax	#, tmp192
	movl	%eax, (%esp)	# tmp192,
	call	scs_get_d_pinf@PLT	#
	.loc 1 349 0
	fldl	-176(%ebp)	# resd.d
.LVL15:
.L5:
	.loc 1 350 0
	addl	$220, %esp	#,
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
	.size	log10_ru, .-log10_ru
.globl log10_rd
	.type	log10_rd, @function
log10_rd:
.LFB1:
	.loc 1 174 0
	.cfi_startproc
.LVL16:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$220, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
.LVL17:
	.loc 1 182 0
	fstl	-200(%ebp)	# %sfp
	.loc 1 184 0
	movl	-196(%ebp), %eax	# %sfp, D.1397
	movl	$0, %edx	#, E
	cmpl	$1048575, %eax	#, D.1397
	jg	.L19	#,
	.loc 1 185 0
	testl	$2147483647, %eax	#, D.1397
	jne	.L20	#,
	movl	-200(%ebp), %edx	# %sfp, nb
	testl	%edx, %edx	# nb
	jne	.L20	#,
	fstp	%st(0)	#
	.loc 1 187 0
	fldl	NInf@GOTOFF(%ebx)	# NInf.d
	jmp	.L21	#
.L20:
	.loc 1 188 0
	testl	%eax, %eax	# D.1397
	jns	.L22	#,
	fstp	%st(0)	#
	.loc 1 190 0
	fldl	NaN@GOTOFF(%ebx)	# NaN.d
	jmp	.L21	#
.L22:
.LVL18:
	.loc 1 194 0
	fld	%st(0)	#
	fmull	radix_two_double@GOTOFF(%ebx)	# radix_two_double.d
	fstpl	-200(%ebp)	# %sfp
	movl	$-60, %edx	#, E
.LVL19:
.L19:
	.loc 1 198 0
	movl	-196(%ebp), %eax	# %sfp, temp.66
	cmpl	$2146435071, %eax	#, temp.66
	jle	.L23	#,
	.loc 1 199 0
	fadd	%st(0), %st	#,
	jmp	.L21	#
.L23:
	fstp	%st(0)	#
	.loc 1 202 0
	movl	%eax, %ecx	# temp.66, tmp141
	sarl	$20, %ecx	#, tmp141
	leal	-1023(%edx,%ecx), %edi	#, E.65
.LVL20:
	.loc 1 203 0
	andl	$1048575, %eax	#, tmp143
	orl	$1072693248, %eax	#, tmp143
	movl	%eax, -196(%ebp)	# tmp143, %sfp
	.loc 1 204 0
	fldl	-200(%ebp)	# %sfp
	fldl	.LC0@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L32	#,
	.loc 1 205 0
	fmuls	.LC1@GOTOFF(%ebx)	#
	fstpl	-200(%ebp)	# %sfp
	.loc 1 206 0
	addl	$1, %edi	#, E.65
.LVL21:
	jmp	.L24	#
.L32:
	fstp	%st(0)	#
.L24:
	.loc 1 212 0
	fldl	-200(%ebp)	# %sfp
	fld	%st(0)	#
	faddl	norm_number@GOTOFF(%ebx)	# norm_number.d
	fstpl	-200(%ebp)	# %sfp
	.loc 1 213 0
	movl	-196(%ebp), %eax	# %sfp, i
	andl	$1048575, %eax	#, i
.LVL22:
	.loc 1 214 0
	sarl	$16, %eax	#, i.68
.LVL23:
	.loc 1 222 0
	leal	(%eax,%eax,2), %edx	#, tmp153
	sall	$4, %edx	#, tmp153
	movl	%edx, -208(%ebp)	# tmp153, %sfp
.LVL24:
	.loc 1 227 0
	addl	$11, %eax	#, tmp155
.LVL25:
	movl	%eax, -188(%ebp)	# tmp155,
	fildl	-188(%ebp)	#
	fmuls	.LC2@GOTOFF(%ebx)	#
	fsubrp	%st, %st(1)	#,
	fstpl	4(%esp)	#
	leal	-72(%ebp), %esi	#, tmp161
	movl	%esi, (%esp)	# tmp161,
	call	scs_set_d@PLT	#
.LVL26:
	.loc 1 228 0
	movl	-208(%ebp), %edx	# %sfp,
	leal	table_inv_wi@GOTOFF(%ebx,%edx), %eax	#, tmp162
	movl	%eax, 8(%esp)	# tmp162,
	movl	%esi, 4(%esp)	# tmp161,
	movl	%esi, (%esp)	# tmp161,
	call	scs_mul@PLT	#
	.loc 1 232 0
	leal	sc_ln2_r10@GOTOFF(%ebx), %eax	#, tmp166
	movl	%eax, 4(%esp)	# tmp166,
	leal	-168(%ebp), %eax	#, tmp167
	movl	%eax, (%esp)	# tmp167,
	call	scs_set@PLT	#
	.loc 1 234 0
	testl	%edi, %edi	# E.65
	js	.L26	#,
	.loc 1 235 0
	movl	%edi, 4(%esp)	# E.65,
	leal	-168(%ebp), %eax	#, tmp168
	movl	%eax, (%esp)	# tmp168,
	call	scs_mul_ui@PLT	#
	jmp	.L27	#
.L26:
	.loc 1 237 0
	negl	%edi	# tmp169
.LVL27:
	movl	%edi, 4(%esp)	# tmp169,
	leal	-168(%ebp), %eax	#, tmp170
	movl	%eax, (%esp)	# tmp170,
	call	scs_mul_ui@PLT	#
	.loc 1 238 0
	movl	$-1, -124(%ebp)	#, <variable>.sign
.LVL28:
.L27:
	.loc 1 245 0
	leal	-72(%ebp), %eax	#, tmp171
	movl	%eax, 8(%esp)	# tmp171,
	leal	constant_poly@GOTOFF(%ebx), %esi	#, tmp172
	movl	%esi, 4(%esp)	# tmp172,
	leal	-120(%ebp), %eax	#, tmp173
	movl	%eax, (%esp)	# tmp173,
	call	scs_mul@PLT	#
.LVL29:
	leal	48(%esi), %edi	#, ivtmp.61
	.loc 1 173 0
	leal	960(%esi), %esi	#,
	movl	%esi, -200(%ebp)	#, %sfp
	.loc 1 247 0
	leal	-120(%ebp), %esi	#, tmp189
	.loc 1 248 0
	leal	-72(%ebp), %eax	#,
	movl	%eax, -204(%ebp)	#, %sfp
.LVL30:
.L28:
	.loc 1 247 0
	movl	%esi, 8(%esp)	# tmp189,
	movl	%edi, 4(%esp)	# ivtmp.61,
	movl	%esi, (%esp)	# tmp189,
	call	scs_add@PLT	#
	.loc 1 248 0
	movl	-204(%ebp), %edx	# %sfp,
	movl	%edx, 8(%esp)	#,
	movl	%esi, 4(%esp)	# tmp189,
	movl	%esi, (%esp)	# tmp189,
	call	scs_mul@PLT	#
	addl	$48, %edi	#, ivtmp.61
	.loc 1 246 0
	cmpl	-200(%ebp), %edi	# %sfp, ivtmp.61
	jne	.L28	#,
	.loc 1 250 0
	movl	-208(%ebp), %edx	# %sfp,
	leal	table_ti@GOTOFF(%ebx,%edx), %eax	#, tmp179
	movl	%eax, 8(%esp)	# tmp179,
	leal	-120(%ebp), %esi	#, tmp181
	movl	%esi, 4(%esp)	# tmp181,
	movl	%esi, (%esp)	# tmp181,
	call	scs_add@PLT	#
	.loc 1 251 0
	leal	-168(%ebp), %eax	#, tmp183
	movl	%eax, 8(%esp)	# tmp183,
	movl	%esi, 4(%esp)	# tmp181,
	movl	%esi, (%esp)	# tmp181,
	call	scs_add@PLT	#
	.loc 1 254 0
	movl	%esi, 4(%esp)	# tmp181,
	leal	-176(%ebp), %eax	#, tmp187
	movl	%eax, (%esp)	# tmp187,
	call	scs_get_d_minf@PLT	#
	.loc 1 256 0
	fldl	-176(%ebp)	# resd.d
.LVL31:
.L21:
	.loc 1 257 0
	addl	$220, %esp	#,
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
	.size	log10_rd, .-log10_rd
.globl log10_rn
	.type	log10_rn, @function
log10_rn:
.LFB0:
	.loc 1 75 0
	.cfi_startproc
.LVL32:
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	subl	$220, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	fldl	8(%ebp)	# x
.LVL33:
	.loc 1 83 0
	fstl	-200(%ebp)	# %sfp
	.loc 1 85 0
	movl	-196(%ebp), %eax	# %sfp, D.1339
	movl	$0, %edx	#, E
	cmpl	$1048575, %eax	#, D.1339
	jg	.L35	#,
	.loc 1 86 0
	testl	$2147483647, %eax	#, D.1339
	jne	.L36	#,
	movl	-200(%ebp), %edx	# %sfp, nb
	testl	%edx, %edx	# nb
	jne	.L36	#,
	fstp	%st(0)	#
	.loc 1 88 0
	fldl	NInf@GOTOFF(%ebx)	# NInf.d
	jmp	.L37	#
.L36:
	.loc 1 89 0
	testl	%eax, %eax	# D.1339
	jns	.L38	#,
	fstp	%st(0)	#
	.loc 1 91 0
	fldl	NaN@GOTOFF(%ebx)	# NaN.d
	jmp	.L37	#
.L38:
.LVL34:
	.loc 1 95 0
	fld	%st(0)	#
	fmull	radix_two_double@GOTOFF(%ebx)	# radix_two_double.d
	fstpl	-200(%ebp)	# %sfp
	movl	$-60, %edx	#, E
.LVL35:
.L35:
	.loc 1 99 0
	movl	-196(%ebp), %eax	# %sfp, temp.97
	cmpl	$2146435071, %eax	#, temp.97
	jle	.L39	#,
	.loc 1 100 0
	fadd	%st(0), %st	#,
	jmp	.L37	#
.L39:
	fstp	%st(0)	#
	.loc 1 103 0
	movl	%eax, %ecx	# temp.97, tmp141
	sarl	$20, %ecx	#, tmp141
	leal	-1023(%edx,%ecx), %edi	#, E.96
.LVL36:
	.loc 1 104 0
	andl	$1048575, %eax	#, tmp143
	orl	$1072693248, %eax	#, tmp143
	movl	%eax, -196(%ebp)	# tmp143, %sfp
	.loc 1 105 0
	fldl	-200(%ebp)	# %sfp
	fldl	.LC0@GOTOFF(%ebx)	#
	fxch	%st(1)	#
	fucomi	%st(1), %st	#,
	fstp	%st(1)	#
	jbe	.L48	#,
	.loc 1 106 0
	fmuls	.LC1@GOTOFF(%ebx)	#
	fstpl	-200(%ebp)	# %sfp
	.loc 1 107 0
	addl	$1, %edi	#, E.96
.LVL37:
	jmp	.L40	#
.L48:
	fstp	%st(0)	#
.L40:
	.loc 1 113 0
	fldl	-200(%ebp)	# %sfp
	fld	%st(0)	#
	faddl	norm_number@GOTOFF(%ebx)	# norm_number.d
	fstpl	-200(%ebp)	# %sfp
	.loc 1 114 0
	movl	-196(%ebp), %eax	# %sfp, i
	andl	$1048575, %eax	#, i
.LVL38:
	.loc 1 115 0
	sarl	$16, %eax	#, i.99
.LVL39:
	.loc 1 123 0
	leal	(%eax,%eax,2), %edx	#, tmp153
	sall	$4, %edx	#, tmp153
	movl	%edx, -208(%ebp)	# tmp153, %sfp
.LVL40:
	.loc 1 128 0
	addl	$11, %eax	#, tmp155
.LVL41:
	movl	%eax, -188(%ebp)	# tmp155,
	fildl	-188(%ebp)	#
	fmuls	.LC2@GOTOFF(%ebx)	#
	fsubrp	%st, %st(1)	#,
	fstpl	4(%esp)	#
	leal	-72(%ebp), %esi	#, tmp161
	movl	%esi, (%esp)	# tmp161,
	call	scs_set_d@PLT	#
.LVL42:
	.loc 1 129 0
	movl	-208(%ebp), %edx	# %sfp,
	leal	table_inv_wi@GOTOFF(%ebx,%edx), %eax	#, tmp162
	movl	%eax, 8(%esp)	# tmp162,
	movl	%esi, 4(%esp)	# tmp161,
	movl	%esi, (%esp)	# tmp161,
	call	scs_mul@PLT	#
	.loc 1 133 0
	leal	sc_ln2_r10@GOTOFF(%ebx), %eax	#, tmp166
	movl	%eax, 4(%esp)	# tmp166,
	leal	-168(%ebp), %eax	#, tmp167
	movl	%eax, (%esp)	# tmp167,
	call	scs_set@PLT	#
	.loc 1 135 0
	testl	%edi, %edi	# E.96
	js	.L42	#,
	.loc 1 136 0
	movl	%edi, 4(%esp)	# E.96,
	leal	-168(%ebp), %eax	#, tmp168
	movl	%eax, (%esp)	# tmp168,
	call	scs_mul_ui@PLT	#
	jmp	.L43	#
.L42:
	.loc 1 138 0
	negl	%edi	# tmp169
.LVL43:
	movl	%edi, 4(%esp)	# tmp169,
	leal	-168(%ebp), %eax	#, tmp170
	movl	%eax, (%esp)	# tmp170,
	call	scs_mul_ui@PLT	#
	.loc 1 139 0
	movl	$-1, -124(%ebp)	#, <variable>.sign
.LVL44:
.L43:
	.loc 1 146 0
	leal	-72(%ebp), %eax	#, tmp171
	movl	%eax, 8(%esp)	# tmp171,
	leal	constant_poly@GOTOFF(%ebx), %esi	#, tmp172
	movl	%esi, 4(%esp)	# tmp172,
	leal	-120(%ebp), %eax	#, tmp173
	movl	%eax, (%esp)	# tmp173,
	call	scs_mul@PLT	#
.LVL45:
	leal	48(%esi), %edi	#, ivtmp.92
	.loc 1 74 0
	leal	960(%esi), %esi	#,
	movl	%esi, -200(%ebp)	#, %sfp
	.loc 1 148 0
	leal	-120(%ebp), %esi	#, tmp189
	.loc 1 149 0
	leal	-72(%ebp), %eax	#,
	movl	%eax, -204(%ebp)	#, %sfp
.LVL46:
.L44:
	.loc 1 148 0
	movl	%esi, 8(%esp)	# tmp189,
	movl	%edi, 4(%esp)	# ivtmp.92,
	movl	%esi, (%esp)	# tmp189,
	call	scs_add@PLT	#
	.loc 1 149 0
	movl	-204(%ebp), %edx	# %sfp,
	movl	%edx, 8(%esp)	#,
	movl	%esi, 4(%esp)	# tmp189,
	movl	%esi, (%esp)	# tmp189,
	call	scs_mul@PLT	#
	addl	$48, %edi	#, ivtmp.92
	.loc 1 147 0
	cmpl	-200(%ebp), %edi	# %sfp, ivtmp.92
	jne	.L44	#,
	.loc 1 151 0
	movl	-208(%ebp), %edx	# %sfp,
	leal	table_ti@GOTOFF(%ebx,%edx), %eax	#, tmp179
	movl	%eax, 8(%esp)	# tmp179,
	leal	-120(%ebp), %esi	#, tmp181
	movl	%esi, 4(%esp)	# tmp181,
	movl	%esi, (%esp)	# tmp181,
	call	scs_add@PLT	#
	.loc 1 152 0
	leal	-168(%ebp), %eax	#, tmp183
	movl	%eax, 8(%esp)	# tmp183,
	movl	%esi, 4(%esp)	# tmp181,
	movl	%esi, (%esp)	# tmp181,
	call	scs_add@PLT	#
	.loc 1 155 0
	movl	%esi, 4(%esp)	# tmp181,
	leal	-176(%ebp), %eax	#, tmp187
	movl	%eax, (%esp)	# tmp187,
	call	scs_get_d@PLT	#
	.loc 1 157 0
	fldl	-176(%ebp)	# resd.d
.LVL47:
.L37:
	.loc 1 158 0
	addl	$220, %esp	#,
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
	.size	log10_rn, .-log10_rn
	.section	.rodata
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
	.align 4
	.type	radix_two_double, @object
	.size	radix_two_double, 8
radix_two_double:
# i:
	.long	0
	.long	1135607808
	.align 4
	.type	norm_number, @object
	.size	norm_number, 8
norm_number:
# i:
	.long	0
	.long	1070989312
	.align 32
	.type	table_ti, @object
	.size	table_ti, 624
table_ti:
# h_word:
	.long	174727105
	.long	246714469
	.long	323320206
	.long	335968688
	.long	136246417
	.long	402031200
	.long	587341253
	.long	710890300
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	134151946
	.long	1002930231
	.long	370012460
	.long	193262474
	.long	86545797
	.long	555994976
	.long	349080202
	.long	365399534
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	96826419
	.long	593997754
	.long	914092373
	.long	652088274
	.long	10387396
	.long	453338754
	.long	1070418240
	.long	2933334
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	62268378
	.long	993353633
	.long	632846391
	.long	436944183
	.long	378428446
	.long	535476034
	.long	258395118
	.long	738978055
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	30095612
	.long	862125933
	.long	694888774
	.long	227946084
	.long	305600119
	.long	866265871
	.long	143116480
	.long	1015128481
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
# exception:
# i:
	.long	0
	.long	0
# index:
	.long	0
# sign:
	.long	1
# h_word:
	.long	28270482
	.long	738433086
	.long	652085869
	.long	703057059
	.long	171152734
	.long	1041893738
	.long	458853799
	.long	932003775
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	54924602
	.long	810516302
	.long	84095066
	.long	1056692020
	.long	615754395
	.long	65175502
	.long	1022754728
	.long	201605128
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	80137237
	.long	474419584
	.long	114328294
	.long	839052754
	.long	1458734
	.long	123883454
	.long	316491482
	.long	891696167
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	104056334
	.long	140804297
	.long	748865509
	.long	1039058213
	.long	854687501
	.long	763470929
	.long	205963721
	.long	424012877
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	126808170
	.long	820092899
	.long	895002959
	.long	813010311
	.long	323871746
	.long	85694445
	.long	39697987
	.long	901768431
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	148501391
	.long	422178647
	.long	500799781
	.long	33506456
	.long	652599572
	.long	775134255
	.long	59832055
	.long	221513898
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	169230143
	.long	1014988856
	.long	768950901
	.long	276376084
	.long	297588435
	.long	551673617
	.long	482096956
	.long	310195126
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
	.align 32
	.type	table_inv_wi, @object
	.size	table_inv_wi, 624
table_inv_wi:
# h_word:
	.long	1
	.long	488064465
	.long	488064465
	.long	488064465
	.long	488064465
	.long	488064465
	.long	488128042
	.long	914576770
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	0
# sign:
	.long	1
# h_word:
	.long	1
	.long	357913941
	.long	357913941
	.long	357913941
	.long	357913941
	.long	357913941
	.long	357866366
	.long	440495211
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	0
# sign:
	.long	1
# h_word:
	.long	1
	.long	247786574
	.long	825955249
	.long	247786574
	.long	825955249
	.long	247786574
	.long	825911333
	.long	984779639
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	0
# sign:
	.long	1
# h_word:
	.long	1
	.long	153391689
	.long	153391689
	.long	153391689
	.long	153391689
	.long	153391689
	.long	153324404
	.long	653664422
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	0
# sign:
	.long	1
# h_word:
	.long	1
	.long	71582788
	.long	286331153
	.long	71582788
	.long	286331153
	.long	71582788
	.long	286381582
	.long	520920408
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	0
# sign:
	.long	1
# h_word:
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	0
# sign:
	.long	1
# h_word:
	.long	1010580540
	.long	252645135
	.long	63161283
	.long	821096688
	.long	1010580540
	.long	252678717
	.long	383836324
	.long	981737519
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	954437176
	.long	954437176
	.long	954437176
	.long	954437176
	.long	954437176
	.long	954438762
	.long	772727497
	.long	225316797
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	904203641
	.long	282563637
	.long	960716368
	.long	904203641
	.long	282563637
	.long	960705101
	.long	104327813
	.long	320497594
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	858993459
	.long	214748364
	.long	858993459
	.long	214748364
	.long	858993459
	.long	214748364
	.long	858993459
	.long	214748364
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	818089008
	.long	818089008
	.long	818089008
	.long	818089008
	.long	818089008
	.long	818082212
	.long	369711265
	.long	721665160
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	780903144
	.long	780903144
	.long	780903144
	.long	780903144
	.long	780903144
	.long	780913524
	.long	762885413
	.long	10607463
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	746950834
	.long	93368854
	.long	280106562
	.long	840319688
	.long	373475417
	.long	46684427
	.long	140053281
	.long	420159844
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
	.align 32
	.type	sc_ln2_r10, @object
	.size	sc_ln2_r10, 48
sc_ln2_r10:
# h_word:
	.long	323228496
	.long	668893116
	.long	824119987
	.long	369475144
	.long	788845990
	.long	103423631
	.long	647173308
	.long	932404198
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
	.align 32
	.type	constant_poly, @object
	.size	constant_poly, 960
constant_poly:
# h_word:
	.long	23424973
	.long	923930020
	.long	420102189
	.long	717791817
	.long	401317583
	.long	557395127
	.long	508772266
	.long	513057985
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	24651871
	.long	886959656
	.long	285482794
	.long	296812
	.long	1010303824
	.long	813588391
	.long	450358218
	.long	752431034
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	25906435
	.long	332312790
	.long	255225232
	.long	609409965
	.long	654005392
	.long	526036390
	.long	303083998
	.long	514003609
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	27430371
	.long	245794691
	.long	345905489
	.long	260572893
	.long	968440135
	.long	225702766
	.long	626427471
	.long	905664852
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	29145009
	.long	662314649
	.long	167872193
	.long	716908500
	.long	551767713
	.long	123261739
	.long	485224996
	.long	494608406
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	31088010
	.long	217938987
	.long	828646903
	.long	764601551
	.long	9183196
	.long	598645951
	.long	492149472
	.long	460273339
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	33308582
	.long	88109694
	.long	475600007
	.long	294023454
	.long	165283995
	.long	537211744
	.long	513504234
	.long	1002139946
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	35870780
	.long	755715171
	.long	160919935
	.long	907510878
	.long	865229577
	.long	962628859
	.long	517578462
	.long	1017787097
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	38860012
	.long	460987240
	.long	76947674
	.long	70377687
	.long	772613673
	.long	282408978
	.long	148203659
	.long	328724620
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	42392740
	.long	893346702
	.long	531160649
	.long	680049232
	.long	886476139
	.long	242986299
	.long	435820166
	.long	42125172
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	46632014
	.long	982681281
	.long	249483506
	.long	1008105111
	.long	594983171
	.long	659197594
	.long	514039540
	.long	450832488
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	51813349
	.long	972563443
	.long	175015032
	.long	171368203
	.long	78188119
	.long	179531646
	.long	1033777797
	.long	773406645
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	58290018
	.long	691480689
	.long	625832049
	.long	470178396
	.long	860335387
	.long	816356458
	.long	828065298
	.long	106325840
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	66617164
	.long	176696888
	.long	715232669
	.long	664453128
	.long	1016434414
	.long	32435889
	.long	881981872
	.long	603410059
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	77720024
	.long	921974252
	.long	834434018
	.long	985409025
	.long	968098256
	.long	215354081
	.long	533303048
	.long	703623155
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	93264029
	.long	891620738
	.long	571824093
	.long	651422183
	.long	35906766
	.long	1025852365
	.long	635998912
	.long	486350739
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	116580037
	.long	309219555
	.long	177909205
	.long	368451757
	.long	275050111
	.long	1071793515
	.long	793556351
	.long	828109131
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	155440049
	.long	770206681
	.long	595126215
	.long	133321869
	.long	578233404
	.long	1057307324
	.long	801970908
	.long	598664993
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	233160074
	.long	618439110
	.long	355818410
	.long	736840950
	.long	679116192
	.long	875978076
	.long	866385227
	.long	628463723
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	466320149
	.long	163136396
	.long	711636821
	.long	399940078
	.long	60752874
	.long	496406811
	.long	279934998
	.long	387490353
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
	.comm	crlibm_second_step_taken,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1719614413
	.long	1073127582
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1056964608
	.align 4
.LC2:
	.long	1031798784
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
.LFB3:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE3:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL8-.Ltext0
	.long	.LVL10-1-.Ltext0
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	table_inv_wi
	.byte	0x22
	.byte	0x9f
	.long	.LVL10-1-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x3
	.long	table_inv_wi
	.byte	0x22
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL8-.Ltext0
	.long	.LVL10-1-.Ltext0
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	table_ti
	.byte	0x22
	.byte	0x9f
	.long	.LVL10-1-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x3
	.long	table_ti
	.byte	0x22
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL6-.Ltext0
	.long	.LVL9-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL9-.Ltext0
	.long	.LVL10-1-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -11
	.byte	0x9f
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xc4
	.byte	0x9f
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL4-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.value	0x4
	.byte	0x77
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL24-.Ltext0
	.long	.LVL26-1-.Ltext0
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	table_inv_wi
	.byte	0x22
	.byte	0x9f
	.long	.LVL26-1-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x3
	.long	table_inv_wi
	.byte	0x22
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL24-.Ltext0
	.long	.LVL26-1-.Ltext0
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	table_ti
	.byte	0x22
	.byte	0x9f
	.long	.LVL26-1-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x3
	.long	table_ti
	.byte	0x22
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL22-.Ltext0
	.long	.LVL25-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL25-.Ltext0
	.long	.LVL26-1-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -11
	.byte	0x9f
	.long	.LVL29-.Ltext0
	.long	.LVL30-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL17-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xc4
	.byte	0x9f
	.long	.LVL19-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL20-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.value	0x4
	.byte	0x77
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL40-.Ltext0
	.long	.LVL42-1-.Ltext0
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	table_inv_wi
	.byte	0x22
	.byte	0x9f
	.long	.LVL42-1-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x3
	.long	table_inv_wi
	.byte	0x22
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL40-.Ltext0
	.long	.LVL42-1-.Ltext0
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	table_ti
	.byte	0x22
	.byte	0x9f
	.long	.LVL42-1-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x3
	.long	table_ti
	.byte	0x22
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL38-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL41-.Ltext0
	.long	.LVL42-1-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -11
	.byte	0x9f
	.long	.LVL45-.Ltext0
	.long	.LVL46-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL33-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL34-.Ltext0
	.long	.LVL35-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xc4
	.byte	0x9f
	.long	.LVL35-.Ltext0
	.long	.LVL36-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL36-.Ltext0
	.long	.LVL43-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL43-.Ltext0
	.long	.LVL44-.Ltext0
	.value	0x4
	.byte	0x77
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.long	0x0
	.long	0x0
	.file 2 "scs.h"
	.file 3 "scs_private.h"
	.file 4 "crlibm_private.h"
	.file 5 "log10.h"
	.section	.debug_info
	.long	0x4c0
	.value	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF37
	.byte	0xc
	.long	.LASF38
	.long	.LASF39
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
	.uleb128 0xb
	.string	"scs"
	.byte	0x2
	.byte	0x71
	.long	0x80
	.uleb128 0x8
	.long	.LASF8
	.byte	0x2
	.byte	0x76
	.long	0xe3
	.uleb128 0xc
	.byte	0x4
	.long	0x80
	.uleb128 0x8
	.long	.LASF9
	.byte	0x2
	.byte	0x7f
	.long	0xf4
	.uleb128 0x4
	.long	0x80
	.long	0x104
	.uleb128 0x5
	.long	0x59
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.value	0x10a
	.byte	0x1
	.long	0x6e
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.long	0x1d1
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.value	0x10a
	.long	0x6e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.string	"R"
	.byte	0x1
	.value	0x10c
	.long	0xe9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF10
	.byte	0x1
	.value	0x10c
	.long	0xe9
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.long	.LASF11
	.byte	0x1
	.value	0x10d
	.long	0xe9
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x11
	.long	.LASF12
	.byte	0x1
	.value	0x10e
	.long	0xd8
	.long	.LLST0
	.uleb128 0x12
	.string	"ti"
	.byte	0x1
	.value	0x10e
	.long	0xd8
	.long	.LLST1
	.uleb128 0xf
	.string	"nb"
	.byte	0x1
	.value	0x110
	.long	0x75
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0xf
	.string	"nb2"
	.byte	0x1
	.value	0x110
	.long	0x75
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0x13
	.string	"wi"
	.byte	0x1
	.value	0x110
	.long	0x75
	.uleb128 0x10
	.long	.LASF13
	.byte	0x1
	.value	0x110
	.long	0x75
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.value	0x111
	.long	0x60
	.long	.LLST2
	.uleb128 0x12
	.string	"E"
	.byte	0x1
	.value	0x111
	.long	0x60
	.long	.LLST3
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	0x6e
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.long	0x291
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0xad
	.long	0x6e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"R"
	.byte	0x1
	.byte	0xaf
	.long	0xe9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.long	.LASF10
	.byte	0x1
	.byte	0xaf
	.long	0xe9
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.long	.LASF11
	.byte	0x1
	.byte	0xb0
	.long	0xe9
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x18
	.long	.LASF12
	.byte	0x1
	.byte	0xb1
	.long	0xd8
	.long	.LLST4
	.uleb128 0x19
	.string	"ti"
	.byte	0x1
	.byte	0xb1
	.long	0xd8
	.long	.LLST5
	.uleb128 0x16
	.string	"nb"
	.byte	0x1
	.byte	0xb3
	.long	0x75
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0x16
	.string	"nb2"
	.byte	0x1
	.byte	0xb3
	.long	0x75
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0x1a
	.string	"wi"
	.byte	0x1
	.byte	0xb3
	.long	0x75
	.uleb128 0x17
	.long	.LASF13
	.byte	0x1
	.byte	0xb3
	.long	0x75
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xb4
	.long	0x60
	.long	.LLST6
	.uleb128 0x19
	.string	"E"
	.byte	0x1
	.byte	0xb4
	.long	0x60
	.long	.LLST7
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	0x6e
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.long	0x351
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0x4a
	.long	0x6e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"R"
	.byte	0x1
	.byte	0x4c
	.long	0xe9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.long	.LASF10
	.byte	0x1
	.byte	0x4c
	.long	0xe9
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.long	.LASF11
	.byte	0x1
	.byte	0x4d
	.long	0xe9
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x18
	.long	.LASF12
	.byte	0x1
	.byte	0x4e
	.long	0xd8
	.long	.LLST8
	.uleb128 0x19
	.string	"ti"
	.byte	0x1
	.byte	0x4e
	.long	0xd8
	.long	.LLST9
	.uleb128 0x16
	.string	"nb"
	.byte	0x1
	.byte	0x50
	.long	0x75
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0x16
	.string	"nb2"
	.byte	0x1
	.byte	0x50
	.long	0x75
	.byte	0x3
	.byte	0x75
	.sleb128 -200
	.uleb128 0x1a
	.string	"wi"
	.byte	0x1
	.byte	0x50
	.long	0x75
	.uleb128 0x17
	.long	.LASF13
	.byte	0x1
	.byte	0x50
	.long	0x75
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x51
	.long	0x60
	.long	.LLST10
	.uleb128 0x19
	.string	"E"
	.byte	0x1
	.byte	0x51
	.long	0x60
	.long	.LLST11
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x3
	.byte	0x47
	.long	0x35c
	.uleb128 0x1c
	.long	0x75
	.uleb128 0x17
	.long	.LASF18
	.byte	0x3
	.byte	0x48
	.long	0x35c
	.byte	0x5
	.byte	0x3
	.long	radix_two_double
	.uleb128 0x1b
	.long	.LASF19
	.byte	0x3
	.byte	0x49
	.long	0x35c
	.uleb128 0x1b
	.long	.LASF20
	.byte	0x3
	.byte	0x4a
	.long	0x35c
	.uleb128 0x1b
	.long	.LASF21
	.byte	0x3
	.byte	0x4b
	.long	0x35c
	.uleb128 0x1b
	.long	.LASF22
	.byte	0x3
	.byte	0x4c
	.long	0x35c
	.uleb128 0x1b
	.long	.LASF23
	.byte	0x3
	.byte	0x4d
	.long	0x35c
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x3
	.byte	0x4e
	.long	0x35c
	.uleb128 0x1b
	.long	.LASF25
	.byte	0x4
	.byte	0xca
	.long	0x3bf
	.uleb128 0x1c
	.long	0x80
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x4
	.byte	0xce
	.long	0x3bf
	.uleb128 0x1b
	.long	.LASF27
	.byte	0x4
	.byte	0xd2
	.long	0x3bf
	.uleb128 0x1b
	.long	.LASF28
	.byte	0x4
	.byte	0xd6
	.long	0x3bf
	.uleb128 0x1b
	.long	.LASF29
	.byte	0x4
	.byte	0xda
	.long	0x3bf
	.uleb128 0x16
	.string	"NaN"
	.byte	0x5
	.byte	0x8
	.long	0x35c
	.byte	0x5
	.byte	0x3
	.long	NaN
	.uleb128 0x1b
	.long	.LASF30
	.byte	0x5
	.byte	0x9
	.long	0x35c
	.uleb128 0x1a
	.string	"Inf"
	.byte	0x5
	.byte	0xa
	.long	0x35c
	.uleb128 0x17
	.long	.LASF31
	.byte	0x5
	.byte	0xb
	.long	0x35c
	.byte	0x5
	.byte	0x3
	.long	NInf
	.uleb128 0x17
	.long	.LASF32
	.byte	0x5
	.byte	0x12
	.long	0x35c
	.byte	0x5
	.byte	0x3
	.long	norm_number
	.uleb128 0x17
	.long	.LASF33
	.byte	0x5
	.byte	0x16
	.long	0x44a
	.byte	0x5
	.byte	0x3
	.long	sc_ln2_r10
	.uleb128 0x1c
	.long	0xcd
	.uleb128 0x4
	.long	0xcd
	.long	0x45f
	.uleb128 0x5
	.long	0x59
	.byte	0xc
	.byte	0x0
	.uleb128 0x17
	.long	.LASF34
	.byte	0x5
	.byte	0x1c
	.long	0x470
	.byte	0x5
	.byte	0x3
	.long	table_ti
	.uleb128 0x1c
	.long	0x44f
	.uleb128 0x17
	.long	.LASF35
	.byte	0x5
	.byte	0x60
	.long	0x486
	.byte	0x5
	.byte	0x3
	.long	table_inv_wi
	.uleb128 0x1c
	.long	0x44f
	.uleb128 0x4
	.long	0xcd
	.long	0x49b
	.uleb128 0x5
	.long	0x59
	.byte	0x13
	.byte	0x0
	.uleb128 0x17
	.long	.LASF36
	.byte	0x5
	.byte	0xa9
	.long	0x4ac
	.byte	0x5
	.byte	0x3
	.long	constant_poly
	.uleb128 0x1c
	.long	0x48b
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x4
	.byte	0x32
	.long	0x60
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.long	0x52
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4c4
	.long	0x104
	.string	"log10_ru"
	.long	0x1d1
	.string	"log10_rd"
	.long	0x291
	.string	"log10_rn"
	.long	0x4b1
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x42
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4c4
	.long	0x75
	.string	"db_number"
	.long	0x80
	.string	"scs"
	.long	0xcd
	.string	"scs"
	.long	0xd8
	.string	"scs_ptr"
	.long	0xe9
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
.LASF13:
	.string	"resd"
.LASF27:
	.string	"scs_one"
.LASF31:
	.string	"NInf"
.LASF39:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF40:
	.string	"crlibm_second_step_taken"
.LASF19:
	.string	"radix_mone_double"
.LASF36:
	.string	"constant_poly"
.LASF17:
	.string	"radix_one_double"
.LASF29:
	.string	"scs_sixinv"
.LASF25:
	.string	"scs_zer"
.LASF6:
	.string	"sign"
.LASF33:
	.string	"sc_ln2_r10"
.LASF9:
	.string	"scs_t"
.LASF2:
	.string	"double"
.LASF15:
	.string	"log10_rd"
.LASF32:
	.string	"norm_number"
.LASF18:
	.string	"radix_two_double"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"log10_rn"
.LASF1:
	.string	"long long unsigned int"
.LASF10:
	.string	"res1"
.LASF4:
	.string	"exception"
.LASF14:
	.string	"log10_ru"
.LASF28:
	.string	"scs_two"
.LASF37:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF12:
	.string	"inv_wi"
.LASF20:
	.string	"radix_mtwo_double"
.LASF5:
	.string	"index"
.LASF8:
	.string	"scs_ptr"
.LASF21:
	.string	"radix_rng_double"
.LASF34:
	.string	"table_ti"
.LASF3:
	.string	"h_word"
.LASF11:
	.string	"sc_ln2_r10_times_E"
.LASF30:
	.string	"NNaN"
.LASF35:
	.string	"table_inv_wi"
.LASF26:
	.string	"scs_half"
.LASF24:
	.string	"min_double"
.LASF38:
	.string	"log10.c"
.LASF7:
	.string	"db_number"
.LASF22:
	.string	"radix_mrng_double"
.LASF23:
	.string	"max_double"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
