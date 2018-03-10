	section .text

global	strstr:function

strstr:
	; rdi, 1 arg
	; rsi, 2e arg
	cmp	byte[rsi], 0
	je	stop
	jmp	begining

begining:
	cmp 	byte[rdi], 0
	je 	err
	mov	rax, rdi
	mov	rcx, rsi
	jmp	comp

comp:
	mov	bl, [rsi]
	cmp 	[rdi], bl
	jne	replay
	inc	rdi
	inc	rsi
	cmp 	byte[rsi], 0
	je 	good
	loop	comp

err:
	mov 	rax, 0
	ret

good:
	ret

replay:
	inc	rdi
	mov	rsi, rcx
	jmp	begining

stop:
	mov	rax, rdi
	ret