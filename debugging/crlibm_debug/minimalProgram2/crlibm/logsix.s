	.file	"logsix.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
# logsix.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
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
.globl scs_log
	.type	scs_log, @function
scs_log:
.LFB3:
	.file 1 "logsix.c"
	.loc 1 60 0
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
	subl	$252, %esp	#,
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__i686.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
	.loc 1 68 0
	movl	crlibm_second_step_taken@GOT(%ebx), %eax	#, tmp135
	addl	$1, (%eax)	#, crlibm_second_step_taken
	.loc 1 74 0
	fldl	12(%ebp)	# y
	fld	%st(0)	#
	faddl	norm_number@GOTOFF(%ebx)	# norm_number.d
	fstpl	-232(%ebp)	# %sfp
	.loc 1 75 0
	movl	-228(%ebp), %eax	# %sfp, i
	andl	$1048575, %eax	#, i
.LVL1:
	.loc 1 76 0
	sarl	$16, %eax	#, i.36
.LVL2:
	.loc 1 85 0
	leal	(%eax,%eax,2), %edi	#, tmp143
	sall	$4, %edi	#, tmp144
	leal	table_ti@GOTOFF(%ebx,%edi), %edx	#,
	movl	%edx, -244(%ebp)	#, %sfp
.LVL3:
	.loc 1 89 0
	addl	$11, %eax	#, tmp146
.LVL4:
	movl	%eax, -220(%ebp)	# tmp146,
	fildl	-220(%ebp)	#
	fmuls	.LC0@GOTOFF(%ebx)	#
	fsubrp	%st, %st(1)	#,
	fstpl	4(%esp)	#
	leal	-72(%ebp), %esi	#, tmp152
	movl	%esi, (%esp)	# tmp152,
	call	scs_set_d@PLT	#
.LVL5:
	.loc 1 90 0
	leal	table_inv_wi@GOTOFF(%ebx,%edi), %eax	#, tmp153
	movl	%eax, 8(%esp)	# tmp153,
	movl	%esi, 4(%esp)	# tmp152,
	movl	%esi, (%esp)	# tmp152,
	call	scs_mul@PLT	#
	.loc 1 97 0
	movl	%esi, 8(%esp)	# tmp152,
	leal	constant_poly@GOTOFF(%ebx), %edi	#, tmp158
.LVL6:
	movl	%edi, 4(%esp)	# tmp158,
	leal	-168(%ebp), %eax	#, tmp159
	movl	%eax, (%esp)	# tmp159,
	call	scs_mul@PLT	#
.LVL7:
	leal	48(%edi), %esi	#, ivtmp.31
	.loc 1 60 0
	leal	960(%edi), %edi	#,
	movl	%edi, -236(%ebp)	#, %sfp
	.loc 1 99 0
	leal	-168(%ebp), %edi	#, tmp175
	leal	-216(%ebp), %eax	#,
	movl	%eax, -232(%ebp)	#, %sfp
	.loc 1 100 0
	leal	-72(%ebp), %edx	#,
	movl	%edx, -240(%ebp)	#, %sfp
.LVL8:
.L2:
	.loc 1 99 0
	movl	%edi, 8(%esp)	# tmp175,
	movl	%esi, 4(%esp)	# ivtmp.31,
	movl	-232(%ebp), %eax	# %sfp,
	movl	%eax, (%esp)	#,
	call	scs_add@PLT	#
	.loc 1 100 0
	movl	-240(%ebp), %edx	# %sfp,
	movl	%edx, 8(%esp)	#,
	movl	-232(%ebp), %eax	# %sfp,
	movl	%eax, 4(%esp)	#,
	movl	%edi, (%esp)	# tmp175,
	call	scs_mul@PLT	#
	addl	$48, %esi	#, ivtmp.31
	.loc 1 98 0
	cmpl	-236(%ebp), %esi	# %sfp, ivtmp.31
	jne	.L2	#,
	.loc 1 103 0
	cmpl	$0, 20(%ebp)	#, E
	jne	.L3	#,
	.loc 1 104 0
	movl	-244(%ebp), %edx	# %sfp,
	movl	%edx, 8(%esp)	#,
	leal	-168(%ebp), %eax	#, tmp165
	movl	%eax, 4(%esp)	# tmp165,
	movl	8(%ebp), %eax	# res,
	movl	%eax, (%esp)	#,
	call	scs_add@PLT	#
	jmp	.L7	#
