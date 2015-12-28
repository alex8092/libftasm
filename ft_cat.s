global _ft_cat
extern read
extern _ft_puts
; void	ft_cat(int fd);

_ft_cat:
	push rbp
	mov rbp, rsp
	mov qword [rbp - 0x8], rdi
	.read:
		mov rdi, qword [rbp - 0x8]
		mov rsi, _ft_cat.buffer
		mov edx, 1024 - 1
		call read
		add rax, _ft_cat.buffer
		mov byte [rax], 0
	.end:
		;mov rdi, [rbp - 0x390]
		;call _ft_puts
	.error:
		leave
		ret
	.buffer:
		times 1024 db 0