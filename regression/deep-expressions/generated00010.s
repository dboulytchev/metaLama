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
# CONST 833
	movq	$833,	%rcx
# CONST 158
	movq	$158,	%rsi
# BINOP *
	imulq	%rsi,	%rcx
	movq	%rcx,	%rcx
# LD x0
	movq	global_x0(%rip),	%rsi
# CONST 656
	movq	$656,	%rdi
# BINOP >=
	cmpq	%rdi,	%rsi
	setge	%al
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
# CONST 866
	movq	$866,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 743
	movq	$743,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
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
# CONST 744
	movq	$744,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# BINOP ==
	cmpq	%rdi,	%rsi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP >=
	cmpq	%rdi,	%rsi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 123
	movq	$123,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 348
	movq	$348,	%r8
# CONST 185
	movq	$185,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP *
	imulq	%rsi,	%rcx
	movq	%rcx,	%rcx
# CONST 607
	movq	$607,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# BINOP >=
	cmpq	%rdi,	%rsi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
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
# CONST 6
	movq	$6,	%rdi
# CONST 729
	movq	$729,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 151
	movq	$151,	%r9
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
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP >=
	cmpq	%rdi,	%rsi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 770
	movq	$770,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 237
	movq	$237,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 326
	movq	$326,	%r10
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
# BINOP *
	imulq	%rsi,	%rcx
	movq	%rcx,	%rcx
# LD x1
	movq	global_x1(%rip),	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# CONST 933
	movq	$933,	%r8
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
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 528
	movq	$528,	%r8