.L3:
	.loc 1 107 0
	leal	sc_ln2@GOTOFF(%ebx), %eax	#, tmp166
	movl	%eax, 4(%esp)	# tmp166,
	leal	-120(%ebp), %eax	#, tmp167
	movl	%eax, (%esp)	# tmp167,
	call	scs_set@PLT	#
	.loc 1 109 0
	cmpl	$0, 20(%ebp)	#, E
	js	.L5	#,
	.loc 1 110 0
	movl	20(%ebp), %edx	# E,
	movl	%edx, 4(%esp)	#,
	leal	-120(%ebp), %eax	#, tmp168
	movl	%eax, (%esp)	# tmp168,
	call	scs_mul_ui@PLT	#
	jmp	.L6	#
.L5:
	.loc 1 112 0
	movl	20(%ebp), %eax	# E, tmp169
	negl	%eax	# tmp169
	movl	%eax, 4(%esp)	# tmp169,
	leal	-120(%ebp), %eax	#, tmp170
	movl	%eax, (%esp)	# tmp170,
	call	scs_mul_ui@PLT	#
	.loc 1 113 0
	movl	$-1, -76(%ebp)	#, <variable>.sign
.L6:
	.loc 1 115 0
	movl	-244(%ebp), %eax	# %sfp,
	movl	%eax, 8(%esp)	#,
	leal	-168(%ebp), %eax	#, tmp171
	movl	%eax, 4(%esp)	# tmp171,
	leal	-216(%ebp), %esi	#, tmp172
	movl	%esi, (%esp)	# tmp172,
	call	scs_add@PLT	#
	.loc 1 116 0
	leal	-120(%ebp), %eax	#, tmp173
	movl	%eax, 8(%esp)	# tmp173,
	movl	%esi, 4(%esp)	# tmp172,
	movl	8(%ebp), %edx	# res,
	movl	%edx, (%esp)	#,
	call	scs_add@PLT	#
.L7:
	.loc 1 118 0
	addl	$252, %esp	#,
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
	.size	scs_log, .-scs_log
	.section	.rodata
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
	.long	402324027
	.long	906315515
	.long	510647123
	.long	185738726
	.long	368281991
	.long	644237058
	.long	1018281837
	.long	294282489
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	308896273
	.long	221701278
	.long	62830439
	.long	453159536
	.long	707851408
	.long	926071607
	.long	606455514
	.long	533019918
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	222951070
	.long	291191917
	.long	962548669
	.long	193993625
	.long	779557002
	.long	1044191925
	.long	289922782
	.long	88619748
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	143378241
	.long	83660667
	.long	832330255
	.long	954580227
	.long	836610302
	.long	821069381
	.long	799135173
	.long	46551709
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	69297709
	.long	434348136
	.long	579860079
	.long	889403180
	.long	79633174
	.long	267499612
	.long	7086514
	.long	564785110
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
	.long	65095192
	.long	9114931
	.long	49910498
	.long	930453880
	.long	640995795
	.long	322395867
	.long	776353002
	.long	500108015
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	126468571
	.long	581906014
	.long	665460735
	.long	570334741
	.long	393106351
	.long	67198059
	.long	35259713
	.long	7205335
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	184522808
	.long	351435385
	.long	60756048
	.long	239224693
	.long	1060460316
	.long	895479816
	.long	480329468
	.long	1009550480
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	239598563
	.long	861094965
	.long	556712183
	.long	637498180
	.long	628218234
	.long	658581986
	.long	313594331
	.long	738530664
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	291986603
	.long	719946624
	.long	969702743
	.long	68914050
	.long	264347457
	.long	172214557
	.long	354676585
	.long	374041078
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	341937090
	.long	118993055
	.long	280474491
	.long	217173264
	.long	366785353
	.long	201376663
	.long	741985435
	.long	659330216
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	389666806
	.long	787743143
	.long	237290815
	.long	726646245
	.long	716666947
	.long	485120373
	.long	518976073
	.long	944579396
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
	.type	constant_poly, @object
	.size	constant_poly, 960
