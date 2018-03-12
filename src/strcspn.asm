	section	.text

global	strcspn:function

strcspn:
	mov	rax, 0
	mov	rbx, rsi
	jmp	begining

begining:
	cmp	byte[rdi], 0
	je	stop
	jmp	string2

string2:
	cmp	byte[rsi], 0
	je	replay
	mov	cl, [rsi]
	cmp	[rdi], cl
	je	right
	inc	rsi
	loop	string2

replay:
	inc	rax
	inc	rdi
	mov	rsi, rbx
	jmp	begining

right:
	ret

stop:
	ret