# CONST 165
	movq	$165,	%r9
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
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 323
	movq	$323,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 517
	movq	$517,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
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
# LD x2
	movq	global_x2(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 425
	movq	$425,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
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
# CONST 621
	movq	$621,	%rdi
# CONST 867
	movq	$867,	%r8
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
# CONST 459
	movq	$459,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP -
	subq	%r9,	%r8
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
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
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
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
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
# LD x0
	movq	global_x0(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 860
	movq	$860,	%r10
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
# LD x0
	movq	global_x0(%rip),	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
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
# BINOP *
	imulq	%rsi,	%rcx
	movq	%rcx,	%rcx
# CONST 68
	movq	$68,	%rsi
# LD x0
	movq	global_x0(%rip),	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 598
	movq	$598,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP >
	cmpq	%rdi,	%rsi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 553
	movq	$553,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
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
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x0
	movq	global_x0(%rip),	%rdi
# CONST 114
	movq	$114,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 979
	movq	$979,	%r8
# CONST 565
	movq	$565,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 996
	movq	$996,	%r8
# CONST 800
	movq	$800,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 56
	movq	$56,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
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
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 387
	movq	$387,	%rdi
# CONST 818
	movq	$818,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 541
	movq	$541,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# CONST 807
	movq	$807,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
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
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 446
	movq	$446,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
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
# CONST 623
	movq	$623,	%r9
# CONST 98
	movq	$98,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 819
	movq	$819,	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# BINOP >
	cmpq	%r11,	%r10
	setg	%al
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
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 716
	movq	$716,	%rdi
# CONST 244
	movq	$244,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 197
	movq	$197,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 152
	movq	$152,	%r9
# CONST 7
	movq	$7,	%r10
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
# CONST 56
	movq	$56,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 461
	movq	$461,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# CONST 663
	movq	$663,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# CONST 683
	movq	$683,	%r11
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
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 502
	movq	$502,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 215
	movq	$215,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# CONST 985
	movq	$985,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
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
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 210
	movq	$210,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 446
	movq	$446,	%r10
# CONST 903
	movq	$903,	%r11
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
# LD x2
	movq	global_x2(%rip),	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# LD x2
	movq	global_x2(%rip),	%r12
# BINOP <=
	cmpq	%r12,	%r11
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP *
	imulq	%r11,	%r10
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
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP !=
	cmpq	%rsi,	%rcx
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# CONST 997
	movq	$997,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
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
# LD x2
	movq	global_x2(%rip),	%rdi
# CONST 189
	movq	$189,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 744
	movq	$744,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 29
	movq	$29,	%rdi
# CONST 296
	movq	$296,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 687
	movq	$687,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP ==
	cmpq	%rdi,	%rsi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 534
	movq	$534,	%rdi
# CONST 167
	movq	$167,	%r8
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
# CONST 246
	movq	$246,	%r8
# CONST 884
	movq	$884,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
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
# CONST 675
	movq	$675,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 241
	movq	$241,	%r10
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
# CONST 335
	movq	$335,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 125
	movq	$125,	%r9
# CONST 400
	movq	$400,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# CONST 750
	movq	$750,	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
# BINOP *
	imulq	%r10,	%r9
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
# BINOP >
	cmpq	%rdi,	%rsi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 610
	movq	$610,	%rdi
# CONST 681
	movq	$681,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 215
	movq	$215,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 890
	movq	$890,	%r8
# CONST 177
	movq	$177,	%r9
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
# CONST 211
	movq	$211,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
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
# CONST 782
	movq	$782,	%r8
# CONST 575
	movq	$575,	%r9
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
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 832
	movq	$832,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 184
	movq	$184,	%r10
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
# LD x2
	movq	global_x2(%rip),	%r10
# CONST 834
	movq	$834,	%r11
# BINOP >
	cmpq	%r11,	%r10
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r10
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
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 84
	movq	$84,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# CONST 982
	movq	$982,	%r9
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
# CONST 702
	movq	$702,	%r10
# CONST 134
	movq	$134,	%r11
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
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 775
	movq	$775,	%r10
# CONST 117
	movq	$117,	%r11
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
# CONST 422
	movq	$422,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP <=
	cmpq	%r11,	%r10
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# CONST 998
	movq	$998,	%r11
# CONST 972
	movq	$972,	%r12
# BINOP ==
	cmpq	%r12,	%r11
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r11
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
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP >=
	cmpq	%rdi,	%rsi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
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
# CONST 168
	movq	$168,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 558
	movq	$558,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 342
	movq	$342,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
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
# LD x3
	movq	global_x3(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# CONST 578
	movq	$578,	%r10
# CONST 572
	movq	$572,	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
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
# LD x1
	movq	global_x1(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 356
	movq	$356,	%r10
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
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
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
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# CONST 249
	movq	$249,	%r9
# CONST 561
	movq	$561,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 35
	movq	$35,	%r10
# CONST 912
	movq	$912,	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# LD x2
	movq	global_x2(%rip),	%r12
# BINOP <
	cmpq	%r12,	%r11
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r11
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
# CONST 695
	movq	$695,	%r8
# CONST 58
	movq	$58,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 837
	movq	$837,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 184
	movq	$184,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 400
	movq	$400,	%r10
# CONST 149
	movq	$149,	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 132
	movq	$132,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# CONST 231
	movq	$231,	%r11
# BINOP <=
	cmpq	%r11,	%r10
	setle	%al
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
# CONST 696
	movq	$696,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# CONST 895
	movq	$895,	%r11
# CONST 162
	movq	$162,	%r12
# BINOP >
	cmpq	%r12,	%r11
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 163
	movq	$163,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 360
	movq	$360,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
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
# LD x3
	movq	global_x3(%rip),	%r10
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
# CONST 623
	movq	$623,	%r11
# LD x3
	movq	global_x3(%rip),	%r12
# BINOP >=
	cmpq	%r12,	%r11
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
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
# CONST 278
	movq	$278,	%r10
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
# LD x0
	movq	global_x0(%rip),	%r11
# CONST 317
	movq	$317,	%r12
# BINOP >=
	cmpq	%r12,	%r11
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# LD x0
	movq	global_x0(%rip),	%r12
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
# CONST 443
	movq	$443,	%r12
# LD x0
	movq	global_x0(%rip),	%r13
# BINOP >
	cmpq	%r13,	%r12
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r12
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
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
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