constant_poly:
# h_word:
	.long	53937995
	.long	660253788
	.long	754231443
	.long	939605187
	.long	345650198
	.long	235303687
	.long	309614088
	.long	374923477
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	56763032
	.long	623900252
	.long	50337104
	.long	793082120
	.long	855084748
	.long	390343246
	.long	494953318
	.long	743453966
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	59651771
	.long	812014236
	.long	294925511
	.long	1071565003
	.long	937245403
	.long	644074821
	.long	588137449
	.long	851011132
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	63160763
	.long	952398766
	.long	422288408
	.long	606829646
	.long	1034481096
	.long	71651326
	.long	754004934
	.long	210923472
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	67108864
	.long	728939274
	.long	59727612
	.long	879120530
	.long	610383561
	.long	388984912
	.long	303609281
	.long	273179351
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	71582788
	.long	927937316
	.long	355581169
	.long	494740476
	.long	654284400
	.long	956052398
	.long	364846331
	.long	748624941
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	76695844
	.long	613017014
	.long	680204741
	.long	680743323
	.long	742340032
	.long	193723854
	.long	893496137
	.long	501487036
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	82595524
	.long	990700733
	.long	349257798
	.long	37989865
	.long	138199887
	.long	960391770
	.long	739792370
	.long	631069087
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	89478485
	.long	357914203
	.long	105595567
	.long	331118945
	.long	328627531
	.long	869815317
	.long	732252372
	.long	60575734
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	97612893
	.long	97613084
	.long	620416261
	.long	122949510
	.long	21966529
	.long	1001650827
	.long	48355916
	.long	855933308
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	107374182
	.long	429496729
	.long	560365281
	.long	257914346
	.long	893055871
	.long	628677281
	.long	130510663
	.long	374609204
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	119304647
	.long	119304647
	.long	65515400
	.long	801791348
	.long	196362040
	.long	84859760
	.long	909227670
	.long	532930771
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	134217728
	.long	0
	.long	15046
	.long	918623108
	.long	760834740
	.long	153450616
	.long	93838374
	.long	761299258
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	153391689
	.long	153391689
	.long	153399771
	.long	218114753
	.long	246404872
	.long	726528541
	.long	72931987
	.long	756106764
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	178956970
	.long	715827882
	.long	715827881
	.long	196502286
	.long	776250831
	.long	972238340
	.long	274150073
	.long	27746824
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	214748364
	.long	858993459
	.long	214748364
	.long	196863720
	.long	624060906
	.long	247637552
	.long	283049052
	.long	596307771
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	268435456
	.long	0
	.long	0
	.long	72028
	.long	911527258
	.long	382350449
	.long	876424608
	.long	592606194
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	357913941
	.long	357913941
	.long	357913941
	.long	357933536
	.long	783419722
	.long	131983505
	.long	588131322
	.long	682288811
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
# h_word:
	.long	536870911
	.long	1073741823
	.long	1073741823
	.long	1073741823
	.long	43767835
	.long	906978271
	.long	684886995
	.long	1008071572
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	-1
# h_word:
	.long	1073741823
	.long	1073741823
	.long	1073741823
	.long	1073741823
	.long	971000702
	.long	149218103
	.long	438185683
	.long	602429189
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
	.align 32
	.type	sc_ln2, @object
	.size	sc_ln2, 48
