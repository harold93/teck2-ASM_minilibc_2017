	section .text

global	memmove:function

memmove:
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