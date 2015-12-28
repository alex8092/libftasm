global _ft_cat

extern _read
extern _ft_putstr

; void	ft_cat(int fd);

segment .data

_ft_cat_buffer: times 1024 db 0

segment .text

_ft_cat:
	push rbp
	mov rbp, rsp
	sub rsp, 0x10
	mov dword [rbp - 0x4], edi
	.read:
		xor rdi, rdi
		mov edi, dword [rbp - 0x4]
		mov rsi, _ft_cat_buffer
		mov rdx, 1024 - 1
		call _read
		cmp rax, 0
		jnge .end
		or rax, rax
		jz .finish
		mov rbx, _ft_cat_buffer
		add rbx, rax
		mov byte [rbx], 0
		jmp .print
	.finish:
		mov rdi, _ft_cat_buffer
		call _ft_putstr
		jmp .end
	.print:
		mov rdi, _ft_cat_buffer
		call _ft_putstr
		jmp .read
	.end:
		leave
		ret