sc_ln2:
# h_word:
	.long	744261117
	.long	1025308570
	.long	791121614
	.long	402911990
	.long	735067344
	.long	845621643
	.long	414591028
	.long	391875498
# exception:
# i:
	.long	0
	.long	1072693248
# index:
	.long	-1
# sign:
	.long	1
	.comm	crlibm_second_step_taken,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1031798784
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
	.long	.LVL3-.Ltext0
	.long	.LVL5-1-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL5-1-.Ltext0
	.long	.LFE3-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -252
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL3-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.long	table_inv_wi
	.byte	0x22
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL1-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL4-.Ltext0
	.long	.LVL5-1-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -11
	.byte	0x9f
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0x0
	.long	0x0
	.file 2 "/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "scs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "scs_private.h"
	.file 8 "crlibm_private.h"
	.file 9 "log.h"
	.section	.debug_info
	.long	0x599
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
	.uleb128 0x2
	.long	.LASF55
	.byte	0x5
	.byte	0x7f
	.long	0x35e
	.uleb128 0x5
	.long	0x2ea
	.long	0x36e
	.uleb128 0x6
	.long	0x30
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.long	0x427
	.uleb128 0x13
	.string	"res"
	.byte	0x1
	.byte	0x3c
	.long	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x1
	.byte	0x3c
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"E"
	.byte	0x1
	.byte	0x3c
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"R"
	.byte	0x1
	.byte	0x3d
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.byte	0x3d
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.byte	0x3d
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.byte	0x3d
	.long	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x16
	.string	"ti"
	.byte	0x1
	.byte	0x3e
	.long	0x342
	.long	.LLST0
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0x3e
	.long	0x342
	.long	.LLST1
	.uleb128 0x14
	.string	"z"
	.byte	0x1
	.byte	0x3f
	.long	0x2df
	.byte	0x3
	.byte	0x75
	.sleb128 -232
	.uleb128 0x18
	.string	"wi"
	.byte	0x1
	.byte	0x3f
	.long	0x2df
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0x5a
	.long	.LLST2
	.byte	0x0
	.uleb128 0x19
	.long	.LASF60
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF61
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x7
	.byte	0x47
	.long	0x44c
	.uleb128 0x1b
	.long	0x2df
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x7
	.byte	0x48
	.long	0x44c
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x7
	.byte	0x49
	.long	0x44c
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x7
	.byte	0x4a
	.long	0x44c
	.uleb128 0x1a
	.long	.LASF66
	.byte	0x7
	.byte	0x4b
	.long	0x44c
	.uleb128 0x1a
	.long	.LASF67
	.byte	0x7
	.byte	0x4c
	.long	0x44c
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x7
	.byte	0x4d
	.long	0x44c
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x7
	.byte	0x4e
	.long	0x44c
	.uleb128 0x19
	.long	.LASF70
	.byte	0x8
	.byte	0x32
	.long	0x5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x8
	.byte	0xca
	.long	0x4b6
	.uleb128 0x1b
	.long	0x2ea
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x8
	.byte	0xce
	.long	0x4b6
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x8
	.byte	0xd2
	.long	0x4b6
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x8
	.byte	0xd6
	.long	0x4b6
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x8
	.byte	0xda
	.long	0x4b6
	.uleb128 0x15
	.long	.LASF76
	.byte	0x9
	.byte	0xc
	.long	0x44c
	.byte	0x5
	.byte	0x3
	.long	norm_number
	.uleb128 0x15
	.long	.LASF77
	.byte	0x9
	.byte	0x12
	.long	0x509
	.byte	0x5
	.byte	0x3
	.long	sc_ln2
	.uleb128 0x1b
	.long	0x337
	.uleb128 0x5
	.long	0x337
	.long	0x51e
	.uleb128 0x6
	.long	0x30
	.byte	0xc
	.byte	0x0
	.uleb128 0x15
	.long	.LASF78
	.byte	0x9
	.byte	0x18
	.long	0x52f
	.byte	0x5
	.byte	0x3
	.long	table_ti
	.uleb128 0x1b
	.long	0x50e
	.uleb128 0x15
	.long	.LASF79
	.byte	0x9
	.byte	0x5b
	.long	0x545
	.byte	0x5
	.byte	0x3
	.long	table_inv_wi
	.uleb128 0x1b
	.long	0x50e
	.uleb128 0x5
	.long	0x337
	.long	0x55a
	.uleb128 0x6
	.long	0x30
	.byte	0x13
	.byte	0x0
	.uleb128 0x15
	.long	.LASF80
	.byte	0x9
	.byte	0xa0
	.long	0x56b
	.byte	0x5
	.byte	0x3
	.long	constant_poly
	.uleb128 0x1b
	.long	0x54a
	.uleb128 0x19
	.long	.LASF60
	.byte	0x6
	.byte	0xa5
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF61
	.byte	0x6
	.byte	0xa6
	.long	0x288
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF70
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
	.long	0x37
	.value	0x2
	.long	.Ldebug_info0
	.long	0x59d
	.long	0x36e
	.string	"scs_log"
	.long	0x58a
	.string	"crlibm_second_step_taken"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x9f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x59d
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
	.long	0x353
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
.LASF55:
	.string	"scs_t"
