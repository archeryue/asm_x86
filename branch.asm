section .text
	global _start

_print:
	mov rax, 1
	mov rdi, 1
	syscall

	mov rax, 60
	xor rdi, rdi
	syscall

_great:
	mov rsi, yes
	mov rdx, 2
	jmp _print

_less:
	mov rsi, no
	mov rdx, 2
	jmp _print

_start:
	mov r10, 8
	mov r11, 6
	cmp r10, r11
	jg _great
	jng _less

section .data
	yes:	db "Y", 0x0a
	no:		db "N", 0x0a
