
	.globl	_main
	.align	2
_main:

_print:
	mov x0, #1		; stdout
	adr x1, hello
	mov x2, len
	mov x16, 4		; write
	svc 0

_terminate:
	mov x0, #0		; return 0
	mov x16, #1		; exit
	svc 0

hello:
	.ascii "hello world\n"
len = . - hello
