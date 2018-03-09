	section .text
global strchr:function

strchr:
	; rdi, 1 arg
	; rsi, 2e arg
	jmp	go

go:
	cmp     byte[rdi], 0
	je	my_end
	cmp	[rdi], sil
	je	returnCharP
	inc	rdi
	loop	go

returnCharP:
	mov	rax, rdi
	ret

my_end:
	; mov       rax, 1
	; mov       rdi, 1
	; mov       rsi, message
	; mov       rdx, 13
	; syscall
	mov	rax, 0
	ret

section   .data
	message:  db        "Hello, World", 0ah