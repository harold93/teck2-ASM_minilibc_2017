	section .text

global	strncmp:function

strncmp:
	; rdi, 1 arg
	; rsi, 2e arg
	; rdx, 3e arg
	jmp	begining

begining:
	cmp	rdx, 0
	je	finish
	mov	bl, [rsi]
	cmp	[rdi], bl
	jne	stop
	inc	rdi
	inc	rsi
	dec	rdx
	loop	begining

stop:
	mov	rax, -1
	ret

finish:
	mov	rax, 0
	ret