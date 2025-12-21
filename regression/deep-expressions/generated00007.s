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
# LD x0
	movq	global_x0(%rip),	%rcx
# LD x1
	movq	global_x1(%rip),	%rsi
# BINOP -
	subq	%rsi,	%rcx
	movq	%rcx,	%rcx
# CONST 909
	movq	$909,	%rsi
# CONST 548
	movq	$548,	%rdi
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP <
	cmpq	%rsi,	%rcx
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# LD x1
	movq	global_x1(%rip),	%rsi
# CONST 212
	movq	$212,	%rdi
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
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 252
	movq	$252,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# BINOP <
	cmpq	%rsi,	%rcx
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# CONST 193
	movq	$193,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 475
	movq	$475,	%rdi
# CONST 456
	movq	$456,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 66
	movq	$66,	%rdi
# CONST 82
	movq	$82,	%r8
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
# LD x2
	movq	global_x2(%rip),	%r9
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
# BINOP ==
	cmpq	%rdi,	%rsi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%rsi
	setne	%al
	movq	%rax,	%rsi
	movq	$0,	%rax
	cmpq	%rax,	%rcx
	setne	%al
	movq	%rax,	%rcx
	andq	%rsi,	%rcx
	movq	%rcx,	%rcx
# LD x1
	movq	global_x1(%rip),	%rsi
# CONST 215
	movq	$215,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 401
	movq	$401,	%rdi
# CONST 960
	movq	$960,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP >
	cmpq	%rdi,	%rsi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 861
	movq	$861,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 321
	movq	$321,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 540
	movq	$540,	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 565
	movq	$565,	%r8
# CONST 642
	movq	$642,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
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
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP -
	subq	%rdi,	%rsi
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
# LD x0
	movq	global_x0(%rip),	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 336
	movq	$336,	%rdi
# CONST 69
	movq	$69,	%r8
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
# LD x3
	movq	global_x3(%rip),	%rdi
# CONST 625
	movq	$625,	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 286
	movq	$286,	%r8
# CONST 248
	movq	$248,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
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
# LD x0
	movq	global_x0(%rip),	%rdi
# CONST 707
	movq	$707,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 650
	movq	$650,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 449
	movq	$449,	%r8
# CONST 415
	movq	$415,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 334
	movq	$334,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 594
	movq	$594,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# CONST 805
	movq	$805,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 54
	movq	$54,	%r10
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
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 584
	movq	$584,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
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
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 95
	movq	$95,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 533
	movq	$533,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP &&
	movq	$0,	%rax
	cmpq	%rax,	%r11
	setne	%al
	movq	%rax,	%r11
	movq	$0,	%rax
	cmpq	%rax,	%r10
	setne	%al
	movq	%rax,	%r10
	andq	%r11,	%r10
	movq	%r10,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
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
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
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
# LD x1
	movq	global_x1(%rip),	%rsi
# CONST 53
	movq	$53,	%rdi
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 965
	movq	$965,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 767
	movq	$767,	%rdi
# CONST 824
	movq	$824,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 453
	movq	$453,	%r8
# CONST 950
	movq	$950,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
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
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 544
	movq	$544,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 23
	movq	$23,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 908
	movq	$908,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
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
# BINOP >=
	cmpq	%rdi,	%rsi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
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
# LD x2
	movq	global_x2(%rip),	%r9
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
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 456
	movq	$456,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 856
	movq	$856,	%r8
# CONST 573
	movq	$573,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 993
	movq	$993,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 85
	movq	$85,	%r10
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
# LD x2
	movq	global_x2(%rip),	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP <=
	cmpq	%r11,	%r10
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# CONST 295
	movq	$295,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 413
	movq	$413,	%r8
# CONST 253
	movq	$253,	%r9
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
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 945
	movq	$945,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
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
# CONST 310
	movq	$310,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 258
	movq	$258,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
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
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
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
# LD x1
	movq	global_x1(%rip),	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 265
	movq	$265,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP >
	cmpq	%r11,	%r10
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 299
	movq	$299,	%r9
# CONST 475
	movq	$475,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 735
	movq	$735,	%r10
