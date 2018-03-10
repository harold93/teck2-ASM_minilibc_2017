	section .text
global strcmp:function

strcmp:
	; rdi, 1 arg
	; rsi, 2e arg
	jmp	begin

begin:
	mov	bl, [rdi]
	or	bl, [rsi]
	cmp	bl, 0
	je	finish
	mov	cl, [rsi]
	cmp	[rdi], cl
	jne	err
	inc	rdi
	inc	rsi
	jmp	begin

err:
	mov	rax, -1
	ret

finish:
	mov	rax, 0
	ret