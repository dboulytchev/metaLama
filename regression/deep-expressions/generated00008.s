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
# CONST 86
	movq	$86,	%rcx
# LD x3
	movq	global_x3(%rip),	%rsi
# BINOP <=
	cmpq	%rsi,	%rcx
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# CONST 535
	movq	$535,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
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
# BINOP +
	addq	%rsi,	%rcx
	movq	%rcx,	%rcx
# LD x3
	movq	global_x3(%rip),	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# CONST 173
	movq	$173,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# BINOP ==
	cmpq	%rsi,	%rcx
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# LD x3
	movq	global_x3(%rip),	%rsi
# LD x0
	movq	global_x0(%rip),	%rdi
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# CONST 836
	movq	$836,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 403
	movq	$403,	%r9
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
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
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
# LD x0
	movq	global_x0(%rip),	%rsi
# CONST 175
	movq	$175,	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
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
# CONST 460
	movq	$460,	%r8
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
# CONST 895
	movq	$895,	%r8
# CONST 440
	movq	$440,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x3
	movq	global_x3(%rip),	%rdi
# CONST 702
	movq	$702,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 342
	movq	$342,	%r8
# CONST 66
	movq	$66,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 754
	movq	$754,	%r8
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
# CONST 267
	movq	$267,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
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
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# BINOP *
	imulq	%rsi,	%rcx
	movq	%rcx,	%rcx
# CONST 56
	movq	$56,	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
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
# LD x2
	movq	global_x2(%rip),	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
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
# CONST 770
	movq	$770,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 453
	movq	$453,	%r8
# CONST 97
	movq	$97,	%r9
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
# CONST 948
	movq	$948,	%rdi
# CONST 730
	movq	$730,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 859
	movq	$859,	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 657
	movq	$657,	%r8
# CONST 367
	movq	$367,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 22
	movq	$22,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
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
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP !=
	cmpq	%rdi,	%rsi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 399
	movq	$399,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 180
	movq	$180,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 258
	movq	$258,	%r9
# CONST 75
	movq	$75,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 127
	movq	$127,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 141
	movq	$141,	%r10
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
# CONST 620
	movq	$620,	%r9
# CONST 33
	movq	$33,	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# CONST 264
	movq	$264,	%r11
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
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP *
	imulq	%r8,	%rdi
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
# LD x1
	movq	global_x1(%rip),	%rdi
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 316
	movq	$316,	%rdi
# CONST 780
	movq	$780,	%r8
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
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 631
	movq	$631,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 287
	movq	$287,	%r9
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
# CONST 740
	movq	$740,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 931
	movq	$931,	%r8
# CONST 579
	movq	$579,	%r9
# BINOP >
	cmpq	%r9,	%r8
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP +
	addq	%r8,	%rdi
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
# CONST 331
	movq	$331,	%r9
# CONST 74
	movq	$74,	%r10
# BINOP <=
	cmpq	%r10,	%r9
	setle	%al
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
# LD x3
	movq	global_x3(%rip),	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# CONST 407
	movq	$407,	%r8
