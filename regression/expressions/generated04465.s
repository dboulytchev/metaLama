	.global	main
	.data
global_x0:	.quad	0
global_x1:	.quad	0
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
# LDA y
	leaq	global_y(%rip),	%rbx
# CONST 22
	movq	$22,	%rcx
# CONST 23
	movq	$23,	%rsi
# BINOP +
	addq	%rsi,	%rcx
	movq	%rcx,	%rcx
# CONST 34
	movq	$34,	%rsi
# CONST 35
	movq	$35,	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# LD x1
	movq	global_x1(%rip),	%rdi
# BINOP +
	addq	%rdi,	%rsi
	movq	%rsi,	%rsi
# BINOP %
	movq	%rcx,	%rax
	pushq	%rdx
	cqto
	idivq	%rsi
	movq	%rdx,	%rcx
	popq	%rdx
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
