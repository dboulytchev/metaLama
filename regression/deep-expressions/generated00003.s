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
# CONST 426
	movq	$426,	%rcx
# CONST 230
	movq	$230,	%rsi
# BINOP +
	addq	%rsi,	%rcx
	movq	%rcx,	%rcx
# CONST 138
	movq	$138,	%rsi
# CONST 179
	movq	$179,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# BINOP >
	cmpq	%rsi,	%rcx
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# CONST 515
	movq	$515,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
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
# CONST 712
	movq	$712,	%rdi
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
# BINOP >
	cmpq	%rsi,	%rcx
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# LD x3
	movq	global_x3(%rip),	%rsi
# CONST 745
	movq	$745,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x0
	movq	global_x0(%rip),	%rdi
# CONST 147
	movq	$147,	%r8
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
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 710
	movq	$710,	%rdi
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
# BINOP *
	imulq	%rsi,	%rcx
	movq	%rcx,	%rcx
# CONST 38
	movq	$38,	%rsi
# CONST 320
	movq	$320,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 602
	movq	$602,	%rdi
# CONST 136
	movq	$136,	%r8
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
# LD x2
	movq	global_x2(%rip),	%rdi
# CONST 349
	movq	$349,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 437
	movq	$437,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 166
	movq	$166,	%rdi