# CONST 206
	movq	$206,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
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
# CONST 813
	movq	$813,	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# LD x1
	movq	global_x1(%rip),	%r12
# BINOP *
	imulq	%r12,	%r11
	movq	%r11,	%r11
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
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
# CONST 323
	movq	$323,	%rsi
# CONST 486
	movq	$486,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# CONST 630
	movq	$630,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x0
	movq	global_x0(%rip),	%rdi
# CONST 312
	movq	$312,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP >
	cmpq	%rdi,	%rsi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 370
	movq	$370,	%rdi
# CONST 374
	movq	$374,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 937
	movq	$937,	%r8
# CONST 956
	movq	$956,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
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
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# CONST 870
	movq	$870,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP *
	imulq	%r8,	%rdi
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
# LD x1
	movq	global_x1(%rip),	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 798
	movq	$798,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
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
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# CONST 795
	movq	$795,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 428
	movq	$428,	%r8
# CONST 5
	movq	$5,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# CONST 760
	movq	$760,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 862
	movq	$862,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 912
	movq	$912,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 908
	movq	$908,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 121
	movq	$121,	%r8
# CONST 841
	movq	$841,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 940
	movq	$940,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
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
# CONST 372
	movq	$372,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
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
# CONST 337
	movq	$337,	%r9
# CONST 71
	movq	$71,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
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
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 765
	movq	$765,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 437
	movq	$437,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# CONST 644
	movq	$644,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP >
	cmpq	%r11,	%r10
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# CONST 379
	movq	$379,	%r12
# BINOP >=
	cmpq	%r12,	%r11
	setge	%al
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
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 521
	movq	$521,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
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
# CONST 878
	movq	$878,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 574
	movq	$574,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 586
	movq	$586,	%r10
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
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 12
	movq	$12,	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# BINOP <=
	cmpq	%r11,	%r10
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP -
	subq	%r8,	%rdi
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
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 317
	movq	$317,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 621
	movq	$621,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP >
	cmpq	%r11,	%r10
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# CONST 295
	movq	$295,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 94
	movq	$94,	%r10
# CONST 375
	movq	$375,	%r11
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
# LD x0
	movq	global_x0(%rip),	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
# CONST 326
	movq	$326,	%r11
# CONST 844
	movq	$844,	%r12
# BINOP !=
	cmpq	%r12,	%r11
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 733
	movq	$733,	%r8
# CONST 183
	movq	$183,	%r9
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
# LD x0
	movq	global_x0(%rip),	%r9
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
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 166
	movq	$166,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 680
	movq	$680,	%r10
# CONST 869
	movq	$869,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 539
	movq	$539,	%r10
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
# CONST 968
	movq	$968,	%r10
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
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# LD x1
	movq	global_x1(%rip),	%r12
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r12
	setne	%al
	movq	%rax,	%r12
	movq	$0,	%rax
	cmpq	%rax,	%r11
	setne	%al
	movq	%rax,	%r11
	orq	%r12,	%r11
	movq	%r11,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# CONST 680
	movq	$680,	%r9
# CONST 407
	movq	$407,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# CONST 148
	movq	$148,	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# CONST 960
	movq	$960,	%r12
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
# CONST 556
	movq	$556,	%r10
# CONST 515
	movq	$515,	%r11
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
# CONST 736
	movq	$736,	%r11
# LD x1
	movq	global_x1(%rip),	%r12
# BINOP <=
	cmpq	%r12,	%r11
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP >
	cmpq	%r11,	%r10
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# CONST 337
	movq	$337,	%r11
# LD x2
	movq	global_x2(%rip),	%r12
# BINOP +
	addq	%r12,	%r11
	movq	%r11,	%r11
# CONST 405
	movq	$405,	%r12
# LD x1
	movq	global_x1(%rip),	%r13
# BINOP -
	subq	%r13,	%r12
	movq	%r12,	%r12
# BINOP !!
	movq	$0,	%rax
	cmpq	%rax,	%r12
	setne	%al
	movq	%rax,	%r12
	movq	$0,	%rax
	cmpq	%rax,	%r11
	setne	%al
	movq	%rax,	%r11
	orq	%r12,	%r11
	movq	%r11,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
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
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
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
