


        section .text

        global strlen:function
strlen:
        ; mov     rax, 60
        ; mov     rdi, 80
        ; syscall

        ; mov     rax, 3
        ; push    rax
        ; pop     rax
        ; ret
        mov     rax, 0
        ; mov     rbx, rdi
        jmp     go

go:
        cmp     byte[rdi], 0
        jz      my_return
        inc     rax
        ; mov     rcx, [rbx]
        inc     rdi
        ; [rdi + 5] = rdi[5]
        ; inc     rcx
        ; mov     [rbx], rcx
        loop    go

my_return:
        ret

; 	section   .data
; message:  db "lil test", 0ah