# CONST 369
	movq	$369,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# CONST 677
	movq	$677,	%r9
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
# LD x0
	movq	global_x0(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 292
	movq	$292,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
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
# BINOP ==
	cmpq	%rsi,	%rcx
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# CONST 902
	movq	$902,	%rsi
# CONST 591
	movq	$591,	%rdi
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 263
	movq	$263,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 105
	movq	$105,	%rdi
# CONST 381
	movq	$381,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 525
	movq	$525,	%r8
# CONST 928
	movq	$928,	%r9
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
# BINOP >=
	cmpq	%rdi,	%rsi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 339
	movq	$339,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 602
	movq	$602,	%r8
# CONST 519
	movq	$519,	%r9
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
# LD x2
	movq	global_x2(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 128
	movq	$128,	%r9
# CONST 770
	movq	$770,	%r10
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
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP ==
	cmpq	%rdi,	%rsi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x0
	movq	global_x0(%rip),	%rdi
# CONST 65
	movq	$65,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 388
	movq	$388,	%r9
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
# CONST 590
	movq	$590,	%r8
# CONST 95
	movq	$95,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
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
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 311
	movq	$311,	%r9
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
# CONST 881
	movq	$881,	%r10
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
# CONST 807
	movq	$807,	%r9
# CONST 175
	movq	$175,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# CONST 72
	movq	$72,	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
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
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# BINOP >
	cmpq	%rsi,	%rcx
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# CONST 320
	movq	$320,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# CONST 913
	movq	$913,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP ==
	cmpq	%rdi,	%rsi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 934
	movq	$934,	%rdi
# CONST 474
	movq	$474,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 330
	movq	$330,	%r9
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
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 167
	movq	$167,	%rdi
# CONST 816
	movq	$816,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 197
	movq	$197,	%r8
# CONST 354
	movq	$354,	%r9
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
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 926
	movq	$926,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 451
	movq	$451,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
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
# LD x1
	movq	global_x1(%rip),	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 189
	movq	$189,	%r8
# CONST 378
	movq	$378,	%r9
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
# LD x0
	movq	global_x0(%rip),	%r8
# CONST 297
	movq	$297,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
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
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 675
	movq	$675,	%r9
# CONST 466
	movq	$466,	%r10
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
# LD x0
	movq	global_x0(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
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
# LD x3
	movq	global_x3(%rip),	%r10
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
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
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
# CONST 864
	movq	$864,	%rdi
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
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 978
	movq	$978,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 737
	movq	$737,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# CONST 154
	movq	$154,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
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
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 294
	movq	$294,	%r8
# CONST 399
	movq	$399,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 478
	movq	$478,	%r9
# CONST 137
	movq	$137,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP ==
	cmpq	%r9,	%r8
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 499
	movq	$499,	%r10
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
# CONST 761
	movq	$761,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# CONST 256
	movq	$256,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
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
# CONST 550
	movq	$550,	%r9
# CONST 875
	movq	$875,	%r10
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
# CONST 942
	movq	$942,	%r10
# CONST 904
	movq	$904,	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
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
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 278
	movq	$278,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 814
	movq	$814,	%r10
# CONST 446
	movq	$446,	%r11
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
# LD x0
	movq	global_x0(%rip),	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# CONST 919
	movq	$919,	%r11
# LD x0
	movq	global_x0(%rip),	%r12
# BINOP >
	cmpq	%r12,	%r11
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r11
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
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
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
# CONST 975
	movq	$975,	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 349
	movq	$349,	%rdi
# CONST 962
	movq	$962,	%r8
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
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 670
	movq	$670,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP >=
	cmpq	%rdi,	%rsi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 534
	movq	$534,	%rdi
# CONST 913
	movq	$913,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 765
	movq	$765,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 837
	movq	$837,	%r8
# CONST 736
	movq	$736,	%r9
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
# CONST 489
	movq	$489,	%r9
# CONST 231
	movq	$231,	%r10
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
# CONST 6
	movq	$6,	%rdi
# CONST 596
	movq	$596,	%r8
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
# LD x3
	movq	global_x3(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
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
# LD x0
	movq	global_x0(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# CONST 218
	movq	$218,	%r9
# CONST 282
	movq	$282,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
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
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 277
	movq	$277,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 80
	movq	$80,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 138
	movq	$138,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
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
# CONST 366
	movq	$366,	%rdi
# CONST 101
	movq	$101,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 692
	movq	$692,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 366
	movq	$366,	%r8
# CONST 59
	movq	$59,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 517
	movq	$517,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
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
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 0
	movq	$0,	%r9
# CONST 207
	movq	$207,	%r10
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
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
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
# LD x2
	movq	global_x2(%rip),	%r11
# BINOP >
	cmpq	%r11,	%r10
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
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
# CONST 89
	movq	$89,	%r8
# CONST 476
	movq	$476,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# CONST 17
	movq	$17,	%r9
# CONST 263
	movq	$263,	%r10
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
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 503
	movq	$503,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 883
	movq	$883,	%r10
# CONST 27
	movq	$27,	%r11
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
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 424
	movq	$424,	%r9
# CONST 412
	movq	$412,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 915
	movq	$915,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
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
# CONST 806
	movq	$806,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# CONST 982
	movq	$982,	%r11
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
# BINOP -
	subq	%r10,	%r9
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
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
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
# LD x2
	movq	global_x2(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
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
# CONST 705
	movq	$705,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 201
	movq	$201,	%r8
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
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 504
	movq	$504,	%r10
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
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 510
	movq	$510,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# CONST 905
	movq	$905,	%r10
# CONST 196
	movq	$196,	%r11
# BINOP +
	addq	%r11,	%r10
	movq	%r10,	%r10
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
# LD x3
	movq	global_x3(%rip),	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# LD x0
	movq	global_x0(%rip),	%r10
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
# CONST 649
	movq	$649,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 902
	movq	$902,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP <=
	cmpq	%r11,	%r10
	setle	%al
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
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 524
	movq	$524,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# CONST 566
	movq	$566,	%r10
# CONST 826
	movq	$826,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# CONST 930
	movq	$930,	%r11
# LD x2
	movq	global_x2(%rip),	%r12
# BINOP <=
	cmpq	%r12,	%r11
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
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
# LD x2
	movq	global_x2(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 898
	movq	$898,	%r9
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
# CONST 411
	movq	$411,	%r10
# CONST 324
	movq	$324,	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 876
	movq	$876,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# LD x3
	movq	global_x3(%rip),	%r11
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
# CONST 996
	movq	$996,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP -
	subq	%r11,	%r10
	movq	%r10,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# LD x2
	movq	global_x2(%rip),	%r12
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
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
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
# LD x2
	movq	global_x2(%rip),	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# CONST 715
	movq	$715,	%r11
# BINOP <=
	cmpq	%r11,	%r10
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# CONST 780
	movq	$780,	%r12
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
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
# CONST 65
	movq	$65,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# CONST 782
	movq	$782,	%r11
# CONST 592
	movq	$592,	%r12
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
# LD x1
	movq	global_x1(%rip),	%r11
# LD x3
	movq	global_x3(%rip),	%r12
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
# LD x3
	movq	global_x3(%rip),	%r12
# LD x1
	movq	global_x1(%rip),	%r13
# BINOP >
	cmpq	%r13,	%r12
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r12
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
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
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
