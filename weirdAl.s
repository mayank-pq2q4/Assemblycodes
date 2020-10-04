	.file	"countingAssembly.c"
# GNU C17 (Ubuntu 9.3.0-10ubuntu2) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu countingAssembly.c
# -mtune=generic -march=x86-64 -fverbose-asm -fasynchronous-unwind-tables
# -fstack-protector-strong -Wformat -Wformat-security
# -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
# -fipa-stack-alignment -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
# -fmerge-debug-strings -fpeephole -fplt -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap-separate
# -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop
# -fstack-clash-protection -fstack-protector-strong -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
.LC0:
	.string	"\n\n\nSUCCESS!\n\n"
	.text
	.globl	countingSort
	.type	countingSort, @function
countingSort:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# array, array
	movl	%esi, -44(%rbp)	# size, size
	movl	%edx, -48(%rbp)	# max, max
# countingAssembly.c:26:     count = malloc(sizeof(int) * size);
	movl	-44(%rbp), %eax	# size, tmp110
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp111, count
# countingAssembly.c:28:     for (int i = 0; i < size; ++i)
	movl	$0, -24(%rbp)	#, i
# countingAssembly.c:28:     for (int i = 0; i < size; ++i)
	jmp	.L2	#
.L3:
# countingAssembly.c:30:         count[i] = 0;
	movl	-24(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-8(%rbp), %rax	# count, tmp113
	addq	%rdx, %rax	# _4, _5
# countingAssembly.c:30:         count[i] = 0;
	movl	$0, (%rax)	#, *_5
# countingAssembly.c:28:     for (int i = 0; i < size; ++i)
	addl	$1, -24(%rbp)	#, i
.L2:
# countingAssembly.c:28:     for (int i = 0; i < size; ++i)
	movl	-24(%rbp), %eax	# i, tmp114
	cmpl	-44(%rbp), %eax	# size, tmp114
	jl	.L3	#,
# countingAssembly.c:33:     for (int i = 0; i < size; ++i)
	movl	$0, -20(%rbp)	#, i
# countingAssembly.c:33:     for (int i = 0; i < size; ++i)
	jmp	.L4	#
.L5:
# countingAssembly.c:35:         count[array[i]] = count[array[i]] + 1;
	movl	-20(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-40(%rbp), %rax	# array, tmp116
	addq	%rdx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
	cltq
# countingAssembly.c:35:         count[array[i]] = count[array[i]] + 1;
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-8(%rbp), %rax	# count, tmp117
	addq	%rdx, %rax	# _11, _12
	movl	(%rax), %edx	# *_12, _13
# countingAssembly.c:35:         count[array[i]] = count[array[i]] + 1;
	movl	-20(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,4), %rcx	#, _15
	movq	-40(%rbp), %rax	# array, tmp119
	addq	%rcx, %rax	# _15, _16
	movl	(%rax), %eax	# *_16, _17
	cltq
# countingAssembly.c:35:         count[array[i]] = count[array[i]] + 1;
	leaq	0(,%rax,4), %rcx	#, _19
	movq	-8(%rbp), %rax	# count, tmp120
	addq	%rcx, %rax	# _19, _20
# countingAssembly.c:35:         count[array[i]] = count[array[i]] + 1;
	addl	$1, %edx	#, _21
# countingAssembly.c:35:         count[array[i]] = count[array[i]] + 1;
	movl	%edx, (%rax)	# _21, *_20
# countingAssembly.c:33:     for (int i = 0; i < size; ++i)
	addl	$1, -20(%rbp)	#, i
.L4:
# countingAssembly.c:33:     for (int i = 0; i < size; ++i)
	movl	-20(%rbp), %eax	# i, tmp121
	cmpl	-44(%rbp), %eax	# size, tmp121
	jl	.L5	#,
# countingAssembly.c:38:     k = 0;
	movl	$0, -28(%rbp)	#, k
# countingAssembly.c:39:     for (int i = 0; i <= max; ++i)
	movl	$0, -16(%rbp)	#, i
# countingAssembly.c:39:     for (int i = 0; i <= max; ++i)
	jmp	.L6	#
.L9:
# countingAssembly.c:41:         for (int j = 1; j <= count[i]; ++j)
	movl	$1, -12(%rbp)	#, j
# countingAssembly.c:41:         for (int j = 1; j <= count[i]; ++j)
	jmp	.L7	#
.L8:
# countingAssembly.c:43:             array[k] = i;
	movl	-28(%rbp), %eax	# k, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-40(%rbp), %rax	# array, tmp123
	addq	%rax, %rdx	# tmp123, _24
# countingAssembly.c:43:             array[k] = i;
	movl	-16(%rbp), %eax	# i, tmp124
	movl	%eax, (%rdx)	# tmp124, *_24
# countingAssembly.c:44:             ++k;
	addl	$1, -28(%rbp)	#, k
# countingAssembly.c:41:         for (int j = 1; j <= count[i]; ++j)
	addl	$1, -12(%rbp)	#, j
.L7:
# countingAssembly.c:41:         for (int j = 1; j <= count[i]; ++j)
	movl	-16(%rbp), %eax	# i, tmp125
	cltq
	leaq	0(,%rax,4), %rdx	#, _26
	movq	-8(%rbp), %rax	# count, tmp126
	addq	%rdx, %rax	# _26, _27
	movl	(%rax), %eax	# *_27, _28
# countingAssembly.c:41:         for (int j = 1; j <= count[i]; ++j)
	cmpl	%eax, -12(%rbp)	# _28, j
	jle	.L8	#,
# countingAssembly.c:39:     for (int i = 0; i <= max; ++i)
	addl	$1, -16(%rbp)	#, i
.L6:
# countingAssembly.c:39:     for (int i = 0; i <= max; ++i)
	movl	-16(%rbp), %eax	# i, tmp127
	cmpl	-48(%rbp), %eax	# max, tmp127
	jle	.L9	#,
# countingAssembly.c:48:     printf("\n\n\nSUCCESS!\n\n\n");
	leaq	.LC0(%rip), %rdi	#,
	call	puts@PLT	#
# countingAssembly.c:49:     free(count);
	movq	-8(%rbp), %rax	# count, tmp128
	movq	%rax, %rdi	# tmp128,
	call	free@PLT	#
# countingAssembly.c:50: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	countingSort, .-countingSort
	.section	.rodata
.LC1:
	.string	"countingAssembly.c"
.LC2:
	.string	"array && size"
	.text
	.globl	maxValue
	.type	maxValue, @function
maxValue:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# array, array
	movq	%rsi, -32(%rbp)	# size, size
# countingAssembly.c:55:     assert(array && size);
	cmpq	$0, -24(%rbp)	#, array
	je	.L11	#,
# countingAssembly.c:55:     assert(array && size);
	cmpq	$0, -32(%rbp)	#, size
	jne	.L17	#,
.L11:
# countingAssembly.c:55:     assert(array && size);
	leaq	__PRETTY_FUNCTION__.2989(%rip), %rcx	#,
	movl	$55, %edx	#,
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L17:
# countingAssembly.c:57:     int maxValue = array[0];
	movq	-24(%rbp), %rax	# array, tmp89
	movl	(%rax), %eax	# *array_9(D), tmp90
	movl	%eax, -12(%rbp)	# tmp90, maxValue
# countingAssembly.c:59:     for (i = 1; i < size; ++i)
	movq	$1, -8(%rbp)	#, i
# countingAssembly.c:59:     for (i = 1; i < size; ++i)
	jmp	.L13	#
.L15:
# countingAssembly.c:61:         if (array[i] > maxValue)
	movq	-8(%rbp), %rax	# i, tmp91
	leaq	0(,%rax,4), %rdx	#, _1
	movq	-24(%rbp), %rax	# array, tmp92
	addq	%rdx, %rax	# _1, _2
	movl	(%rax), %eax	# *_2, _3
# countingAssembly.c:61:         if (array[i] > maxValue)
	cmpl	%eax, -12(%rbp)	# _3, maxValue
	jge	.L14	#,
# countingAssembly.c:63:             maxValue = array[i];
	movq	-8(%rbp), %rax	# i, tmp93
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# array, tmp94
	addq	%rdx, %rax	# _4, _5
# countingAssembly.c:63:             maxValue = array[i];
	movl	(%rax), %eax	# *_5, tmp95
	movl	%eax, -12(%rbp)	# tmp95, maxValue
.L14:
# countingAssembly.c:59:     for (i = 1; i < size; ++i)
	addq	$1, -8(%rbp)	#, i
.L13:
# countingAssembly.c:59:     for (i = 1; i < size; ++i)
	movq	-8(%rbp), %rax	# i, tmp96
	cmpq	-32(%rbp), %rax	# size, tmp96
	jb	.L15	#,
# countingAssembly.c:66:     return maxValue;
	movl	-12(%rbp), %eax	# maxValue, _14
# countingAssembly.c:67: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	maxValue, .-maxValue
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# argc, argc
	movq	%rsi, -64(%rbp)	# argv, argv
# countingAssembly.c:72:     srand(time(0)); //Time dependent seed
	movl	$0, %edi	#,
	call	time@PLT	#
# countingAssembly.c:72:     srand(time(0)); //Time dependent seed
	movl	%eax, %edi	# _2,
	call	srand@PLT	#
# countingAssembly.c:76:     arrTT = malloc(sizeof(int) * tenThousand);
	movl	$40000, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp101, arrTT
# countingAssembly.c:79:     arraM = malloc(sizeof(int) * aMillion);
	movl	$4000000, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp102, arraM
# countingAssembly.c:82:     arrhT = malloc(sizeof(int) * hundredThousand);
	movl	$400000, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp103, arrhT
# countingAssembly.c:85:     for (int i = 0; i < tenThousand; i++)
	movl	$0, -48(%rbp)	#, i
# countingAssembly.c:85:     for (int i = 0; i < tenThousand; i++)
	jmp	.L19	#
.L20:
# countingAssembly.c:87:         arrTT[i] = rand() % 201;
	call	rand@PLT	#
# countingAssembly.c:87:         arrTT[i] = rand() % 201;
	movl	-48(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, _4
	leaq	0(,%rdx,4), %rcx	#, _5
	movq	-24(%rbp), %rdx	# arrTT, tmp105
	addq	%rdx, %rcx	# tmp105, _6
# countingAssembly.c:87:         arrTT[i] = rand() % 201;
	movslq	%eax, %rdx	# _3, tmp106
	imulq	$42735993, %rdx, %rdx	#, tmp106, tmp107
	shrq	$32, %rdx	#, tmp108
	movl	%edx, %esi	# tmp108, tmp109
	sarl	%esi	# tmp109
	cltd
	subl	%edx, %esi	# tmp110, tmp109
	movl	%esi, %edx	# tmp109, _7
	imull	$201, %edx, %edx	#, _7, tmp111
	subl	%edx, %eax	# tmp111, _3
	movl	%eax, %edx	# _3, _7
# countingAssembly.c:87:         arrTT[i] = rand() % 201;
	movl	%edx, (%rcx)	# _7, *_6
# countingAssembly.c:85:     for (int i = 0; i < tenThousand; i++)
	addl	$1, -48(%rbp)	#, i
.L19:
# countingAssembly.c:85:     for (int i = 0; i < tenThousand; i++)
	cmpl	$9999, -48(%rbp)	#, i
	jle	.L20	#,
# countingAssembly.c:90:     for (int i = 0; i < aMillion; i++)
	movl	$0, -44(%rbp)	#, i
# countingAssembly.c:90:     for (int i = 0; i < aMillion; i++)
	jmp	.L21	#
.L22:
# countingAssembly.c:92:         arraM[i] = rand() % 201;
	call	rand@PLT	#
# countingAssembly.c:92:         arraM[i] = rand() % 201;
	movl	-44(%rbp), %edx	# i, tmp112
	movslq	%edx, %rdx	# tmp112, _9
	leaq	0(,%rdx,4), %rcx	#, _10
	movq	-16(%rbp), %rdx	# arraM, tmp113
	addq	%rdx, %rcx	# tmp113, _11
# countingAssembly.c:92:         arraM[i] = rand() % 201;
	movslq	%eax, %rdx	# _8, tmp114
	imulq	$42735993, %rdx, %rdx	#, tmp114, tmp115
	shrq	$32, %rdx	#, tmp116
	movl	%edx, %esi	# tmp116, tmp117
	sarl	%esi	# tmp117
	cltd
	subl	%edx, %esi	# tmp118, tmp117
	movl	%esi, %edx	# tmp117, _12
	imull	$201, %edx, %edx	#, _12, tmp119
	subl	%edx, %eax	# tmp119, _8
	movl	%eax, %edx	# _8, _12
# countingAssembly.c:92:         arraM[i] = rand() % 201;
	movl	%edx, (%rcx)	# _12, *_11
# countingAssembly.c:90:     for (int i = 0; i < aMillion; i++)
	addl	$1, -44(%rbp)	#, i
.L21:
# countingAssembly.c:90:     for (int i = 0; i < aMillion; i++)
	cmpl	$999999, -44(%rbp)	#, i
	jle	.L22	#,
# countingAssembly.c:95:     for (int i = 0; i < hundredThousand; i++)
	movl	$0, -40(%rbp)	#, i
# countingAssembly.c:95:     for (int i = 0; i < hundredThousand; i++)
	jmp	.L23	#
.L24:
# countingAssembly.c:97:         arrhT[i] = rand() % 201;
	call	rand@PLT	#
# countingAssembly.c:97:         arrhT[i] = rand() % 201;
	movl	-40(%rbp), %edx	# i, tmp120
	movslq	%edx, %rdx	# tmp120, _14
	leaq	0(,%rdx,4), %rcx	#, _15
	movq	-8(%rbp), %rdx	# arrhT, tmp121
	addq	%rdx, %rcx	# tmp121, _16
# countingAssembly.c:97:         arrhT[i] = rand() % 201;
	movslq	%eax, %rdx	# _13, tmp122
	imulq	$42735993, %rdx, %rdx	#, tmp122, tmp123
	shrq	$32, %rdx	#, tmp124
	movl	%edx, %esi	# tmp124, tmp125
	sarl	%esi	# tmp125
	cltd
	subl	%edx, %esi	# tmp126, tmp125
	movl	%esi, %edx	# tmp125, _17
	imull	$201, %edx, %edx	#, _17, tmp127
	subl	%edx, %eax	# tmp127, _13
	movl	%eax, %edx	# _13, _17
# countingAssembly.c:97:         arrhT[i] = rand() % 201;
	movl	%edx, (%rcx)	# _17, *_16
# countingAssembly.c:95:     for (int i = 0; i < hundredThousand; i++)
	addl	$1, -40(%rbp)	#, i
.L23:
# countingAssembly.c:95:     for (int i = 0; i < hundredThousand; i++)
	cmpl	$99999, -40(%rbp)	#, i
	jle	.L24	#,
# countingAssembly.c:103:     int maxTT = maxValue(arrTT, sizeof(arrTT) / sizeof(arrTT[0]));
	movq	-24(%rbp), %rax	# arrTT, tmp128
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	maxValue	#
	movl	%eax, -36(%rbp)	# tmp129, maxTT
# countingAssembly.c:105:     int maxaM = maxValue(arraM, sizeof(arraM) / sizeof(arraM[0]));
	movq	-16(%rbp), %rax	# arraM, tmp130
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	maxValue	#
	movl	%eax, -32(%rbp)	# tmp131, maxaM
# countingAssembly.c:107:     int maxhT = maxValue(arrhT, sizeof(arrhT) / sizeof(arrhT[0]));
	movq	-8(%rbp), %rax	# arrhT, tmp132
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	maxValue	#
	movl	%eax, -28(%rbp)	# tmp133, maxhT
# countingAssembly.c:111:     countingSort(arrTT, tenThousand, maxTT);
	movl	-36(%rbp), %edx	# maxTT, tmp134
	movq	-24(%rbp), %rax	# arrTT, tmp135
	movl	$10000, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	countingSort	#
# countingAssembly.c:112:     free(arrTT);
	movq	-24(%rbp), %rax	# arrTT, tmp136
	movq	%rax, %rdi	# tmp136,
	call	free@PLT	#
# countingAssembly.c:114:     countingSort(arraM, aMillion, maxaM);
	movl	-32(%rbp), %edx	# maxaM, tmp137
	movq	-16(%rbp), %rax	# arraM, tmp138
	movl	$1000000, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	countingSort	#
# countingAssembly.c:115:     free(arraM);
	movq	-16(%rbp), %rax	# arraM, tmp139
	movq	%rax, %rdi	# tmp139,
	call	free@PLT	#
# countingAssembly.c:117:     countingSort(arrhT, hundredThousand, maxhT);
	movl	-28(%rbp), %edx	# maxhT, tmp140
	movq	-8(%rbp), %rax	# arrhT, tmp141
	movl	$100000, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	countingSort	#
# countingAssembly.c:118:     free(arrhT);
	movq	-8(%rbp), %rax	# arrhT, tmp142
	movq	%rax, %rdi	# tmp142,
	call	free@PLT	#
# countingAssembly.c:120:     return 0;
	movl	$0, %eax	#, _48
# countingAssembly.c:121: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.2989, @object
	.size	__PRETTY_FUNCTION__.2989, 9
__PRETTY_FUNCTION__.2989:
	.string	"maxValue"
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