# CONST 159
	movq	$159,	%r9
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
# LD x3
	movq	global_x3(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# CONST 589
	movq	$589,	%r9
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
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# CONST 360
	movq	$360,	%r9
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
# BINOP +
	addq	%r10,	%r9
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
# CONST 699
	movq	$699,	%r9
# CONST 781
	movq	$781,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 594
	movq	$594,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# BINOP *
	imulq	%r11,	%r10
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
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
# CONST 182
	movq	$182,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 208
	movq	$208,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# CONST 647
	movq	$647,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP >=
	cmpq	%r9,	%r8
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 112
	movq	$112,	%r9
# CONST 528
	movq	$528,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 637
	movq	$637,	%r10
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
# CONST 344
	movq	$344,	%r10
# CONST 616
	movq	$616,	%r11
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
# CONST 789
	movq	$789,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# CONST 953
	movq	$953,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
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
# CONST 404
	movq	$404,	%r9
# CONST 222
	movq	$222,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# CONST 90
	movq	$90,	%r10
# CONST 872
	movq	$872,	%r11
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
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 659
	movq	$659,	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 271
	movq	$271,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 352
	movq	$352,	%r10
# CONST 957
	movq	$957,	%r11
# BINOP >
	cmpq	%r11,	%r10
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# CONST 131
	movq	$131,	%r12
# BINOP >=
	cmpq	%r12,	%r11
	setge	%al
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
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP -
	subq	%rdi,	%rsi
	movq	%rsi,	%rsi
# BINOP !=
	cmpq	%rsi,	%rcx
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rcx
# LD x3
	movq	global_x3(%rip),	%rsi
# CONST 701
	movq	$701,	%rdi
# BINOP <
	cmpq	%rdi,	%rsi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# BINOP -
	subq	%r8,	%rdi
	movq	%rdi,	%rdi
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# LD x2
	movq	global_x2(%rip),	%rdi
# CONST 320
	movq	$320,	%r8
# BINOP >=
	cmpq	%r8,	%rdi
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP -
	subq	%r9,	%r8
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
# BINOP *
	imulq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 401
	movq	$401,	%rdi
# CONST 275
	movq	$275,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# CONST 635
	movq	$635,	%r9
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
# CONST 702
	movq	$702,	%r8
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
# LD x3
	movq	global_x3(%rip),	%r9
# CONST 508
	movq	$508,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# BINOP !=
	cmpq	%r8,	%rdi
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# BINOP <=
	cmpq	%rdi,	%rsi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rsi
# CONST 291
	movq	$291,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x0
	movq	global_x0(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
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
# CONST 69
	movq	$69,	%r8
# CONST 462
	movq	$462,	%r9
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
# CONST 166
	movq	$166,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
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
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 171
	movq	$171,	%r8
# CONST 508
	movq	$508,	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 109
	movq	$109,	%r9
# CONST 765
	movq	$765,	%r10
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
# CONST 982
	movq	$982,	%r9
# CONST 778
	movq	$778,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# CONST 591
	movq	$591,	%r10
# CONST 795
	movq	$795,	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
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
# CONST 399
	movq	$399,	%rdi
# CONST 31
	movq	$31,	%r8
# BINOP <
	cmpq	%r8,	%rdi
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# LD x3
	movq	global_x3(%rip),	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x3
	movq	global_x3(%rip),	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
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
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# BINOP *
	imulq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 367
	movq	$367,	%r9
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
# CONST 411
	movq	$411,	%r9
# LD x0
	movq	global_x0(%rip),	%r10
# BINOP !=
	cmpq	%r10,	%r9
	setne	%al
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
# CONST 428
	movq	$428,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# CONST 503
	movq	$503,	%r10
# CONST 187
	movq	$187,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
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
# BINOP ==
	cmpq	%r8,	%rdi
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 809
	movq	$809,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# CONST 351
	movq	$351,	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# CONST 482
	movq	$482,	%r9
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
# CONST 711
	movq	$711,	%r10
# CONST 962
	movq	$962,	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
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
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 149
	movq	$149,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x2
	movq	global_x2(%rip),	%r10
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
# CONST 868
	movq	$868,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP <
	cmpq	%r11,	%r10
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# LD x1
	movq	global_x1(%rip),	%r12
# BINOP !=
	cmpq	%r12,	%r11
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
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
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# CONST 320
	movq	$320,	%rdi
# CONST 952
	movq	$952,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
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
# CONST 8
	movq	$8,	%r8
# CONST 59
	movq	$59,	%r9
# BINOP +
	addq	%r9,	%r8
	movq	%r8,	%r8
# LD x2
	movq	global_x2(%rip),	%r9
# CONST 294
	movq	$294,	%r10
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
# BINOP +
	addq	%r8,	%rdi
	movq	%rdi,	%rdi
# LD x1
	movq	global_x1(%rip),	%r8
# LD x1
	movq	global_x1(%rip),	%r9
# BINOP <=
	cmpq	%r9,	%r8
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# LD x1
	movq	global_x1(%rip),	%r9
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
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# CONST 122
	movq	$122,	%r9
# CONST 585
	movq	$585,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# LD x1
	movq	global_x1(%rip),	%r11
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
# BINOP >
	cmpq	%r8,	%rdi
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# LD x2
	movq	global_x2(%rip),	%r8
# CONST 537
	movq	$537,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# CONST 874
	movq	$874,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP ==
	cmpq	%r10,	%r9
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# CONST 992
	movq	$992,	%r9
# CONST 462
	movq	$462,	%r10
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
# LD x2
	movq	global_x2(%rip),	%r11
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
# BINOP !=
	cmpq	%r9,	%r8
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 431
	movq	$431,	%r9
# CONST 260
	movq	$260,	%r10
# BINOP >
	cmpq	%r10,	%r9
	setg	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# CONST 496
	movq	$496,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
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
# LD x2
	movq	global_x2(%rip),	%r10
# LD x1
	movq	global_x1(%rip),	%r11
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
# CONST 658
	movq	$658,	%r11
# CONST 498
	movq	$498,	%r12
# BINOP <=
	cmpq	%r12,	%r11
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r11
# BINOP >=
	cmpq	%r11,	%r10
	setge	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%rdi
# CONST 211
	movq	$211,	%r8
# CONST 927
	movq	$927,	%r9
# BINOP -
	subq	%r9,	%r8
	movq	%r8,	%r8
# LD x0
	movq	global_x0(%rip),	%r9
# CONST 341
	movq	$341,	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# BINOP *
	imulq	%r9,	%r8
	movq	%r8,	%r8
# CONST 547
	movq	$547,	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP -
	subq	%r10,	%r9
	movq	%r9,	%r9
# CONST 55
	movq	$55,	%r10
# LD x2
	movq	global_x2(%rip),	%r11
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
# LD x1
	movq	global_x1(%rip),	%r9
# LD x1
	movq	global_x1(%rip),	%r10
# BINOP <
	cmpq	%r10,	%r9
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r9
# LD x3
	movq	global_x3(%rip),	%r10
# CONST 190
	movq	$190,	%r11
# BINOP <=
	cmpq	%r11,	%r10
	setle	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# CONST 312
	movq	$312,	%r10
# CONST 126
	movq	$126,	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x1
	movq	global_x1(%rip),	%r11
# LD x3
	movq	global_x3(%rip),	%r12
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
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# BINOP +
	addq	%r10,	%r9
	movq	%r9,	%r9
# BINOP <
	cmpq	%r9,	%r8
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r8
# CONST 847
	movq	$847,	%r9
# CONST 767
	movq	$767,	%r10
# BINOP *
	imulq	%r10,	%r9
	movq	%r9,	%r9
# CONST 239
	movq	$239,	%r10
# CONST 766
	movq	$766,	%r11
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
# CONST 161
	movq	$161,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# BINOP ==
	cmpq	%r11,	%r10
	sete	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x2
	movq	global_x2(%rip),	%r11
# CONST 583
	movq	$583,	%r12
# BINOP >=
	cmpq	%r12,	%r11
	setge	%al
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
# CONST 249
	movq	$249,	%r11
# BINOP *
	imulq	%r11,	%r10
	movq	%r10,	%r10
# LD x3
	movq	global_x3(%rip),	%r11
# LD x1
	movq	global_x1(%rip),	%r12
# BINOP +
	addq	%r12,	%r11
	movq	%r11,	%r11
# BINOP !=
	cmpq	%r11,	%r10
	setne	%al
	andq	$1,	%rax
	movq	%rax,	%r10
# LD x0
	movq	global_x0(%rip),	%r11
# CONST 139
	movq	$139,	%r12
# BINOP *
	imulq	%r12,	%r11
	movq	%r11,	%r11
# LD x3
	movq	global_x3(%rip),	%r12
# LD x3
	movq	global_x3(%rip),	%r13
# BINOP <
	cmpq	%r13,	%r12
	setl	%al
	andq	$1,	%rax
	movq	%rax,	%r12
# BINOP >
	cmpq	%r12,	%r11
	setg	%al
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
# BINOP >=
	cmpq	%r10,	%r9
	setge	%al
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
# BINOP <=
	cmpq	%r8,	%rdi
	setle	%al
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
