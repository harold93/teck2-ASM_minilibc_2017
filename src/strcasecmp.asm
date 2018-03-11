	section .text

global	strcasecmp:function

strcasecmp:
	; rdi, 1 arg
	; rsi, 2e arg
	jmp	begining

begining:
	mov	bl, [rdi]
	or	bl, [rsi]
	cmp	bl, 0
	je	win

	mov	bl, [rsi]
	cmp	byte[rdi], bl
	je	equLilGreat

	sub	bl, 32
	cmp	byte[rdi], bl
	je 	equLilGreat

	add	bl, 64
	cmp	byte[rdi], bl
	je 	equLilGreat

	mov	cl, byte[rdi]
	sub	bl, 32
	sub	cl, bl
	; xor	cl, 0h
	neg	cl
	mov	al, cl
	; imul	-1
	; mov	al, cl
	ret

equLilGreat:
	inc	rdi
	inc	rsi
	jmp	begining

win:
	mov	rax, 0
	ret