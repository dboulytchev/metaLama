	.global	main
	.data
global_x0:	.quad	0
global_x1:	.quad	0
global_x2:	.quad	0
global_x3:	.quad	0
global_y:	.quad	0
	.text
main:
	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$0,	%rsp
# READ
	call	Lread
	movq	%rax,	%rbx
# ST x0
	movq	%rbx,	global_x0(%rip)
# DROP
# READ
	call	Lread
	movq	%rax,	%rbx
# ST x1
	movq	%rbx,	global_x1(%rip)
# DROP
# READ
	call	Lread
	movq	%rax,	%rbx
# ST x2
	movq	%rbx,	global_x2(%rip)
# DROP
# READ
	call	Lread
	movq	%rax,	%rbx
# ST x3
	movq	%rbx,	global_x3(%rip)
# DROP
# LDA y
	leaq	global_y(%rip),	%rbx
# CONST 73
	movq	$73,	%rcx
# LD x1
	movq	global_x1(%rip),	%rsi
# BINOP +
	addq	%rsi,	%rcx
	movq	%rcx,	%rcx
# CONST 99
	movq	$99,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP !=
	cmpq	%rsi,	%rcx
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# CONST 166
	movq	$166,	%rsi
# CONST 967
	movq	$967,	%rdi
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	orq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 27
	movq	$27,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	andq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	orq	%rdi,	%rsi
	movq	%rsi,	%rsi
# BINOP <=
	cmpq	%rsi,	%rcx
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# LD x2
	movq	global_x2(%rip),	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x0
	movq	global_x0(%rip),	%rdi
# CONST 276
	movq	$276,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP >
	cmpq	%rdi,	%rsi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x0
	movq	global_x0(%rip),	%rdi
# CONST 192
	movq	$192,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# CONST 876
	movq	$876,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP >
	cmpq	%rdi,	%rsi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP +
	addq	%rsi,	%rcx
	movq	%rcx,	%rcx
# LD x3
	movq	global_x3(%rip),	%rsi
# CONST 675
	movq	$675,	%rdi
# BINOP >
	cmpq	%rdi,	%rsi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x0
	movq	global_x0(%rip),	%rdi
# CONST 772
	movq	$772,	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	orq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
# CONST 444
	movq	$444,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 715
	movq	$715,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
# CONST 209
	movq	$209,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 570
	movq	$570,	%r8
# CONST 905
	movq	$905,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	andq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP -
	subq	%rsi,	%rcx
	movq	%rcx,	%rcx
# CONST 507
	movq	$507,	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	orq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 720
	movq	$720,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	andq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 987
	movq	$987,	%rdi
# CONST 159
	movq	$159,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# CONST 300
	movq	$300,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	andq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 628
	movq	$628,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	orq	%r9,	%r8
	movq	%r8,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 574
	movq	$574,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	orq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	orq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 383
	movq	$383,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 923
	movq	$923,	%r8
# CONST 231
	movq	$231,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 548
	movq	$548,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 744
	movq	$744,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# CONST 657
	movq	$657,	%r11
# BINOP <=
	cmpq	%r11,	%r10
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	andq	%rdi,	%rsi
	movq	%rsi,	%rsi
# BINOP !=
	cmpq	%rsi,	%rcx
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# LD x1
	movq	global_x1(%rip),	%rsi
# CONST 197
	movq	$197,	%rdi
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	andq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 948
	movq	$948,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	orq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# CONST 172
	movq	$172,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 310
	movq	$310,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 817
	movq	$817,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	orq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# CONST 32
	movq	$32,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 773
	movq	$773,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 507
	movq	$507,	%r8
# CONST 944
	movq	$944,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	andq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 255
	movq	$255,	%r9
# CONST 228
	movq	$228,	%r10
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	andq	%r10,	%r9
	movq	%r9,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	orq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 904
	movq	$904,	%r10
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	orq	%r10,	%r9
	movq	%r9,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP <=
	cmpq	%r11,	%r10
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP ==
	cmpq	%rdi,	%rsi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# CONST 364
	movq	$364,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 972
	movq	$972,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 754
	movq	$754,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	orq	%r10,	%r9
	movq	%r9,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	orq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	andq	%r10,	%r9
	movq	%r9,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 900
	movq	$900,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 955
	movq	$955,	%r10
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	andq	%r10,	%r9
	movq	%r9,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r11
	setne	%al
	movq	%rax,	%r11
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	orq	%r11,	%r10
	movq	%r10,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 789
	movq	$789,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 926
	movq	$926,	%r10
# CONST 553
	movq	$553,	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 484
	movq	$484,	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# BINOP >
	cmpq	%r11,	%r10
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# CONST 744
	movq	$744,	%r11
# LD x2
	movq	global_x2(%rip),	%r12
# BINOP *
	imulq	%r12,	%r11
	movq	%r11,	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# BINOP !=
	cmpq	%rsi,	%rcx
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# LD x2
	movq	global_x2(%rip),	%rsi
# CONST 315
	movq	$315,	%rdi
# BINOP >=
	cmpq	%rdi,	%rsi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	andq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 549
	movq	$549,	%rdi
# CONST 307
	movq	$307,	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 421
	movq	$421,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP ==
	cmpq	%rdi,	%rsi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 733
	movq	$733,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# CONST 142
	movq	$142,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 65
	movq	$65,	%r8
