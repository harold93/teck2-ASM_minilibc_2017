	section .text

global	memcpy:function

memcpy:
	; rdi, 1 arg
	; rsi, 2e arg
	; rdx, 3e arg
	mov	rax, rdi
	jmp	beging

beging:
	cmp	rdx, 0
	je	stop
	mov	bl, [rsi]
	mov	[rdi], bl
	inc	rdi
	inc	rsi
	dec	rdx
	loop	beging

stop:
	ret