	section .text

global memset:function

memset:
	; rdi, 1 arg
	; rsi, 2e arg
	; rdx, 3e arg
	mov	rax, rdi
	jmp	begining

begining:
	cmp	rdx, 0
	je	stop
	mov	bl, sil
	mov	[rdi], bl
	inc	rdi
	dec	rdx
	loop	begining

stop:
	ret