.LASF75:
	.string	"scs_sixinv"
.LASF64:
	.string	"radix_mone_double"
.LASF25:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF35:
	.string	"_offset"
.LASF82:
	.string	"logsix.c"
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
.LASF68:
	.string	"max_double"
.LASF52:
	.string	"index"
.LASF51:
	.string	"exception"
.LASF79:
	.string	"table_inv_wi"
.LASF6:
	.string	"long long int"
.LASF58:
	.string	"addi"
.LASF70:
	.string	"crlibm_second_step_taken"
.LASF34:
	.string	"_lock"
.LASF11:
	.string	"long int"
.LASF71:
	.string	"scs_zer"
.LASF31:
	.string	"_cur_column"
.LASF72:
	.string	"scs_half"
.LASF47:
	.string	"_pos"
.LASF59:
	.string	"inv_wi"
.LASF78:
	.string	"table_ti"
.LASF46:
	.string	"_sbuf"
.LASF43:
	.string	"_IO_FILE"
.LASF63:
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
.LASF56:
	.string	"sc_ln2_times_E"
.LASF69:
	.string	"min_double"
.LASF18:
	.string	"_IO_write_base"
.LASF42:
	.string	"_unused2"
.LASF15:
	.string	"_IO_read_ptr"
.LASF66:
	.string	"radix_rng_double"
.LASF2:
	.string	"short unsigned int"
.LASF54:
	.string	"scs_ptr"
.LASF13:
	.string	"char"
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
	.string	"radix_one_double"
.LASF85:
	.string	"scs_log"
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
.LASF76:
	.string	"norm_number"
.LASF65:
	.string	"radix_mtwo_double"
.LASF24:
	.string	"_IO_backup_base"
.LASF60:
	.string	"stdin"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF80:
	.string	"constant_poly"
.LASF32:
	.string	"_vtable_offset"
.LASF81:
	.string	"GNU C 4.4.7 20120313 (Red Hat 4.4.7-11)"
.LASF23:
	.string	"_IO_save_base"
.LASF28:
	.string	"_fileno"
.LASF57:
	.string	"res1"
.LASF77:
	.string	"sc_ln2"
.LASF83:
	.string	"/afs/cern.ch/user/k/kyrsjo/codes/SixTrack/crlibm_debug/minimalProgram2/crlibm"
.LASF67:
	.string	"radix_mrng_double"
.LASF74:
	.string	"scs_two"
.LASF73:
	.string	"scs_one"
.LASF61:
	.string	"stdout"
.LASF84:
	.string	"_IO_lock_t"
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-11)"
	.section	.note.GNU-stack,"",@progbits
