	section	.text
global	strpbrk:function

strpbrk:
	jmp	go

go:
	cmp	byte[rdi], 0
	je	return_n
	jmp	begining

begining:
	mov	rbx, rsi
	jmp	first

first:
	cmp	byte[rsi], 0
	je	replay
	mov	cl, [rsi]
	cmp	byte[rdi], cl
	je	return_p
	inc	rsi
	loop	first

return_n:
	mov	rax, 0
	ret

replay:
	mov	rsi, rbx
	inc	rdi
	jmp	go

return_p:
	mov	rax, rdi
	ret