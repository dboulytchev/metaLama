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
# CONST 579
	movq	$579,	%rcx
# CONST 628
	movq	$628,	%rsi
# BINOP !=
	cmpq	%rsi,	%rcx
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# CONST 140
	movq	$140,	%rsi
# CONST 288
	movq	$288,	%rdi
# BINOP >
	cmpq	%rdi,	%rsi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP ==
	cmpq	%rsi,	%rcx
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# LD x1
	movq	global_x1(%rip),	%rsi
# LD x0
	movq	global_x0(%rip),	%rdi
# BINOP >
	cmpq	%rdi,	%rsi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
# CONST 997
	movq	$997,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP ==
	cmpq	%rdi,	%rsi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP <
	cmpq	%rsi,	%rcx
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# CONST 810
	movq	$810,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
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
# CONST 567
	movq	$567,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
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
# CONST 459
	movq	$459,	%r8
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
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP +
	addq	%rsi,	%rcx
	movq	%rcx,	%rcx
# LD x1
	movq	global_x1(%rip),	%rsi
# CONST 245
	movq	$245,	%rdi
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
# CONST 427
	movq	$427,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP ==
	cmpq	%rdi,	%rsi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 837
	movq	$837,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 289
	movq	$289,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 831
	movq	$831,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 92
	movq	$92,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
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
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
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
# BINOP >=
	cmpq	%rsi,	%rcx
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# CONST 599
	movq	$599,	%rsi
# CONST 794
	movq	$794,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 434
	movq	$434,	%rdi
# CONST 672
	movq	$672,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 651
	movq	$651,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 357
	movq	$357,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 432
	movq	$432,	%rdi
# CONST 514
	movq	$514,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 468
	movq	$468,	%r8
# CONST 710
	movq	$710,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 295
	movq	$295,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
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
# CONST 428
	movq	$428,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 428
	movq	$428,	%r8
# CONST 36
	movq	$36,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 886
	movq	$886,	%r9
# CONST 55
	movq	$55,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 460
	movq	$460,	%r9
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
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# CONST 35
	movq	$35,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 39
	movq	$39,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
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
# BINOP >
	cmpq	%rsi,	%rcx
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# LD x2
	movq	global_x2(%rip),	%rsi
# CONST 216
	movq	$216,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 772
	movq	$772,	%rdi
# CONST 752
	movq	$752,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
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
# LD x1
	movq	global_x1(%rip),	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
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
# CONST 63
	movq	$63,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
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
# CONST 636
	movq	$636,	%rdi
# CONST 664
	movq	$664,	%r8
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
# CONST 215
	movq	$215,	%r8
# CONST 371
	movq	$371,	%r9
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
# CONST 997
	movq	$997,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# CONST 823
	movq	$823,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 796
	movq	$796,	%r8
# CONST 459
	movq	$459,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 562
	movq	$562,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
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
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 673
	movq	$673,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 769
	movq	$769,	%r10
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
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 481
	movq	$481,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# CONST 276
	movq	$276,	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
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
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP >=
	cmpq	%rdi,	%rsi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 390
	movq	$390,	%rdi
# CONST 863
	movq	$863,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 250
	movq	$250,	%r8
# CONST 838
	movq	$838,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 596
	movq	$596,	%r9
# CONST 380
	movq	$380,	%r10
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
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 606
	movq	$606,	%r10
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
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 386
	movq	$386,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# CONST 524
	movq	$524,	%r11
# BINOP +
	addq	%r11,	%r10
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
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 863
	movq	$863,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
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
# CONST 664
	movq	$664,	%r9
# CONST 374
	movq	$374,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# CONST 710
	movq	$710,	%r11
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
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# CONST 440
	movq	$440,	%r10
# CONST 723
	movq	$723,	%r11
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# CONST 260
	movq	$260,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# CONST 243
	movq	$243,	%r11
# LD x0
	movq	global_x0(%rip),	%r12
# BINOP <=
	cmpq	%r12,	%r11
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
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
# CONST 609
	movq	$609,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# BINOP ==
	cmpq	%rdi,	%rsi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 831
	movq	$831,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
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
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 426
	movq	$426,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 166
	movq	$166,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
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
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 274
	movq	$274,	%rdi
# CONST 507
	movq	$507,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 152
	movq	$152,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
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
# CONST 806
	movq	$806,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP +
	addq	%r10,	%r9
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
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 47
	movq	$47,	%rdi
# CONST 411
	movq	$411,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 767
	movq	$767,	%r8
# CONST 225
	movq	$225,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 745
	movq	$745,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
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
# CONST 258
	movq	$258,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
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
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 83
	movq	$83,	%r10
# CONST 3
	movq	$3,	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
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
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 617
	movq	$617,	%r10
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
# CONST 606
	movq	$606,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 508
	movq	$508,	%r10
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
# CONST 733
	movq	$733,	%r9
# CONST 766
	movq	$766,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# CONST 395
	movq	$395,	%r10
# CONST 86
	movq	$86,	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
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
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 509
	movq	$509,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 593
	movq	$593,	%r10
# CONST 252
	movq	$252,	%r11
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
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 381
	movq	$381,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 806
	movq	$806,	%r10
# CONST 239
	movq	$239,	%r11
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
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 558
	movq	$558,	%r10
# CONST 223
	movq	$223,	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# CONST 193
	movq	$193,	%r12
# BINOP <
	cmpq	%r12,	%r11
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
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
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 514
	movq	$514,	%rdi
# CONST 925
	movq	$925,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 738
	movq	$738,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 818
	movq	$818,	%r9
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
# LD x1
	movq	global_x1(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 239
	movq	$239,	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 85
	movq	$85,	%r9
# CONST 526
	movq	$526,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# CONST 873
	movq	$873,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# CONST 989
	movq	$989,	%r11
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
# LD x0
	movq	global_x0(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
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
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 132
	movq	$132,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# LD x2
	movq	global_x2(%rip),	%r11
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
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 886
	movq	$886,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 214
	movq	$214,	%r10
# CONST 447
	movq	$447,	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 348
	movq	$348,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# CONST 621
	movq	$621,	%r12
# BINOP !=
	cmpq	%r12,	%r11
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 250
	movq	$250,	%r9
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
# CONST 13
	movq	$13,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 58
	movq	$58,	%r10
# CONST 412
	movq	$412,	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
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
# LD x2
	movq	global_x2(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
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
# CONST 685
	movq	$685,	%r11
# LD x1
	movq	global_x1(%rip),	%r12
# BINOP <
	cmpq	%r12,	%r11
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r11
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
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# CONST 454
	movq	$454,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# CONST 566
	movq	$566,	%r11
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
# CONST 765
	movq	$765,	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# CONST 151
	movq	$151,	%r11
# CONST 646
	movq	$646,	%r12
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
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# CONST 902
	movq	$902,	%r11
# LD x3
	movq	global_x3(%rip),	%r12
# BINOP !=
	cmpq	%r12,	%r11
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# LD x2
	movq	global_x2(%rip),	%r12
# BINOP <=
	cmpq	%r12,	%r11
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# CONST 117
	movq	$117,	%r12
# CONST 494
	movq	$494,	%r13
# BINOP >=
	cmpq	%r13,	%r12
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r12
# BINOP +
	addq	%r12,	%r11
	movq	%r11,	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
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
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
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
