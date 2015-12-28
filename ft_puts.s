global _ft_puts
extern write
extern _ft_strlen

; int	ft_puts(const char *s);

_ft_puts:
	mov rbx, rdi
	call _ft_strlen
	mov rdx, rax
	mov rdi, 1
	mov rsi, rbx
	call write
	cmp rax, 0
	jnge .error
	mov rsi, .newline
	mov rdi, 1
	mov rdx, 1
	call write
	ret
	.error:
		mov rax, -1
		ret
	.newline:
		db 10