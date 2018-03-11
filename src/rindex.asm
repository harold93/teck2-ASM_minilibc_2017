	section .text

global	rindex:function

rindex:
	; rdi, 1 arg
	; rsi, 2e arg
	cmp	sil, 0
	je	return_z
	jmp	search

search:
	cmp	byte[rdi], 0
	je	return_n
	cmp	[rdi], sil
	je	return_p
	inc	rdi
	loop	search

return_n:
	mov	rax, 0
	ret

return_p:
	mov	rax, rdi
	ret

return_z:
	cmp	byte[rdi], 0
	je	stop
	inc	rdi
	loop	return_z

stop:
	mov	rax, rdi
	ret