# CONST 324
	movq	$324,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	andq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 0
	movq	$0,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	orq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 529
	movq	$529,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 382
	movq	$382,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 293
	movq	$293,	%r8
# CONST 64
	movq	$64,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 189
	movq	$189,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 37
	movq	$37,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP >
	cmpq	%rdi,	%rsi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 736
	movq	$736,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	andq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	andq	%r9,	%r8
	movq	%r8,	%r8
# CONST 193
	movq	$193,	%r9
# CONST 74
	movq	$74,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	orq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 505
	movq	$505,	%r9
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	andq	%r9,	%r8
	movq	%r8,	%r8
# CONST 523
	movq	$523,	%r9
# CONST 725
	movq	$725,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 317
	movq	$317,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 412
	movq	$412,	%r10
# CONST 229
	movq	$229,	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	orq	%r10,	%r9
	movq	%r9,	%r9
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	andq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 899
	movq	$899,	%r9
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	andq	%r9,	%r8
	movq	%r8,	%r8
# CONST 497
	movq	$497,	%r9
# CONST 323
	movq	$323,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 522
	movq	$522,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	orq	%r10,	%r9
	movq	%r9,	%r9
# CONST 696
	movq	$696,	%r10
# CONST 80
	movq	$80,	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	orq	%r10,	%r9
	movq	%r9,	%r9
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	andq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 941
	movq	$941,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# CONST 529
	movq	$529,	%r10
# CONST 498
	movq	$498,	%r11
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# CONST 55
	movq	$55,	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# CONST 207
	movq	$207,	%r11
# LD x3
	movq	global_x3(%rip),	%r12
# BINOP !=
	cmpq	%r12,	%r11
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	orq	%r10,	%r9
	movq	%r9,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 626
	movq	$626,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 469
	movq	$469,	%r8
# CONST 787
	movq	$787,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 529
	movq	$529,	%r9
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	andq	%r9,	%r8
	movq	%r8,	%r8
# CONST 666
	movq	$666,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 43
	movq	$43,	%r8
# CONST 5
	movq	$5,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 655
	movq	$655,	%r10
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	orq	%r10,	%r9
	movq	%r9,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 593
	movq	$593,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# CONST 951
	movq	$951,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	andq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 875
	movq	$875,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 360
	movq	$360,	%r10
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	andq	%r10,	%r9
	movq	%r9,	%r9
# CONST 590
	movq	$590,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r11
	setne	%al
	movq	%rax,	%r11
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	orq	%r11,	%r10
	movq	%r10,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 880
	movq	$880,	%r10
# CONST 425
	movq	$425,	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# CONST 222
	movq	$222,	%r12
# BINOP <
	cmpq	%r12,	%r11
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 964
	movq	$964,	%r8
# CONST 215
	movq	$215,	%r9
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	andq	%r9,	%r8
	movq	%r8,	%r8
# CONST 138
	movq	$138,	%r9
# CONST 202
	movq	$202,	%r10
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	orq	%r10,	%r9
	movq	%r9,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# CONST 370
	movq	$370,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 748
	movq	$748,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 242
	movq	$242,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# CONST 704
	movq	$704,	%r10
# CONST 880
	movq	$880,	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# CONST 855
	movq	$855,	%r11
# CONST 160
	movq	$160,	%r12
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r12
	setne	%al
	movq	%rax,	%r12
	movq	$0,	%rax
	cmpq	%rax,	%r11
	setne	%al
	movq	%rax,	%r11
	andq	%r12,	%r11
	movq	%r11,	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 696
	movq	$696,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# CONST 35
	movq	$35,	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 933
	movq	$933,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
# CONST 927
	movq	$927,	%r11
# CONST 291
	movq	$291,	%r12
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r12
	setne	%al
	movq	%rax,	%r12
	movq	$0,	%rax
	cmpq	%rax,	%r11
	setne	%al
	movq	%rax,	%r11
	andq	%r12,	%r11
	movq	%r11,	%r11
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r11
	setne	%al
	movq	%rax,	%r11
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	orq	%r11,	%r10
	movq	%r10,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# CONST 515
	movq	$515,	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# LD x0
	movq	global_x0(%rip),	%r12
# BINOP +
	addq	%r12,	%r11
	movq	%r11,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# LD x3
	movq	global_x3(%rip),	%r12
# BINOP >=
	cmpq	%r12,	%r11
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# CONST 237
	movq	$237,	%r12
# CONST 339
	movq	$339,	%r13
# BINOP <
	cmpq	%r13,	%r12
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r12
# BINOP <=
	cmpq	%r12,	%r11
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r9
	setne	%al
	movq	%rax,	%r9
	movq	$0,	%rax
	cmpq	%rax,	%r8
	setne	%al
	movq	%rax,	%r8
	orq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%rdi
	setne	%al
	movq	%rax,	%rdi
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	orq	%rdi,	%rsi
	movq	%rsi,	%rsi
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	movq	$0,	%rax
	cmpq	%rax,	%rcx
	setne	%al
	movq	%rax,	%rcx
	orq	%rsi,	%rcx
	movq	%rcx,	%rcx
# STI
	movq	%rcx,	(%rbx)
# DROP
# LD y
	movq	global_y(%rip),	%rbx
# WRITE
	movq	%rbx,	%rdi
	call	Lwrite
	movq	%rbp,	%rsp
	popq	%rbp
	xorq	%rax,	%rax
	ret
