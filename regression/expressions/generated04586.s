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
# LD x0
	movq	global_x0(%rip),	%rcx
# LD x0
	movq	global_x0(%rip),	%rsi
# BINOP -
	subq	%rsi,	%rcx
	movq	%rcx,	%rcx
# CONST 39
	movq	$39,	%rsi
# BINOP -
	subq	%rsi,	%rcx
	movq	%rcx,	%rcx
# LD x1
	movq	global_x1(%rip),	%rsi
# BINOP +
	addq	%rsi,	%rcx
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
